//
//  ViewController.swift
//  Aula 4
//
//  Created by Fernando Nazario Sousa on 3/17/15.
//  Copyright (c) 2015 Think Mob. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView:UITableView!
    
    var repositories:Array<Repository>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)

        var github = GithubModel()
        github.fetchRepos("moip", completionHandler: { (repos) -> Void in
            self.repositories = repos
            self.tableView.reloadData()
        })
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if repositories != nil {
            return repositories!.count
        }
        
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellReposId", forIndexPath: indexPath) as RepoCell
        
        var repo:Repository = repositories![indexPath.row]
        
        cell.lblFullname.text = repo.fullname
        cell.lblDescription.text = repo.description
        
        return cell
    }
    
}

