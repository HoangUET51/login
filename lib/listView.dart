import 'package:first_app/common/AppColors.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: Size.fromRadius(20),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            leadingWidth: 56,
            title: Text(
              "Chats",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColor.titleColor,
                  fontSize: 30),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: AppColor.titleColor,
                  ),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  child: Icon(Icons.edit_calendar_outlined,
                      color: AppColor.titleColor),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ),
              )
            ],
          )),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: TextField(
                style: TextStyle(
                    fontSize: 17, color: Colors.grey.withOpacity(0.5)),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none)),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5), fontSize: 17),
                    contentPadding:
                        EdgeInsets.only(top: 6, bottom: 8, left: 20))),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, top: 8, bottom: 16),
            width: double.infinity,
            height: 106,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, position) {
                return SizedBox(
                  width: 30,
                );
              },
              itemCount: 5,
              itemBuilder: (context, int index) {
                if (index == 0) {
                  return Column(
                    children: [
                      Container(
                        child: Icon(Icons.add),
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            color: Colors.grey.withOpacity(0.2)),
                      ),
                      SizedBox(height: 7),
                      Text(
                        "Your story",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColor.subTitleColor),
                      )
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      Stack(alignment: Alignment.bottomRight, children: [
                        Positioned(
                          child: Container(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(28),
                                child: Image.asset("assets/images/avatar.png")),
                            width: 52,
                            height: 52,
                          ),
                        ),
                        Positioned(
                            child: Icon(
                          Icons.circle,
                          color: AppColor.tickColor,
                          size: 16,
                        ))
                      ]),
                      SizedBox(height: 7),
                      Text(
                        "Martin",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: AppColor.subTitleColor),
                      )
                    ],
                  );
                }
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 456,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset("assets/images/avatar.png")),
                      width: 50,
                      height: 50,
                    ),
                    title: Text(
                      "Martin Randolph",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColor.titleColor),
                    ),
                    subtitle: Text(
                      "You: What’s man! · 9:40 AM",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.subTitleColor),
                    ),
                    trailing: Icon(
                      Icons.circle_outlined,
                      color: AppColor.subTitleColor,
                      size: 16,
                    ),
                  );
                },
                separatorBuilder: (context, position) {
                  return SizedBox(
                    width: 20,
                  );
                },
                itemCount: 6),
          ),
          Container(
            color: Colors.grey.withOpacity(0.3),
            width: double.infinity,
            height: 85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 80,
                    height: 52,
                    child: Icon(
                      Icons.message,
                      size: 28,
                    )),
                Container(
                  width: 80,
                  height: 52,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Icon(
                          Icons.people,
                          size: 28,
                          color: AppColor.subTitleColor,
                        ),
                      ),
                      Positioned(
                        top: 7,
                        right: 25,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white54),
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontSize: 13, color: AppColor.tickColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    width: 80,
                    height: 52,
                    child: Icon(
                      Icons.compass_calibration,
                      size: 28,
                      color: AppColor.subTitleColor,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
