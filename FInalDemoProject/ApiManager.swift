//
//  ApiManager.swift
//  FInalDemoProject
//
//  Created by vikassrivastava on 03/12/16.
//  Copyright © 2016 vikassrivastava. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire
class ApiManager {
    
    static let sharedInstance = ApiManager()
    
   private init() {
        
    }
    
    
    func fetchUsers(onCompletion:@escaping (JSON) -> Void) {
        
        Alamofire.request(users_Url_Link).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSONValue = response.result.value {
            
                onCompletion(JSON(JSONValue))
            }
            else
            {
                
            }
        }
        
    }
    
}
