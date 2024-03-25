//
//  ExploreViewModel.swift
//  AirBNBSwiftUIClone
//
//  Created by Romeo Flauta on 3/25/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private var allListings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            allListings = listings
        } catch {
            debugPrint("listings fetch error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredlistings = allListings.filter { $0.city.lowercased().contains(searchLocation.lowercased()) || $0.address.lowercased().contains(searchLocation.lowercased()) || $0.state.lowercased().contains(searchLocation.lowercased()) }
        listings = filteredlistings.isEmpty ? allListings : filteredlistings
    }
}
