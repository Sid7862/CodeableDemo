//
//  UserModel.swift
//  CodeableDemo
//
//  Created by Rtstl Developer on 24/09/18.
//  Copyright © 2018 Ahmed Sahib. All rights reserved.
//

import Foundation

struct friend :Codable {
    let id : Int?
    let name : String?
    
}

struct user : Codable {
    
    let guid : String?
    let index : Int?
    let favoriteFruit : String?
    let latitude : Double?
    let company : String?
    let email : String?
    let picture : String?
    let tags : [String]?
    let registered : String?
    let eyeColor : String?
    let phone : String?
    let address : String?
    let friends :[friend]?
    let isActive : Bool?
    let about : String?
    let balance : String?
    let gender : String?
    let age : Int?
    let greeting : String?
    let longitude : Double?
    let _id : String?

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

struct  UserData : Codable {
    
    let data : [user]
}

