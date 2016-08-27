//
//  AirDryerViewController.swift
//  
//
//  Created by Dustin Allen on 8/25/16.
//
//

import UIKit
import Photos
import BSImagePicker

class AirDryerViewController: UIViewController {
    
    @IBOutlet var brand: UITextField!
    @IBOutlet var size: UITextField!
    @IBOutlet var pressure: UITextField!
    @IBOutlet var comments: UITextField!
    @IBOutlet var photo: UIButton!
    @IBOutlet var save: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        brand.layer.borderWidth = 2
        brand.layer.borderColor = UIColor.blackColor().CGColor
        size.layer.borderWidth = 2
        size.layer.borderColor = UIColor.blackColor().CGColor
        pressure.layer.borderWidth = 2
        pressure.layer.borderColor = UIColor.blackColor().CGColor
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
        
        if self.size.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Pleasure Enter The Size", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction) in
                print("You've pressed OK button");
            }
            
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion:nil)
        }
        
            if self.pressure.text == "" {
                let alertController = UIAlertController(title: "Error", message: "Please Enter The Pressure", preferredStyle: .Alert)
                
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
        
        MainScreenViewController.airDryerBrand = self.brand.text!
        MainScreenViewController.airDryerSize = self.size.text!
        MainScreenViewController.airDryerPressure = self.pressure.text!
        MainScreenViewController.airDryerComments = self.comments.text!
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
}