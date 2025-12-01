import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stufe/core/debug/debug_logger.dart';
import 'package:stufe/data/providers/user_provider.dart';
import 'package:stufe/features/home/widgets/quick_action_card.dart';
import 'package:stufe/features/home/widgets/visa_card.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userProvider);

    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Greeting Section
          userAsync.when(
            data: (user) => _buildGreetingSection(user?.name),
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
          ),

          const SizedBox(height: 28),

          // Quick Actions
          _buildQuickActionsSection(context, ref),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildGreetingSection(String? firstName) {
    final hour = DateTime.now().hour;
    String greeting;
    IconData greetingIcon;

    if (hour < 12) {
      greeting = 'Good Morning';
      greetingIcon = Icons.wb_sunny_outlined;
    } else if (hour < 18) {
      greeting = 'Good Afternoon';
      greetingIcon = Icons.wb_sunny;
    } else {
      greeting = 'Good Evening';
      greetingIcon = Icons.nightlight_outlined;
    }

    final displayName = firstName ?? 'there';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(greetingIcon, size: 28, color: Colors.amber[700]),
            const SizedBox(width: 8),
            Text(
              greeting,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Welcome back, $displayName',
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActionsSection(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Quick Actions',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            QuickActionCard(
              icon: Icons.explore_outlined,
              label: 'Action 1',
              onTap: () => {},
            ),
            QuickActionCard(
              icon: Icons.assignment_outlined,
              label: 'Action 2',
              onTap: () {},
            ),
            QuickActionCard(
              icon: Icons.alarm_outlined,
              label: 'Action 3',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEmptyRecommendationState(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue[50]!, Colors.purple[50]!],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(Icons.rocket_launch_outlined, size: 64, color: Colors.blue[700]),
          const SizedBox(height: 16),
          const Text(
            'Start Your Visa Journey',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Get personalized visa recommendations based on your profile',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () => {},
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Get Started'),
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationSection(
    BuildContext context,
    WidgetRef ref,
    dynamic recommendation,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Your Recommendations',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton.icon(
              onPressed: () => {},
              icon: const Icon(Icons.refresh, size: 18),
              label: const Text('New Check'),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // View Full Details Button
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () => {},
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('View Full Details'),
        ),
      ],
    );
  }
}
