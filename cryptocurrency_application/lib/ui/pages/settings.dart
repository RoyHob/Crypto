import 'package:cryptocurrency_application/constants/colors.dart';
import 'package:cryptocurrency_application/constants/style.dart';
import 'package:cryptocurrency_application/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

bool isLight = true;
bool isUsd = false;

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greyColor.shade200,
        title: const Center(
            child: Text(
          "Settings",
          style: appBarTitle,
        )),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: 
      
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  isLight
                      ? const Text(
                          "Switch to Dark Mode",
                          style: settingTitle,
                        )
                      : const Text(
                          "Switch to Light Mode",
                          style: settingTitle,
                        ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(
                      isLight ? Icons.wb_sunny : Icons.nights_stay,
                      color: isLight ? yellowColor : blackColor,
                    ),
                    onPressed: () {
                      setState(() {
                        isLight = !isLight;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text("Change Currency usd/eur"),
                  const Spacer(),
                  IconButton(
                    icon: Icon(isUsd ? Icons.doorbell_sharp : Icons.abc),
                    onPressed: () {
                      setState(() {
                        isUsd = !isUsd;
                      });
                    },
                  )
                  // Switch(
                  //   value: isUsd,
                  //   onChanged: (state) {
                  //     setState(
                  //       () {
                  //         isUsd = true;
                  //       },
                  //     );
                  // },
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
