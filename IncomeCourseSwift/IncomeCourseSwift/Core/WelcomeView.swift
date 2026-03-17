//
//  WelcomeView.swift
//  IncomeCourseSwift
//
//  Created by Horr on 17/03/26.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject private var viewModel = WelcomeViewModel()
    @Binding var shouldShowWelcomeView: Bool

    var body: some View {

        VStack {
            title
            Spacer()
            VStack (spacing: 0){
                welcomeImage
                welcomeText
            }
            Spacer()
            getStartedButton
        }

    }
}

private extension WelcomeView {
    
    var title: some View {
        Text(viewModel.getAppName())
            .font(.title)
            .fontWeight(.bold)
    }
    
    var welcomeImage: some View {
        Image(.welcome)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
    
    var welcomeText: some View {
        Text("Bem vindo ao programa para calcular seus ganhos. Vamos começar a jornada!")
            .font(.title3)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.gray)
            .padding(.horizontal, 25)
    }
    
    var getStartedButton: some View {
        Button {
            shouldShowWelcomeView = false
        } label: {
            Text("vamos iniciar")
        }
    }
    
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
