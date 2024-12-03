import SwiftUI
struct ContentView:View {
    @StateObject var viewmodel : ContentViewModel()
    @StateObject  var registrationViewModel = RegistrationViewModel()
    var body: some View {
        Group{
            if viewmodel.userSession == nil{
                LoginView()
                    .environmentObject(registrationViewModel)
            }else{
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
