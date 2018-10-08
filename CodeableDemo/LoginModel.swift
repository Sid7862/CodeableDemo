//
//  LoginModel.swift
//  CodeableDemo
//
//  Created by Rtstl Developer on 27/09/18.
//  Copyright © 2018 Ahmed Sahib. All rights reserved.
//

import Foundation






struct loginData : Decodable
{
    let error : Bool?
    let message : String?
    let user : [loginUser]?


}
struct loginUser : Decodable {

    let id : Int?
    let username : String?
    let email : String?

}


//{
//    "error": false,
//    "message": "Login successfull",
//    "user": [
//    {
//    "id": 1,
//    "username": "admin",
//    "email": "dhara.rohit@gmail.com"
//    }
//    ]
//}
