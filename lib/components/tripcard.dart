import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  const TripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const Column(
        children: [
          //col1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Pesa Senen"),
                  Text("6:00 AM",style: TextStyle(color: Colors.grey),)],
              ),
              Column(
                children: [
                  Text("2h",style: TextStyle(color: Colors.grey),),
                  Icon(Icons.linear_scale_rounded,color: Colors.amberAccent,)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Solo Balapan"), Text("8:00 AM",style: TextStyle(color: Colors.grey),)],
              )
            ],
          ),
          const SizedBox(height: 15,),
          //col2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [Icon(Icons.bathtub_outlined),
                  const SizedBox(width: 8,),
                  const SizedBox(width: 8,),Text("Toilets")],
              ),
              Row(
                children: [
                  Icon(Icons.electrical_services_rounded),
                  const SizedBox(width: 8,),
                  Text("Power outlets")
                ],
              ),
              Row(
                children: [Icon(Icons.wifi),
                  const SizedBox(width: 8,), Text("Wifi")],
              )
            ],
          ),
          const SizedBox(height: 15,),
          //col3
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("4500 ",style: TextStyle(fontSize: 20),), Text("FCFA",style: TextStyle(fontSize: 10,color: Colors.grey),)],
              )
            ],
          )
        ],
      ),
    );
  }
}
