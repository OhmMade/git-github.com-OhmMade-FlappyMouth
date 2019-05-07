//  Created by Grant Trevathan on 5/2/19.
//  Copyright © 2019 Ohm-Made LLC. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import Firebase

class GameViewController: UIViewController, GameSceneDelegate, GADBannerViewDelegate {
    
@IBOutlet weak var Banner: GADBannerView!
    

  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    
    Banner.isHidden = true
    Banner.delegate = self
    Banner.adUnitID = "ca-app-pub-9250387786341302/8197406955"
    Banner.adSize = kGADAdSizeSmartBannerPortrait
    Banner.rootViewController = self
    Banner.load(GADRequest())
    
    if let skView = self.view as? SKView {
      if skView.scene == nil {
        let aspectRatio = skView.bounds.size.height / skView.bounds.size.width
        let scene = GameScene(size: CGSize(width: 320, height: 320 * aspectRatio), stateClass: MainMenuState.self, delegate: self)

        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.showsPhysics = false
        skView.ignoresSiblingOrder = true

        scene.scaleMode = .aspectFit

        skView.presentScene(scene)
      }

        func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        
        Banner.isHidden = false
    }
        
    }
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        Banner.isHidden = true
    }
    
  }

  override var shouldAutorotate: Bool {
    return true
  }

  override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return [.portrait, .portraitUpsideDown]
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Release any cached data, images, etc that aren't in use.
  }

  override var prefersStatusBarHidden: Bool {
    return true
  }

  func screenshot() -> UIImage {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, 1.0)
    view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image!
  }

  func shareString(_ string: String, url: URL, image: UIImage) {
    let activityViewController = UIActivityViewController(activityItems: [string, url, image], applicationActivities: nil)
    present(activityViewController, animated: true, completion: nil)
  }
}
