//  Created by Grant Trevathan on 5/2/19.
//  Copyright © 2019 Ohm-Made LLC. All rights reserved.
//

import SpriteKit
import GameplayKit


class PlayingState: GKState {
  unowned let scene: GameScene

  init(scene: SKScene) {
    self.scene = scene as! GameScene
    super.init()
  }

  override func didEnter(from previousState: GKState?) {
    scene.startSpawning()
    scene.player.movementAllowed = true
    scene.player.animationComponent.startAnimation()
    scene.player.animationComponent.stopWobble()
  }

  override func isValidNextState(_ stateClass: AnyClass) -> Bool {
    return (stateClass == FallingState.self) || (stateClass == GameOverState.self)
  }

  override func update(deltaTime seconds: TimeInterval) {
    scene.updateForeground()
    scene.updateScore()
  }
}
