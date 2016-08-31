//
//  ViewController.swift
//  pdfApp
//
//  Created by Dustin Allen on 8/24/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createReportButton(sender: AnyObject) {
//        let next = self.storyboard?.instantiateViewControllerWithIdentifier("Screen2ViewController") as! Screen2ViewController!
//        self.navigationController?.pushViewController(next, animated: true)
        
//        let next = self.storyboard?.instantiateViewControllerWithIdentifier("PreviewViewController") as! PreviewViewController!
//        self.navigationController?.pushViewController(next, animated: true)
        
        generatePDF()
    }
    
    func generatePDF()
    {
        var pages:Array<UIView> = []
        
        // Load Views with NibName
        let page1 = NSBundle.mainBundle().loadNibNamed("PageOneView", owner: self, options: nil).last as! PageOneView
        let page2 = NSBundle.mainBundle().loadNibNamed("PageTwoView", owner: self, options: nil).last as! PageTwoView
        let page3 = NSBundle.mainBundle().loadNibNamed("PageThreeView", owner: self, options: nil).last as! PageThreeView
        let page4 = NSBundle.mainBundle().loadNibNamed("PageFourthView", owner: self, options: nil).last as! PageFourthView
        let page5 = NSBundle.mainBundle().loadNibNamed("PageFifthView", owner: self, options: nil).last as! PageFifthView
        let page6 = NSBundle.mainBundle().loadNibNamed("PageSixView", owner: self, options: nil).last as! PageSixView
        
        // Fill Views With Data
        page1.setupViewContent()
        page2.setupViewContent()
        page3.setupViewContent()
        page4.setupViewContent()
        page5.setupViewContent()
        page6.setupViewContent()
        
        // Generate PDF from pages Array
        pages.appendContentsOf([page1, page2, page3, page4, page5, page6])
        let tempFilePath = SwiftPDFGenerator.generatePDFWithPages(pages)
        let pdfLoc = NSURL(fileURLWithPath: tempFilePath)
        
        // present PDF
//        let newEventController = self.storyboard!.instantiateViewControllerWithIdentifier("PDFNavigationController") as! UINavigationController
//        newEventController.modalPresentationStyle = .PageSheet
//        (newEventController.childViewControllers[0] as! DisplayController).url = pdfLoc
//        self.presentViewController(next, animated: true, completion: nil)
        
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("DisplayController") as! DisplayController!
        next.url = pdfLoc
        self.navigationController?.pushViewController(next, animated: true)
    }

}

