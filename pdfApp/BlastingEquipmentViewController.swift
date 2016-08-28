//
//  BlastingEquipmentViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/25/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import Photos
import BSImagePicker

class BlastingEquipmentViewController: UIViewController {
    
    @IBOutlet var blast: UILabel!
    @IBOutlet var brand: UILabel!
    @IBOutlet var metering: UILabel!
    @IBOutlet var inlet: UILabel!
    @IBOutlet var pusherline: UILabel!
    @IBOutlet var choke: UILabel!
    @IBOutlet var moisture: UILabel!
    @IBOutlet var restricting: UILabel!
    @IBOutlet var deadman: UILabel!
    @IBOutlet var air: UILabel!
    @IBOutlet var comments: UILabel!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blast.layer.borderWidth = 2
        blast.layer.borderColor = UIColor.blackColor().CGColor
        brand.layer.borderWidth = 2
        brand.layer.borderColor = UIColor.blackColor().CGColor
        metering.layer.borderWidth = 2
        metering.layer.borderColor = UIColor.blackColor().CGColor
        inlet.layer.borderWidth = 2
        inlet.layer.borderColor = UIColor.blackColor().CGColor
        pusherline.layer.borderWidth = 2
        pusherline.layer.borderColor = UIColor.blackColor().CGColor
        choke.layer.borderWidth = 2
        choke.layer.borderColor = UIColor.blackColor().CGColor
        moisture.layer.borderWidth = 2
        moisture.layer.borderColor = UIColor.blackColor().CGColor
        restricting.layer.borderWidth = 2
        restricting.layer.borderColor = UIColor.blackColor().CGColor
        deadman.layer.borderWidth = 2
        deadman.layer.borderColor = UIColor.blackColor().CGColor
        air.layer.borderWidth = 2
        air.layer.borderColor = UIColor.blackColor().CGColor
        comments.layer.borderWidth = 2
        comments.layer.borderColor = UIColor.blackColor().CGColor
        photo.layer.borderWidth = 2
        photo.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
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
        
        if self.brand.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Brand", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.blast.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Blast", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.choke.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Choke", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.air.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Air", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.metering.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Metering", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.deadman.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter Any Deadman", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.restricting.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Restricting", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
        if self.moisture.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please Enter The Moisture", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
            
        }
        
        if self.pusherline.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Pusherline", preferredStyle: .Alert)
            
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
        
        blastingBlast = self.blast.text!
        blastingBrand = self.brand.text!
        blastingChoke = self.choke.text!
        blastingAir = self.air.text!
        blastingInlet = self.inlet.text!
        blastingMetering = self.metering.text!
        blastingDeadman = self.deadman.text!
        blastingRestricting = self.restricting.text!
        blastingMoisture = self.moisture.text!
        blastingPusherline = self.pusherline.text!
        blastingComments = self.comments.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}
