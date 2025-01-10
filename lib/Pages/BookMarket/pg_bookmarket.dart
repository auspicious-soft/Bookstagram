import 'package:bookstagram/Pages/Authors/pg_authors.dart';
import 'package:bookstagram/Pages/Category/pg_catergory.dart';
import 'package:bookstagram/Pages/Collections/Pg_collections.dart';
import 'package:bookstagram/Pages/Publishers/pg_publishers.dart';
import 'package:bookstagram/app_settings/components/label.dart';
import 'package:bookstagram/app_settings/constants/app_assets.dart';
import 'package:bookstagram/app_settings/constants/app_colors.dart';
import 'package:bookstagram/app_settings/constants/app_const.dart';
import 'package:bookstagram/app_settings/constants/app_dim.dart';
import 'package:bookstagram/app_settings/constants/helpers.dart';
import 'package:bookstagram/localization/app_localization.dart';
import 'package:flutter/material.dart';

class PgBookmarket extends StatefulWidget {
  const PgBookmarket({super.key});

  @override
  State<PgBookmarket> createState() => _PgBookmarketState();
}

class _PgBookmarketState extends State<PgBookmarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  AppAssets.bookmarkett,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 15,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 4.3,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label(
                    txt:
                        AppLocalization.of(context).translate('boundlessbooks'),
                    type: TextTypes.f_34_700,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.border,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          height: 20,
                          width: 20,
                          AppAssets.search,
                          fit: BoxFit.contain,
                        ),
                        padHorizontal(10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: AppLocalization.of(context)
                                  .translate('search'),
                              hintStyle: const TextStyle(
                                color: AppColors.inputBorder,
                                fontFamily: AppConst.fontFamily,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: const TextStyle(
                              color: AppColors.blackColor,
                              fontFamily: AppConst.fontFamily,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                  ),
                  padVertical(15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PgCatergory(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Label(
                            txt: AppLocalization.of(context)
                                .translate('Categories'),
                            type: TextTypes.f_20_500),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  padVertical(15),
                  _buildButtonGrid(),
                  padVertical(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PgCollections(
                              label:
                                  '${AppLocalization.of(context).translate('Mindchanging')} 🤯'),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Label(
                            txt:
                                '${AppLocalization.of(context).translate('Mindchanging')} 🤯',
                            type: TextTypes.f_20_500),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  padVertical(20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 144,
                                  width: 144,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        AppAssets.book,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                padVertical(5),
                                const Label(
                                    txt: "Көксерек", type: TextTypes.f_13_500),
                                const Label(
                                  txt: "Мұхтар Әуезов",
                                  type: TextTypes.f_13_400,
                                  forceColor: AppColors.resnd,
                                ),
                                const Label(
                                  txt: "Поэзия",
                                  type: TextTypes.f_12_400,
                                  forceColor: AppColors.resnd,
                                )
                              ]),
                        );
                      }),
                    ),
                  ),
                  padVertical(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PgCollections(
                              label:
                                  '${AppLocalization.of(context).translate('soulfulbooks')} 💔'),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Label(
                            txt:
                                '${AppLocalization.of(context).translate('soulfulbooks')} 💔',
                            type: TextTypes.f_20_500),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  padVertical(20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 144,
                                  width: 144,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        AppAssets.book,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                padVertical(5),
                                const Label(
                                    txt: "Көксерек", type: TextTypes.f_13_500),
                                const Label(
                                  txt: "Мұхтар Әуезов",
                                  type: TextTypes.f_13_400,
                                  forceColor: AppColors.resnd,
                                ),
                                const Label(
                                  txt: "Поэзия",
                                  type: TextTypes.f_12_400,
                                  forceColor: AppColors.resnd,
                                )
                              ]),
                        );
                      }),
                    ),
                  ),
                  padVertical(20),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PgCollections(
                                label:
                                    '${AppLocalization.of(context).translate('bestsellers')}🔥'),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Label(
                              txt:
                                  '${AppLocalization.of(context).translate('bestsellers')}🔥',
                              type: TextTypes.f_20_500),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                          )
                        ],
                      )),
                  padVertical(20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 144,
                                  width: 144,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        AppAssets.book,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                padVertical(5),
                                const Label(
                                    txt: "Көксерек", type: TextTypes.f_13_500),
                                const Label(
                                  txt: "Мұхтар Әуезов",
                                  type: TextTypes.f_13_400,
                                  forceColor: AppColors.resnd,
                                ),
                                const Label(
                                  txt: "Поэзия",
                                  type: TextTypes.f_12_400,
                                  forceColor: AppColors.resnd,
                                )
                              ]),
                        );
                      }),
                    ),
                  ),
                  padVertical(20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
                                    child: Center(
                                      child: Image.asset(
                                        AppAssets.book,
                                        width:
                                            ScreenUtils.screenWidth(context) /
                                                1.4,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ]),
                        );
                      }),
                    ),
                  ),
                  padVertical(20),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PgCollections(
                                label:
                                    '${AppLocalization.of(context).translate('Audiobooks')}🎧'),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Label(
                              txt:
                                  '${AppLocalization.of(context).translate('Audiobooks')}🎧',
                              type: TextTypes.f_20_500),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                          )
                        ],
                      )),
                  padVertical(15),
                  Column(
                    children: List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0, top: 10),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        AppAssets.book,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 40,
                                  left: 35,
                                  child: Icon(
                                    Icons.play_circle_filled,
                                    size: 28,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            padHorizontal(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                padVertical(5),
                                const Label(
                                  txt: "Көксерек",
                                  type: TextTypes.f_13_500,
                                ),
                                const Label(
                                  txt: "Мұхтар Әуезов",
                                  type: TextTypes.f_13_400,
                                  forceColor: AppColors.resnd,
                                ),
                                const Label(
                                  txt: "Аудио",
                                  type: TextTypes.f_12_400,
                                  forceColor: AppColors.resnd,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
                  ),
                  padVertical(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Label(
                          txt:
                              '${AppLocalization.of(context).translate('newbooks')}💌',
                          type: TextTypes.f_20_500),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                      )
                    ],
                  ),
                  padVertical(20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 144,
                                  width: 144,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        AppAssets.book,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                padVertical(5),
                                const Label(
                                    txt: "Көксерек", type: TextTypes.f_13_500),
                                const Label(
                                  txt: "Мұхтар Әуезов",
                                  type: TextTypes.f_13_400,
                                  forceColor: AppColors.resnd,
                                ),
                                const Label(
                                  txt: "Поэзия",
                                  type: TextTypes.f_12_400,
                                  forceColor: AppColors.resnd,
                                )
                              ]),
                        );
                      }),
                    ),
                  ),
                  padVertical(30),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PgAuthors(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Label(
                              txt: AppLocalization.of(context)
                                  .translate('Authors'),
                              type: TextTypes.f_20_500),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                          )
                        ],
                      )),
                  padVertical(10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(55)),
                                  child: Center(
                                    child: Image.asset(
                                      width: 114,
                                      height: 114,
                                      AppAssets.book,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                padVertical(5),
                                const Label(
                                    txt: "Құнанбайұлы",
                                    type: TextTypes.f_13_500),
                              ]),
                        );
                      }),
                    ),
                  ),
                  padVertical(30),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PgPublishers(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Label(
                              txt: AppLocalization.of(context)
                                  .translate('Publishers'),
                              type: TextTypes.f_20_500),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                          )
                        ],
                      )),
                  padVertical(15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 144,
                                  width: 144,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        AppAssets.book,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                padVertical(5),
                                const Label(
                                    txt: "Абай баспасы",
                                    type: TextTypes.f_13_500),
                              ]),
                        );
                      }),
                    ),
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

Widget _buildButtonGrid() {
  final List<Map<String, dynamic>> items = [
    {'label': '📋 Расказы'},
    {'label': '👤 Биография'},
    {'label': '💼 Мастер-класстар'},
    {'label': '🎙️ Подкастар'},
    {'label': '💡 Пайдалы ақпараттар'},
    {'label': '📔 Журналдар'},
  ];

  return Wrap(
    // alignment: WrapAlignment.center,
    spacing: 6.0,
    runSpacing: 10.0,
    children: items.map((item) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Label(
          txt: item['label'],
          type: TextTypes.f_18_400,
        ),
      );
    }).toList(),
  );
}
