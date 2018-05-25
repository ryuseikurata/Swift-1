//
//  ViewController.swift
//  WithoutStoryBoard
//
//  Created by 倉田　隆成 on 2018/05/24.
//  Copyright © 2018年 倉田　隆成. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextButton = UIButton(frame: CGRect(x: 0,y: 0,width: 100,height: 100))
        nextButton.setTitle("Go!", for: .normal)
        nextButton.backgroundColor = UIColor.blue
        nextButton.addTarget(self, action: #selector(ViewController.goNext(_:)), for: .touchUpInside)
        view.addSubview(nextButton)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func goNext(_ sender: UIButton){
    let nextvc = NextViewController()
    let naviVC = UINavigationController(rootViewController: nextvc)
    nextvc.view.backgroundColor = UIColor.blue
    self.present(naviVC, animated: true, completion: nil)
        
        
    }
    


}

