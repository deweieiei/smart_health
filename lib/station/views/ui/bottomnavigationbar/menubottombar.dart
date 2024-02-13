import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:smart_health/station/provider/provider_function.dart';
import 'package:smart_health/station/views/ui/bottomnavigationbar/popupbar/popupsetting.dart';

class Settingbar extends StatefulWidget {
  const Settingbar({super.key});

  @override
  State<Settingbar> createState() => _SettingbarState();
}

class _SettingbarState extends State<Settingbar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.read<Datafunction>().playsound();
          showModalBottomSheet(
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              context: context,
              builder: (context) => PopupSetting());
        },
        child: Image.asset('assets/gear.png'));
  }
}
