import SwiftUI
import UserNotifications

// Overrides iOS default to show notifications even when the app is in the foreground.
class NotificationDelegate: NSObject, UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification) async -> UNNotificationPresentationOptions {
        return [.banner, .sound, .badge]
    }
}

// Local notifications using UserNotifications framework.
struct UserNotificationsView: View {
    private let notificationDelegate = NotificationDelegate()

    @State private var authorized = false
    @State private var notificationScheduled = false

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "bell.badge.fill")
                .font(.system(size: 150))
                .foregroundStyle(.purple, .primary)

            if authorized {
                Button("Send Notification") {
                    Task { await scheduleNotification() }
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
        .navigationTitle("37 - Notifications")
        .task {
            UNUserNotificationCenter.current().delegate = notificationDelegate
            await requestAuthorization()
        }
    }

    private func requestAuthorization() async {
        do {
            authorized = try await UNUserNotificationCenter.current()
                .requestAuthorization(options: [.alert, .sound])
        } catch {
            authorized = false
        }
    }

    private func scheduleNotification() async {
        let content = UNMutableNotificationContent()
        content.title = "Hey"
        content.subtitle = "This is a local notification"
        content.sound = .default

        let identifier = UUID().uuidString
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)

        do {
            try await UNUserNotificationCenter.current().add(request)
            notificationScheduled = true
            try? await Task.sleep(for: .seconds(6))
            notificationScheduled = false
        } catch {
            // Notification scheduling failed
        }
    }
}

#Preview {
    UserNotificationsView()
}
