//
//  DestinationSearchView.swift
//  AirBNBSwiftUIClone
//
//  Created by Romeo Flauta on 3/22/24.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    
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
            
            VStack(alignment: .leading) {
                Text("Where to?")
                    .fontWeight(.semibold)
                .font(.title2)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    TextField("Search destinations", text: $destination)
                        .font(.headline)
                        .foregroundStyle(.gray)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(Color(.systemGray4))
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            CollapsedPickerView(title: "When", description: "Add dates")
            
            CollapsedPickerView(title: "Who", description: "Add guests")
            
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    DestinationSearchView(show: .constant(true))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
    }
}
