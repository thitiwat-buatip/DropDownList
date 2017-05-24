//
//  TableViewController.swift
//  DropDownList
//
//  Created by Thitiwat Buatip on 5/24/17.
//  Copyright © 2017 Thitiwat Buatip. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    let dropdownList = ["Ant","Dog","Cat","Bat","Animal","Computer","Digital"]
    override func viewDidLoad() {
        super.viewDidLoad()
        animateDropDownToFrame(frame: view.frame)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

   

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dropdownList.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = dropdownList[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let object = dropdownList[indexPath.row]
        
        UserDefaults.standard.set(object, forKey: "obj")
        
        let desVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        present(desVC, animated: false, completion: nil)
        self.dismiss(animated: false, completion: nil)
        
        
        removeAnimate()
    }
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
        }, completion: {(finished : Bool) in
            if(finished)
            {
                self.willMove(toParentViewController: nil)
                self.view.removeFromSuperview()
                self.removeFromParentViewController()
            }
        })
    }
    

    
    func animateDropDownToFrame(frame: CGRect) {
        func animate() {
            self.view.frame = frame
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.25, options: .curveEaseOut, animations: animate)
        
    }
}
