//
//  NextViewController.swift
//  WithoutStoryBoard
//
//  Created by 倉田　隆成 on 2018/05/24.
//  Copyright © 2018年 倉田　隆成. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let backButton = UIButton(frame: CGRect(x: 0,y: 0,width: 100,height: 100))
        backButton.setTitle("back!", for: .normal)
        backButton.backgroundColor = UIColor.white
        backButton.addTarget(self, action: #selector(NextViewController.back(_:)), for: .touchUpInside)
        view.addSubview(backButton)
        
        let goButton = UIButton(frame: CGRect(x: 100,y:0,width: 100,height: 100))
        goButton.setTitle("GO", for: .normal)
        goButton.backgroundColor = UIColor.red
        goButton.addTarget(self, action: #selector(NextViewController.goNext(_ :)), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func goNext(_ sender: UIButton) {
        let next2vc = Next2ViewController()
        next2vc.view.backgroundColor = UIColor.red
        self.navigationController?.pushViewController(next2vc, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
