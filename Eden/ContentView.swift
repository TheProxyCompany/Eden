import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.02, green: 0.01, blue: 0.03)
                .ignoresSafeArea()

            Text("Eden")
                .font(.system(size: 48, weight: .light, design: .rounded))
                .foregroundStyle(Color(red: 0.96, green: 0.93, blue: 0.88))
        }
    }
}

#Preview {
    ContentView()
}
