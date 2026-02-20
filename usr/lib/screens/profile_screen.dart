import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                      image: const DecorationImage(
                        image: NetworkImage('https://i.pravatar.cc/150?img=11'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Alex Doe',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'alex.doe@example.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Premium Member',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            _buildSectionHeader('General'),
            _buildSettingsTile(context, icon: Icons.person_outline, title: 'Personal Info'),
            _buildSettingsTile(context, icon: Icons.notifications_outlined, title: 'Notifications'),
            _buildSettingsTile(context, icon: Icons.language, title: 'Language'),
            
            const SizedBox(height: 24),
            _buildSectionHeader('Security'),
            _buildSettingsTile(context, icon: Icons.lock_outline, title: 'Change Password'),
            _buildSettingsTile(context, icon: Icons.fingerprint, title: 'Biometrics', hasSwitch: true),
            
            const SizedBox(height: 24),
            _buildSectionHeader('Support'),
            _buildSettingsTile(context, icon: Icons.help_outline, title: 'Help Center'),
            _buildSettingsTile(context, icon: Icons.info_outline, title: 'About Us'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    bool hasSwitch = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white70),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: hasSwitch
            ? Switch(
                value: true,
                onChanged: (val) {},
                activeColor: Theme.of(context).primaryColor,
              )
            : const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: hasSwitch ? null : () {},
      ),
    );
  }
}
