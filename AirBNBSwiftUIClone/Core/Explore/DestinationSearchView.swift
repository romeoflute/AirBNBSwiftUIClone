//
//  DestinationSearchView.swift
//  AirBNBSwiftUIClone
//
//  Created by Romeo Flauta on 3/22/24.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Button {
                withAnimation(.snappy) {
                    show = false
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .resizable()
                    .foregroundStyle(.black.opacity(0.4))
                    .frame(width: 40, height: 40)
                    .padding(.leading)
            }
            
            Text("Where to?")
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    DestinationSearchView(show: .constant(true))
}
