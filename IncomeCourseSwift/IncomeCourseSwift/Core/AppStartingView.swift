//
//  ContentView.swift
//  IncomeCourseSwift
//
//  Created by Horr on 17/03/26.
//

import SwiftUI

struct AppStartingView: View {
    @StateObject private var viewModel = AppStartingViewModel()
    
    var body: some View {
        Group {
            if viewModel.shouldShowWelcomeView {
                WelcomeView(shouldShowWelcomeView: $viewModel.shouldShowWelcomeView)
            } else {
                HomeView()
            }
        }
        .animation(.easeIn, value: viewModel.shouldShowWelcomeView)
    }
}

#Preview {
    AppStartingView()
}
