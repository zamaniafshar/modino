import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:modino/theme/app_theme.dart';
import 'package:modino/bloc/human_mod_cubit.dart';
import 'package:modino/bloc/human_mod_calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: AppTheme.primaryColor,
              onPrimary: Colors.white,
              surface: AppTheme.surfaceColor,
              onSurface: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HumanModCubit(),
      child: BlocBuilder<HumanModCubit, HumanModState>(
        builder: (context, state) {
          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppTheme.backgroundColor,
                    AppTheme.backgroundColor.withOpacity(0.8),
                    AppTheme.primaryColor.withOpacity(0.2),
                  ],
                ),
              ),
              child: SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Human Mod Calculator',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () => _selectDate(context),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                          ),
                          child: Text(
                            selectedDate != null
                                ? DateFormat('MMMM d, y').format(selectedDate!)
                                : 'Select Your Birthday',
                          ),
                        ),
                        const SizedBox(height: 40),
                        switch (state) {
                          HumanModCalculated(:final result) => Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Your Human Mod',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                  const SizedBox(height: 16),
                                  _buildModCard(
                                    context,
                                    'Emotional',
                                    result.emotionalMod,
                                  ),
                                  const SizedBox(height: 16),
                                  _buildModCard(
                                    context,
                                    'Physical',
                                    result.physicalMod,
                                  ),
                                  const SizedBox(height: 16),
                                  _buildModCard(
                                    context,
                                    'Intellectual',
                                    result.intellectualMod,
                                  ),
                                  const SizedBox(height: 16),
                                  _buildModCard(
                                    context,
                                    'Average',
                                    result.averageMod(),
                                  ),
                                  const SizedBox(height: 24),
                                  ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<HumanModCubit>()
                                          .selectBirthday(selectedDate!);
                                      setState(() {
                                        selectedDate = null;
                                      });
                                    },
                                    child: const Text('Calculate Another'),
                                  ),
                                ],
                              ),
                            ),
                          _ => selectedDate != null
                              ? Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<HumanModCubit>()
                                          .selectBirthday(selectedDate!);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 32,
                                        vertical: 16,
                                      ),
                                    ),
                                    child: const Text('Calculate My Mod'),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        },
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildModCard(BuildContext context, String title, HumanMod mod) {
    final color = switch (mod) {
      HumanMod.high => AppTheme.successColor,
      HumanMod.low => AppTheme.errorColor,
      HumanMod.criticalDay => AppTheme.warningColor,
    };

    final text = switch (mod) {
      HumanMod.high => 'High',
      HumanMod.low => 'Low',
      HumanMod.criticalDay => 'Critical Day',
    };

    return Card(
      color: AppTheme.surfaceColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              text,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: color,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
