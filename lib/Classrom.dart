import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NhomLop extends StatelessWidget {
 NhomLop({super.key});
List<hocphan> listview=[
 hocphan ("[2021-2022]-Lập Trình Phân Tán - Nhóm 3",
        "2021-2022.2.TIN3142.003", "7 học viên", "assets/image/anh1.jpg"),
    hocphan("[2021-2022]-Tin Học Đại Cương - Nhóm 1", "2021-2022.2.TIN3142.001",
        "12 học viên", "assets/image/anh2.jpg"),
    hocphan("[2021-2022]-Thực tập viết niên luận - Nhóm 2",
        "2021-2022.2.TIN3142.002", "21 học viên", "assets/image/anh3.jpg"),
    hocphan("[2021-2022]-Lập trình ứng dụng thiết bị di động - Nhóm 3",
        "2021-2022.2.TIN3142.003", "32 học viên", "assets/image/anh4.jpg"),
    hocphan("[2021-2022]-Java cơ bản - Nhóm 3", "2021-2022.2.TIN3142.003",
        "10 học viên", "assets/image/anh5.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 500,
        child: Column(
          children: [
            ...listview.map((e){
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                image:DecorationImage(
                image: AssetImage(e.anh),
                fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 50),
                  child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                e.monhoc,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300, 
                                  color: Colors.white, 
                                  fontSize: 30,),
                              ),
                              Text(
                                e.mamonhoc,
                                style: TextStyle(
                                  fontWeight: FontWeight.w300, 
                                  color: Colors.white, 
                                  fontSize: 10,
                                  height: 2,),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  e.hocvien+"Học Viên",
                                  style: TextStyle(
                                  fontWeight: FontWeight.w300, 
                                  color: Colors.white, 
                                  fontSize: 30,),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ),
            );
          }).toList()
          ],
        ),
      ),
    );
  }
}

class hocphan {
  String monhoc;
  String mamonhoc;
  String hocvien;
  String anh;
  hocphan(this.monhoc, this.mamonhoc, this.hocvien, this.anh);
}