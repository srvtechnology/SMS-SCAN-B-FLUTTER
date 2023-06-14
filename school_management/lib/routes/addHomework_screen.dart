import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_management/layout/home_layout.dart';
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class CustomRowTile extends StatefulWidget {
  final String title;
  final List<String> list;
  final ValueChanged onValueChanged;
  CustomRowTile({required this.title,required this.list,required this.onValueChanged});
  @override
  State<CustomRowTile> createState() => _CustomRowTileState();
}

class _CustomRowTileState extends State<CustomRowTile> {

  String _selectedValue='';
  @override
  void initState(){
    super.initState();
    _selectedValue=widget.list.first;
  }
  Widget _customDropDown(List<String> list,double width,double height){
    return Container(
      width: width*0.45,
      height: height*0.05,
      decoration: BoxDecoration(
          color: Color(0xffF1EFEF),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      margin: EdgeInsets.symmetric(horizontal: width*0.08),
      padding: EdgeInsets.symmetric(horizontal: width*0.04),
      child: DropdownButton<String>(
        value: _selectedValue,
        isExpanded:true,
        icon: SvgPicture.asset("assets/Polygon.svg"),
        elevation: 16,
        style:TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
        underline:  Container(height: 0,),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            _selectedValue = value!;
          });
          widget.onValueChanged(value);
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,style: TextStyle(fontWeight: FontWeight.w500),),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: height*0.02,horizontal: 5),
      child: Container(
        width: width,
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Text(widget.title,style:TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15))),
            Expanded(
              flex: 7,
              child: _customDropDown(widget.list, width, height),)
          ],
        ),
      ),
    );
  }
}

class AddPage extends StatefulWidget {
  static String routename = "/add";

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  List<String> subjectList=['History','Geography','Physics'];
  List<String> typeList = ['Homework','Syllabus'];
  List<String> classList = ['IIIB','VC','VIA','VIB'];
  String subject='';
  String type = '';
  String className = '';


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return HomeLayout(
        child:Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: width*0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 45,
                  height: 45,
                  margin: EdgeInsets.symmetric(vertical: height*0.005),
                  decoration: BoxDecoration(
                      color: Color(0xffFEC20E),
                      shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset("assets/home/homework.svg",width: 15,height: 15,fit: BoxFit.scaleDown,)
              ),
              CustomRowTile(title: "Subject", list: ['History','Geography','Physics'],onValueChanged:(value){
                setState(() {
                  subject=value;
                });
              },),
              CustomRowTile(title: "Kind", list: ['Homework','Syllabus'],onValueChanged: (value){
                setState(() {
                  type=value;
                });
              },),
              CustomRowTile(title: "Class", list: ['IIIB','VC','VIA','VIB'],onValueChanged: (value){
                setState(() {
                  className=value;
                });
              },),
              Container(
                width: width,
                height: height/3.8,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color:Color(0xffF1EFEF),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: width*0.35,
                          height: height*0.05,
                          decoration: BoxDecoration(
                            color: Color(0xffFEC20E),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Upload",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                              Padding(
                                padding: EdgeInsets.only(left: width*0.04),
                                child: SvgPicture.asset('assets/Polygon.svg',color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text("Attach documents",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                    SizedBox(width: width*0.05,),
                    Column(
                      children: [
                        Container(
                          width: width*0.35,
                          height: height*0.05,
                          decoration: BoxDecoration(
                              color: Color(0xffFEC20E),
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          child: Center(
                            child: Text("SEND",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: height*0.016),
                          child: Container()
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
