import UIKit
import Flutter
import workmanager
import app_links

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    if let url = AppLinks.shared.getLink(launchOptions: launchOptions) { //TODO: Test if this stuff works
      // We have a link, propagate it to your Flutter app
      AppLinks.shared.handleLink(url: url)
      return true // Returning true will stop the propagation to other packages
    }
    WorkmanagerPlugin.setPluginRegistrantCallback { registry in
            // Registry in this case is the FlutterEngine that is created in Workmanager's
            // performFetchWithCompletionHandler or BGAppRefreshTask.
            // This will make other plugins available during a background operation.
            GeneratedPluginRegistrant.register(with: registry)
        }
    WorkmanagerPlugin.registerPeriodicTask(withIdentifier: "de.triskalion.bads.app.fetchAds",frequency:NSNumber(value:24*14*60*60))
    WorkmanagerPlugin.registerPeriodicTask(withIdentifiier:"de.triskalion.bads.app.uploadBloom",frequency: NSNumber(value:24*60*60))
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
