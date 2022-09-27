import 'package:flutter/material.dart';
import 'package:json/screen/userProvider/UserProvider.dart';
import 'package:provider/provider.dart';

class screenView extends StatefulWidget {
  const screenView({Key? key}) : super(key: key);

  @override
  State<screenView> createState() => _screenViewState();
}

class _screenViewState extends State<screenView> {
  UserProvider? userProvidertrue;
  UserProvider? userProviderfalse;

  @override
  Widget build(BuildContext context) {
    userProviderfalse = Provider.of<UserProvider>(context, listen: false);
    userProviderfalse = Provider.of<UserProvider>(context, listen: true);

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () {userProviderfalse!.getUserData();}, child: Text("Click")),
          ListView.builder(itemCount: userProvidertrue!.finalList.length, itemBuilder: (context,index) {
            return ListTile(
              title: Text("${userProvidertrue!.finalList[index].title}"),
              subtitle: Text("${userProvidertrue!.finalList[index].id}"),
              leading: Text("${userProvidertrue!.finalList[index].userId}"),
            );
          })
        ],
      ),
    ));
  }
}
