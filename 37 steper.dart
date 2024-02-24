import 'package:flutter/material.dart';
class stepeerr extends StatefulWidget {
  const stepeerr({super.key});

  @override
  State<stepeerr> createState() => _stepeerrState();
}

class _stepeerrState extends State<stepeerr> {
  int _currentstep=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
        
      ),
      body: Container(
        child: Stepper(steps: [
          Step(title: Text("step 1"), content:Text("Information Of Step 1"),
          ),
                    Step(title: Text("step 2"), content:Text("Information Of Step 2") ),

          Step(title: Text("step 3"), content:Text("Information Of Step 3") ),

          Step(title: Text("step 4"), content:Text("Information Of Step 4") ),

        ],onStepTapped: (int newIndex){
          setState(() {
            _currentstep=newIndex;
          });
        },currentStep: _currentstep,   //currentstep equals to variable currentstep
        onStepContinue:() {
          if (_currentstep !=3) {   //3 is total number of stepper frm o to 3
            setState(() {
              _currentstep +=1;       //on pressing continue the currennt step would be incrremented 
            });
            
          }
        
        },
        onStepCancel: (){
          if (_currentstep!=0) {
            setState(() {
              _currentstep -=1;
            });
          }
        }
        ),
      ),
    );
  }
}