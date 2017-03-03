//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Avinash Singh on 02/03/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit






class SearchSettingsViewController: UIViewController {
    
    var settings: GithubRepoSearchSettings?
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderValueLabel: UILabel!
    
weak var delegate: SettingsPresentingViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderValueLabel.text = "\((settings?.minStars)!)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSlide(_ sender: Any) {
        
        var multiplier: Double = 100000
        print(slider.value)
        var sliderValue: Double = Double(slider.value)
        if settings != nil{
        self.settings!.minStars = Int(multiplier * sliderValue)
        sliderValueLabel.text = "\(settings!.minStars)"
        }
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        self.delegate?.didSaveSettings(settings: settings!)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
