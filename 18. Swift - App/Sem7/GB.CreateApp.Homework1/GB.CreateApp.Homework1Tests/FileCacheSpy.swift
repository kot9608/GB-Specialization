//
//  FileCacheSpy.swift
//  GB.CreateApp.Homework1Tests
//
//  Created by MacOSX on 26.03.2024.
//

import XCTest
import CoreData
@testable import GB_CreateApp_Homework1

final class FileCacheSpy: FileCacheProtocol {
    
    private (set) var issave = false
    private (set) var isdelete = false
    private (set) var isaddFriends = false
    private (set) var isfetchFriends = false
    private (set) var isaddGroups = false
    private (set) var isfetchGroups = false
    private (set) var isaddFriendDate = false
    private (set) var isfetchFriendDate = false
    private (set) var isaddGroupDate = false
    private (set) var isfetchGroupDate = false
    
    func save() {
        issave = true
    }
    
    func delete(object: NSManagedObject) {
        isdelete = true
    }
    
    func addFriends(friends: [Friend]) {
        isaddFriends = true
    }
    
    func fetchFriends() -> [Friend] {
        isaddFriends = true
        return []
    }
    
    func addGroups(groups: [Group]) {
        isaddGroups = true
    }
    
    func fetchGroups() -> [Group] {
        isfetchGroups = true
        return []
    }
    
    func addFriendDate() {
        isaddFriendDate = true
    }
    
    func fetchFriendDate() -> Date? {
        isfetchFriendDate = true
        return nil
    }
    
    func addGroupDate() {
        isaddGroupDate = true
    }
    
    func fetchGroupDate() -> Date? {
        isfetchGroupDate = true
        return nil
    }
    
    
    





//class FileCacheSpy: XCTestCase {
//
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
