import 'package:bmi_calculator_app/result.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var wtController=TextEditingController();
  var htController=TextEditingController();
  double bmi=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title:
        Text("Calculate Your BMI",style: TextStyle(color: Colors.white),
        ),
      ),
      body:Center(
        child: Container(
          width:300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BMI',style: TextStyle(
                fontSize: 34,fontWeight:FontWeight.w600
              ),),

              TextField(
                controller: wtController ,
                decoration: InputDecoration(
                  label: Text("Enter your Weight(in Kgs)"),
                  prefixIcon: Icon(Icons.monitor_weight_outlined)
                ),
                 keyboardType: TextInputType.number,
              ),
              SizedBox(height: 21,),
              TextField(
                controller: htController ,
                decoration: InputDecoration(
                    label: Text("Enter your height(in cm)"),
                    prefixIcon: Icon(Icons.height_rounded)
                ),
                  keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10,),

              ElevatedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder:(context)=>Result(bmi:bmi)));
                var wt=wtController.text.toString();
                var ht=htController.text.toString();


                if(wt!="" && ht!="")
                {
                  var iWt=int.parse(wt);
                  var iHt=int.parse(ht);

                  var tH=iHt/100;


                  setState(() {
                    bmi=iWt/(tH*tH);
                  });

                }


              },

                child: Text("Calculate",
                  style: TextStyle(
                  color: Colors.black,

                ),),
              ),




           ],
          ),
        ),
      ),
    );
  }
}
