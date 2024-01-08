import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_TanggalAcara_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_gallery_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_infodasar_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_infopria_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_infowanita_stepper.dart';
import 'package:crm_wedding/app/modules/detail_tema/widgets_detail_tema/detail_ucapan_stepper.dart';
import 'package:crm_wedding/app/routes/app_pages.dart';
import 'package:fine_stepper/fine_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return WillPopScope(
      onWillPop: () async {
        showModalBottomSheet(
          showDragHandle: true,
          context: context,
          enableDrag: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (context) => buildSheetBack(),
        );
        return true;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.amber, // Warna utama (kuning)
          ).copyWith(
            background: Colors.white, // Warna latar belakang umum
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
                showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  enableDrag: false,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) => buildSheetBack(),
                );
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
                  'Step ${FineStepper.of(context).stepIndex + 1}  '
                  'Info dasar & Tampilan'
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 10,
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

  Widget buildSheetBack() {
    return Container(
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            Column(
              children: [
                Text('Anda yakin ingin meninggalkan Pengisian Form Wdding ?',
                    textAlign: TextAlign.center),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    Get.toNamed(Routes.HOME);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: const Center(
                      child: Text('Save sebagai Draf',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: const Center(
                      child: Text('Tetap di Sini',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget buildStackStep(BuildContext context) {
    return StepBuilder(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Step ${FineStepper.of(context).stepIndex + 1}  '
                    'Mempelai Pria'
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17),
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
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Step ${FineStepper.of(context).stepIndex + 1}  '
                    'Mempelai wanita'
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
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
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 10, color: Colors.yellow),
        backgroundColor: Colors.yellow);
    return StepBuilder(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Step ${FineStepper.of(context).stepIndex + 1}  '
                        'Alamat & Tanggal Acara 1'
                        '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: style,
                        onPressed: () {},
                        child: const Text('Tambah',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
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
                    'Step ${FineStepper.of(context).stepIndex + 1}  '
                    'Upload Photo Wedding'
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 200,
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
                    'Step ${FineStepper.of(context).stepIndex + 1}  '
                    'Ucapan & Kata-Kata'
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17),
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
