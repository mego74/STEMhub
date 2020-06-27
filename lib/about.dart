import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled7/constants.dart';
import 'package:untitled7/bottom_nav_bar.dart';
import 'package:untitled7/search_bar.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STEMhub',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 7.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/ques.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(''),
                  Text(''),
                  Text(''),
                  Text(''),
                  Text(
                    " STEMhub",
                    style: TextStyle( fontSize: 40.0,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFF8F8F8),
                    ),
                  ),
                  SearchBar(),
               SingleChildScrollView(
                child : Column(
                      children: <Widget>[
                        Text("FAQs", textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Cairo",
                            color: Colors.white
                        ),
                        ),
                        Text(""),
                        Text("What is the relation between STEM Schools and their admission process? \n- STEM schools have no relationship with the admission process for new students. This process is provided through a special announcement on the Ministry of Education website ... As soon as it hits the web, we will announce it.",
                            textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                              fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                              color: Color(0xFFF8F8F8),

                        ),
                        ),
                        Text(""),
                        Text(""),
                        Text("ما العلاقة بين مدارس العلوم والتكنولوجيا والهندسة والرياضيات وعملية قبولها؟ \n - مدارس ستيم ليس لها علاقة بعملية القبول للطلاب الجدد. يتم توفير هذه العملية من خلال إعلان خاص على موقع وزارة التربية والتعليم ... بمجرد أن تصل إلى الويب ، سنعلن عنها..",
                          textDirection: TextDirection.rtl, style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("What is the number of STEM Schools? \n- Until Now there are 15 school [October (boys only) — Maadi (girls only) — El Obour — Alexandria — Dakahlia — Menoufia Gharbia — Kafr El Sheik — Ismailia — Eastern — Red Sea — Assiut — Luxor — Qena — Beni Suef]. Moreover; the government is working on opening another 4 schools in Sohag, El-Minya, Fayoum and Sadat City.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("ما هو عدد مدارس ستيم؟\n- حتى الآن يوجد 15 مدرسة [أكتوبر (بنين فقط) - المعادى (بنات فقط) - العبور - الإسكندرية - الدقهلية - المنوفية الغربية - كفر الشيخ - الإسماعيلية - شرق - البحر الأحمر - أسيوط - الأقصر - قنا - بنى سويف]. علاوة على ذلك؛ تعمل الحكومة على فتح 4 مدارس أخرى في سوهاج والمنيا والفيوم ومدينة السادات.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("What is the system of the schools? \n- STEM schools are boarding ones. Students reside from Saturday evening until Thursday afternoon. There are buses responsible for transporting students to and from the school through main parking spaces specified by each school.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("ما هو نظام المدارس؟\n- مدارس ستيم هي مدارس داخلية. يقيم الطلاب من مساء السبت حتى بعد ظهر الخميس. هناك حافلات مسؤولة عن نقل الطلاب من وإلى المدرسة من خلال أماكن وقوف السيارات الرئيسية التي تحددها كل مدرسة.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("Which universities can STEM schools graduates apply for? \n- Every graduate of STEM schools has a rightful position in the Egyptian universities. In addition, the Ministry of Education and the Supreme Council of Universities offers many scholarships.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("ما هي الجامعات التي يمكن لخريجي مدارس ستيم التقدم لها؟\n- لكل خريج من مدارس ستيم موقعاً مناسباً في الجامعات المصرية. بالإضافة إلى ذلك ، تقدم وزارة التربية والتعليم والمجلس الأعلى للجامعات العديد من المنح الدراسية.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("Is there any relation between STEM schools and the school of excelling in Ain Shams? \n- STEM schools don’t have any relation with the school of excelling in Ain Shams.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("هل هناك علاقة بين مدارس ستيم ومدرسة المتفوقين في عين شمس؟\n- مدارس ستيم ليس لها أي علاقة بمدرسة المتفوقين في عين شمس.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("What is the affiliate of STEM Schools? \n- STEM schools are government schools affiliated with the Ministry of Education and supervised by STEM Unit.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("من هم رعاة مدارس ستيم ومن يشرف عليها؟\n- مدارس ستيم هي مدارس حكومية تابعة لوزارة التربية والتعليم وتشرف عليها وحدة ستيم.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("What are the fees of the Schools? \n- First the actual expenses, which are the value of the services that are provided to the students (housing, transportation, cleaning, security, doctor, restaurant, etc.), is paid by Ministry of Education.\nStudents pay:\n1.	2000 EGP Laptop insurance for all students is refunded upon graduation.\n2.	1000 pounds only for public school students.\n3.	The same amount paid in the third preparatory grade for private school students.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("ما هي رسوم المدارس؟\n- أولاً ، يتم دفع النفقات الفعلية ، وهي قيمة الخدمات المقدمة للطلاب (السكن ، النقل ، التنظيف ، الأمن ، الطبيب ، المطعم ، إلخ) ، من قبل وزارة التربية والتعليم.\nيدفع الطلاب:\n1- الفين  جنيه تأمين الكمبيوتر المحمول ويتم استرداد لجميع الطلاب عند التخرج.\n2- الف جنيه فقط لطلاب المدارس الحكومية.\n3- نفس المبلغ المدفوع في الصف  الثالث الاعدادي لطلاب المدارس الخاصة.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("Is there literary section in STEM Schools? \n- No, STEM schools are scientific secondary only.[Divided in the third grade into science and mathematical divisions (medical group and engineering group)]",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("هل يوجد قسم أدبي في مدارس ستيم؟\n- لا ، مدارس STEM علمية ثانوية فقط. [ينقسم في الصف الثالث إلى أقسام العلوم والرياضيات (المجموعة الطبية والمجموعة الهندسية)]",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("Can STEM school graduate enter military colleges? \n- STEM schools are government schools affiliated with the Ministry of Education and supervised by STEM Unit.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("هل يمكن لخريجي مدرسة ستيم دخول الكليات العسكرية؟\n- نعم ، من الطبيعي أن تدخل الكليات العسكرية بعد التخرج من مدارس ستيم.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("Where can I get information about the school? \n- You can get:\n1.	Study information mainly from students and teachers.\n2.	Application and system information within schools from school administrations.\n3.	Ministerial decisions, statistics and data for all schools from the STEM Unit.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("أين يمكنني الحصول على معلومات حول المدرسة؟\n- يمكنك الحصول:\n1-  على دراسة المعلومات بشكل رئيسي من الطلاب والمعلمين.\n2- على معلومات التطبيق والنظام داخل المدارس من إدارات المدارس.\n3- على معلومات التطبيق والنظام داخل المدارس من إدارات المدارس.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("Is there any difference between STEM Schools? \n- All schools are schools run by one system. There is no distinct school from the others. The difference is always the students.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("هل هناك فرق بين مدارس ستيم؟\n- جميع المدارس هي مدارس يديرها نظام واحد. لا توجد مدرسة متميزة عن غيرها. الفرق هو دائما الطلاب.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("What is the acceptance Test? \n- The acceptance test is a competency test that is not a curriculum. It includes 4 sections (English, Science, Mathematics and IQ). The test can be chosen in English and can be chosen in Arabic as you wish.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("ما هو اختبار القبول؟\n- اختبار القبول هو اختبار كفاءة ليس منهجًا دراسيًا. يتضمن 4 أقسام (اللغة الإنجليزية والعلوم والرياضيات وحاصل الذكاء). يمكن اختيار الاختبار باللغة الإنجليزية ويمكن اختياره باللغة العربية كما يحلو لك.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("Is it possible to fulfill the conditions and not get into school? \n- It is possible to meet the conditions, pass the acceptance test and not to get into the school. Waiting lists remain according to the number of applicants, the number required for schools and the arrangement of the students.",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text("هل من الممكن استيفاء الشروط وعدم الالتحاق بالمدرسة؟\n- من الممكن استيفاء الشروط واجتياز اختبار القبول وعدم الالتحاق بالمدرسة. قوائم الانتظار تبقى حسب عدد المتقدمين والعدد المطلوب للمدارس وترتيب الطلاب.",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(""),
                        Text(""),
                        Text(""),
                        Text("You can see the school life from the following button:\n :يمكنك مشاهدة الحياة المدرسية من الزر التالي",
                          textDirection: TextDirection.ltr, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)
                          ),
                          color: Colors.red,
                          child: Text("Open in Youtube - افتح فى اليوتيوب"),
                          onPressed: () {
                            openurl3();
                          },
                        ),
                        Text(":For more Informations\n للمزيد من المعلومات: ",
                          textDirection: TextDirection.rtl, style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)
                          ),
                          color: Colors.cyan,
                          child: Text("Open Facebook Page - افتح صفحة الفيسبوك"),
                          onPressed: () {
                            openurl();
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)
                          ),
                          color: Colors.amber,
                          child: Text("Open Website - افتح الموقع "),
                          onPressed: () {
                            openurl2();
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)
                          ),
                          color: Colors.red,
                          child: Text("Open Youtube Channel - افتح قناة اليوتيوب "),
                          onPressed: () {
                            openurl4();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
  openurl(){
    String url1="https://www.facebook.com/STEM6october/";
    launch(url1);
  }
  openurl2(){
    String url2="https://stem-egypt.netlify.app/";
    launch(url2);
  }
  openurl3(){
    String url3="https://youtu.be/gCnFCqXnNEc";
    launch(url3);
  }
  openurl4(){
    String url4="https://www.youtube.com/channel/UCMwQxqjAvuhbWIEs3OLnVyQ";
    launch(url4);
  }
}
