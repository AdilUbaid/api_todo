// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocaitonStreet street;
  final LocationCoordinates coordinates;
  final LocaitonTmeZoneCoordinates timezone;
  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.coordinates,
    required this.timezone,
  });
}

class LocaitonStreet {
  final int number;
  final String name;
  LocaitonStreet({
    required this.number,
    required this.name,
  });
}

class LocationCoordinates {
  final String latitude;
  final String longitude;
  LocationCoordinates({
    required this.latitude,
    required this.longitude,
  });
}

class LocaitonTmeZoneCoordinates {
  final String offset;
    final String description;
  LocaitonTmeZoneCoordinates({
    required this.offset,
    required this.description,
  });

}
