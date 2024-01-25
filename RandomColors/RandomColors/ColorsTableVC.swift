//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Marco Capraro on 1/25/24.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addRandomColors()
    }
    
    // Create 50 random colors and add them to the colors array for display
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(UIColor.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }

}

// Make this extension solely for better code organization
// This will now only handle code for the table view
extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    // DataSource Method:
    // Determines how many rows to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    // Delegate Method: (Wait for specific action to occur before executing)
    // Everytime cell appears on a screen, this funciton will be called (customize cells here)
    // When a cell "leaves" the view of the screen it is reused and it's content is refigured for the next cell that is populated in the view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Ensures the cell isn't nil before populating the VC
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        
        // Send the associated color for the row number of the table that is being displayed
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        
        return cell
    }
    
    // Row selected, segue to ColorsDetailVC
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
