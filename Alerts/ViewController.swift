//
//  ViewController.swift
//  Alerts
//
//  Created by jose ramirez on 5/31/17.
//  Copyright © 2017 Jose Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    ///serveral ways 1.) annotated through out code and commented out so that 2.) can be shown
    
    /*connected show alert button from the storyboard: in order to create an alert
                                                       there are going to be 4 steps
    step1: create an alert controller== which is the manager or you can think of it as
           the whole unit
           the whole alert or 
           the whole pop up that we see
    step2: then we need to create an Alert action == the actions are the buttons with the connected responses when that button is tapped
    step3: then you need to connect the controller to the action
    step4: then you need to present the alert
 */
    @IBAction func showAlert(_ sender: Any) {
        /*STEP 1:
        --note title and message can be nil, sometimes you just want to present a tittle sometimes you want both
        */
        let alert:UIAlertController = UIAlertController(title: "Tittle", message: "Message", preferredStyle: .alert) /* note that .alert can be changed to .actionSheet , when you type a "." ,
            you will see the options listed for the type of alert*/
        
        ///Note you can have several actions for every one alert that you make
        /*STEP 2: create an action
         */ //note:UIAlertAction in handeler is handled with an unnamed parameter that is an underscore _:UIAlertActionbelow
        let action1:UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (_:UIAlertAction) in
            print("Cancelled!")
        }
        //--creating another action, called action 2, slightly different from action1
        let action2:UIAlertAction = UIAlertAction(title: "Delete", style: .destructive) { (_:UIAlertAction) in
            print("You deleted the Stuff")
        }
        
        /*STEP3: Connect action to alert*/
        alert.addAction(action1)
        //--step3: for action2
        alert.addAction(action2)
       
        
        /*STEP4: present the view */
        self.present(alert,animated: true){
            print("Present complete")
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

