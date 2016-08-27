//
//  MainScreenViewController.swift
//  Blast One
//
//  Created by Dustin Allen on 8/24/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    @IBOutlet var customerInformation: UIButton!
    @IBOutlet var jobsiteInformation: UIButton!
    @IBOutlet var equipment: UIButton!
    @IBOutlet var pressureTests: UIButton!
    @IBOutlet var equipmentTests: UIButton!
    @IBOutlet var actionItems: UIButton!
    @IBOutlet var save: UIButton!
    @IBOutlet var email: UIButton!
    
    static var introAnswer1:String = ""
    static var introAnswer2:String = ""
    static var pressureCheck1:String = ""
    static var pressureCheck2:String = ""
    static var pressureCheck3:String = ""
    static var pressureCheck4:String = ""
    static var pressureCheck5:String = ""
    static var pressureCheck6:String = ""
    static var pressureCheck7:String = ""
    static var nameOfConsultant:String = ""
    static var nameOfSalesRep:String = ""
    static var nameOfCustomer:String = ""
    static var theCustomerContact:String = ""
    static var theDate:String = ""
    static var theProjectName:String = ""
    static var theAddress:String = ""
    static var theTimeArrived:String = ""
    static var theTimeDeparted:String = ""
    static var actionRecommendations:String = ""
    static var actionBlastSkills:String = ""
    static var actionList1:String = ""
    static var actionList2:String = ""
    static var actionList3:String = ""
    static var actionList4:String = ""
    static var actionList5:String = ""
    static var actionList6:String = ""
    static var actionList7:String = ""
    static var actionList8:String = ""
    static var actionList9:String = ""
    static var actionList10:String = ""
    static var weatherInfo:String = ""
    static var hazardsInfo:String = ""
    static var accessInfo:String = ""
    static var theAreaBlasted1:String = ""
    static var theAbrasiveUsed1:String = ""
    static var theTimeBlast1:String = ""
    static var theBlastProduction1:String = ""
    static var theAbrasiveConsumption1:String = ""
    static var theProfileAchieved1:String = ""
    static var theComments1:String = ""
    static var theAreaBlasted2:String = ""
    static var theAbrasiveUsed2:String = ""
    static var theTimeBlast2:String = ""
    static var theBlastProduction2:String = ""
    static var theAbrasiveConsumption2:String = ""
    static var theProfileAchieved2:String = ""
    static var theComments2:String = ""
    static var theAreaBlasted3:String = ""
    static var theAbrasiveUsed3:String = ""
    static var theTimeBlast3:String = ""
    static var theBlastProduction3:String = ""
    static var theAbrasiveConsumption3:String = ""
    static var theProfileAchieved3:String = ""
    static var theComments3:String = ""
    static var theAreaBlasted4:String = ""
    static var theAbrasiveUsed4:String = ""
    static var theTimeBlast4:String = ""
    static var theBlastProduction4:String = ""
    static var theAbrasiveConsumption4:String = ""
    static var theProfileAchieved4:String = ""
    static var theComments4:String = ""
    static var theAreaBlasted5:String = ""
    static var theAbrasiveUsed5:String = ""
    static var theTimeBlast5:String = ""
    static var theBlastProduction5:String = ""
    static var theAbrasiveConsumption5:String = ""
    static var theProfileAchieved5:String = ""
    static var theComments5:String = ""
    static var theAreaBlasted6:String = ""
    static var theAbrasiveUsed6:String = ""
    static var theTimeBlast6:String = ""
    static var theBlastProduction6:String = ""
    static var theAbrasiveConsumption6:String = ""
    static var theProfileAchieved6:String = ""
    static var theComments6:String = ""
    static var airDryerBrand:String = ""
    static var airDryerSize:String = ""
    static var airDryerPressure:String = ""
    static var airDryerComments:String = ""
    static var airCompressorBrand:String = ""
    static var airCompressorSize:String = ""
    static var airCompressorPressure:String = ""
    static var airCompressorOptions:String = ""
    static var airCompressorComments:String = ""
    static var blastingBlast:String = ""
    static var blastingBrand:String = ""
    static var blastingMetering:String = ""
    static var blastingInlet:String = ""
    static var blastingPusherline:String = ""
    static var blastingChoke:String = ""
    static var blastingMoisture:String = ""
    static var blastingRestricting:String = ""
    static var blastingDeadman:String = ""
    static var blastingAir:String = ""
    static var blastingComments:String = ""
    static var accessoriesExtension:String = ""
    static var accessoriesWhipHose:String = ""
    static var accessoriesBlast:String = ""
    static var accessoriesDeadman:String = ""
    static var accessoriesComments:String = ""
    static var abrasiveType:String = ""
    static var abrasiveGrade:String = ""
    static var abrasiveStorage:String = ""
    static var abrasiveOnsite:String = ""
    static var abrasiveRequirements:String = ""
    static var abrasiveComments:String = ""
    static var bullSize:String = ""
    static var bullPressure:String = ""
    static var bullFitting:String = ""
    static var bullComments:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customerInformation.layer.borderWidth = 2
        customerInformation.layer.borderColor = UIColor.blackColor().CGColor
        jobsiteInformation.layer.borderWidth = 2
        jobsiteInformation.layer.borderColor = UIColor.blackColor().CGColor
        equipment.layer.borderWidth = 2
        equipment.layer.borderColor = UIColor.blackColor().CGColor
        pressureTests.layer.borderWidth = 2
        pressureTests.layer.borderColor = UIColor.blackColor().CGColor
        equipmentTests.layer.borderWidth = 2
        equipmentTests.layer.borderColor = UIColor.blackColor().CGColor
        actionItems.layer.borderWidth = 2
        actionItems.layer.borderColor = UIColor.blackColor().CGColor
        save.layer.borderWidth = 2
        save.layer.borderColor = UIColor.blackColor().CGColor
        email.layer.borderWidth = 2
        email.layer.borderColor = UIColor.blackColor().CGColor
        
        let introAnswerString : String = String(MainScreenViewController.introAnswer1)
        print(introAnswerString)
        let introAnswerString2 : String = String(MainScreenViewController.introAnswer2)
        print(introAnswerString2)
        let pressureCheckString1 : String = String(MainScreenViewController.pressureCheck1)
        print(pressureCheckString1)
        let pressureCheckString2 : String = String(MainScreenViewController.pressureCheck2)
        print(pressureCheckString2)
        let pressureCheckString3 : String = String(MainScreenViewController.pressureCheck3)
        print(pressureCheckString3)
        let pressureCheckString4 : String = String(MainScreenViewController.pressureCheck4)
        print(pressureCheckString4)
        let pressureCheckString5 : String = String(MainScreenViewController.pressureCheck5)
        print(pressureCheckString5)
        let pressureCheckString6 : String = String(MainScreenViewController.pressureCheck6)
        print(pressureCheckString6)
        let pressureCheckString7 : String = String(MainScreenViewController.pressureCheck7)
        print(pressureCheckString7)
        let nameOfConsultantString : String = String(MainScreenViewController.nameOfConsultant)
        print(nameOfConsultantString)
        let nameOfSalesRepString : String = String(MainScreenViewController.nameOfSalesRep)
        print(nameOfSalesRepString)
        let customerNameString : String = String(MainScreenViewController.nameOfCustomer)
        print(customerNameString)
        let theCustomerContactString : String = String(MainScreenViewController.theCustomerContact)
        print(theCustomerContactString)
        let theDateString : String = String(MainScreenViewController.theDate)
        print(theDateString)
        let theProjectNameString : String = String(MainScreenViewController.theProjectName)
        print(theProjectNameString)
        let theAddressString : String = String(MainScreenViewController.theAddress)
        print(theAddressString)
        let theTimeArrivedString : String = String(MainScreenViewController.theTimeArrived)
        print(theTimeArrivedString)
        let theTimeDepartedString : String = String(MainScreenViewController.theTimeDeparted)
        print(theTimeDepartedString)
        let weatherInfoString : String = String(MainScreenViewController.weatherInfo)
        print(weatherInfoString)
        let accessInfoString : String = String(MainScreenViewController.accessInfo)
        print(accessInfoString)
        let hazardsInfoString : String = String(MainScreenViewController.hazardsInfo)
        print(hazardsInfoString)
        let actionRecommendationsString : String = String(MainScreenViewController.actionRecommendations)
        print(actionRecommendationsString)
        let actionBlastSkillsString : String = String(MainScreenViewController.actionBlastSkills)
        print(actionBlastSkillsString)
        let actionList1String : String = String(MainScreenViewController.actionList1)
        print(actionList1String)
        let actionList2String : String = String(MainScreenViewController.actionList2)
        print(actionList2String)
        let actionList3String : String = String(MainScreenViewController.actionList3)
        print(actionList3String)
        let actionList4String : String = String(MainScreenViewController.actionList4)
        print(actionList4String)
        let actionList5String : String = String(MainScreenViewController.actionList5)
        print(actionList5String)
        let actionList6String : String = String(MainScreenViewController.actionList6)
        print(actionList6String)
        let actionList7String : String = String(MainScreenViewController.actionList7)
        print(actionList7String)
        let actionList8String : String = String(MainScreenViewController.actionList8)
        print(actionList8String)
        let actionList9String : String = String(MainScreenViewController.actionList9)
        print(actionList9String)
        let actionList10String : String = String(MainScreenViewController.actionList10)
        print(actionList10String)
        let theAreaBlasted1String : String = String(MainScreenViewController.theAreaBlasted1)
        print(theAreaBlasted1String)
        let theAbrasiveUsed1String : String = String(MainScreenViewController.theAbrasiveUsed1)
        print(theAbrasiveUsed1String)
        let theTimeBlast1String : String = String(MainScreenViewController.theTimeBlast1)
        print(theTimeBlast1String)
        let theBlastProduction1String : String = String(MainScreenViewController.theBlastProduction1)
        print(theBlastProduction1String)
        let theAbrasiveConsumption1String : String = String(MainScreenViewController.theAbrasiveConsumption1)
        print(theAbrasiveConsumption1String)
        let theProfileAchievedString1 : String = String(MainScreenViewController.theProfileAchieved1)
        print(theProfileAchievedString1)
        let theCommentsString1 : String = String(MainScreenViewController.theComments1)
        print(theCommentsString1)
        let theAreaBlasted2String : String = String(MainScreenViewController.theAreaBlasted2)
        print(theAreaBlasted2String)
        let theAbrasiveUsed2String : String = String(MainScreenViewController.theAbrasiveUsed2)
        print(theAbrasiveUsed2String)
        let theTimeBlast2String : String = String(MainScreenViewController.theTimeBlast2)
        print(theTimeBlast2String)
        let theBlastProduction2String : String = String(MainScreenViewController.theBlastProduction2)
        print(theBlastProduction2String)
        let theAbrasiveConsumption2String : String = String(MainScreenViewController.theAbrasiveConsumption2)
        print(theAbrasiveConsumption2String)
        let theProfileAchievedString2 : String = String(MainScreenViewController.theProfileAchieved2)
        print(theProfileAchievedString2)
        let theCommentsString2 : String = String(MainScreenViewController.theComments2)
        print(theCommentsString2)
        let theAreaBlasted3String : String = String(MainScreenViewController.theAreaBlasted3)
        print(theAreaBlasted3String)
        let theAbrasiveUsed3String : String = String(MainScreenViewController.theAbrasiveUsed3)
        print(theAbrasiveUsed3String)
        let theTimeBlast3String : String = String(MainScreenViewController.theTimeBlast3)
        print(theTimeBlast3String)
        let theBlastProduction3String : String = String(MainScreenViewController.theBlastProduction3)
        print(theBlastProduction3String)
        let theAbrasiveConsumption3String : String = String(MainScreenViewController.theAbrasiveConsumption3)
        print(theAbrasiveConsumption3String)
        let theProfileAchievedString3 : String = String(MainScreenViewController.theProfileAchieved3)
        print(theProfileAchievedString3)
        let theCommentsString3 : String = String(MainScreenViewController.theComments3)
        print(theCommentsString3)
        let theAreaBlasted4String : String = String(MainScreenViewController.theAreaBlasted4)
        print(theAreaBlasted4String)
        let theAbrasiveUsed4String : String = String(MainScreenViewController.theAbrasiveUsed4)
        print(theAbrasiveUsed4String)
        let theTimeBlast4String : String = String(MainScreenViewController.theTimeBlast4)
        print(theTimeBlast4String)
        let theBlastProduction4String : String = String(MainScreenViewController.theBlastProduction4)
        print(theBlastProduction4String)
        let theAbrasiveConsumption4String : String = String(MainScreenViewController.theAbrasiveConsumption4)
        print(theAbrasiveConsumption4String)
        let theProfileAchievedString4 : String = String(MainScreenViewController.theProfileAchieved4)
        print(theProfileAchievedString4)
        let theCommentsString4 : String = String(MainScreenViewController.theComments4)
        print(theCommentsString4)
        let theAreaBlasted5String : String = String(MainScreenViewController.theAreaBlasted5)
        print(theAreaBlasted5String)
        let theAbrasiveUsed5String : String = String(MainScreenViewController.theAbrasiveUsed5)
        print(theAbrasiveUsed5String)
        let theTimeBlast5String : String = String(MainScreenViewController.theTimeBlast5)
        print(theTimeBlast5String)
        let theBlastProduction5String : String = String(MainScreenViewController.theBlastProduction5)
        print(theBlastProduction5String)
        let theAbrasiveConsumption5String : String = String(MainScreenViewController.theAbrasiveConsumption5)
        print(theAbrasiveConsumption5String)
        let theProfileAchievedString5 : String = String(MainScreenViewController.theProfileAchieved5)
        print(theProfileAchievedString5)
        let theCommentsString5 : String = String(MainScreenViewController.theComments5)
        print(theCommentsString5)
        let theAreaBlasted6String : String = String(MainScreenViewController.theAreaBlasted6)
        print(theAreaBlasted6String)
        let theAbrasiveUsed6String : String = String(MainScreenViewController.theAbrasiveUsed6)
        print(theAbrasiveUsed6String)
        let theTimeBlast6String : String = String(MainScreenViewController.theTimeBlast6)
        print(theTimeBlast6String)
        let theBlastProduction6String : String = String(MainScreenViewController.theBlastProduction6)
        print(theBlastProduction6String)
        let theAbrasiveConsumption6String : String = String(MainScreenViewController.theAbrasiveConsumption6)
        print(theAbrasiveConsumption6String)
        let theProfileAchievedString6 : String = String(MainScreenViewController.theProfileAchieved6)
        print(theProfileAchievedString6)
        let theCommentsString6 : String = String(MainScreenViewController.theComments6)
        print(theCommentsString6)
        let airDryerBrandString : String = String(MainScreenViewController.airCompressorBrand)
        print(airDryerBrandString)
        let airDryerSizeString : String = String(MainScreenViewController.airDryerSize)
        print(airDryerSizeString)
        let airDryerPressureString : String = String(MainScreenViewController.airDryerPressure)
        print(airDryerPressureString)
        let airDryerCommentsString : String = String(MainScreenViewController.airDryerComments)
        print(airDryerCommentsString)
        let airCompressorBrandString : String = String(MainScreenViewController.airCompressorBrand)
        print(airCompressorBrandString)
        let airCompressorSizeString : String = String(MainScreenViewController.airCompressorSize)
        print(airCompressorSizeString)
        let airCompressorPressureString : String = String(MainScreenViewController.airCompressorPressure)
        print(airCompressorPressureString)
        let airCompressorOptionsString : String = String(MainScreenViewController.airCompressorOptions)
        print(airCompressorOptionsString)
        let airCompressorCommentString : String = String(MainScreenViewController.airCompressorComments)
        print(airCompressorCommentString)
        let blastingBlastString : String = String(MainScreenViewController.blastingBlast)
        print(blastingBlastString)
        let blastingBrandString : String = String(MainScreenViewController.blastingBrand)
        print(blastingBrandString)
        let blastingMeteringString : String = String(MainScreenViewController.blastingMetering)
        print(blastingMeteringString)
        let blastingInletString : String = String(MainScreenViewController.blastingInlet)
        print(blastingInletString)
        let blastingPusherlineString : String = String(MainScreenViewController.blastingPusherline)
        print(blastingPusherlineString)
        let blastingChokeString : String = String(MainScreenViewController.blastingChoke)
        print(blastingChokeString)
        let blastingMoistureString : String = String(MainScreenViewController.blastingMoisture)
        print(blastingMoistureString)
        let blastingRestrictingString : String = String(MainScreenViewController.blastingRestricting)
        print(blastingRestrictingString)
        let blastingDeadmanString : String = String(MainScreenViewController.blastingDeadman)
        print(blastingDeadmanString)
        let blastingAirString : String = String(MainScreenViewController.blastingAir)
        print(blastingAirString)
        let blastingCommentsString : String = String(MainScreenViewController.blastingComments)
        print(blastingCommentsString)
        let accessoriesExtensionString : String = String(MainScreenViewController.accessoriesExtension)
        print(accessoriesExtensionString)
        let accessoriesWhipHoseString : String = String(MainScreenViewController.accessoriesWhipHose)
        print(accessoriesWhipHoseString)
        let accessoriesBlastString : String = String(MainScreenViewController.accessoriesBlast)
        print(accessoriesBlastString)
        let accessoriesDeadmanString : String = String(MainScreenViewController.accessoriesDeadman)
        print(accessoriesDeadmanString)
        let accessoriesCommentsString : String = String(MainScreenViewController.accessoriesComments)
        print(accessoriesCommentsString)
        let abrasiveTypeString : String = String(MainScreenViewController.abrasiveType)
        print(abrasiveTypeString)
        let abrasiveGradeString : String = String(MainScreenViewController.abrasiveGrade)
        print(abrasiveGradeString)
        let abrasiveOnsiteString : String = String(MainScreenViewController.abrasiveOnsite)
        print(abrasiveOnsiteString)
        let abrasiveRequirementsString : String = String(MainScreenViewController.abrasiveRequirements)
        print(abrasiveRequirementsString)
        let abrasiveStorageString : String = String(MainScreenViewController.abrasiveStorage)
        print(abrasiveStorageString)
        let bullSizeString : String = String(MainScreenViewController.bullSize)
        print(bullSizeString)
        let bullPressureString : String = String(MainScreenViewController.bullPressure)
        print(bullPressureString)
        let bullFittingString : String = String(MainScreenViewController.bullFitting)
        print(bullFittingString)
    }
    
    
//    override func shouldAutorotate() -> Bool {
//        if (UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeLeft ||
//            UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeRight ||
//            UIDevice.currentDevice().orientation == UIDeviceOrientation.Unknown) {
//            return false
//        }
//        else {
//            return true
//        }
//    }
//    
//    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return [UIInterfaceOrientationMask.LandscapeLeft ,UIInterfaceOrientationMask.LandscapeRight]
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func customerInformationButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("CustomerInformationViewController") as! CustomerInformationViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func jobsiteInformationButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("JobsiteInformationViewController") as! JobsiteInformationViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func equipmentButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("EquipmentObservationViewController") as! EquipmentObservationsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func pressureTestsButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("PressureChecksViewController") as! PressureChecksViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func equipmentTestsButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("BlastingTestResultsViewController") as! BlastingTestResultsViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func actionItemsButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("RecommendationActionViewController") as! RecommendationActionViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("PreviewViewController") as! PreviewViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func emailButton(sender: AnyObject) {
        
    }

}
