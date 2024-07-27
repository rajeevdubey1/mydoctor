import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mydoctor/widgets/upcomming_schedules.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;

  final _scheduleWidgets = [
    
    // upcomming
    UpcommingSchedules(),
    // completed
    Center(child: Text('completed'),),
    // canceled
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Schedule',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6FA),
                borderRadius: BorderRadius.circular(10),
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 0;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 0 ? Color(0xFF7165D6) : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Upcomming',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500, color: _buttonIndex == 0 ? Colors.white : Colors.black38,),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                          color:  _buttonIndex == 1 ? Color(0xFF7165D6) : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Completed',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500, color: _buttonIndex == 1 ? Colors.white : Colors.black38,),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 2;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 2 ? Color(0xFF7165D6) : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Canceled',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500, color: _buttonIndex == 2 ? Colors.white : Colors.black38,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 30,),
            _scheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
