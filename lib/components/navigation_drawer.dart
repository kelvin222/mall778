import 'package:flutter/material.dart';

import 'package:mall778/components/drawer_item.dart';
import 'package:mall778/constants.dart';
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: kPrimaryColor,),
              const SizedBox(height: 40,),
              DrawerItem(
                  name: 'My Account',
                  icon: Icons.account_box_rounded,
                  onPressed: ()=> onItemPressed(context, index: 0)
              ),
              const SizedBox(height: 15,),
              DrawerItem(
                  name: 'Orders',
                  icon: Icons.shopping_basket_outlined,
                  onPressed: ()=> onItemPressed(context, index: 1)
              ),
              const SizedBox(height: 15,),
              DrawerItem(
                  name: 'Favourites',
                  icon: Icons.favorite_outline,
                  onPressed: ()=> onItemPressed(context, index: 2)
              ),
              const SizedBox(height: 15,),
              DrawerItem(
                  name: 'Tickets',
                  icon: Icons.feedback_outlined,
                  onPressed: ()=> onItemPressed(context, index: 3)
              ),
              const SizedBox(height: 15,),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: ()=> onItemPressed(context, index: 4)
              ),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: kPrimaryColor,),
              const SizedBox(height: 40,),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Sell on Mall778',
                  icon: Icons.add_business_outlined,
                  onPressed: ()=> onItemPressed(context, index: 5)
              ),
              DrawerItem(
                  name: 'Terms and Conditions',
                  icon: Icons.rule_outlined,
                  onPressed: ()=> onItemPressed(context, index: 6)
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}){
    Navigator.pop(context);

    switch(index){
      case 0:
        break;
    }
  }

  Widget headerWidget() {
    const url = 'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name', style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(height: 10,),
            Text('person@email.com', style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );

  }
}



