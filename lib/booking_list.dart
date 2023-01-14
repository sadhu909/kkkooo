import 'package:flutter/material.dart';

class BookingList extends StatefulWidget {
  const BookingList({Key? key}) : super(key: key);

  @override
  State<BookingList> createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child:
        SingleChildScrollView(
        child:
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                height: 60,
                width: 300,
                //color: Colors.red,
                child: Text("Booking List",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  height: 60,
                  width: 70,
                  //color: Colors.red,
                  child: Icon(Icons.notifications,size: 28,)
              ),
            ],
          ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: 300,
                //color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                //obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  //border: OutlineInputBorder(),
                  //border: OutlineInputBorder(),
                  //labelText: 'User Name',
                  hintText: "Enter your Name, Ref ID",
                  hintStyle: TextStyle(fontSize:20),
                  suffixIcon: IconButton(
                    icon: Image.asset(
                      "images/12.jpg",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    onPressed: () {},
                  ),

                  //suffixIcon: Icon(Icons.search, size: 25,color: Colors.red,),

                ),
              ),
              ),

            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 20, 20, 20),
              height: 60,
              width: 50,
              child: Icon(Icons.filter),
            ),
          ],
        ),

          Container(
            width: 220,
            padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
            child:
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.vaccines),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child:
                Text("Pending"),
              ),
              //Icon(Icons.vaccines),
              //Text("Pending"),
              Icon(Icons.vaccines),
              Container(
                child: Text("Vaccinited"),
              ),

            ],
          ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text("Today",style: TextStyle(fontSize: 18),),
          ),


          Container(
            height: 533,
            width: 400,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            //color: Colors.red,
            child: ListView.builder(
                //itemCount: 40,
                itemBuilder: (BuildContext context, int index){
                  return
                    /*Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Separator $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );*/
                    Card(
                        color: Colors.white,
                        child:
                        /* Padding(
                        padding: const EdgeInsets.all(5.0),
                  child:*/
                        ListTile(
                    leading: Icon(Icons.account_circle_rounded,size: 50,),
                    title: Text("kousik $index",style: TextStyle(fontSize: 22),),
                    subtitle: Text("name $index",style: TextStyle(fontSize: 18),),
                    trailing: IconButton(
                      iconSize: 20,
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                      onPressed: () {},
                    ),/*IconButton(Icon(Icons.arrow_forward_ios),
                      onPressed: (){},),*/
                  /*),*/
                        ),
                  );
                },
            ),
          ),
        ],
      ),
      ),
    );
  }
}
