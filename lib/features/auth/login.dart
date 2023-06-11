import 'package:flowtask/providers/theme_provider.dart';
import 'package:flowtask/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final targetWidth = constraints.maxWidth > 360.0 ? 360.0 : constraints.maxWidth;
              return SizedBox(
                width: targetWidth,
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    Text(
                      "Flowtask",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.bold, color: kTextColor),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () => {},
                        child: Text("Log In"),
                      ),
                    ),
                    Switch(
                      value: ref.watch(themeProvider) == ThemeMode.dark,
                      onChanged: (newVal) {
                        ref.read(themeProvider.notifier).darkEnabled = newVal;
                      },
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
