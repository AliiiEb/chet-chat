//
//  ChatVC.swift
//  SmackChat
//
//  Created by Admin on 7/21/1396 AP.
//  Copyright © 1396 Ali. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        if self.revealViewController() != nil{
//            menuBtn.target(forAction: Selector("rightRevealToggle:"), withSender: self.revealViewController())
//        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//    }
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
       
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

}
