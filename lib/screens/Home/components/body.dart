import 'package:prescription_app/components/category_card.dart';
import 'package:prescription_app/components/patientlist/patient_list1.dart';
import 'package:prescription_app/components/patientlist/patient_list2.dart';
import 'package:prescription_app/components/patientlist/patient_list3.dart';
import 'package:prescription_app/components/patientlist/patient_list4.dart';
import 'package:prescription_app/components/patientlist/patient_list5.dart';
import 'package:prescription_app/components/patientlist/patient_list6.dart';
import 'package:prescription_app/components/search_bar.dart';
import 'package:prescription_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset('assets/icons/menu.svg'),
                    SvgPicture.asset('assets/icons/profile.svg'),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Patient Profiles',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Patient List',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildPatientList1(),
              buildPatientList2(),
              buildPatientList3(),
              buildPatientList4(),
              buildPatientList5(),
              buildPatientList6(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'Male',
            'assets/icons/man.png',
            kBlueColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Female',
            'assets/icons/woman.png',
            kYellowColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Children',
            'assets/icons/child.png',
            kOrangeColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'Aged Person',
            'assets/icons/old.png',
            kGreenColor,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  buildPatientList1() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          PatientCard1(
            'Gautham V',
            'Male',
            'assets/images/gautham.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  buildPatientList2() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          PatientCard2(
            'Kanniyappan R',
            'Male - Aged Person',
            'assets/images/kanniyappan.png',
            kGreenColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  buildPatientList3() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          PatientCard3(
            'Subramanium K',
            'Male',
            'assets/images/subramanium.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  buildPatientList4() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          PatientCard4(
            'Ayesha G',
            'Female',
            'assets/images/ayesha.png',
            kTealColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  buildPatientList5() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          PatientCard5(
            'Kamatchi V',
            'Female - Aged person',
            'assets/images/kamatchi.png',
            kBrownColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  buildPatientList6() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          PatientCard6(
            'Manasa S',
            'Female',
            'assets/images/manasa.png',
            kAmberColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
