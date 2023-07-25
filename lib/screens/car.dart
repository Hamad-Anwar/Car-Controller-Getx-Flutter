import 'package:car_controller/Services/Get/get_car.dart';
import 'package:car_controller/widget/car_part.dart';
import 'package:car_controller/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Car extends StatelessWidget {
  Car({super.key});

  final GetCar controller = Get.put(GetCar());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.blue.shade900,
              Colors.black,
            ])),
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    Positioned(
                      top: 100,
                      left: 50,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 300,
                          width: 350,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/car.png'))),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 70,
                        left: 30,
                        right: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            text(
                              "Ferrari",
                              30,
                              Colors.white,
                              FontWeight.bold,
                              letterspacel: 8.0,
                            ),
                            InkWell(
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white10,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.sunny,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                    Positioned(
                        top: 120,
                        left: 25,
                        child: text(" Blue 488 Spider", 20.0,
                            Colors.white.withOpacity(.5), FontWeight.bold))
                  ],
                )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text("CONTROLS", 30, Colors.white, FontWeight.bold),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => CarPart(name: "Engine",state: controller.engin.value,
                               onTap: () => controller.setEngine()),
                          ),
                          Obx(
                            () => CarPart(name: "Door",state:  controller.door.value,
                               onTap:  () => controller.setDoor()),
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => CarPart(name: "Trunk",state:  controller.trunk.value,
                               onTap:  () => controller.setTrunk()),
                          ),
                          Obx(
                            () => CarPart(name: "Climate",state:  controller.climate.value,
                               onTap:  () => controller.setClimate()),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

}
