import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/buttons/disabled_button.dart';
import 'package:flutter_application_1/widgets/content_view.dart';
import 'package:flutter_application_1/widgets/counter_screen.dart';
import 'package:flutter_application_1/widgets/custom_tab.dart';
import 'package:flutter_application_1/widgets/custom_tab_bar.dart';
import 'package:flutter_application_1/widgets/buttons/primary_button.dart';
import 'package:flutter_application_1/widgets/buttons/secondary_button.dart';
import 'package:flutter_application_1/widgets/text_to_voice.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  var scaffoldKey = GlobalKey<ScaffoldState>();

  late double screenHeight;
  late double screenWidth;
  late double topPadding;
  late double bottomPadding;
  late TabController tabController;

  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'HOME'), 
      icon: Icon(Icons.home, color: Colors.black),
      content: Center(
        child: CounterScreen())),
    ContentView(
      tab: CustomTab(title: 'ABOUT'), 
      icon: Icon(Icons.info, color: Colors.black),
      content: PrimaryButton()),
    ContentView(
      tab: CustomTab(title: 'PLAY'), 
      icon: Icon(Icons.play_circle, color: Colors.black),
      content: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          width: 500,
          child: TextToSpeech()),)),
    ContentView(
      tab: CustomTab(title: 'NEWS'), 
      icon: Icon(Icons.insert_comment, color: Colors.black),
      content: DisabledButton()),
    ContentView(
      tab: CustomTab(title: 'CONTACT'),
      icon: Icon(Icons.phone, color: Colors.black),
      content: SecondaryButton())
      
    ];

  

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    topPadding = screenHeight*0.05;
    bottomPadding = screenHeight*0.01;

    return Scaffold(
      key: scaffoldKey,
      body: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
        child: LayoutBuilder(
          builder: (context, constrains){
            if(constrains.maxWidth > 715){
              return desktopView();
            } else {
              return mobileView();
            }
    },),));
  }

  Widget desktopView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTabBar(
          controller: tabController, 
          tabs: contentViews.map((e)=>e.tab).toList()),
        Container(
          height: screenHeight*0.85, 
          child: TabBarView(
            controller: tabController, 
            children: contentViews.map((e)=>e.content).toList(),),)
      ],
    );
  }

  Widget mobileView() {
    return Container(
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Container(
          height: screenHeight*0.85, 
          child: TabBarView(
            controller: tabController, 
            children: contentViews.map((e)=>e.content).toList(),),),
          CustomTabBar(
          controller: tabController, 
          tabs: contentViews.map((e)=>e.icon).toList()),
        
        ],
      ),
    );
  }
}