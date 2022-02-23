//
//  HomeView.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

struct HomeView: View {
    
    var navigator: HomeNavigator!
    
    var body: some View {
        VStack {
            Text("Home View")
            NavigationLink("Go to Child 1") {
                navigator.navigate(to: .child1)
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(navigator: HomeNavigator())
    }
}
