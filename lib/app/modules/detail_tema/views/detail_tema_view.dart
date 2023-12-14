import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_TanggalAcara_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_gallery_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_infodasar_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_infopria_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_infowanita_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_ucapan_stepper.dart';
import 'package:crm_wedding/app/routes/app_pages.dart';
import 'package:fine_stepper/fine_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailTemaView extends StatefulWidget {
  const DetailTemaView({super.key});

  @override
  State<DetailTemaView> createState() => _DetailTemaViewState();
}

class _DetailTemaViewState extends State<DetailTemaView> {
  int index = 0;

  Widget iconExample() {
    return FineStepper.icon(
      onFinish: () => Future.delayed(const Duration(seconds: 2)),
      indicatorOptions: const IndicatorOptions(scrollable: true),
      steps: [
        StepItem.icon(builder: buildColumnStep),
        StepItem.icon(builder: buildStackStep),
        StepItem.icon(builder: buildFormStep),
        StepItem.icon(builder: buildTanggalAcaraStep),
        StepItem.icon(builder: buildGalleryStep),
        StepItem.icon(builder: buildUcapamStep),
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
        StepItem.linear(
          title: '',
          builder: buildTanggalAcaraStep,
        ),
        StepItem.linear(
          title: '',
          builder: buildGalleryStep,
        ),
        StepItem.linear(
          title: '',
          builder: buildUcapamStep,
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
      child: SingleChildScrollView(
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
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildStackStep(BuildContext context) {
    return StepBuilder(
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
                  SizedBox(
                    height: 60,
                  ),
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
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTanggalAcaraStep(BuildContext context) {
    return StepBuilder(
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
                  TanggalAcara(),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGalleryStep(BuildContext context) {
    return StepBuilder(
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
                  GalleryView(),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUcapamStep(BuildContext context) {
    return StepBuilder(
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
                  UcapanView(),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
