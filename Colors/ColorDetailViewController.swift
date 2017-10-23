//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by David Auger on 10/23/17.
//  Copyright © 2017 David Auger. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController
{
    @IBOutlet weak var colorLabel: UILabel!
    var color: Color?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        colorLabel.text = color?.name
        self.title = colorLabel.text
        self.view.backgroundColor = color?.value
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
