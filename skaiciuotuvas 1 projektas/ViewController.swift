//
//  ViewController.swift
//  skaiciuotuvas 1 projektas
//
//  Created by Nedas on 31/10/2017.
//  Copyright © 2017 Nedas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var skaiciusantekrano:Double = 0;
    var kitasskaicius:Double = 0;
    var paruosimasskc = false;
    var veiksmas = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if paruosimasskc == true
        {
            label.text = String(sender.tag-1)
            skaiciusantekrano = Double(label.text!)!
            paruosimasskc = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            skaiciusantekrano = Double (label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            kitasskaicius = Double(label.text!)!
            
         if sender.tag == 12 //Dalint mygtukas
         {
            label.text = "/";
            }
            else if sender.tag == 13 //Daugint mygtukas
            {
                label.text = "*";
            }
         else if sender.tag == 14 //Minunas
         {
            label.text = "-";
            }
         else if sender.tag == 15 //Pliusas
         {
            label.text = "+";
            }
            veiksmas  = sender.tag
            paruosimasskc = true;
        }
            else if sender.tag  == 16
            {
                if veiksmas  == 12
                {
                    label.text = String (kitasskaicius / skaiciusantekrano)
                }
                    
                else if veiksmas  == 13
                {
                    label.text = String (kitasskaicius * skaiciusantekrano)
                }
                    
                else if veiksmas  == 14
                {
                    label.text = String (kitasskaicius - skaiciusantekrano)
                }
                    
                else if veiksmas  == 15
                {
                    label.text = String (kitasskaicius + skaiciusantekrano)
                }
            }
        else if sender.tag == 11
        {
            label.text = ""
            kitasskaicius = 0;
            skaiciusantekrano = 0;
            veiksmas  = 0;
        }
    }
    
        
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}

