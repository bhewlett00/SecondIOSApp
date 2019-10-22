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


}

