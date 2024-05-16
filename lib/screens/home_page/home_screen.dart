

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../constants.dart';
import '../../data/data.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _post = Data.postList;
  bool _showAppNavbar = true;
  late ScrollController _scrollController;
  bool _isScrollDown = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _initialScroll();
  }
  void _initialScroll() async {
    _scrollController.addListener(() {
      if(_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse){
        if(!_isScrollDown){
          _isScrollDown = true;
          _hideAppNavBar();
  }
  }
      if(_scrollController.position.userScrollDirection ==
          ScrollDirection.forward){
        if(!_isScrollDown){
          _isScrollDown = false;
          _showAppNavbar;
          setState(() {});
        }
      }
  });
}
void _hideAppNavBar(){
    setState(() {
      _showAppNavbar = false;
    });
}
void _showAppNavBar(){
    setState(() {
      _showAppNavbar = true;
    });
}
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context,sizingInformation){
      return Container(
        color: Colors.black12,
        child: Column(
          children: [
            _showAppNavbar
            ? CustomAppbar(sizingInformation: sizingInformation)
                : Container(
              height: 0,
              width: 0,
            ),
            _listPostWidget(sizingInformation),
          ],
        ),
      );
    });
  }
  Widget _listPostWidget(SizingInformation sizingInformation){
    return Expanded(
        child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              controller: _scrollController,
                itemCount: _post.length,
                itemBuilder: (context,index){
      return Container(
padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
        margin: EdgeInsets.only(bottom: 0,top: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.black54,width: 0.50),
            bottom: BorderSide(
              color: Colors.black54,
              width: 0.50
            )
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(_post[index].profileUrl!)
                    )
                  ),
                ),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_post[index].name!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Container(
                      width: sizingInformation.screenSize.width / 1.34,
                      child: Text(_post[index].headline!,style: TextStyle(
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black54
                      ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              _post[index].description!,
            style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                _post[index].tags!,
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: sizingInformation.screenSize.width,
              child: Image.asset(_post[index].image!,
              fit: BoxFit.contain,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        child:
                        Image.asset("assets/icons/like_icon.png"),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        child:
                        Image.asset("assets/icons/celebrate_icon.png"),
                      ),
                      if(index == 0 || index ==4 )
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/icons/love_icon.png"),
                        ),
                      SizedBox(width: 5,),
                      Text(_post[index].likes!,
                      style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(_post[index].comments!),
                      Text(" comments")
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 0.50,
              color: Colors.black26,
            ),
            _rowButtons(),

          ],
        ),
      );
    }
    )
        )
    );
  }
}

  Widget _rowButtons() {
   return Container(
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    InkWell(
      onTap: (){},
      child: columnSingleButton(
          name: "Like",
          iconImage: "assets/icons/like_icon_white.png",
          color: Color(0xFF666666)),
    ),
    InkWell(
      onTap: (){},
      child: columnSingleButton(
          name: "Comment",
          iconImage: "assets/icons/comment-bubble-icon.png",
          color: Color(0xFF666666)),
    ),
    InkWell(
      onTap: (){},
      child: columnSingleButton(
          name: "Repost",
          iconImage: "assets/icons/repost.png",
          color: Color(0xFF666666)),
    ),
    InkWell(
      onTap: (){},
      child: columnSingleButton(
          name: "Send",
          iconImage: "assets/icons/send-icon.png",
          color: Color(0xFF666666)),
    )
  ],
),
   );
  }
