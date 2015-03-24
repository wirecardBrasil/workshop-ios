//
//  Github.swift
//  Aula 4
//
//  Created by Fernando Nazario Sousa on 3/17/15.
//  Copyright (c) 2015 Think Mob. All rights reserved.
//

import Foundation


class GithubModel {
    
    func fetchRepos (org:String, completionHandler: (repos:Array<Repository>) -> Void) {
     
        var urlGithub = NSURL(string: "https://api.github.com/orgs/\(org)/repos")
        
        var request = NSMutableURLRequest(URL: urlGithub!)
        request.HTTPMethod = "GET"
        
        let queue = NSOperationQueue()
        
        NSURLConnection.sendAsynchronousRequest(request, queue: queue) { (response, data, error) -> Void in
            
            var resultJson:NSArray = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: nil) as NSArray
            println(resultJson)
            var repositories = Array<Repository>()
            
            for repo in resultJson {
                var repository = Repository()
                repository.fullname = repo["full_name"] as? String
                repository.description = repo["description"] as? String
                
                repositories.append(repository)
            }
            
            completionHandler(repos: repositories)
        }
    }
    
    func fetchReposAsync(org:String, completionHandler:(repos:Array<Repository>) -> Void) {
        var urlGithub = NSURL(string: "https://api.github.com/orgs/\(org)/repos")
        var request = NSMutableURLRequest(URL: urlGithub!)
        request.HTTPMethod = "GET"
        
        let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
        dispatch_async(dispatch_get_global_queue(priority, 0), {
            
            var response:NSURLResponse?
            var data = NSURLConnection.sendSynchronousRequest(request, returningResponse: &response, error: nil)
            dispatch_async(dispatch_get_main_queue(), {
                
                
            })
        })
    }
}