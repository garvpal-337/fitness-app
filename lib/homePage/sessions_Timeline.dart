import 'package:assignment/homePage/sessionController.dart';
import 'package:assignment/sessionData.dart';
import 'package:assignment/show_image.dart';
import 'package:assignment/viewModel.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timelines/timelines.dart';

class sessionsTimeline extends StatelessWidget {
  // const sessionsTimeline({Key? key}) : super(key: key);
  final controller = Get.find<sessionController>();
  final dataController = Get.put(sessiondata());
  final dataService = Get.find<dataModel>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var dataList = dataController.Data;
    var sessionIndex = controller.sessionIndex.toInt();
    print(sessionIndex);
    return Timeline.builder(
      itemCount: dataList.length,
      itemBuilder: (ctx, index) {
        return TimelineTile(
          contents: GestureDetector(
            onTap: () {
              print('session$index');
            },
            child: Stack(children: [
              Container(
                  height: size.height * 0.2,
                  width: size.width * 0.87,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.black),
                    //color: Colors.blue
                  ),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Session ${index + 1}",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Chip(
                                backgroundColor:
                                    index == sessionIndex ? Colors.blue : null,
                                labelStyle: TextStyle(
                                    color: index == sessionIndex
                                        ? Colors.white
                                        : null),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                label: Text(index < sessionIndex
                                    ? "Completed"
                                    : index == sessionIndex + 1
                                        ? "Start"
                                        : index == sessionIndex
                                            ? "Start Session"
                                            : "Locked")),
                            //if(index < sessionIndex)Text("Peformed At :" + formatDate(dataService.items[index].time,[hh, ':',nn, ]))
                          ],
                        ),
                      )),
                      Container(
                        height: size.height * 0.18,
                        width: size.height * 0.18,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: ShowImage(
                              imagelink: dataList[index],
                            )
                            // Image(
                            //   image: NetworkImage(dataList[index]),
                            //   fit: BoxFit.cover,
                            // ),
                            ),
                      )
                    ],
                  )),
              if (index < sessionIndex)
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: size.height * 0.2,
                      width: size.width * 0.857,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          // border: Border.all(color: Colors.grey),
                          color: Colors.white.withOpacity(0.5)),
                    ))
            ]),
          ),
          node: TimelineNode(
            indicator: index <= sessionIndex
                ? ContainerIndicator(
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                    ),
                  )
                : ContainerIndicator(
                    child: Icon(
                      Icons.circle_outlined,
                      color: Colors.grey,
                    ),
                  ),
            startConnector: index > 0
                ? DashedLineConnector(
                    thickness: 4,
                    dash: 7,
                    gap: 3,
                    space: 3,
                    color: index <= sessionIndex ? null : Colors.grey,
                  )
                : null,
            endConnector: index < 29
                ? DashedLineConnector(
                    thickness: 4,
                    dash: 7,
                    gap: 3,
                    space: 3,
                    color: index <= sessionIndex - 1 ? null : Colors.grey,
                  )
                : null,
          ),
          nodeAlign: TimelineNodeAlign.start,
          direction: Axis.vertical,
          //nodePosition: 1,
        );
      },
    );
  }
}
