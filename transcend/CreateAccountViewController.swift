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
    
    @IBAction func sendSMS(sender: UIButton) {
        let components = NSURLComponents(string: "/api/account/send_sms")!
        let phoneQuery = URLQueryItem(name: "phone", value: "100")
        components.queryItems = [phoneQuery]
        let request = URLRequest(url: components.url(relativeTo: Constants.host)!)
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) -> Void in
            if (error != nil) {
                print(error)
                return
            }
            let httpResponse = response as! HTTPURLResponse
            let statusCode = httpResponse.statusCode
            if (statusCode != 200) {
                print("HTTP ERR: \(statusCode)")
                return
            }
            print(data)
        }
        task.resume()
        //delegate!.accountCreated()
    }
}
