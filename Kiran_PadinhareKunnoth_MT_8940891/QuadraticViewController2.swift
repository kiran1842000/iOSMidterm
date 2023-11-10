//
//  QuadraticViewController2.swift
//  Kiran_PadinhareKunnoth_MT_8940891
//
//  Created by IS on 2023-11-08.
//

import UIKit
import Foundation

class QuadraticViewController2: UIViewController {
    
    
    @IBOutlet weak var inputA: UITextField!
    
    
    @IBOutlet weak var inputB: UITextField!
    
    
    @IBOutlet weak var inputC: UITextField!
   
    

    


        
    @IBOutlet weak var labelX: UILabel!
    
    
    @IBAction func calculateX(_ sender: Any) {
        
        if inputA.text==""{
            labelX.text="The value you entered for A is invalid"
            return
        }
        if inputB.text==""{
            labelX.text="The value you entered for B is invalid"
           return
        }
        if inputC.text==""{
            labelX.text="The value you entered for C is invalid"
            return
        }
        
        let a = Double(inputA.text!)
        let b = Double(inputB.text!)
        let c = Double(inputC.text!)
        let bSquared = b! * b!
        let discriminant = bSquared - (4 * a! * c!)
        
        let discriminantAbsSqrt = sqrt(Double(discriminant))
        if discriminant == 0 {
            let topFormula = -b! + discriminantAbsSqrt
            let bottomFormula = 2 * a!
            let totalX = topFormula / bottomFormula
            labelX.text = "There is only one value for X: \(totalX)"
        }else if discriminant > 0{
            
            let topFormula = -b! + discriminantAbsSqrt
            let bottomFormula = 2 * a!
            let totalX = topFormula / bottomFormula
            let topFormula2 = -b! - discriminantAbsSqrt
            let totalX2 = topFormula2 / bottomFormula
            labelX.text = "There are two values for X: \(totalX) & \(totalX2)"
            
        }
        else{
            labelX.text = "There are no real roots"
        }
        
    }
    
    
    @IBAction func clearX(_ sender: Any) {
        inputA.text=nil
        inputB.text=nil
        inputC.text=nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelX.text="Enter values for A,B and C to find X"

        // Do any additional setup after loading the view.
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
