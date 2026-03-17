//
//  WelcomeView.swift
//  IncomeCourseSwift
//
//  Created by Horr on 17/03/26.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var shouldShowWelcomeView: Bool

    var body: some View {
        VStack {
            Text("Bem Vindo")
            
            Button {
                shouldShowWelcomeView = false
            } label: {
                Text("Vamos Iniciar")
            }
        }
    }
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
