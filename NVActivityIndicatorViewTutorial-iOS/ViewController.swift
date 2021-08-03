//
//  ViewController.swift
//  NVActivityIndicatorViewTutorial-iOS
//
//  Created by kimhyungyu on 2021/08/03.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }

}

extension ViewController {
    private func setUI() {
        let indicator = NVActivityIndicatorView(frame: CGRect(x: 160, y: 300, width: 50, height: 50), type: .ballRotateChase, color: .black, padding: 0)
        self.view.addSubview(indicator)
        DispatchQueue.main.async {
            indicator.startAnimating()
            print("loading")
            print("isAnimating : \(indicator.isAnimating)")
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            indicator.stopAnimating()
            print("isAnimating : \(indicator.isAnimating)")
        }

    }
}
