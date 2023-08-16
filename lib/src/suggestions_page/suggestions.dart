import 'dart:io';

import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';
import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';

import 'package:provider/provider.dart';

import '../../components/plant_image.dart';
import '../../components/text_property.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  static const routeName = '/src/suggestions_page/suggestions';

  @override
  Widget build(BuildContext context) {
    // Get disease from provider
    final _diseaseService = Provider.of<DiseaseService>(context);

    Disease _disease = _diseaseService.disease;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diagnose Report'),
      ),
      body: SingleChildScrollView(
        child: Container(
            color: kWhite,
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //       image: AssetImage('assets/images/bgr.jpg'), fit: BoxFit.cover),
            // ),
            child: Padding(
              padding: EdgeInsets.all((0.02 * size.height)),
              child: Column(
                children: [
                  Center(
                      child: CircleAvatar(
                    radius: 112,
                    backgroundColor: kSecondary,
                    child: PlantImage(
                      size: size,
                      imageFile: File(_disease.imagePath),
                    ),
                  )),
                  // Divider(
                  //   thickness: (0.0066 * size.height),
                  //   height: (0.013 * size.height),
                  // ),

                  SizedBox(
                    height: size.height * 0.5,
                    child: ListView(
                      children: [
                        TextProperty(
                          title: 'Disease name',
                          value: _disease.name,
                          height: size.height,
                        ),
                        TextProperty(
                          title: 'Possible causes',
                          value: _disease.possibleCauses,
                          height: size.height,
                        ),
                        TextProperty(
                          title: 'Possible solution',
                          value: _disease.possibleSolution,
                          height: size.height,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
