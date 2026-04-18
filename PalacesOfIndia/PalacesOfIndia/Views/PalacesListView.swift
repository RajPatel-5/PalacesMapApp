//
//  PalacesListView.swift
//  PalacesOfIndia
//
//  Created by Raj Patel on 18/04/26.
//

import SwiftUI

struct PalacesListView: View {
    
    @EnvironmentObject private var vm: PalacesViewModel
    
    var body: some View {
        List {
            ForEach(vm.palaces) { palace in
                
                Button {
                    vm.showNextLocation(palace: palace)
                } label: {
                    listRowView(palace: palace)
                }
                    .padding(.vertical, 4)
                    .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())
    }
}

#Preview {
    PalacesListView()
        .environmentObject(PalacesViewModel())
}


extension PalacesListView {
    
    private func listRowView(palace: Location) -> some View{
        HStack{
            if let imageName = palace.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
                
            }
            
            VStack(alignment: .leading) {
                Text(palace.name)
                    .font(.headline)
                Text(palace.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}
