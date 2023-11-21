import 'package:flutter/material.dart';
import 'package:study_flutter/miso/palette.dart';

class MyList extends StatelessWidget {
  const MyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          const Text(
            "예약내역",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.error,
                    color: Palette.primaryColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      "예약된 서비스가 아직 없어요. 지금 예약해보세요!",
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: SizedBox(
              height: 72.0,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Palette.primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("예약하기"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
