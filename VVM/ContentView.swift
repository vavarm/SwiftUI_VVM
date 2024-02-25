//
//  ContentView.swift
//  VVM
//
//  Created by Valentin Racaud--Minuzzi on 21/02/2024.
//

import SwiftUI

struct ContentView: View {
    var viewModel : FestivalViewModel = FestivalViewModel(name: "My Festival")
    
    var body: some View {
        FestivalView(festival : viewModel)
        FestivalView(festival : viewModel)
    }
}

#Preview {
    ContentView()
}
