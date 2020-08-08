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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let ud = UserDefaults.standard
        selectedPrefectures.text = ud.object(forKey: "prefectures") as? String ?? "未選択"
    }
    
}

