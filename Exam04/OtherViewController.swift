//
//  OtherViewController.swift
//  Exam04
//
//  Created by SDS-104 on 2016. 4. 28..
//  Copyright © 2016년 SDS-104. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.methodOfReceiveNotification(_:)), name: "NotificationIdentifier", object: nil) // 메시지를 받기위해 옵저버 등록, name은 메시지 key
    }
    
    func methodOfReceiveNotification(notification: NSNotification){ // 메시지가 들어오면 호출된다.
        print("TEST Notification")
        myLabel.text = "Changed!!"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
