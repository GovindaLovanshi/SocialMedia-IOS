import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate{
    func Application(_ application : UIApplication,
                     didFinishLaunchingWithOptions launchOptions : [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        FirebaseApp.configure()
        return true
    }
}



@main
struct SocialMediaApp:App{
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene{
        WindowGroup{
            ContentView()
        }
    }
}
