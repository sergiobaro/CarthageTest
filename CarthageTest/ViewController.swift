//
//  ViewController.swift
//  CarthageTest
//
//  Created by Sergio Baro on 19/04/2020.
//  Copyright © 2020 Sergio Baro. All rights reserved.
//

import UIKit
import CarthageFrameworkTest

class ViewController: UIViewController {

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    let vc = CarthageFrameworkTest.ViewController(nibName: "ViewController", bundle: Bundle(for: CarthageFrameworkTest.ViewController.self))

    let nc = UINavigationController(rootViewController: vc)
    present(nc, animated: true)
  }
}
