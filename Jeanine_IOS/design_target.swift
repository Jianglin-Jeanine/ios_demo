//
//  design_target.swift
//  Jeanine_IOS
//
//  Created by Qihan Zhu on 1/9/15.
//  Copyright (c) 2015 Jianzhong Chen. All rights reserved.
//

import Foundation


class homeTarget {
    var type = 0
    var name = "name"
    var image = "imageName"
    var words = "blahblahblahblahblahblahblah"
    var time = ""
    var like = 0
    var comment = 0
    
    init(type: Int, name: String, image: String, words: String, time: String, like: Int, comment: Int) {
        self.type = type
        self.name = name
        self.image = image
        self.words = words
        self.time = time
        self.like = like
        self.comment = comment
    }
}