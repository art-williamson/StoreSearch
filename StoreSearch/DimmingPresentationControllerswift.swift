//
//  DimmingPresentationControllerswift.swift
//  StoreSearch
//
//  Created by Art Williamson on 4/23/19.
//  Copyright © 2019 Art Williamson. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {
    lazy var dimmingView = GradientView(frame: CGRect.zero)

    override func presentationTransitionWillBegin() {
        dimmingView.frame = containerView!.bounds
        containerView!.insertSubview(dimmingView, at: 0)
    }
    
    override var shouldRemovePresentersView: Bool {
        return false
    }
}
