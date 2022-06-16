//
//  ChatForYouTests.swift
//  ChatForYouTests
//
//  Created by admin on 16.06.2022.
//

import XCTest
@testable import ChatForYou


class ChatForYouTests: XCTestCase {

    func testCountContacts() {
       let userViewModelTest = UserContactViewModel()


        let contact = 16
        let valueContact = userViewModelTest.contacts.count
        
        XCTAssertEqual(contact, valueContact)
    }


}
