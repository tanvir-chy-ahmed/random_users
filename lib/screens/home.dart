/*
**************************************************
*        📱 Mobile App Developer - Tanvir         *
*------------------------------------------------ *
*  🚀 Native & Hybrid App Development Expert      *
*  💼 Tech Stack: Flutter | Jetpack | Firebase    *
*  📧 Email: dev.tanvirchy269@gmail.com           *
*  🌐 GitHub: https://github.com/tanvir-chy-ahmed *
*  📍 Location: Bangladesh                        *
*                                                 *
*  Need an app? Let’s build something great!      *
**************************************************
*/

import 'package:flutter/material.dart';
import 'package:practice_nested_api/model/model.dart';
import 'package:practice_nested_api/screens/detail.dart';
import 'package:practice_nested_api/services/apiservices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<usersmodel> users = [];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  fetchdata() async {
    final data = await Apiservices().fetchData();
    setState(() {
      users = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Users Detail",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),

              IconButton(
                onPressed: () {
                  setState(() {
                    fetchdata();
                  });
                },
                icon: Icon(Icons.refresh_outlined),
              ),
            ],
          ),
        ),
      ),

      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: users.map((data) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: data.gender == 'male'
                        ? Color(0xFFDA6C6C)
                        : Color(0xFFEAEBD0),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(user: data),
                          ),
                        );
                      },
                      contentPadding: const EdgeInsets.all(10),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          data.picture.large,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(data.fullname.fullname),
                      subtitle: Text(
                        "${data.location.streets.sname} || ${data.location.streets.snum}\n",
                      ),
                      trailing: Text(data.gender),
                    ),
                  );
                }).toList(),
              ),
            ),
    );
  }
}
