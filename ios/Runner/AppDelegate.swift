import UIKit
import Flutter
import GoogleMaps
import Firebase


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    GMSServices.provideAPIKey("AIzaSyCTRCoMIE-547qQy9KKP4c77nnNzbZcJqQ")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
