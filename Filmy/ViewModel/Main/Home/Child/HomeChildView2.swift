//
//  HomeChildView2.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 20.02.2022.
//

import SwiftUI

struct HomeChildView2: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var navigator: HomeNavigator!
    
    var body: some View {
        VStack {
            Text("Child Home 2")
            Button("Go to Root") {
                navigator.popToRoot()
            }
            .padding()
            Button("Go Back") {
                dismiss()
            }
            Button("Log out") {
                navigator.delegate?.didRequestContextChange(for: .login)
            }.padding()
        }
    }
}

struct HomeChildView2_Previews: PreviewProvider {
    static var previews: some View {
        HomeChildView2(navigator: HomeNavigator())
    }
}
