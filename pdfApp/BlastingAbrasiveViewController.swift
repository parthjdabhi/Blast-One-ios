//
//  BlastingAbrasiveViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import Photos
import BSImagePicker

class BlastingAbrasiveViewController: UIViewController {
    
    @IBOutlet var type: UILabel!
    @IBOutlet var grade: UILabel!
    @IBOutlet var storage: UILabel!
    @IBOutlet var onSite: UILabel!
    @IBOutlet var requirements: UILabel!
    @IBOutlet var comments: UILabel!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        type.layer.borderWidth = 2
        type.layer.borderColor = UIColor.blackColor().CGColor
        grade.layer.borderWidth = 2
        grade.layer.borderColor = UIColor.blackColor().CGColor
        storage.layer.borderWidth = 2
        storage.layer.borderColor = UIColor.blackColor().CGColor
        onSite.layer.borderWidth = 2
        onSite.layer.borderColor = UIColor.blackColor().CGColor
        requirements.layer.borderWidth = 2
        requirements.layer.borderColor = UIColor.blackColor().CGColor
        comments.layer.borderWidth = 2
        comments.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
        photo.layer.borderWidth = 2
        photo.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func photoButton(sender: AnyObject) {
        
        let vc = BSImagePickerViewController()
        vc.maxNumberOfSelections = 20
        
        bs_presentImagePickerController(vc, animated: true,
                                        select: { (asset: PHAsset) -> Void in
                                            print("Selected: \(asset)")
            }, deselect: { (asset: PHAsset) -> Void in
                print("Deselected: \(asset)")
            }, cancel: { (assets: [PHAsset]) -> Void in
                print("Cancel: \(assets)")
            }, finish: { (assets: [PHAsset]) -> Void in
                print("Finish: \(assets)")
            }, completion: nil)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
        if self.type.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Type", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.grade.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Grade", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.storage.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Storage", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.onSite.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter If It's Onsite", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.comments.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter Any Comments", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        abrasiveType = self.type.text!
        abrasiveGrade = self.grade.text!
        abrasiveStorage = self.storage.text!
        abrasiveOnsite = self.onSite.text!
        abrasiveRequirements = self.requirements.text!
        abrasiveComments = self.comments.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }

}
