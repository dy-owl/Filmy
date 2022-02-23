//
//  SettingsChildView1.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 20.02.2022.
//

import SwiftUI

struct SettingsChildView1: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var navigator: SettingsNavigator!
    
    var body: some View {
        VStack {
            Text("Child Settings 1")
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

struct SettingsChildView1_Previews: PreviewProvider {
    static var previews: some View {
        SettingsChildView1(navigator: SettingsNavigator())
    }
}
