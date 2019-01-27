//
//  UpcomingViewController.swift
//  ImpulseApp
//
//  Created by megan gessner on 1/26/19.
//  Copyright © 2019 megan gessner. All rights reserved.
//

import UIKit

struct rehearsal {
    
    var id : Int
    var piece : String
    var location : String
    var date : String
    
}

class RehearsalViewCell: UITableViewCell {
    @IBOutlet weak var rehearsalTitleLabel: UILabel!
    @IBOutlet weak var rehearsalLocationLabel: UILabel!
    @IBOutlet weak var rehearsalDateLabel: UILabel!
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

class UpcomingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let schedule = ["Monday 10p" : "Nelson 1", "Wednesday 6p" : "Kasper", "Thursday 10p" : "Nelson 2", "Friday 7p" : "Nelson 2", "Sunday 9p" : "Ashamu"]
    let pieceNames = ["Get it", "Ayy Ladies", "Mine", "NCIW", "Mine"]
    
    let rehearsals = [rehearsal(id: 0, piece: "Get It", location: "Nelson 1", date: "Monday 10p"), rehearsal(id: 1, piece: "Mine", location: "Ashamu", date: "Sunday 9p")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rehearsals.count
    }
    
    // https://www.ralfebert.de/ios-examples/uikit/uitableviewcontroller/custom-cells/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Rehearsal", for: indexPath) as! RehearsalViewCell
        
    
        cell.rehearsalTitleLabel?.text = rehearsals[indexPath.row].piece
        cell.rehearsalLocationLabel?.text = rehearsals[indexPath.row].location
        cell.rehearsalDateLabel?.text = rehearsals[indexPath.row].date
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
