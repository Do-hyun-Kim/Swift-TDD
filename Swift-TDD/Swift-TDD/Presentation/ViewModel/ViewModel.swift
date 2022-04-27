//
//  ViewModel.swift
//  Swift-TDD
//
//  Created by Kim dohyun on 2022/04/27.
//

import Foundation


final class ViewModel {
    public var userEntities: User
    
    init(userEntities: User) {
        self.userEntities = userEntities
    }
    
    
    public func isEmailVaild(_ user: User) -> String {
        if user.email.contains("@") {
            return user.email
        }
        return ""
    }
}
