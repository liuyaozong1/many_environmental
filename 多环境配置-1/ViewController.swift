//
//  ViewController.swift
//  多环境配置-1
//
//  Created by liuyaozong on 2022/2/8.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        let path = Bundle.main.path(forResource: "Info", ofType: "plist")!
        let infoDic = NSDictionary(contentsOfFile: path)!
        print("\(infoDic["HOST_URL"]!)")
        
        #if TEST
        print("测试测试测试")
        #endif
        
    
        
    }


}

