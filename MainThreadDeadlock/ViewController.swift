//
//  ViewController.swift
//  MainThreadDeadlock
//
//  Created by Agasthyam on 27/08/19.
//  Copyright © 2019 Agasthyam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DispatchQueue.main.sync {
            
            self.view.backgroundColor = .black // this will never be reached
            
            /*
             Calling sync from the main thread will cause a deadlock because the main queue is a serial queue and sync stops current queue execution until passed block/closure has finished.
             */
            
        }
        
    }


}

