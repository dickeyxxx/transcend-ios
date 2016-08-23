//
//  CreateAccountViewController.swift
//  transcend
//
//  Created by Jeff Dickey on 8/22/16.
//  Copyright © 2016 Jeff Dickey. All rights reserved.
//

import UIKit

protocol CreateAccountDelegate {
    func accountCreated()
}

class CreateAccountViewController: UIViewController {
    var delegate:CreateAccountDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
  @IBAction func sendSMS(sender: UIButton) {
    delegate!.accountCreated()
  }
}
