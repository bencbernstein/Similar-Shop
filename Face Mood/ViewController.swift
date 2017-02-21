//
//  ViewController.swift
//  Face Mood
//
//  Created by Benjamin Bernstein on 2/19/17.
//  Copyright © 2017 Burning Flowers. All rights reserved.
//

import UIKit
import Foundation
import Alamofire


class ViewController: UIViewController {
    @IBAction func TakePhoto(_ sender: Any) {
        postToServer()
    }
    
    @IBOutlet weak var moodLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func postToServer()  {
        
        let headers: HTTPHeaders = [
            "app_id": "4b80efe7",
            "app_key": "864ea3bc0d62a3cf72e4d5450a940986"
        ]
        
        
        Alamofire.request("https://api.kairos.com/v2/media?source=http%3A%2F%2Fwww.bencbernstein.com%2Fimages%2Ftest54.jpg", method: .post, headers: headers).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
      
                let response = JSON as! NSDictionary
           
                
            }
        }

        
    }
    
    
}

