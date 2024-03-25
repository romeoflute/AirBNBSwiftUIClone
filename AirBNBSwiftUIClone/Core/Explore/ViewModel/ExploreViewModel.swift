//
//  ExploreViewModel.swift
//  AirBNBSwiftUIClone
//
//  Created by Romeo Flauta on 3/25/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
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
        } catch {
            debugPrint("listings fetch error: \(error.localizedDescription)")
        }
    }
}
