//
//  ViewController.swift
//  CodeableDemo
//
//  Created by Rtstl Developer on 24/09/18.
//  Copyright © 2018 Ahmed Sahib. All rights reserved.
//

import UIKit

/*
struct user : Decodable {
    
    let guid : String?
    let index : Int?
    let favoriteFruit : String?
    let company : String?
    let email : String?
    
//    init(json: [String:Any]) {
//        guid = json["guid"] as? String ?? ""
//        index = json["index"] as? Int ?? -1
//        favoriteFruit = json["favoriteFruit"] as? String ?? ""
//        company = json["company"] as? String ?? ""
//        email = json["email"] as? String ?? ""
//
//
//    }
    
    
    
    /*
    "guid": "b3d9bdf3-c5a6-461a-8966-ffd1987e5c90",
    "index": 0,
    "favoriteFruit": "banana",
    "latitude": -54.108155,
    "company": "EPLOSION",
    "email": "violabell@eplosion.com",
    "picture": "http://placehold.it/32x32",
    "tags": [
    "minim",
    "nisi",
    "ipsum",
    "consectetur",
    "ea",
    "laboris",
    "id"
    ],
    "registered": "2014-04-16T08:04:33 -06:-30",
    "eyeColor": "brown",
    "phone": "+1 (910) 472-3203",
    "address": "514 Elm Place, Corinne, Maine, 1391",
    "friends": [
    {
    "id": 0,
    "name": "Leblanc Blackburn"
    },
    {
    "id": 1,
    "name": "Lewis Oneil"
    },
    {
    "id": 2,
    "name": "Marina Armstrong"
    }
    ],
    "isActive": false,
    "about": "Qui consectetur aliquip ipsum anim tempor esse. Quis veniam cupidatat in id officia consectetur. Aliqua esse proident ex minim exercitation ad amet id. Fugiat dolore minim veniam eu. Reprehenderit do fugiat velit nisi pariatur in exercitation dolore. Commodo minim duis commodo reprehenderit pariatur irure excepteur. Ea non officia amet enim est nisi incididunt elit culpa non aliquip incididunt consequat.\r\n",
    "balance": "$1,894.61",
    "name": "Viola Bell",
    "gender": "female",
    "age": 27,
    "greeting": "Hello, Viola Bell! You have 4 unread messages.",
    "longitude": 33.21204,
    "_id": "5ba87bef7f566fb7559b6811"
    */
    
}

struct  UserData : Decodable {

    let data : [user]
}
*/


class ViewController: UIViewController,APIManagerDelegate {
    
    var userArray = [user]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      /*
    //  let urlString = "http://www.json-generator.com/api/json/get/cetQirmphK?indent=2"
      //  let urlString = "http://www.json-generator.com/api/json/get/cfLalXXvtu?indent=2"
        let urlString = "http://ec2-13-127-28-165.ap-south-1.compute.amazonaws.com/cameraApi/doctorApi.php?apicall=login"


       
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error)
            in
            print("check")
            guard let data = data else {return}
           // let dataString = String(data: data, encoding: .utf8)
           // print(dataString)
            
            do
            {
                let users = try JSONDecoder().decode(UserData.self, from: data)
                print(users.data)
              
            }
            catch let error
            {
                print(error)
            }
            
            
            
            
            
        }.resume()
 */
       // APIManager.shared.delegate=self;
       // APIManager.shared.requestGetApiCall(tag: 1)
        
         APIManager.shared.delegate=self;
        var paramater  : Dictionary<String,Any>
        paramater = ["username": "a", "password": "a"]
     
         APIManager.shared.requestPostApiCallWithParameter(parameterDictionary: paramater, tag: 2)
    }
    
    func responseData(service : APIManager, responseData: Data, tag : Int)
    {
      
        if(tag==1)
        {
        do
        {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let result = try JSONDecoder().decode(UserData.self, from: responseData)
            print(result)
        }
        catch let jsonerr
        {
            print(jsonerr)
        }
        }
        else
        {
            do
            {
              
                let result = try JSONDecoder().decode(loginData.self, from: responseData)
                print(result)
            }
            catch let jsonerr
            {
                print(jsonerr)
            }
        }
    }
    
    func serviceFailed(service : APIManager, type : String)
    {
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

