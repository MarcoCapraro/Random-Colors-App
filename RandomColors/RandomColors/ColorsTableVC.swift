//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Marco Capraro on 1/25/24.
//

import UIKit

class ColorsTableVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // This was dragged from the storyboard into this file (automatically created function)
    // Now, whenever the button is tapped in this view, the following code will execute
    @IBAction func tempButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
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
