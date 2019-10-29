//
//  NewViewController.swift
//  SecondIOSApp
//
//  Created by Hewlett, Brianna Anne on 10/29/19.
//  Copyright © 2019 Hewlett, Brianna Anne. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    //gives the new ViewController access to the label
    @IBOutlet weak var tipLabel: UILabel!
    
    //create a Strign that will store the calculated tip sent from the original ViewController
    var tipToShow = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // display the calculated tip sent from the original ViewController in the label
        tipLabel.text = tipToShow
    }

    @IBAction func goToTableView(_ sender: UIButton) {
        //segue to the NewViewController
        //this method requires that the prepare ,ethod be overriden
        performSegue(withIdentifier: "GoToTableView", sender: nil)
    }
    
    //this method creates an instance of the ViewController that's being segued to
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //checking if we're segueing to the ViewController that has the identifier GoToTableView
        if segue.identifier == "GoToTableView"{
            //creating an instance of that ViewController
            //checking if the segue's destination is castable to a NewTableViewController and casting it if it is, else return nil
            _ = segue.destination as? NewTableViewController
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
