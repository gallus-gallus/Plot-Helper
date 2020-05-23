//
//  ListView.swift
//  Plot Helper
//
//  Created by anyll on 5/19/20.
//  Copyright © 2020 Anyll Markevich. All rights reserved.
//

import UIKit

class ListView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var masterSting = ""
        for i in storage.listOfSamples{
            masterSting += sampleToGoodString(sample: i)
        }
        textField.text = masterSting
    }
    @IBOutlet weak var textField: UITextView!
    @IBAction func clearData(_ sender: Any) {
        let alert = UIAlertController(title: "Are you sure you want to CLEAR ALL SAMPLE DATA?", message: "This action cannot be undone!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Clear Data", style: .default, handler: { action in
            print("Clearing data.")
            storage.listOfSamples = []
            storage.listOfPoints = []
            self.textField.text = ""
            let _ = storage.openFileNamed("listSave", type: "w", write: "")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    
    func sampleToGoodString(sample: storage.sample) -> String{
        var string = ""
        let directions = ["N","NE","E","SE","S","SW","W","NW"]
        string = "Plot \(sample.plot), direction \(directions[sample.direction-1]), distance \(sample.distance), with \(sample.coverCheatgrass) cheatgrass, \(sample.coverPlant) other plants, \(sample.coverLitter) litter, \(sample.coverCheatgrassLitter) cheatgrass litter, \(sample.coverGround) ground.\n"
        return string
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
