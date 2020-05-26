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
        CSVSting = ""
        for i in storage.listOfSamples{
            masterSting += sampleToGoodString(sample: i)
        }
        for _ in 1...5{
            masterSting += "\n"
        }
        for i in storage.listOfSamples{
            CSVSting += sampleToCSVString(sample: i)
        }
        masterSting += CSVSting
        textField.text = masterSting
    }
    var CSVSting = ""
    
    @IBOutlet weak var textField: UITextView!
    @IBAction func clearData(_ sender: Any) {
        let alert = UIAlertController(title: "Are you sure you want to CLEAR ALL SAMPLE DATA?", message: "This action cannot be undone! This will also clear all comments.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Clear Data", style: .default, handler: { action in
            print("Clearing data.")
            storage.listOfSamples = []
            storage.listOfPoints = []
            self.textField.text = ""
            let _ = storage.openFileNamed("listSave", type: "w", write: "")
            let _ = storage.openFileNamed("comments", type: "w", write: "")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    @IBAction func sharePressed(_ sender: Any) {
        /*UIApplication.share("Text to share")

        let data = ["Text, Image and url"] as [Any]
        UIApplication.share(data)*/
        
        
        /*let activityVC = UIActivityViewController(activityItems: [CSVSting], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        present(activityVC, animated: true, completion: nil)
        activityVC.completionWithItemsHandler = { (activityType, completed:Bool, returnedItems:[Any]?, error: Error?) in

            if completed  {
                self.dismiss(animated: true, completion: nil)
            }
        }*/
        
        
        /*let shareText = "Hello, world!"
        let vc = UIActivityViewController(activityItems: [shareText], applicationActivities: [])
            present(vc, animated: true)*/
        
        let textToShare = CSVSting
        let objectsToShare: [Any] = [textToShare]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sender as! UIView
        self.present(activityVC, animated: true, completion: nil)
    }
    
    func sampleToGoodString(sample: storage.sample) -> String{
        var string = ""
        let directions = ["N","NE","E","SE","S","SW","W","NW"]
        string = "Plot \(sample.plot), direction \(directions[sample.direction-1]), distance \(sample.distance), with \(sample.coverCheatgrass) cheatgrass, \(sample.coverPlant) other plants, \(sample.coverLitter) litter, \(sample.coverCheatgrassLitter) cheatgrass litter, \(sample.coverGround) ground.\n"
        return string
    }
    func sampleToCSVString(sample: storage.sample) -> String{
        var string = ""
        string = "\(sample.plot),\(sample.direction),\(sample.distance),\(sample.coverCheatgrass),\(sample.coverPlant), \(sample.coverLitter), \(sample.coverCheatgrassLitter), \(sample.coverGround)\n"
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
