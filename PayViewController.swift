//
//  PayViewController.swift
//  burgerClassMiniApp
//
//  Created by Avnish Khandeshi on 11/1/21.
//

import UIKit

class PayViewController: UIViewController {
    
    var incoming = ""
    
    @IBOutlet weak var amountDueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountDueLabel.text = incoming

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
