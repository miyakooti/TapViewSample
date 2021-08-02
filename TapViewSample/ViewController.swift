//
//  ViewController.swift
//  TapViewSample
//
//  Created by Arai Kousuke on 2021/08/02.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    @objc func singleTap(_ gesture: UITapGestureRecognizer) {
        myView.backgroundColor = .red
    }

    @objc func tapped(_ sender: UITapGestureRecognizer){
        myView.backgroundColor = .red
        print("タップされました。")
     }
    
    func setUp() {
//        // タップジェスチャーを作成します。
//        let singleTapGesture = UITapGestureRecognizer(target: myView, action: #selector(singleTap(_:)))
//
//        // シングルタップで反応するように設定します。
//        singleTapGesture.numberOfTapsRequired = 1
//
//        // ビューにジェスチャーを設定します。
//        view.addGestureRecognizer(singleTapGesture)
        
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(ViewController.tapped(_:)))
        
        // デリゲートをセット
        tapGesture.delegate = self
        
        self.view.addGestureRecognizer(tapGesture)
    }
}

