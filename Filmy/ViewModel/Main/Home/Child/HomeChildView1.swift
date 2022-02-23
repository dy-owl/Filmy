//
//  HomeChildView1.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 20.02.2022.
//

import SwiftUI

struct HomeChildView1: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var navigator: HomeNavigator!
    
    var body: some View {
        VStack {
            Text("Child Home 1")
            NavigationLink("Go to Child 2") {
                navigator.navigate(to: .child2)
            }
            .padding()
            Button("Go Back") {
                dismiss()
            }
        }
    }
}

struct HomeChildView1_Previews: PreviewProvider {
    static var previews: some View {
        HomeChildView1(navigator: HomeNavigator())
    }
}
