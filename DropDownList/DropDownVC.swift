//
//  DropDownVC.swift
//  DropDownList
//
//  Created by Thitiwat Buatip on 5/24/17.
//  Copyright © 2017 Thitiwat Buatip. All rights reserved.
//

import UIKit

class DropDownVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dropBtn(_ sender: Any) {
        tableView1.isHidden = false
        print("Drop !!!")
    }
    
    func numberOfSections(in tableView1: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView1: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView1: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView1.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = "Hello world !!!"
        
        return cell
    }


}
