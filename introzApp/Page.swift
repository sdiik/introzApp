//
//  Page.swift
//  introzApp
//
//  Created by ahmad shiddiq on 25/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation

struct Page {
    var ImageName: String
    var TextDescript: String
    var bodyDescript: String
}

struct Post {
    var name: String?
    var statusText: String?
    var name_imageprofile: String?
    var name_imageStatus: String?
    var numLikes: String?
    var numComments: String?
    var date : String?
    var location: String?
}

struct Friends {
    var name: String?
    var name_image : String?
    var num_totaltemansama : String?
}

struct Notifications {
    var date: String?
    var time: String?
    var title: String?
    var keterangan: String? 
    var name_pengirim: String?
}
