import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter_razorpay_sdk/flutter_razorpay_sdk.dart';





class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  @override
  void initState() {
    _razorpay = Razorpay();
    var EVENT_PAYMENT_SUCCESS;
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    // TODO: implement initState
    super.initState();
  }



  void _handlePaymentSuccess(PaymentSuccessResponse response) {
      Fluttertoast.showToast(
          msg: "Payement Succesfull",
          toastLength: Toast.LENGTH_SHORT,
      );
    // Do something when payment succeeds
  }
  
  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    Fluttertoast.showToast(
          msg: "Payement Fails",
          toastLength: Toast.LENGTH_SHORT,
      );
  }
  
  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
    Fluttertoast.showToast(
          msg: "wallet is Selected",
          toastLength: Toast.LENGTH_SHORT,
      );
  }
  
    @override
    void dispose() {
      // TODO: implement dispose
      var clear = _razorpay.clear(); // Removes all listeners
          super.dispose();
        }
      
      
      
      u
       Map<String, Object> options = {
         'key': '<EAi3q11gqn588l	>',
         'amount': 100, //in the smallest currency sub-unit.
         'name': 'Flutter Bootcamp.',
         'description': 'Offline flutter Bootcamp',
         'prefill': {
           'contact': '9123456789',
           'email': 'champ96k@gmail.com'
         }
       };
       
           paynow() {
             _razorpay.open(options);
                 }
             
             
               @override
               Widget build(BuildContext context) {
                 return Scaffold(
                   appBar: AppBar(
                     title: Text("Payement Getway"),
                   ),
                   body: Column(
                     children: <Widget>[
                       Text("data"),
             
                       MaterialButton(
                         height: 26,
                         minWidth: 62,
                         onPressed: () {
                           paynow();
                         },
                         child: Text("Buy Now"),
                       )
                     ],
                   ),
                   
                 );
               }

  Type Razorpay() {}
             }
  
  mixin PaymentSuccessResponse {
}

mixin PaymentFailureResponse {
}

mixin ExternalWalletResponse {
}
     
     class Copyvar {
    }
          
          mixin _razorpay {
            static void open(options) {}
    
      static clear() {}
}