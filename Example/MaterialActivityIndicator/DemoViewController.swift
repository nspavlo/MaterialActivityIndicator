//
//  DemoViewController.swift
//  MaterialActivityIndicator
//
//  Created by Jans Pavlovs on 02/13/2018.
//  Copyright (c) 2018 Jans Pavlovs. All rights reserved.
//

import UIKit
import MaterialActivityIndicator

// MARK: Initialization

class DemoViewController: UIViewController {
    private let indicator = MaterialActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupActivityIndicatorView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        indicator.startAnimating()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        indicator.stopAnimating()
    }
}

// MARK: Private Methods

private extension DemoViewController {
    func setupActivityIndicatorView() {
        view.addSubview(indicator)
        setupActivityIndicatorViewConstraints()
    }

    func setupActivityIndicatorViewConstraints() {
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
