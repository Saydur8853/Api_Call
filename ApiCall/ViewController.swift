//
//  ViewController.swift
//  ApiCall
//
//  Created by SAYDUR on 1/13/20.
//  Copyright © 2020 SAYDUR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text_view: UITextView!
    @IBAction func call(_ sender: Any) {
        
        guard let url = URL(string: "https://api.darksky.net/forecast/688555c90fac582a0fbc3be8e444802b/37.8267,-122.4233") else {
            return
        }
        let session = URLSession.shared
        session.dataTask(with: url){(data, response, error)in
            if let response = response {
                print (response)
                
            }
            if let data = data {
                self.text_view.text = String(bytes: data, encoding: .utf8)
                print(data)
                
            }
        }.resume()
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

