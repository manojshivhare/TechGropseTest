//
//  EventViewModel.swift
//  TechGropseTest
//
//  Created by Manoj Shivhare on 13/05/20.
//  Copyright © 2020 Manoj Shivhare. All rights reserved.
//

import Foundation

struct EventViewModel {
    let error : Bool?
    let error_code : Int?
    let message : String?
    let data : Data?
    
    init(model:EventModel) {
        self.error = model.error
        self.error_code = model.error_code
        self.message = model.message
        self.data = model.data
    }
}
