import SwiftUI
import UserNotifications

// MARK: - Notification Delegate
// This delegate overrides iOS default behavior to show notifications in foreground.
//
// iOS Default Behavior:
// - Notifications appear when app is in BACKGROUND or LOCKED
// - Notifications are HIDDEN when app is in FOREGROUND (active)
//
// With this delegate:
// - Notifications appear ALWAYS (background AND foreground)
//
// To restore default iOS behavior (notifications only in background):
// 1. Comment out this entire NotificationDelegate class
// 2. Comment out the delegate property in UserNotificationsView
// 3. Comment out the line that sets the delegate in .onAppear
class NotificationDelegate: NSObject, UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification) async -> UNNotificationPresentationOptions {
        // Return presentation options to show banner, sound, and badge even when app is active
        return [.banner, .sound, .badge]
    }
}

// Local notifications using UserNotifications framework.
// Request permission and schedule notifications.
struct UserNotificationsView: View {
    @State private var authorized: Bool = false
    @State private var notificationScheduled: Bool = false
    
    // Delegate instance - comment this out for default iOS behavior (no foreground notifications)
    private let notificationDelegate = NotificationDelegate()
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "bell.badge.fill")
                .font(.system(size: 150))
                .foregroundStyle(.purple, .primary)
            
            if authorized {
                Button("Send Notification") {
                    scheduleNotification()
                }
                .buttonStyle(.glassProminent)
                
                if notificationScheduled {
                    Text("Notification scheduled! Wait 5 seconds...")
                        .font(.caption)
                        .foregroundStyle(.green)
                }
            } else {
                Text("Notification permission required")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .navigationTitle("23 - Notifications")
        .onAppear {
            // Set delegate to show notifications even in foreground
            // Comment this line out for default iOS behavior (notifications only in background)
            UNUserNotificationCenter.current().delegate = notificationDelegate
            
            requestAuthorization()
        }
    }
    
    func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { success, _ in
            if success {
                authorized = true
            } else {
                authorized = false
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Hey"
        content.subtitle = "This is a local notification"
        content.sound = .default
        
        let identifier = UUID().uuidString
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            if error == nil {
                DispatchQueue.main.async {
                    notificationScheduled = true
                    // Reset after 6 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                        notificationScheduled = false
                    }
                }
            }
        }
    }
}

#Preview {
    UserNotificationsView()
}
