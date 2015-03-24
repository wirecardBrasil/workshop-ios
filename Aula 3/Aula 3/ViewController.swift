//
//  ViewController.swift
//  Aula 3
//
//  Created by Fernando Nazario Sousa on 3/10/15.
//  Copyright (c) 2015 Think Mob. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{

    var people:Array<Person>!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        people = Array<Person>()
        
        people.append(Person(fullname: "Caue Ferreira", email: "caue.ferreira@gmail.com", age: 24, urlPhoto: "http://media.boingboing.net/wp-content/uploads/2014/06/p1.jpg"))
//        people.append(Person(fullname: "Breno", email: "breno@gmail.com", age: 30, urlPhoto: "breno.com"))
//        people.append(Person(fullname: "Breno", email: "breno@gmail.com", age: 30, urlPhoto: "breno.com"))
//        people.append(Person(fullname: "Breno", email: "breno@gmail.com", age: 30, urlPhoto: "breno.com"))
//        people.append(Person(fullname: "Breno", email: "breno@gmail.com", age: 30, urlPhoto: "breno.com"))
//        people.append(Person(fullname: "Breno", email: "breno@gmail.com", age: 30, urlPhoto: "breno.com"))
//        people.append(Person(fullname: "Breno", email: "breno@gmail.com", age: 30, urlPhoto: "breno.com"))
//        people.append(Person(fullname: "Breno", email: "breno@gmail.com", age: 30, urlPhoto: "breno.com"))
//        people.append(Person(fullname: "Breno", email: "breno@gmail.com", age: 30, urlPhoto: "breno.com"))
    }

    // MARK: Table view Datasources

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellPlaceId", forIndexPath: indexPath) as PersonCell
        
        var person:Person = people[indexPath.row]
        cell.lblFullname.text = person.fullname
        cell.lblEmail.text = person.email
        cell.lblAge.text = String(person.age!)
        
        var urlImg:NSURL! = NSURL(string: person.urlPhoto!)
        var imgData:NSData! = NSData(contentsOfURL: urlImg)
        cell.imgProfile.image = UIImage(data: imgData)
        

        
        return cell
    }
}

