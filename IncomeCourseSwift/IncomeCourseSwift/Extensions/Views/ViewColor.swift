//
//  ViewColor.swift
//  IncomeCourseSwift
//
//  Created by Horr on 18/03/26.
//

import SwiftUI

extension Color {
    static var appTheme: AppColorTheme = main
}

extension Color {
    static var main: AppColorTheme {
        .init(accent: .init(.accent),
              alternateAccent: .init(.alternateAccent),
              viewBackground: .init(.viewBackground),
              cellBackground: .init(.cellBackground),
              text: .init(.text),
              secondaryText: .init(.secondaryText),
              alternativeText: .init(.alternateText),
              accentContrastText: .init(.accentContrastText),
              primaryAction: .init(.accentContrastText),
              neutralAction: .init(.neutralAction),
              destrutive: .init(.destructive),
              success: .init(.success),
              warning: .init(.warning),
              info: .init(.info),
              error: .init(.error),
              inProgress: .init(.inProgress),
              divider: .init(.divider),
              miscellaneous: .init(.miscellaneous)
        )
    }
}

struct AppColorTheme {
    let accent: Color
    let alternateAccent: Color
    let viewBackground: Color
    let cellBackground: Color
    let text: Color
    let secondaryText: Color
    let alternativeText: Color
    let accentContrastText: Color
    let primaryAction: Color
    let neutralAction: Color
    let destrutive: Color
    let success: Color
    let warning: Color
    let info: Color
    let error: Color
    let inProgress: Color
    let divider: Color
    let miscellaneous: Color
}

#Preview ("Light Mode") {
    Preview()
        .preferredColorScheme(.light)
}

#Preview ("Dark Mode") {
    Preview()
        .preferredColorScheme(.dark)
}

fileprivate struct Preview: View {
    var body: some View {
        VStack {
            VStack {
                Text("Titulo")
                    .foregroundColor(.appTheme.text)
                Text("Subtitulo")
                    .foregroundColor(.appTheme.secondaryText)
            }

            Divider()
                .foregroundColor(.appTheme.divider)
                .padding(.horizontal, 30)
            

            Button {} label: {
                Text("Vamos iniciar")
                    .padding()
                    .background(Color.appTheme.accent)
                    .cornerRadius(8)
                    .foregroundColor(.appTheme.accentContrastText)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.appTheme.viewBackground)
    }
}


