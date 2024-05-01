import 'package:flutter/material.dart';

import '../../Constants.dart';

class WeatherappBody extends StatelessWidget {
  const WeatherappBody({
    super.key, required this.Temp, required this.condition, required this.date, required this.code,
  });
  final String Temp;
  final String condition;
  final String date;
  final int code;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '📍 Cairo',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Good Morning',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          getWeatherIcon(code),
          Center(
            child: Text(
              Temp,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Center(
            child: Text(
              condition,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/11.png',
                    scale: 8,
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sunrise',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "5:34 am",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/12.png',
                    scale: 8,
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sunset',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "5:34 pm",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Divider(
              color: Colors.grey,
              thickness: 0.1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Image.asset(
                  'assets/13.png',
                  scale: 8,
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Temp Max',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "12°C",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ]),
              Row(
                children: [
                  Image.asset(
                    'assets/14.png',
                    scale: 8,
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Temp Min',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "8°C",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
