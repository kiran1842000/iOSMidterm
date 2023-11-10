//
//  ViewController.swift
//  Kiran_PadinhareKunnoth_MT_8940891
//
//  Created by IS on 2023-11-03.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var cityImg: UIImageView!
    
    
    @IBOutlet weak var cityInput: UITextField!
    
    
    @IBAction func cityButton(_ sender: Any) 
    {
        if (cityInput.text=="Calgary")
        {
            cityImg.image=UIImage(named: "Calgary")
        }
        else if (cityInput.text=="Halifax")
        {
            cityImg.image=UIImage(named: "Halifax")
        }
        else if (cityInput.text=="Montreal")
        {
            cityImg.image=UIImage(named: "Montreal")
        }
        else if (cityInput.text=="Toronto")
        {
            cityImg.image=UIImage(named: "Toronto")
        }
        else if (cityInput.text=="Vancouver")
        {
            cityImg.image=UIImage(named: "Vancouver")
        }
        else if (cityInput.text=="Winnipeg")
        {
            cityImg.image=UIImage(named: "Winnipeg")
        }
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

