import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              _buildSwitchListTile(
                currentValue: _isSelected,
                title: 'Auto Update?',
                description: 'Should the addons auto update?',
                updateValue: (newValue) {
                  setState(() {
                    _isSelected = newValue;
                  });
                },
              ),
              _buildSwitchListTile(
                currentValue: _isSelected,
                title: 'Auto Update?',
                description: 'Should the addons auto update?',
                updateValue: (newValue) {
                  setState(() {
                    _isSelected = newValue;
                  });
                },
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSwitchListTile({String title, String description, bool currentValue, Function updateValue}) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }
}
