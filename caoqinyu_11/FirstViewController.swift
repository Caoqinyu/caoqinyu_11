//
//  ViewController.swift
//  caoqinyu_11
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 caoqinyu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var stu=Student()
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfNo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        tfNo.text=stu.no
        tfName.text=stu.name
    }
    @IBAction func showSecond(_ sender: Any) {
        
        stu.no=tfNo.text!
        stu.name=tfName.text!
        let secVC=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC")as!SecondViewController
        secVC.stu=stu
    self.navigationController?.pushViewController(secVC, animated: true)
    }
    
    @IBAction func showThird(_ sender: Any) {
        let thirdVC=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC")
        present(thirdVC,animated: true,completion: nil)
    }
}

