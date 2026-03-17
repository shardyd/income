//
//  WelcomeViewModel.swift
//  IncomeCourseSwift
//
//  Created by Horr on 17/03/26.
//

import Foundation

@MainActor
final class WelcomeViewModel: ObservableObject {
    
    
    func getAppName() -> String {
        return "Calculadora de Renda"
    }
}
