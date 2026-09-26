import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),

      appBar: AppBar(
        backgroundColor: const Color(0xFF111111),
        foregroundColor: Colors.white,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          const Text(
            'Recent Notifications',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          _notificationCard(
            icon: Icons.card_membership,
            title: 'Membership Active',
            message:
                'Your Premium membership is active. You have 24 days remaining.',
            time: 'Today',
            iconColor: Colors.green,
          ),

          const SizedBox(height: 12),

          _notificationCard(
            icon: Icons.payment,
            title: 'Payment Successful',
            message:
                'Your Premium membership payment has been successfully received.',
            time: '2 days ago',
            iconColor: Colors.green,
          ),

          const SizedBox(height: 12),

          _notificationCard(
            icon: Icons.fitness_center,
            title: 'Workout Reminder',
            message:
                'Your personalized workout plan is ready. Stay consistent!',
            time: '3 days ago',
            iconColor: const Color(0xFFFF3B30),
          ),

          const SizedBox(height: 12),

          _notificationCard(
            icon: Icons.restaurant,
            title: 'Diet Plan Updated',
            message:
                'Your personalized daily nutrition plan is available.',
            time: '4 days ago',
            iconColor: const Color(0xFFFF3B30),
          ),

          const SizedBox(height: 12),

          _notificationCard(
            icon: Icons.calendar_month,
            title: 'Attendance Update',
            message:
                'Your current attendance rate is 86%. Keep up the good work!',
            time: '5 days ago',
            iconColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _notificationCard({
    required IconData icon,
    required String title,
    required String message,
    required String time,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFF181818),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFF292929),
        ),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: 48,
            height: 48,

            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),

            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  time,
                  style: const TextStyle(
                    color: Colors.white38,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}