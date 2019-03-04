//
//  InterfaceController.swift
//  MyTextInput WatchKit Extension
//
//  Created by MacStudent on 2019-03-04.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var questionLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    

    @IBAction func buttonSay() {
        
        
        let suggestiveResponse = ["In class", "Good", "Watching Movie", "Feeling Cold"]
        
        presentTextInputController(withSuggestions: suggestiveResponse, allowedInputMode: .plain){(results) in
            
            if(results != nil && results!.count > 0){
                // 2. Write your code to process the person's response
                
                let userResponse = results?.first as! String
                self.questionLabel.setText(userResponse)
                
            }
            
        }
        
    }
    
}
