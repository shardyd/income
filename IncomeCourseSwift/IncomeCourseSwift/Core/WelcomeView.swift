import SwiftUI

struct WelcomeView: View {
    @StateObject private var viewModel = WelcomeViewModel()
    @Binding var shouldShowWelcomeView: Bool

    var body: some View {
        VStack(spacing: 0) {
            Spacer(minLength: 10)

            title

            Spacer()

            VStack(spacing: 24) {
                welcomeImage
                welcomeText
            }
            .padding(.horizontal, 24)

            Spacer()

            getStartedButton
                .padding(.horizontal, 24)
                .padding(.bottom, 30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

private extension WelcomeView {

    var title: some View {
        Text(viewModel.getAppName())
            .font(.system(size: 28, weight: .bold))
            .foregroundStyle(Color.primary)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 24)
    }

    var welcomeImage: some View {
        Image(.welcome)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 300)
    }

    var welcomeText: some View {
        Text("Bem-vindo ao programa para calcular seus ganhos. Vamos começar essa jornada!")
            .font(.title3)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.appTheme.secondaryText)
            .padding(.horizontal, 8)
    }

    var getStartedButton: some View {
        Button {
            shouldShowWelcomeView = false
        } label: {
            Text("Vamos iniciar")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.appTheme.accentContrastText)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(Color.appTheme.accent)
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .shadow(radius: 4, y: 2)
        }
    }
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
