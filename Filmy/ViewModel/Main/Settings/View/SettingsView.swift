//
//  SettingsView.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 19.02.2022.
//

import SwiftUI

struct SettingsView: View {
    
    var navigator: SettingsNavigator!
    
    var body: some View {
        VStack {
            Text("Settings View")
            NavigationLink("Go to Child 1") {
                navigator.navigate(to: .child1)
            }
            .padding()
            Button("Log Out") {
                navigator.delegate?.didRequestContextChange(for: .login)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(navigator: SettingsNavigator())
    }
}
