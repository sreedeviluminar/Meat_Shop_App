import 'package:flutter/material.dart';

class CategoryItemTile extends StatelessWidget {
  final String CategoryName;
  final String ImagePath;
  final color;
  void Function()? onPressed;

  CategoryItemTile(
      {Key? key,
        required this.CategoryName,
        required this.ImagePath,
        this.color,
        required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black)),
          child: Column(
            children: [
              Flexible(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage(
                              ImagePath,
                            ),
                            fit: BoxFit.fitWidth)),
                  )),
              Flexible(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          CategoryName,
                          //textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          onPressed: onPressed,
                          child: Text("View more",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            backgroundColor: MaterialStateProperty.all(color),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
    );
  }
}
