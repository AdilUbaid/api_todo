// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:api_todo/model/user_dob.dart';
import 'package:api_todo/model/user_location.dart';
import 'package:api_todo/model/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  User(
      {required this.gender,
      required this.email,
      required this.phone,
      required this.cell,
      required this.nat,
      required this.name,
      required this.dob,
      required this.location});



      factory User.fromMap(Map<String,dynamic>e){final name = UserName(
          first: e['name']['first'],
          last: e['name']['last'],
          title: e['name']['title']);
      final date = e['dob']['date'];
      final dob = UserDob(
        age: e['dob']['age'],
        date: DateTime.parse(date),
      );
      final coordinates = LocationCoordinates(
          latitude: e['location']['coordinates']['latitude'],
          longitude: e['location']['coordinates']['longitude']);
      final street = LocaitonStreet(
          number: e['location']['street']['number'],
          name: e['location']['street']['name']);
      final timezone = LocaitonTmeZoneCoordinates(
          offset: e['location']['timezone']['offset'],
          description: e['location']['timezone']['description']);
      final location = UserLocation(
          city: e['location']['city'],
          state: e['location']['state'],
          country: e['location']['country'],
          postcode: e['location'][' postcode'].toString(),
          street: street,
          coordinates: coordinates,
          timezone: timezone);
      return User(
          gender: e['gender'],
          email: e['email'],
          phone: e['phone'],
          cell: e['cell'],
          nat: e['nat'],
          name: name,
          dob: dob,
          location: location);}
  
  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
