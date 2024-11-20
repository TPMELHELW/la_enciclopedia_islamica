// import 'package:elresala/features/sites/data/models/islam_qa.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_enciclopedia_islamica/features/sites/presentation/screen/islam_qa_sub_screens/islamic_all_quesion.dart';
import 'package:la_enciclopedia_islamica/features/sites/presentation/screen/islam_qa_sub_screens/islamqa_sub_topics.dart';

import 'package:la_enciclopedia_islamica/core/widgets/item%20_card.dart';
import '../../../data/models/islam_qa.dart';
import '../../widget/app_bar_custom.dart';

class IslamQAView extends StatelessWidget {
  final Islamqa islamQaSubTopic;
  final title;
  const IslamQAView(
      {super.key, required this.title, required this.islamQaSubTopic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarCustom(title: title).customAppBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
              islamQaSubTopic.subTopics == null ||
                      islamQaSubTopic.subTopics!.isEmpty
                  ? Container()
                  : GestureDetector(
                      onTap: () {
                        Get.to(() => IslamQASubTopic(
                              islamQaSubTopic: islamQaSubTopic.subTopics,
                              title: islamQaSubTopic.name,
                            ));
                      },
                      child: const ItemCard(titleSite: 'Sub Topics')),
              islamQaSubTopic.questions.isEmpty
                  ? Container()
                  : GestureDetector(
                      onTap: () {
                        Get.to(() => IslamAllQuestions(
                              islamQaSubTopic: islamQaSubTopic.questions,
                              title: islamQaSubTopic.name,
                            ));
                      },
                      child: const ItemCard(titleSite: '¡Preguntas!')),
            ],
          ),
        ));
  }
}
