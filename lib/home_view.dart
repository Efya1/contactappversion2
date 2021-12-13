import 'package:flutter/material.dart';
import 'contact_model.dart';
import 'contact_view_details.dart';
/* import 'package:grouped_list/grouped_list.dart'; */


class  HomeView extends StatelessWidget {
   HomeView({ Key? key }) : super(key: key);

 final ScrollController _scrollController = ScrollController();
 final List<Map<String, String>> data = [
    {
      "name": "Nana Akua Adobea",
      "phone": "0209391079",
      "email": "nonummy.ac@outlook.couk",
      "country": "Ghana",
      "region": "Accra"
    },
    {
      "name": "Lokita",
      "phone": "434-5712",
      "email": "tempor.diam@aol.edu",
      "country": "Brazil",
      "region": "Huáběi"
    },
    {
      "name": "Rhoda",
      "phone": "1-567-743-4341",
      "email": "vel@google.com",
      "country": "India",
      "region": "Loreto"
    },
    {
      "name": "Edith ",
      "phone": "582-3896",
      "email": "eros.proin.ultrices@hotmail.com",
      "country": "New Zealand",
      "region": "South Island"
    },
    {
      "name": "Serwaa Asubonteng",
      "phone": "0242912335",
      "email": "at.egestas@aol.couk",
      "country": "Ghana",
      "region": "Azad Kashmir"
    },
    {
      "name": "Eva Mensah",
      "phone": "0544933927",
      "email": "proin.nisl@icloud.org",
      "country": "Ghana",
      "region": "Cape Coast"
    },
    {
      "name": "Kwaku Andoh Amponsah",
      "phone": "0558341844",
      "email": "non@yahoo.couk",
      "country": "Ghana",
      "region": "Cape Coast"
    },
    {
      "name": "Gloria Davies-Ocloo",
      "phone": "0244079648",
      "email": "molestie.in@yahoo.ca",
      "country": "Ghana",
      "region": "Koforidua"
    },
    {
      "name": "Shellie Merrill",
      "phone": "1-241-690-5206",
      "email": "non@google.couk",
      "country": "Turkey",
      "region": "Gorontalo"
    },
    {
      "name": "Clinton Mosley",
      "phone": "1-768-578-0868",
      "email": "sagittis.augue@google.edu",
      "country": "Chile",
      "region": "South Chungcheong"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      centerTitle: false,
       title: const Text(
          'Afua Owusuaa Asubonteng',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
        ),

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/efua.jpg')))),

        ],
        bottom:  PreferredSize(
preferredSize: const Size.fromHeight(90),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Material(
              //elevation will addd drop shadow
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Search by name or number',
                    prefixIcon: const Icon(Icons.search)
                ),
              ),
            ),                 
    )
    )
    ),
    
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recent',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return  ListTile(
                     onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactDetailsView(
                            contact: Contact(
                                country: 'Ghana',
                                email: 'bright@ghanatechlab.com',
                                name: 'Etornam Bright',
                                phone: '+233 24 54 36 757',
                                region: 'Greater Accra'));
                      }));
                     },
                    leading: const  CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/person_1.jpg'),
                    ),
                    title: const  Text(
                      'Etornam Bright',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    subtitle: const  Text('+233 24 54 36 757'),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 25,
                    thickness: 2,
                  );
                },
                itemCount: 3),
              const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return  ListTile(
                     onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactDetailsView(
                            contact: Contact(
                                country: 'Ghana',
                                email: 'bright@ghanatechlab.com',
                                name: 'Brother Charles',
                                phone: '+233 24 540668235',
                                region: 'Greater Accra'));
                      }));
                     },
                    leading: const  CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/person_1.jpg'),
                    ),
                    title: const  Text(
                      'Brother Charles',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    subtitle: const  Text('+233 24 06 68 235 '),
                    trailing: const IconButton(
                        onPressed: null, icon: Icon(Icons.more_horiz)),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 25,
                    thickness: 2,
                  );
                },
                itemCount: 5),
          ],
        ),
      ),
    );
  }
}
          
        
        
          

            
  
