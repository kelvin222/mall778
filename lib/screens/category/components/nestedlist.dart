import 'package:flutter/material.dart';
import 'package:mall778/constants.dart';
import 'package:mall778/screens/categorylist/catelist_screen.dart';
import 'package:mall778/screens/details/details_screen.dart';

import '../../../size_config.dart';


class NestedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => EntryItem(
                data[index],
              ),
    );
  }
}




class Entry {
  final String title;
  final List<Entry>
      children; // Since this is an expansion list ...children can be another list of entries
  Entry(this.title, [this.children = const <Entry>[]]);
}
final List<Entry> data = <Entry>[
  Entry	('Food and Drinks', <Entry>[
	Entry('Grains, Rice, Pasta and Noodle'),
	Entry('Seasoning & Spice'),
	Entry('Flour & Meal'),
	Entry('Juice Drink'),
	Entry('Malt Drink'),
	Entry('Beverages, Milk and Coffee'),
	Entry('Cereals'),
	Entry('Water'),
	Entry('Cooking Oils'),
	Entry('Frozen Foods'),
	Entry('Canned Foods'),
	Entry('Candy and Biscuits'),
	Entry('Sugars'),
	Entry('Beers'),
	Entry('Whiskey , Liquor & Vodkas'),
	Entry('Wines'),
	Entry('Packaged Foods'),
	Entry('Livestocks'),
	Entry('Food Stuffs'),
	Entry('Other Food Items'),
	Entry('Other drinks'),
  ]),

  Entry	('Household', <Entry>[
	Entry('Laundry Detergents'),	
	Entry('Laundry Soaps'),	
	Entry('Air Fresheners'),	
	Entry('Toilet Paper & Wipes'),	
	Entry('Bathroom Cleaners'),	
	Entry('Dishwashing'),	
	Entry('Hangers'),	
	Entry('Cleaning Tools'),	
	Entry('Insecticides'),	
	Entry('Foot Mat'),	
	Entry('Mosquito Nets'),	
	Entry('Other Household'),	
  ]),
  Entry	('Body Care and Beauty', <Entry>[
	Entry('Concealers & Color Correctors'),
	Entry('Foundation'),
	Entry('Powder'),
	Entry('Lip Gloss'),
	Entry('Lip Liner'),
	Entry('Lipstick'),
	Entry('Eyeliner'),
	Entry('Eyeshadow'),
	Entry('Mascara'),
	Entry('Fragrances'),
	Entry('Body Cream'),
	Entry('Soap'),
	Entry('Hair Cutting Tools'),
	Entry('Hair Care'),
	Entry('Hair Accessories'),
	Entry('Wigs'),
	Entry('Wig Accessories'),
	Entry('Weavon & Hair Extension'),
	Entry('Toothbrushes'),
	Entry('Toothpaste'),
	Entry('Other Dental Care'),
	Entry('Feminine Care'),
	Entry('Contraceptives & Lubricants'),
	Entry('Health & Body Safety'),
	Entry('Other Body Care'),
	Entry('Other Beauty Product'),
  ]),
  Entry('Furniture & Fittings', <Entry>[
  Entry('Home Furnitures'),
  Entry('School Furnitures'),
  Entry('Church Furnitures'),
  Entry('Wall Art'),
  Entry('Beds'),
  Entry('Beddings'),
  Entry('Office Funitures'),
  Entry('Kitchen Funitures'),
  Entry('Wardropes'),
  Entry('Other Funiture'),	
    ]),
  Entry('Kitchen Supplies', <Entry>[
  Entry('Cookware'),
  Entry('Kitchen Pack'),
  Entry('Bakeware'),
  Entry('Plates & Spoons'),
  Entry('Knifes'),
  Entry('Other Kitchen Supplies'),
    ]),
  Entry('Books, School & Office', <Entry>[
  Entry('Stationery'),
  Entry('Storage & Organization'),
  Entry('Office Lighting'),
  Entry('Boards'),
  Entry('Packaging Materials'),
  Entry('Novels'),
  Entry('Religious'),
  Entry('History'),
  Entry('Primary'),
  Entry('Secondary'),
  Entry('Exams'),
  Entry('Science'),
  Entry('Accounting'),
  Entry('Mathematics'),
  Entry('English'),
  Entry('Others Books'),
  Entry('Others Supplies'),
  ]),		
  Entry('Appliances', <Entry>[
  Entry('Ironing & Laundry'),
  Entry('Kettles'),
  Entry('Mixers & Blenders'),
  Entry('Microwave Ovens'),
  Entry('Vacuum Cleaners'),
  Entry('Cookers and Ovens'),
  Entry('Air Conditioners'),
  Entry('Cookers'),
  Entry('Washers & Dryers'),
  Entry('Fans'),
  Entry('Freezers'),
  Entry('Refrigerators'),
  Entry('Dishwashers'),
  Entry('Other Appliances'),
  ]),		
  Entry('Phones & Gadgets', <Entry>[
  Entry('Mobile Phones'),
  Entry('Tablets'),
  Entry('Educational Tablets'),
  Entry('Earphones & Headset'),
  Entry('Power Banks'),
  Entry('Smart Watches'),
  Entry('Phone Batteries'),
  Entry('Phone Memory cards'),
  Entry('Phone Car Accessories'),
  Entry('Chargers & Cords'),
  Entry('Other Mobile Accessories'),
  ]),		
  Entry('Computer', <Entry>[
  Entry('Laptops'),
  Entry('Desktops'),
  Entry('Printers & Scanners'),
  Entry('Photocopiers'),
  Entry('Projectors'),
  Entry('External Hard Drives'),
  Entry('Printer Ink & Toner'),
  Entry('Keyboards & Mice'),
  Entry('Flash Drives & Memory Cards'),
  Entry('UPS'),
  Entry('Softwares'),
  Entry('Computer Accessories'),
  ]),		
  Entry('Electronics', <Entry>[
  Entry('TVs'),
  Entry('DVD Players'),
  Entry('Home Theatre Systems'),
  Entry('Sound Bars'),
  Entry('Portable Speakers'),
  Entry('Large Speakers'),
  Entry('Receivers & Amplifiers'),
  Entry('Digital Cameras'),
  Entry('Video Surveillance'),
  Entry('Camcorders'),
  Entry('Generators'),
  Entry('Power Inverters'),
  Entry('Solar & Wind Power'),
  Entry('Stablizers'),
  Entry('Other Electronics'),
  ]),		
  Entry('Tools & Home Improvement', <Entry>[
  Entry('Lightings'),
  Entry('Wires'),
  Entry('Sockets'),
  Entry('Luxury Lightings'),
  Entry('Lamp Holders'),
  Entry('Other Electrical Equipment'),
  Entry('Paints'),
  Entry('Brush & Rollers'),
  Entry('Other Painting Equipment'),
  ]),		
  Entry('Women Fashion', <Entry>[
  Entry('Women Tops & Shirts'),
  Entry('Women Trousers and Skirts'),
  Entry('Women Shoes'),
  Entry('Women Gowns'),
  Entry('Bags and Purse'),
  Entry('Women Underwear'),
  Entry('Maternity'),
  Entry('Women Native Attire'),
  Entry('Beach & Swimwear'),
  Entry('Women Fitness & Jersey'),
  Entry('Harts'),
  Entry('Women Jewelry'),
  Entry('Women Sneakers'),
  Entry('Women Accessories'),
  ]),		
  Entry('Children Fashion', <Entry>[
  Entry("Boy's Clothing"),
  Entry("Girl's Clothing"),
  Entry("Kid's Suit"),
  Entry("Kid's Bags"),
  Entry("Kid's Native Attire"),
  Entry("Kid's Shoes & Sneakers"),
  Entry("Kid's Watches"),
  Entry("Kid's Beach & Swimwear"),
  Entry("Kid's Fitness & Jersey"),
  Entry("Kid's Jewelry"),
  Entry("Kid's Toys & Games"),
  Entry("Kid's Accessories"),
  ]),		
  Entry('Men Fashion', <Entry>[
  Entry('Men Clothing'),
  Entry('Men Shoes and Sneakers'),
  Entry('Men Suits'),
  Entry('Men Underwear'),
  Entry('Men Native Attire'),
  Entry('T-Shirts'),
  Entry('Polo Shirts'),
  Entry('Trousers & Chinos'),
  Entry('Men Sneakers'),
  Entry('Men Watches'),
  Entry('Men Jewelry'),
  Entry('Men Fitness & Jerseys'),
  Entry('Men Accessories'),
  ]),		
  Entry('Baby', <Entry>[
  Entry('Baby Food'),
  Entry('Baby Milk'),
  Entry('Food Storage'),
  Entry('Baby Boy Wears'),
  Entry('Baby Girl Wears'),
  Entry('Diaper & Wipes'),
  Entry('Bottle Feeding'),
  Entry('Highchairs & Booster Seats'),
  Entry('Toys'),
  Entry('Baby Body Care'),
  Entry('Baby Bathing Soap'),
  Entry('Baby Oral Care'),
  Entry('Bibs & Burp Cloths'),
  Entry('Washcloths & Towels'),
  Entry('Grooming & Healthcare Kits'),
  Entry('Bathing Tubs & Seats'),
  Entry('Baby Accessories'),
  Entry('Other Baby Products'),
  Entry('Pacifiers & Accessories'),
  Entry('Backpacks & Carriers'),
  Entry('Swings, Jumpers & Bouncers'),
  Entry('Walkers'),
  ]),		
  Entry('Video Games', <Entry>[
  Entry('Playstation'),
  Entry('XBOX'),
  Entry('Nintendo 3DS'),
  Entry('Sega'),
  Entry('Playstation Games Disk'),
  Entry('Playstation Games Transfer'),
  Entry('XBOX Games Disk'),
  Entry('XBOX Games Transfer'),
  Entry('Laptop Games Transfer'),
  Entry('Playstation Accessories'),
  Entry('XBOX Accessories'),
  Entry('Other Games'),
  Entry('Game Accessories'),
  ]),		
  Entry('Sport', <Entry>[
  Entry('Exercise Bikes'),
  Entry('Treadmills'),
  Entry('Other Gym Equipment'),
  Entry('Dumbbells'),
  Entry('Bars'),
  Entry('sports accessories'),
  Entry('Sports Clothing'),
  Entry('Tennis & Racquet Sports'),
  Entry('Basketball Sports'),
  Entry('Football Sports'),
  Entry('Swimming Sports'),
  Entry('Cycling Sport'),
  Entry('Running Sport'),
  Entry('Other Sports'),
  ]),		
  Entry('Automobile', <Entry>[
  Entry('Cars'),
  Entry('Buses'),
  Entry('Trucks'),
  Entry('Car Cleaning Kits'),
  Entry('Car Electronics'),
  Entry('Car Accessories'),
  Entry('Car Lighting'),
  Entry('Car Oil & Lubricants'),
  Entry('Car Air Freshners'),
  Entry('Car Rims & Tyres'),
  ]),
];


// Create the Widget for the row
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;
 
 
  @override
  Widget build(BuildContext context) {
  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
        onTap: () => Navigator.pushNamed(
            context,
            CatelistScreen.routeName,
            arguments: CateListArguments(category: root.title),
          ),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }
 
    return _buildTiles(entry);
  }
}