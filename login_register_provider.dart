import 'dart:developer';
import 'package:flutter/foundation.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:tbib_store/local/cache_helper.dart';
import 'package:tbib_store/models/user_info.dart';

class LoginRegisterProvider with ChangeNotifier {
  //final googleSignIn = GoogleSignIn();
  //final facebookSignIn = FacebookAuth.instance;
  UserData? user;
  Future getUserData() async {
    /*   if (!CacheHelper.checkKey(key: "userData")) {
      return;
    }
    Map userMap =
        await json.decode(CacheHelper.getString(key: "userData")) as Map;
    user = UserData.fromJson(userMap);
    */
    log("get user data");
  }

  Future<String> signInGoogle() async {
    /* final getUser = await googleSignIn.signIn();
    if (getUser != null) {
      user = UserData(
        email: getUser.email,
        id: getUser.id,
        name: getUser.displayName!,
        photo: getUser.photoUrl!,
        loadFrom: 1,
      );

      final userJson = json.encode(
        {
          'loadFrom': user!.loadFrom,
          'id': user!.id,
          'email': user!.email,
          'name': user!.name,
          'photo': user!.photo,
        },
      );
      await CacheHelper.putString(key: "userData", val: userJson.toString());

      await CacheHelper.putBoolean(key: "pViewEnded", val: true);
      notifyListeners();
      return '';
    } else {
      return "Login google faild";
    }*/
    log("google sign in not found");
    return '';
  }

  Future signOutGoogle() async {
/*    await googleSignIn.signOut();
    user = null;
    await CacheHelper.deleteString(key: "userData");
    notifyListeners();*/
    log("google sign in not found");
  }

  Future<String> signInFaceBook() async {
    /*  final LoginResult result = await facebookSignIn.login(
      permissions: [
        'public_profile',
        'email',
      ],
    );

    if (result.status == LoginStatus.success) {
      // you are logged
      if (result.accessToken != null) {
        final getUser = await FacebookAuth.i.getUserData(
          fields: "id,name,email,picture.height(400).width(400)",
        );
        if (getUser.isNotEmpty) {
          user = UserData(
            email: getUser['email'],
            id: getUser['id'],
            name: getUser['name'],
            photo: getUser['picture']['data']['url'],
            loadFrom: 2,
          );

          final userJson = json.encode(
            {
              'loadFrom': user!.loadFrom,
              'id': user!.id,
              'email': user!.email,
              'name': user!.name,
              'photo': user!.photo,
            },
          );
          await CacheHelper.putString(
              key: "userData", val: userJson.toString());

          await CacheHelper.putBoolean(key: "pViewEnded", val: true);
          notifyListeners();
          return '';
        } else {
          return "error get facebook user data";
        }
      } else {
        return "error try again";
      }
    } else {
      return "error login facebook";
    }
    */
    log("facebook sign in not found");
    return '';
  }

  Future signOutFaceBook() async {
    /* await facebookSignIn.logOut();
    user = null;
    await CacheHelper.deleteString(key: "userData");

    notifyListeners();*/
    log("facebook sign in not found");
  }

  Future selectImageUser() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
// // api

    }
  }
}
