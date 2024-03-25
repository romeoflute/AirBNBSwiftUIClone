//
//  ExploreService.swift
//  AirBNBSwiftUIClone
//
//  Created by Romeo Flauta on 3/25/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
