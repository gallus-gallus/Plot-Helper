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
        
        //Sorting occcurs here.
        var masterSting = ""
        var masterList = [storage.sample]()
        var masterContentList = [storage.contents]()
        figureSamples()
        for plot in 1...8{
            for direction in 1...8{
                for distance in 1...5{
                    let sampleExitsNum: Int? = sampleExists(at: storage.sample(plot: plot, direction: direction, distance: distance, coverCheatgrass: 0, coverCheatgrassLitter: 0, coverGround: 0, coverLitter: 0, coverPlant: 0))
                    let contentExistsNum = contentExists(at: storage.contents(plot: plot, direction: direction, distance: distance, contents: storage.contentTypes.Default))
                    if sampleExitsNum != nil{
                        masterList.append(storage.listOfSamples[sampleExitsNum!])
                    }
                    if contentExistsNum != nil{
                        masterContentList.append(storage.listOfContents[contentExistsNum!])
                    }
                }
            }
        }
        CSVSting = ""
        for i in masterList{
            masterSting += sampleToGoodString(sample: i)
        }
        
        for _ in 1...5{
            masterSting += "\n"
        }
        
        for i in masterContentList{
            masterSting += contentToGoodString(content: i)
        }
        
        for _ in 1...5{
            masterSting += "\n"
        }
        
        for i in masterList{
            CSVSting += sampleToCSVString(sample: i)
        }
        
        for _ in 1...5{
            CSVSting += "\n"
        }
        
        for i in masterContentList{
            CSVSting += contentToCSVString(content: i)
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
            storage.listOfContents = []
            self.textField.text = ""
            let _ = storage.openFileNamed("listSave", type: "w", write: "")
            let _ = storage.openFileNamed("comments", type: "w", write: "")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    @IBAction func sharePressed(_ sender: Any) {
        let textToShare = CSVSting
        let objectsToShare: [Any] = [textToShare]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sender as! UIView
        self.present(activityVC, animated: true, completion: nil)
    }
    @IBAction func pointSharePressed(_ sender: Any) {
        var string = ""
        for i in storage.listOfPoints{
            string += pointToCSVString(point: i)
        }
        let textToShare = string
        let objectsToShare: [Any] = [textToShare]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sender as! UIView
        self.present(activityVC, animated: true, completion: nil)
    }
    
    func sampleToGoodString(sample: storage.sample) -> String{
        var string = ""
        let directions = ["N","NE","E","SE","S","SW","W","NW"]
        string = "Plot \(sample.plot), direction \(directions[sample.direction-1]), distance \(sample.distance), with \(sample.coverCheatgrass) cheatgrass, \(sample.coverCheatgrassLitter) cheatgrass litter, \(sample.coverGround) ground, \(sample.coverLitter) litter, \(sample.coverPlant) other plants.\n"
        return string
    }
    func sampleToCSVString(sample: storage.sample) -> String{
        var string = ""
        string = "\(sample.plot),\(sample.direction),\(sample.distance),\(sample.coverCheatgrass),\(sample.coverCheatgrassLitter),\(sample.coverGround),\(sample.coverLitter),\(sample.coverPlant)\n"
        return string
    }
    
    func contentToCSVString(content: storage.contents) -> String{
        var string = ""
        var value = 1
        if content.contents == storage.contentTypes.Default{
            value = 1
        }else if content.contents == storage.contentTypes.UnburnedGround{
            value = 2
        }else if content.contents == storage.contentTypes.BurnedGround{
            value = 3
        }else if content.contents == storage.contentTypes.UnburnedBush{
            value = 4
        }else if content.contents == storage.contentTypes.AliveBurnedBush{
            value = 5
        }else if content.contents == storage.contentTypes.DeadBurnedBush{
            value = 6
        }else if content.contents == storage.contentTypes.ScorchedGround{
            value = 7
        }else if content.contents == storage.contentTypes.ScorchedBush{
            value = 8
        }
        string = "\(content.plot),\(content.direction),\(content.distance),\(value)\n"
        return string
    }
    
    func contentToGoodString(content: storage.contents) -> String{
        var string = ""
        var value = "Default"
        if content.contents == storage.contentTypes.Default{
            value = "Default"
        }else if content.contents == storage.contentTypes.UnburnedGround{
            value = "Unburned Ground"
        }else if content.contents == storage.contentTypes.BurnedGround{
            value = "Burned Ground"
        }else if content.contents == storage.contentTypes.UnburnedBush{
            value = "Unburned Bush"
        }else if content.contents == storage.contentTypes.AliveBurnedBush{
            value = "Alive Burned Bush"
        }else if content.contents == storage.contentTypes.DeadBurnedBush{
            value = "Dead Burned Bush"
        }else if content.contents == storage.contentTypes.ScorchedGround{
            value = "Scorched Ground"
        }else if content.contents == storage.contentTypes.ScorchedBush{
            value = "Scorched Bush"
        }
        string = "Plot \(content.plot), direction \(content.direction), distance \(content.distance) contains \(value).\n"
        return string
    }
    
    func pointToCSVString(point: storage.point) -> String{
        return "\(point.plot),\(point.direction),\(point.distance),\(point.row),\(point.column),\(point.cover)\n"
    }
    
    func sampleExists(at: storage.sample) -> Int?{
        let sample = at
        var iterations = 0
        var match = false
        for i in storage.listOfSamples{
            if i.plot == sample.plot && i.direction == sample.direction && i.distance == sample.distance{
                match = true
                print("Found sample at plot \(iterations).")
                return iterations
            }
            iterations += 1
        }
        if match == false{
            return nil
        }
    }
    func figureSamples(){
        var sampleList = [storage.sample]()
        var iCount = 0
        var jCount = 0
        var matchFound = false
        for i in storage.listOfPoints{
            for j in sampleList{
                if i.plot == j.plot && i.direction == j.direction && i.distance == j.distance{
                    matchFound = true
                    let coverType = i.cover
                    if coverType == 1{sampleList[jCount].coverCheatgrass += 1}
                    if coverType == 5{sampleList[jCount].coverPlant += 1}
                    if coverType == 4{sampleList[jCount].coverLitter += 1}
                    if coverType == 2{sampleList[jCount].coverCheatgrassLitter += 1}
                    if coverType == 3{sampleList[jCount].coverGround += 1}
                }
                jCount += 1
            }
            if matchFound == false{
                let coverType = i.cover
                if coverType == 1{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 1, coverCheatgrassLitter: 0, coverGround: 0, coverLitter: 0, coverPlant: 0))
                }else if coverType == 2{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverCheatgrassLitter: 1, coverGround: 0, coverLitter: 0, coverPlant: 0))
                }else if coverType == 3{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverCheatgrassLitter: 0, coverGround: 1, coverLitter: 0, coverPlant: 0))
                }else if coverType == 4{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverCheatgrassLitter: 0, coverGround: 0, coverLitter: 1, coverPlant: 0))
                }else if coverType == 5{
                    sampleList.append(storage.sample(plot: i.plot, direction: i.direction, distance: i.distance, coverCheatgrass: 0, coverCheatgrassLitter: 0, coverGround: 0, coverLitter: 0, coverPlant: 1))
                }
            }
            matchFound = false
            iCount += 1
            jCount = 0
        }
        storage.listOfSamples = sampleList
        print("Figured Samples")
        print(sampleList)
    }
    
    func contentExists(at: storage.contents) -> Int?{
        let content = at
        var iterations = 0
        var match = false
        for i in storage.listOfContents{
            if i.plot == content.plot && i.direction == content.direction && i.distance == content.distance{
                match = true
                print("Found content at plot \(iterations).")
                return iterations
            }
            iterations += 1
        }
        if match == false{
            return nil
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

}
