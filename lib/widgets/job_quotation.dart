import 'package:dashboard/common/variables.dart';
import 'package:dashboard/date/date_time.dart';
import 'package:dashboard/widgets/job_quotation_cards.dart';
import 'package:flutter/material.dart';

class JobQuotation extends StatelessWidget {
  const JobQuotation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          _jobRow(),
          _dateTimeRow(),
          const SizedBox(
            height: 150,
            child: JobQuotationCards(),
          ),
        ],
      ),
    );
  }

  Row _dateTimeRow() {
    return Row(
      children: [
        const Icon(Icons.schedule),
        const SizedBox(width: 5),
        Text(
          '${JobDate().todayDate}${JobDate().todayDate2}',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Variables.jobQuotationDateTimeRow,
          ),
        ),
      ],
    );
  }

  Row _jobRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Variables.title2,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            Variables.jobButtonTitle,
            style: TextStyle(
              color: Variables.budgeColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
