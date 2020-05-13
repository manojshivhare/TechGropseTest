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
    
    var eventDic:EventViewModel?
        
    override func viewDidLoad() {
        super.viewDidLoad()

        WebServiceManager.callPostServiceToGetData { (eventModel) in
            self.eventDic = EventViewModel(model:eventModel)
            self.setUpLabelValues()
        }
    }
    
    func setUpLabelValues(){
        let imagurlArr = eventDic?.data?.ev_image!
        for item in imagurlArr! {
            if let imageurl = item.image {
                getDataFromImageURL(from: URL(string: imageurl)!) { (image) in
                    self.bannerImageView.image = image
                }
            }
        }
        
        self.PostTitleLabel.text = eventDic?.data?.ev_title
        self.postTitleDescriptionLabel.text = eventDic?.data?.ev_title_ar
        
    }
    
    
    @IBAction func eventOrganizerBtnTapped(_ sender: Any) {
        
        let button = sender as! UIButton
        if  button.isSelected == false{
            button.isSelected = true
            eventOrganizerDescriptionView.isHidden = false
            eventOrganizerPlusImageView.image = UIImage.init(systemName: "minus")
        }
        else
        {
            button.isSelected = false
            eventOrganizerDescriptionView.isHidden = true
            eventOrganizerPlusImageView.image = UIImage.init(systemName: "plus")
        }
    }
    
    @IBAction func eventSponsersBtnTapped(_ sender: Any) {
        let button = sender as! UIButton
        if  button.isSelected == false{
            button.isSelected = true
            eventSponsersDescriptionView.isHidden = false
            eventSponsersPlusImageView.image = UIImage.init(systemName: "minus")
        }
        else
        {
            button.isSelected = false
            eventSponsersDescriptionView.isHidden = true
            eventSponsersPlusImageView.image = UIImage.init(systemName: "plus")
        }
    }
    
    @IBAction func eventPerformerBtnTapped(_ sender: Any) {
        let button = sender as! UIButton
        if  button.isSelected == false{
            button.isSelected = true
            eventPerformerDescriptionView.isHidden = false
            eventPerformerPlusImageView.image = UIImage.init(systemName: "minus")
        }
        else
        {
            button.isSelected = false
            eventPerformerDescriptionView.isHidden = true
            eventPerformerPlusImageView.image = UIImage.init(systemName: "plus")
        }
    }
    
    @IBAction func eventSeatingPlanBtnTapped(_ sender: Any) {
        let button = sender as! UIButton
        if  button.isSelected == false{
            button.isSelected = true
            eventSeatingPlanDescriptionView.isHidden = false
            eventSeatingPlanPlusImageView.image = UIImage.init(systemName: "minus")
        }
        else
        {
            button.isSelected = false
            eventSeatingPlanDescriptionView.isHidden = true
            eventSeatingPlanPlusImageView.image = UIImage.init(systemName: "plus")
        }
    }
    
    //MARK: Download image from URL
      func getDataFromImageURL(from url: URL, completionBlock: @escaping (UIImage) -> ()) {
          URLSession.shared.dataTask(with: url) { (data, response, error) in
          guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data) else    {
                      return
                  }
                  DispatchQueue.main.async() { () -> Void in
                      completionBlock(image)
                  }
                }.resume()
      }
}

