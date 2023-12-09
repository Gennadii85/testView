import 'package:flutter/material.dart';
import 'package:dashboard/common/variables.dart';
import 'package:dashboard/models/job_quotation_button_model.dart';

class JobQuotationCardsModel extends StatelessWidget {
  const JobQuotationCardsModel({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        surfaceTintColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _image(),
              const SizedBox(
                width: 8,
              ),
              _content(),
            ],
          ),
        ),
      ),
    );
  }

  Column _content() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Variables.jobQuotationContentTitle3,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Variables.jobQuotationContentTitle3Color,
                  ),
                ),
                Text(
                  'Contractor: Contractor Name',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Variables.jobQuotationContentNameColor,
                  ),
                ),
                Text(
                  '10 Regent Street, W1 7SK',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Variables.jobQuotationContentCityColor,
                  ),
                ),
              ],
            ),
            IconButton.outlined(
              style: IconButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.grey.shade300),
              ),
              onPressed: () {},
              icon: const Icon(Icons.share_location_outlined),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              JobQuotationButtonModel(
                text: 'View Job',
                textColor: Variables.jobQuotationContentButtonTextColor,
                gradientColor: Variables.jobQuotationContentButtonColor,
              ),
              const SizedBox(width: 10),
              JobQuotationButtonModel(
                text: 'Message',
                textColor: Variables.jobQuotationContentButton2TextColor,
                gradientColor: Variables.jobQuotationContentButton2Color,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _image() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          image: NetworkImage(Variables.url),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    );
  }
}
