//
//  LabViewController1.swift
//  Kiran_PadinhareKunnoth_MT_8940891
//
//  Created by IS on 2023-11-08.
//

import UIKit

class LabViewController1: UIViewController {

        var counterVal=0;
        var incrementByVal=1;

        override func viewDidLoad() {
            super.viewDidLoad()
            
        }

        @IBOutlet weak var Counter: UILabel!
        
        
        @IBAction func doAddition(_ sender: Any)
        {
            counterVal+=incrementByVal
            modify()
        }
        
        
        @IBAction func doSubstraction(_ sender: Any)
        {
            counterVal-=incrementByVal
            modify()
        }
        
        func modify()
        {
            Counter.text="\(counterVal)"
        }
        
        
        @IBAction func resetCounter(_ sender: Any)
        {
            counterVal=0;
            incrementByVal=1;
            modify()
        }
        
        
        @IBAction func step2U(_ sender: Any)
        {
            incrementByVal=2;
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


