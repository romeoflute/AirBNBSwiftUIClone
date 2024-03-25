//
//  Listing.swift
//  AirBNBSwiftUIClone
//
//  Created by Romeo Flauta on 3/25/24.
//

import Foundation

struct Listing: Identifiable, Codable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var id: Int { return self.rawValue }
    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    var title: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "Superhost"
        }
    }
    var subtitle: String {
        switch self {
        case .selfCheckIn: return "Check yourself in with the keypad"
        case .superHost: return "Superhosts are experienced, highly rated hosts who are committed to providing great stars for guests"
        }
    }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var id: Int { return self.rawValue }
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townhouse
    case villa
    
    var id: Int { return self.rawValue }
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townhouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
}
