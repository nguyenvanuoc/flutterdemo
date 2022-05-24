import UIKit
import Flutter
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  var window: UIWindow?
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    AppCenter.logLevel = .verbose
    AppCenter.start(withAppSecret: "96d53021-48a4-4a94-acc7-dbd8fa9efe0a", services:[
      Analytics.self,
      Crashes.self
    ])
    return true
  }
}

