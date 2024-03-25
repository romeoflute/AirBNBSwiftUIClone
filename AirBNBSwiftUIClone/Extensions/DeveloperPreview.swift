//
//  DeveloperPreview.swift
//  AirBNBSwiftUIClone
//
//  Created by Romeo Flauta on 3/25/24.
//

import Foundation

class DeveloperPreview {
    var listings: [Listing] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "John Smith", ownerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 567, latitude: 25.7850, longitude: -801936, imageURLs: ["listing-2", "listing-1", "listing-3", "listing-4",], address: "1234 Main Street", city: "Florida", state: "Miami", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn, .superHost], amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv], type: .villa), .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Mary Adams", ownerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 567, latitude: 25.7850, longitude: -801936, imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4",], address: "1236 Main Street", city: "Florida", state: "Miami", title: "Miami Apartment", rating: 4.86, features: [.selfCheckIn, .superHost], amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv], type: .apartment), .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Martha Goodyear", ownerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 567, latitude: 25.7850, longitude: -801936, imageURLs: ["listing-3", "listing-2", "listing-1", "listing-4",], address: "1235 Main Street", city: "Florida", state: "Miami", title: "Miami House", rating: 4.86, features: [.selfCheckIn, .superHost], amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv], type: .house), .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, ownerName: "Spencer King", ownerImageUrl: "male-profile-photo", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 567, latitude: 25.7850, longitude: -801936, imageURLs: ["listing-4", "listing-2", "listing-3", "listing-1",], address: "1237 Main Street", city: "Florida", state: "Miami", title: "Miami Apartment", rating: 4.86, features: [.selfCheckIn, .superHost], amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv], type: .apartment),
    ]
}
