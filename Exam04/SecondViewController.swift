//
//  SecondViewController.swift
//  Exam04
//
//  Created by SDS-104 on 2016. 4. 28..
//  Copyright © 2016년 SDS-104. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBAction func UICloseViewController(segue: UIStoryboardSegue) {
        // UI 닫기
    }
    
    @IBAction func popButtonClick(sender: AnyObject) {
        // notification center 를 이용해 값 전달
        NSNotificationCenter.defaultCenter().postNotificationName("NotificationIdentifier", object: nil)
        // modal 오픈
        if userNameTextField.text != ""{
            performSegueWithIdentifier("userPopupSegue", sender: self)
        }else{
            print("이름을 입력해 주세요")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            // 일반적인 값전달
            let modal = segue.destinationViewController as! ModalViewController
            modal.userName = userNameTextField.text
    }
    
    
    
    
    
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
