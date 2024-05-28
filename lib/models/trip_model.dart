import '../util/availability.dart';

class TripModel {
  final List<String> userIds;
  final String tripName;
  final List<String> locations;
  final List<Availability> availability;
  final Map<String, List<String>> locationVotes;
  final String finalLocation;
  final Map<String, bool> userVotes;


  TripModel({
    required this.userIds,
    required this.tripName,
    required this.locations,
    required this.availability,
    this.locationVotes = const {},
    this.finalLocation = '',
    this.userVotes = const {},
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userIds,
      'tripName': tripName,
      'locations': locations,
      'availability': availability.map((e) => e.toJson()).toList(),
      'locationVotes': locationVotes,
      'finalLocation': finalLocation,
      'userVotes': userVotes,
    };
  }
}