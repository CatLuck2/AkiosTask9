//
//  ViewController.swift
//  AkiosTask9
//
//  Created by Nekokichi on 2020/08/07.
//  Copyright © 2020 Nekokichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var selectedPrefectures: UILabel!
    
    @IBAction func exit(segue:UIStoryboardSegue) {
        guard let selectVC = segue.source as? SelectViewController else { return }
        selectedPrefectures.text = selectVC.selectedPrefecture.displayName
    }
    
}

