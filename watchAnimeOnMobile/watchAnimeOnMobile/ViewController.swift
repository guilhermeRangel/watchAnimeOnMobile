//
//  ViewController.swift
//  watchAnimeOnMobile
//
//  Created by Guilherme Rangel on 19/02/20.
//  Copyright © 2020 Guilherme Rangel. All rights reserved.
//

import UIKit
import SafariServices
class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBOutlet weak var openWeb: UIButton!
    
    @IBAction func btnOpenWeb(_ sender: UIButton) {
        guard let url = URL(string: "https://cdn10001.bankai.ml/animes/h/hoshiai-no-sora/360p/007.mp4") else {return}
        
       let safariVC = SFSafariViewController(url: url)
       present(safariVC, animated: true, completion: nil)
        safariVC.delegate = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }


}

