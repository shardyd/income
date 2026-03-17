//
//  AppStartingViewModel.swift
//  IncomeCourseSwift
//
//  Created by Horr on 17/03/26.
//

import Foundation
import Combine

@MainActor
final class AppStartingViewModel: ObservableObject {
    
    @Published var shouldShowWelcomeView: Bool = true
    
}
