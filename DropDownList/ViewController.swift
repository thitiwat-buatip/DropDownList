//
//  ViewController.swift
//  DropDownList
//
//  Created by Thitiwat Buatip on 5/24/17.
//  Copyright © 2017 Thitiwat Buatip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dropText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapDropDown(_ sender: Any) {
        
        let popvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        self.addChildViewController(popvc)
        popvc.view.frame = CGRect(x: 8, y: 90, width: 359, height: 200)
        self.view.addSubview(popvc.view)
        popvc.didMove(toParentViewController: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let object = UserDefaults.standard.object(forKey: "obj")
        print(object!)
        dropText.text = object as? String
        
    }

}

