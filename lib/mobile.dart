import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/constants.dart';
import 'package:responsive_and_adaptive/progress_indicator.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            color: Colors.teal,
          ),
        ),
        Expanded(
          flex: 2,
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login Now",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: "Email Address", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    labelText: "password", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45.0,
                      color: Colors.teal,
                      child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      height: 45.0,
                      color: Colors.blue,
                      child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0,),
              Center(child: MyProgressIndicator(os: getOs(),)),
            ],
          ),
        )),
      ],
    ));
  }
}
