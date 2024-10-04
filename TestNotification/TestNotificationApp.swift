import SwiftUI

@main
struct TestNotificationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let notificationCenter = UNUserNotificationCenter.current()
                    notificationCenter.requestAuthorization(options: [.alert, .badge]) { granted, error in
                        print(granted, error)
                    }
                }
        }
    }
}
