//
//  ViewController.swift
//  CarthageTest
//
//  Created by Sergio Baro on 19/04/2020.
//  Copyright © 2020 Sergio Baro. All rights reserved.
//

import UIKit
import RxSwift
import CarthageFrameworkTest

class ViewController: UIViewController {

  private let disposeBag = DisposeBag()

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    Observable.just(())
      .delay(.seconds(1), scheduler: MainScheduler.instance)
      .subscribe(onNext: { [weak self] _ in
        let vc = CarthageFrameworkTest.ViewController(nibName: "ViewController", bundle: Bundle(for: CarthageFrameworkTest.ViewController.self))
        let nc = UINavigationController(rootViewController: vc)
        self?.present(nc, animated: true)
      })
      .disposed(by: disposeBag)
  }
}
