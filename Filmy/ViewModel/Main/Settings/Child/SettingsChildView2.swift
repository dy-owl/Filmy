//
//  SettingsChildView2.swift
//  Filmy
//
//  Created by Dmytro Yantsybaiev on 20.02.2022.
//

import SwiftUI

struct SettingsChildView2: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var navigator: SettingsNavigator!
    
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
        }
    }
}

struct SettingsChildView2_Previews: PreviewProvider {
    static var previews: some View {
        SettingsChildView2(navigator: SettingsNavigator())
    }
}
