//
//  SecondViewController.swift
//  caoqinyu_11
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 caoqinyu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var stu:Student!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfNo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.yellow
        tfName.text=stu.name
        tfNo.text=stu.no
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
       stu.no=tfNo.text!
       stu.name=tfName.text!
    navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
