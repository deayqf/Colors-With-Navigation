//
//  ColorsViewController.swift
//  Colors
//
//  Created by David Auger on 10/16/17.
//  Copyright © 2017 David Auger. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var colorsTableView: UITableView!
    
    let colors: [ Color ] = [ Color( name:    "red", value:    UIColor.red ),
                              Color( name: "orange", value: UIColor.orange ),
                              Color( name: "yellow", value: UIColor.yellow ),
                              Color( name:  "green", value:  UIColor.green ),
                              Color( name:   "blue", value:   UIColor.blue ),
                              Color( name: "purple", value: UIColor.purple ),
                              Color( name:  "brown", value:  UIColor.brown ) ]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "Colors"
        colorsTableView.dataSource = self
        colorsTableView.delegate   = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections( in tableView: UITableView ) -> Int
    {
        return 1
    }
    
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int ) -> Int
    {
        return colors.count
    }
    
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath ) -> UITableViewCell
    {
        let cell: UITableViewCell = tableView.dequeueReusableCell( withIdentifier: "colorCell", for: indexPath )
        let color: Color = colors[ indexPath.row ]
        
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.value
        cell.selectionStyle = .none
        
        return cell
    }
    
    override func prepare( for segue: UIStoryboardSegue, sender: Any? )
    {
        if let destination = segue.destination as? ColorDetailViewController,
           let row = colorsTableView.indexPathForSelectedRow?.row
        {
            destination.color = colors[ row ]
        }
    }
}
