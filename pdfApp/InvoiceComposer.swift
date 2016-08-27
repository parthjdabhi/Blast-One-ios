//
//  InvoiceComposer.swift
//  Print2PDF
//
//  Created by Gabriel Theodoropoulos on 23/06/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit

class InvoiceComposer: NSObject {

    static let FileName = "OSA_Form"    //OSA_Form,invoice
    static let FileExt = "htm"     //htm,html
    let pathToInvoiceHTMLTemplate = NSBundle.mainBundle().pathForResource(FileName, ofType: FileExt)
    
    var pdfFilename: String!
    
    override init() {
        super.init()
    }
    
    
    func renderInvoice() -> String! {
        // Store the invoice number for future use.
        do {
            // Load the invoice HTML template code into a String variable.
            var HTMLContent = try String(contentsOfFile: pathToInvoiceHTMLTemplate!)
            
            // The logo image.
            //(NSBundle.mainBundle().pathForResource("blog-logo-dark-400", ofType: "png") ?? "")
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#img_header#", withString: (NSBundle.mainBundle().pathForResource("img_header", ofType: "jpg") ?? ""))
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#img_footer#", withString: (NSBundle.mainBundle().pathForResource("img_footer", ofType: "jpg") ?? ""))
            
            // Invoice date.
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#er_date#", withString: "\(NSDate())")
            
            // Recipient info.
            HTMLContent = HTMLContent.stringByReplacingOccurrencesOfString("#RECIPIENT_INFO#", withString: "Test\nString line".stringByReplacingOccurrencesOfString("\n", withString: "<br>"))
            
            // The HTML code is ready.
            return HTMLContent
            
        }
        catch {
            print("Unable to open and use HTML template files.")
        }
        
        return nil
    }
    
    
    func exportHTMLContentToPDF(HTMLContent: String) {
        let printPageRenderer = CustomPrintPageRenderer()
        
        let printFormatter = UIMarkupTextPrintFormatter(markupText: HTMLContent)
        printPageRenderer.addPrintFormatter(printFormatter, startingAtPageAtIndex: 0)
        
        let pdfData = drawPDFUsingPrintPageRenderer(printPageRenderer)
        
        pdfFilename = "\(AppDelegate.getAppDelegate().getDocDir())/OSA_Form123.pdf"
        pdfData.writeToFile(pdfFilename, atomically: true)
        
        print(pdfFilename)
    }
    
    
    func drawPDFUsingPrintPageRenderer(printPageRenderer: UIPrintPageRenderer) -> NSData! {
        let data = NSMutableData()
        
        UIGraphicsBeginPDFContextToData(data, CGRectZero, nil)
        
        UIGraphicsBeginPDFPage()
        
        printPageRenderer.drawPageAtIndex(0, inRect: UIGraphicsGetPDFContextBounds())
        
        UIGraphicsEndPDFContext()
        
        return data
    }
    
}
