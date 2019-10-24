//
//  ViewController.swift
//  SecondIOSApp
//
//  Created by Hewlett, Brianna Anne on 10/22/19.
//  Copyright © 2019 Hewlett, Brianna Anne. All rights reserved.
//

import UIKit

//equivalent of the MainActivity Java class in Android
class ViewController: UIViewController {

    //Gives ViewController access to the ImageView
    @IBOutlet weak var monsterImageView: UIImageView!
    
    //created an array of Strings that contains the names of the different monsters
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    //equivalent of the onCreate mehtod in Java Android classes
    //it's called when the sceen that it controls is accessed
    //initialization work is done in this method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating an instance of a Joke
        let joke = Jokes()
        
        //iterating through the Jokes array
        for joke in joke.jokes {
            //printing out the jokes to the debug area
            print(joke)
        }
    }

    //Gives ViewController the ability to respond to the selection of segments in the segmented control
    @IBAction func changeMonster(_ sender: UISegmentedControl) {
        //chnage the image in the ImageView based on the segment selected
        
        //get the index of the selected segment (0, 1, 2, 3)
        let index = sender.selectedSegmentIndex
        
        //set the image of the ImageView to a new UIImage
        //the new UIImage is the elements of the monsteres array that matches the index
        monsterImageView.image = UIImage(named: monsters[index])
    }
}

