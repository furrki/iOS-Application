//
//  OnboardingViewController.swift
//  GelecekBilimde
//
//  Created by Alperen Ünal on 11.02.2020.
//  Copyright © 2020 Burak Furkan Asilturk. All rights reserved.
//

import UIKit
import Lottie
import FirebaseDatabase

final class OnboardingViewController: UIViewController {
	// MARK: - Properties
    private var animationView: AnimationView!

	// MARK: - Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        setAnimationView()
        navigateToApp()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        animationView.stop()
        animationView.removeFromSuperview()
    }
    
    private func setAnimationView() {
        animationView = AnimationView(name: "invites-sent")
        animationView.frame = view.frame
        animationView.center = view.center
        animationView.contentMode = .scaleAspectFill
        view.addSubview(animationView)
        animationView.loopMode = .loop
        animationView.play()
    }

    private func navigateToApp() {
		DispatchQueue.main.async {
			self.performSegue(withIdentifier: UnwindIdentifier.identifier(for: .App), sender: nil)
		}
    }
}
