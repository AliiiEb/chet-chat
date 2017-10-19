//
//  CreareAccountVC.swift
//  SmackChat
//
//  Created by Admin on 7/24/1396 AP.
//  Copyright © 1396 Ali. All rights reserved.
//

import UIKit

class CreareAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
    

}
