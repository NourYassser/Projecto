import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingscr extends StatefulWidget {
  const settingscr({super.key});

  @override
  State<settingscr> createState() => _settingscrState();
}

bool _isDark = false;
bool noti = false;

class _settingscrState extends State<settingscr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView(
            children: [
              _SingleSection(
                title: "General",
                children: [
                  _CustomListTile(
                      title: "Dark Mode",
                      icon: Icons.dark_mode_outlined,
                      trailing: Switch(
                          value: _isDark,
                          activeColor: const Color.fromARGB(255, 228, 203, 188),
                          activeTrackColor:
                              const Color.fromARGB(255, 190, 29, 17),
                          onChanged: (value) {
                            setState(() {
                              _isDark = value;
                            });
                          })),
                  _CustomListTile(
                    title: "Notifications",
                    icon: Icons.notifications_none_rounded,
                    trailing: Switch(
                        value: noti,
                        activeColor: const Color.fromARGB(255, 228, 203, 188),
                        activeTrackColor:
                            const Color.fromARGB(255, 190, 29, 17),
                        onChanged: (value) {
                          setState(() {
                            noti = value;
                          });
                        }),
                  ),
                  const _CustomListTile(
                    title: "Security Status",
                    icon: CupertinoIcons.lock_shield,
                  ),
                ],
              ),
              const Divider(),
              const _SingleSection(
                title: "Organization",
                children: [
                  _CustomListTile(
                      title: "Profile", icon: Icons.person_outline_rounded),
                  _CustomListTile(
                      title: "About Coffee", icon: Icons.account_balance_sharp),
                ],
              ),
              const Divider(),
              const _SingleSection(
                title: "Personal",
                children: [
                  _CustomListTile(
                      title: "Help & Feedback",
                      icon: Icons.help_outline_rounded),
                  _CustomListTile(
                      title: "About", icon: Icons.info_outline_rounded),
                ],
              ),
              ListTile(
                title: const Text(
                  "Close ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                leading: const Icon(
                  Icons.close,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? trailing;
  const _CustomListTile({
    Key? key,
    required this.title,
    required this.icon,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: trailing,
      onTap: () {},
    );
  }
}

class _SingleSection extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  const _SingleSection({
    Key? key,
    this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        Column(
          children: children,
        ),
      ],
    );
  }
}
