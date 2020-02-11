//
// Copyright (c) 2018 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
import Firebase

//-------------------------------------------------------------------------------------------------------------------------------------------------
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var testView: TestView!

	//---------------------------------------------------------------------------------------------------------------------------------------------
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {

		//-----------------------------------------------------------------------------------------------------------------------------------------
		// Firebase initialization
		//-----------------------------------------------------------------------------------------------------------------------------------------
		FirebaseApp.configure()
		Firestore.firestore().settings.isPersistenceEnabled = false
		FirebaseConfiguration().setLoggerLevel(.error)

		//-----------------------------------------------------------------------------------------------------------------------------------------
		// UI initialization
		//-----------------------------------------------------------------------------------------------------------------------------------------
		window = UIWindow(frame: UIScreen.main.bounds)

		testView = TestView(nibName: "TestView", bundle: nil)
		let navController = UINavigationController(rootViewController: testView)
		window?.rootViewController = navController
		window?.makeKeyAndVisible()

		return true
	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	func applicationWillResignActive(_ application: UIApplication) {

	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	func applicationDidEnterBackground(_ application: UIApplication) {

	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	func applicationWillEnterForeground(_ application: UIApplication) {

	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	func applicationDidBecomeActive(_ application: UIApplication) {

	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	func applicationWillTerminate(_ application: UIApplication) {

	}
}
