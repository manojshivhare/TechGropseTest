//
//  ViewController.swift
//  TechGropseTest
//
//  Created by Manoj Shivhare on 11/05/20.
//  Copyright © 2020 Manoj Shivhare. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var titleView: UIView!
    
    @IBOutlet weak var postViewCountLabel: UILabel!
    
    @IBOutlet weak var postLikeCountLabel: UILabel!
    
    @IBOutlet weak var postGroupCountLabel: UILabel!
    
    @IBOutlet weak var postDistanceLabel: UILabel!
    
    @IBOutlet weak var PostTitleLabel: UILabel!
    
    @IBOutlet weak var postTitleDescriptionLabel: UILabel!
    
    @IBOutlet weak var statusOrSegmentView: UIView!
    
    @IBOutlet weak var descriptionView: UIView!
    
    @IBOutlet weak var eventDateLabel: UILabel!
    
    @IBOutlet weak var eventTimeLabel: UILabel!
    
    @IBOutlet weak var eventLanguageLabel: UILabel!
    
    @IBOutlet weak var eventGenderLabel: UILabel!
    
    @IBOutlet weak var eventAgeLabel: UILabel!
    
    @IBOutlet weak var eventLocationView: UIView!
    
    @IBOutlet weak var eventAddressLAbel: UILabel!
    
    @IBOutlet weak var eventLandmarkLabel: UILabel!
    
    @IBOutlet weak var eventGeoLocationLabel: UILabel!
    
    @IBOutlet weak var eventMapView: MKMapView!
    
    @IBOutlet weak var briefDescriptionView: UIView!
    
    @IBOutlet weak var eventDescriptionTextView: UITextView!
    
    @IBOutlet weak var eventOrganizerView: UIView!
    
    @IBOutlet weak var eventOrganizerPlusImageView: UIImageView!
    
    @IBOutlet weak var eventOrganizerDescriptionView: UIView!
    
    @IBOutlet weak var eventSponsersView: UIView!
    
    @IBOutlet weak var eventSponsersDescriptionView: UIView!
    
    @IBOutlet weak var eventSponsersPlusImageView: UIImageView!
    
    @IBOutlet weak var eventPerformersView: UIView!
    
    @IBOutlet weak var eventPerformerDescriptionView: UIView!
    
    @IBOutlet weak var eventPerformerPlusImageView: UIImageView!
    
    
    @IBOutlet weak var eventSeatingPlanView: UIView!
    
    @IBOutlet weak var eventSeatingPlanPlusImageView: UIImageView!
    
    @IBOutlet weak var eventSeatingPlanDescriptionView: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func eventOrganizerBtnTapped(_ sender: Any) {
    }
    
    
    @IBAction func eventSponsersBtnTapped(_ sender: Any) {
    }
    
    @IBAction func eventPerformerBtnTapped(_ sender: Any) {
    }
    
    @IBAction func eventSeatingPlanBtnTapped(_ sender: Any) {
    }
    
    
}

