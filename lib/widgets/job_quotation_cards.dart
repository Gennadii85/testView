import 'package:dashboard/models/job_quotation_card_model.dart';
import 'package:flutter/material.dart';

// from pull request
class JobQuotationCards extends StatefulWidget {
  const JobQuotationCards({super.key});

  @override
  State<JobQuotationCards> createState() => _JobQuotationCardsState();
}

class _JobQuotationCardsState extends State<JobQuotationCards> {
  @override
  Widget build(BuildContext context) {
    //* provided that the data comes from outside
    // List<JobQuotationCardsModel> jobQuotationCards = _dateCardIdList
    //     .map((elem) => JobQuotationCardsModel(id: elem))
    //     .toList();
    //* then link the size to the id
    return const Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        JobQuotationCardsModel(
            // transfer card size here by (id - 8)
            ),
        Positioned(
          bottom: 10,
          child: JobQuotationCardsModel(),
        ),
      ],
    );
  }
}
