//
//  FadeOutAnimationController.swift
//  StoreSearch
//
//  Created by Art Williamson on 4/29/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import UIKit

class FadeOutAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.4
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        if let fromView = transitionContext.view( forKey: UITransitionContextViewKey.from) {
            let time = transitionDuration(using: transitionContext)
            UIView.animate(withDuration: time, animations: { fromView.alpha = 0
            }, completion: { finished in transitionContext.completeTransition(finished) })
        }
    }
}
