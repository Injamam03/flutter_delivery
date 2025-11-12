import 'package:deliver_app/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;

class ParcelDetails extends StatefulWidget {
  const ParcelDetails({super.key});

  @override
  State<ParcelDetails> createState() => _ParcelDetailsState();
}

class _ParcelDetailsState extends State<ParcelDetails> {
  RangeValues _weightRange = RangeValues(0, 5); // শুরুতে 0 থেকে 5

  String? _selectedParcelType;

  Widget _buildParcelItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String value,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green.withOpacity(0.1),
        child: Icon(icon, color: Colors.green),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey[600])),
      onTap: () {
        setState(() {
          _selectedParcelType = title;
        });
        Navigator.pop(context);
      },
    );

  }
  void _showParcelTypeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Parcel Type", style: TextStyle(fontWeight: FontWeight.bold)),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            children: [
              _buildParcelItem(
                icon: Icons.cookie,
                title: "Homemade food",
                subtitle: "Home-cooked meals",
                value: "Injamam",
              ),
              _buildParcelItem(
                icon: Icons.checkroom,
                title: "Clothes",
                subtitle: "Folded or packed securely.",
                value: "Clothes",
              ),
              _buildParcelItem(
                icon: Icons.description,
                title: "Documents",
                subtitle: "No Passport or bank cheques",
                value: "Documents",
              ),
              _buildParcelItem(
                icon: Icons.card_giftcard,
                title: "Gifts",
                subtitle: "Flowers, cards, chocolates, and others",
                value: "Gifts",
              ),
              _buildParcelItem(
                icon: Icons.brush,
                title: "Cosmetics",
                subtitle: "Makeup, skincare, or hygiene products.",
                value: "Cosmetics",
              ),
              _buildParcelItem(
                icon: Icons.local_pharmacy,
                title: "Medicine",
                subtitle: "Prescription or over the counter medicines",
                value: "Medicine",
              ),
              _buildParcelItem(
                icon: Icons.watch,
                title: "Accessories",
                subtitle: "Watches, jewelry, bags, shoes etc.",
                value: "Accessories",
              ),
              _buildParcelItem(
                icon: Icons.electrical_services,
                title: "Electronics",
                subtitle: "Stationery, small tools, or household items",
                value: "Electronics",
              ),
            ],
          ),
        ),
        actions: [
        SizedBox(
        width: double.infinity,


        child: GestureDetector(
          onTap: (){
            Get.toNamed(AppRoute.summery);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 98,vertical: 10),
              child: Text('Continue',style: TextStyle(fontWeight:
              FontWeight.bold,fontSize: 16,color: Colors.white),),
            ),

          ),
        )
    ),
    ],
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Parcel Details",style:
        TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      centerTitle: true,
      backgroundColor: Colors.white,),

      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 15,),
        child: Column(
          children: [
            SizedBox(height:10),

            Align(
                alignment: Alignment.topLeft,
                child: Text("Receivers Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Receivers name",
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
            ),
            SizedBox(height: 10,),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Contact Number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter contact Number",
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
            ),
            SizedBox(height: 10,),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Additional Instruction",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                labelText: "Giver Additional Instruction ",
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
            ),
            SizedBox(height: 10,),


            ///=====================================================

            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Parcel Type",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () => _showParcelTypeDialog(context),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedParcelType ?? "Select Parcel Type",
                      style: TextStyle(fontSize: 16, color: _selectedParcelType == null ? Colors.grey : Colors.black),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            /// this is the Parcel weight ======================>>>>>>>>>>>
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Parcel Weight",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),


            /// < ======this one is parcel Weight animation ================>
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${_weightRange.start.toStringAsFixed(1)}kg",
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${_weightRange.end.toStringAsFixed(1)}kg",
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            RangeSlider(
              values: _weightRange,
              min: 0,
              max: 5,
              divisions: 1000,
              activeColor: Colors.grey[300],
              inactiveColor: Colors.green,
              labels: RangeLabels(
                "${_weightRange.start.toStringAsFixed(1)}kg",
                "${_weightRange.end.toStringAsFixed(1)}kg",
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _weightRange = values;
                });
              },
            ),





            SizedBox(height: 10,),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Select Ride',style: TextStyle(
                fontSize: 14,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Image.asset("assets/image/bike.png"),
                SizedBox(width: 29,),
                Image.asset("assets/image/car.png"),

              ],
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoute.summery);
              },
              child: Container(
                decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(29)
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 98,vertical: 10),
                  child: Text("Continue",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
