import 'package:e_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class EOverallProductRating extends StatelessWidget {
  const EOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              EProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              EProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              EProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              EProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              EProgressIndicator(
                text: '1',
                value: 0.2,
              ),
            ],
          ),
        )
      ],
    );
  }
}
