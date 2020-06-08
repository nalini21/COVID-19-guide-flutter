import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:t1/widgets/about.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1080, height: 2340, allowFontScaling: true);
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(color: Colors.blue, size: 65.h),
        title: Text(
          'COVID-19 TRACKER APP',
          style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap:(){
           Navigator.push(context,MaterialPageRoute(builder: (context) => About()));
          },
          child: Icon(Icons.info_outline)),
      ),
      backgroundColor: Colors.white,
     
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 40.h),
            child: SizedBox(
                height: 720.0.h,
                width: 1150.0.w,
                child: Carousel(
                  images: [
                    AssetImage("assets/images/be_ready1.jpg"),
                    AssetImage('assets/images/be_ready2.jpg'),
                    AssetImage('assets/images/be_ready3.jpg'),
                    AssetImage('assets/images/be_ready5.jpg'),
                    AssetImage('assets/images/be_ready6.jpg'),
                  ],
                  dotSize: 8.0.h,
                  dotSpacing: 35.0.h,
                  dotColor: Colors.amberAccent,
                  indicatorBgPadding: 9.0.h,
                  dotBgColor: Colors.grey.withOpacity(0.5),
                  borderRadius: true,
                )),
          ),
        // Container(
        //     padding: EdgeInsets.fromLTRB(60.w,10.h,10.w, 20.h),
        //     //color: Colors.white,
        //     //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
        //     child: Text(
        //           'QnA',
        //           style: TextStyle(
        //               color: Colors.green,
        //               fontSize: 25,
        //               fontFamily: 'Montserrat',
        //               fontWeight: FontWeight.bold),
        //         ),
        // ),
    
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                backgroundColor: Colors.purple[100],
                title: Text(
                  'What is the 2019 coronavirus?',
                  style: TextStyle(
                      color: Colors.purple[900],
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'In early 2020, a new virus began generating headlines all over the world because of the unprecedented speed of its transmission.Its origins have been traced to a food market in Wuhan, China, in December 2019. From there, it’s reached countries as distant as the United States and the Philippines.The virus (officially named SARS-CoV-2) has been responsible for millions of infections globally, causing hundreds of thousands of deaths. The United States is the most affected country.The disease caused by an infection with SARS-CoV-2 is called COVID-19, which stands for coronavirus disease 2019.In spite of the global panic in the news about this virus, you’re unlikely to contract SARS-CoV-2 unless you’ve been in contact with someone who has a SARS-CoV-2 infection.',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                //leading: Icon(Icons.subdirectory_arrow_right),
                backgroundColor: Colors.orange[300],
                title: Text(
                  'What are the symptoms?',
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'Doctors are learning new things about this virus every day. So far, we know that COVID-19 may not initially cause any symptoms for some people.\nYou may carry the virus for 2 days or up to 2 weeks before you notice symptoms.\n\nSome common symptoms that have been specifically linked to COVID-19 include:\n> shortness of breath\n> having a cough that gets more severe over time\n> a low-grade fever that gradually increases in temperature\n> fatigue\n\nLess common symptoms include:\n> chills\n> repeated shaking with chills\n> sore throat\n> headache\n> muscle aches and pains\n> new loss of taste\n> new loss of smell\n\nThese symptoms may become more severe in some people.\n\nCall emergency medical services if you or someone you care for have any of the following symptoms:\n> trouble breathing\n> blue lips or face\n> persistent pain or pressure in the chest\n> confusion\n> excessive drowsiness',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                backgroundColor: Colors.pink[100],
                //leading: Icon(Icons.subdirectory_arrow_right),
                title: Text(
                  'What causes coronaviruses?',
                  style: TextStyle(
                      color: Colors.pink[800],
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'Coronaviruses are zoonotic. This means they first develop in animals before being transmitted to humans.\nFor the virus to be transmitted from animals to humans, a person has to come into close contact with an animal that carries the infection.\nOnce the virus develops in people, coronaviruses can be transmitted from person to person through respiratory droplets. This is a technical name for the wet stuff that moves through the air when you cough, sneeze, or talk.\nThe viral material hangs out in these droplets and can be breathed into the respiratory tract (your windpipe and lungs), where the virus can then lead to an infection.\nIt’s possible that you could acquire SARS-CoV-2 if you touch your mouth, nose, or eyes after touching a surface or object that has the virus on it. However, this is not thought to be the main way that the virus spreads\nThe 2019 coronavirus hasn’t been definitively linked to a specific animal.\nResearchers believe that the virus may have been passed from bats to another animal — either snakes or pangolins — and then transmitted to humans.\nThis transmission likely occurred in the open food market in Wuhan, China.',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                //leading: Icon(Icons.subdirectory_arrow_right),
                backgroundColor: Colors.green[100],
                title: Text(
                  'Who’s at increased risk?',
                  style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'You’re at high risk for contracting SARS-CoV-2 if you come into contact with someone who’s carrying it, especially if you’ve been exposed to their saliva or been near them when they’ve coughed, sneezed, or talked.\n\nWithout taking proper preventive measures, you’re also at high risk if you:\n> live with someone who has contracted the virus\n> are providing home care for someone who has contracted the virus\n> have an intimate partner who has contracted the virus.\n\nOlder adults and people with certain health conditions have a higher risk for severe complications if they contract the virus. These health conditions include:\n> lung conditions, such as COPD and asthma\n> certain heart conditions\n> immune system conditions, such as HIV\n> cancer that requires treatment\n> severe obesity\n> other health conditions, if not well-managed, such as diabetes, kidney disease, or liver disease\n\nPregnant women have a higher risk of complications from other viral infections, but it’s not yet known if this is the case with COVID-19.\nTrusted Source states that pregnant people seem to have the same risk of contracting the virus as adults who aren’t pregnant.\nTransmitting the virus from mother to child during pregnancy isn’t likely, but the newborn is able to contract the virus after birth.',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                backgroundColor: Colors.blue[100],
                title: Text(
                  'How are coronaviruses diagnosed?',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'COVID-19 can be diagnosed similarly to other conditions caused by viral infections: using a blood, saliva, or tissue sample. However, most tests use a cotton swab to retrieve a sample from the inside of your nostrils.\n\nThe CDC, some state health departments, and some commercial companies conduct tests. See your state’s health department website to find out where testing is offered near you.\n\nOn April 21, the Food and Drug Administration (FDA) approved the use of the first COVID-19 home testing kit.\n\nUsing the cotton swab provided, people will be able to collect a nasal sample and mail it to a designated laboratory for testing.\n\nThe emergency-use authorization specifies that the test kit is authorized for use by people whom healthcare professionals have identified as having suspected COVID-19.\n\nTalk to your doctor right away if you think you have COVID-19 or you notice symptoms.\n\nYour doctor will advise you on whether you should:\n> stay home and monitor your symptoms\n> come into the doctor’s office to be evaluated\n> go to the hospital for more urgent care',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                backgroundColor: Colors.red[100],
                title: Text(
                  'What treatments are available?',
                  style: TextStyle(
                      color: Colors.red[800],
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'There’s currently no treatment specifically approved for COVID-19, and no cure for an infection, although treatments and vaccines are currently under study.\n\nInstead, treatment focuses on managing symptoms as the virus runs its course.\n\nSeek medical help if you think you have COVID-19. Your doctor will recommend treatment for any symptoms or complications that develop and let you know if you need to seek emergency treatment.\n\nOther coronaviruses like SARS and MERS are also treated by managing symptoms. In some cases, experimental treatments have been tested to see how effective they are.\n\nExamples of therapies used for these illnesses include:\n> antiviral or retroviral medications\n> breathing support, such as mechanical ventilation\n> steroids to reduce lung swelling\n> blood plasma transfusions',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                backgroundColor: Colors.purple[100],
                title: Text(
                  'What are the possible complications from COVID-19?',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'The most serious complication of COVID-19 is a type of pneumonia that’s been called 2019 novel coronavirus-infected pneumonia (NCIP).\n\nResults from a 2020 study of 138 people admitted into hospitals in Wuhan, China, with NCIP, found that 26 percent of those admitted had severe cases and needed to be treated in the intensive care unit (ICU).\n\nAbout 4.3 percent of the people who were admitted to the ICU died from this type of pneumonia.\n\nIt should be noted that people who were admitted to the ICU were on average older and had more underlying health conditions than people who didn’t go to the ICU.\n\nSo far, NCIP is the only complication specifically linked to the 2019 coronavirus. Researchers have seen the following complications in people who have developed COVID-19:\n> acute respiratory distress syndrome (ARDS)\n> irregular heart rate (arrhythmia)\n> cardiovascular shock\n> severe muscle pain (myalgia)\n> fatigue\n> heart damage or heart attack',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                backgroundColor: Colors.red[100],
                title: Text(
                  'Should you wear a mask?',
                  style: TextStyle(
                      color: Colors.red[800],
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'If you’re out in a public setting where it’s difficult to follow physical distancing guidelines, It is recommended that you wear a cloth face mask that covers your mouth and nose.\n\nWhen worn correctly, and by large percentages of the public, these masks can help to slow the transmission of SARS-CoV-2.\n\nThat’s because they can block the respiratory droplets of people who may be asymptomatic or people who have the virus but have gone undiagnosed.\n\nRespiratory droplets get into the air when you:\n> exhale\n> talk\n> cough\n> sneeze\n\nYou can make your own mask using basic materials such as:\n> a bandana\n> a T-shirt\n> cotton fabric\n\nCloth masks are preferred for the general public since other types of masks should be reserved for healthcare workers.\n\nIt’s critical to keep the mask clean. Wash it each time you use it. Avoid touching the front of it with your hands. Also, try to avoid touching your mouth, nose, and eyes when you remove it.\n\nThis prevents you from possibly transferring the virus from a mask to your hands and from your hands to your face.\n\nKeep in mind that wearing a mask isn’t a replacement for other preventive measures, such as frequent handwashing and practicing physical distancing. All of them are important.\n\nCertain people shouldn’t wear face masks, including:\n> children under 2 years old\n> people who have trouble breathing\n> people who are unable to remove their own masks',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: ExpansionTile(
                backgroundColor: Colors.pink[100],
                title: Text(
                  'What’s the outlook?',
                  style: TextStyle(
                      color: Colors.pinkAccent[700],
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 20.h),
                    child: Text(
                      'First and foremost, don’t panic. You don’t need to be quarantined unless you suspect you have contracted the virus or have a confirmed test result.\n\nFollowing simple handwashing and physical distancing guidelines are the best ways to help protect yourself from being exposed to the virus.\n\nThe 2019 coronavirus probably seems scary when you read the news about new deaths, quarantines, and travel bans.\n\nStay calm and follow your doctor’s instructions if you’re diagnosed with COVID-19 so you can recover and help prevent it from being transmitted.',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ])),
        Container(
            padding: EdgeInsets.fromLTRB(40.w,20.h,40.w,20.h),
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Colors.purple[100],
              margin: EdgeInsets.all(20.h),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 35.h,
                ),
                Text(
                  'Prevention Tips',
                  style: TextStyle(
                      color: Colors.purpleAccent[700],
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.w, 30.h, 40.w, 60.h),
                  child: Text(
                    'Wash your hands frequently for at least 20 seconds at a time with warm water and soap. How long is 20 seconds? About as long as it takes to sing your “ABCs.”\n\nDon’t touch your face, eyes, nose, or mouth when your hands are dirty.\n\nDon’t go out if you’re feeling sick or have any cold or flu symptoms.\n\nStay at least 6 feet (2 meters) away from people.\n\nCover your mouth with a tissue or the inside of your elbow whenever you sneeze or cough. Throw away any tissues you use right away.\n\nClean any objects you touch a lot. \n\nUse disinfectants on objects like phones, computers, and doorknobs. \n\nUse soap and water for objects that you cook or eat with, like utensils and dishware.',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.purple[800],
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            )),
     
        ],
      ),
    );
  }
}
