import 'package:crm_wedding/app/modules/widgets/detail_tema/detail_infodasar_stepper.dart';
import 'package:crm_wedding/app/modules/widgets/detail_tema/detail_infopria_stepper.dart';
import 'package:crm_wedding/app/modules/widgets/detail_tema/detail_infowanita_stepper.dart';
import 'package:crm_wedding/app/routes/app_pages.dart';
import 'package:fine_stepper/fine_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int index = 0;

  Widget iconExample() {
    return FineStepper.icon(
      onFinish: () => Future.delayed(const Duration(seconds: 2)),
      indicatorOptions: const IndicatorOptions(scrollable: true),
      steps: [
        StepItem.icon(builder: buildColumnStep),
        StepItem.icon(builder: buildStackStep),
        StepItem.icon(builder: buildFormStep),
      ],
    );
  }

  Widget linearExample() {
    return FineStepper.linear(
      onFinish: () => Future.delayed(const Duration(seconds: 2)),
      steps: [
        StepItem.linear(
          title: '',
          description: 'This is a desc',
          builder: buildColumnStep,
        ),
        StepItem.linear(
          title: '',
          builder: buildStackStep,
        ),
        StepItem.linear(
          title: '',
          builder: buildStackStep,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber, // Warna utama (kuning)
        ).copyWith(
          background: Colors.amber, // Warna latar belakang umum
          onBackground: Colors.white, // Warna teks pada latar belakang
          primary: Colors.black, // Warna teks dan ikon utama
          onPrimary: Colors.amber, // Warna teks pada teks dan ikon utama
        ),
      ),
      home: Scaffold(
        backgroundColor: Color(0xffF7EBE1),
        appBar: AppBar(
          backgroundColor: Color(0xffF7EBE1),
          centerTitle: false,
          title: const Text('Buat tema'),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Builder(
          builder: (context) {
            if (index == 0) {
              return iconExample();
            }
            return linearExample();
          },
        ),
      ),
    );
  }

  Widget buildColumnStep(BuildContext context) {
    return StepBuilder(
      layout: StepLayout.column,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step ${FineStepper.of(context).stepIndex + 1}',
                style: TextStyle(color: Colors.transparent),
              ),
              InfoDasar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStackStep(BuildContext context) {
    return StepBuilder(
      layout: StepLayout.column,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Step ${FineStepper.of(context).stepIndex + 1}',
                    style: TextStyle(color: Colors.transparent),
                  ),
                  InfoPria(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFormStep(BuildContext context) {
    return StepBuilder(
      layout: StepLayout.column,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Step ${FineStepper.of(context).stepIndex + 1}',
                    style: TextStyle(color: Colors.transparent),
                  ),
                  Infowanita(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
