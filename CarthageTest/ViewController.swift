//
//  ViewController.swift
//  CarthageTest
//
//  Created by Sergio Baro on 19/04/2020.
//  Copyright © 2020 Sergio Baro. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    _ = Observable.just(1)
      .subscribe { (event) in
        print(event)
      }
  }


}

