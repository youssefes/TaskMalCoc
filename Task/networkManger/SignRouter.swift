//
//  signRouter.swift
//  Opportunities
//
//  Created by youssef on 4/14/21.
//  Copyright © 2020 youssef. All rights reserved.
//

import Foundation
import Alamofire

enum SignRouter: APIRouter {
    
    
    case SignUp(parameters : Parameters)
    case SignIn(parameters : Parameters)
    
    
    var method: HTTPMethod {
        switch self {
        case .SignUp:
            return .post
        case .SignIn:
            return .post
        }
    }
    
    var path: String {
        switch self {
        case .SignUp:
            return "register"
        case .SignIn:
            return "login"
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .SignUp(let parameters):
            return parameters
        case .SignIn(let parameters):
            return parameters
        }
    }
    
    var encoding: ParameterEncoding {
        switch self {
        case .SignUp , .SignIn:
            return URLEncoding.default
        }
    }
    
    var header: HTTPHeaders {
          switch self {
          case .SignUp , .SignIn :

            let header = HTTPHeaders([HTTPHeader(name: "Accept-Language", value: "en")])
              return header
          }
      }


}
