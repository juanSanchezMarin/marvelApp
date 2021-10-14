//
//  marvelAppTests.swift
//  marvelAppTests
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import XCTest
@testable import marvelApp

class marvelAppTests: XCTestCase {
    var repository: CharacterRepositoryImpl = CharacterRepositoryImpl()

    override func setUp() {
        super.setUp()
    }

    /// Test to check webservice API call getAllCharacters.
    func testGetAllCharacters() {
        let exp = expectation(description: "Get All Characters")
        repository.getAllCharacters(page: 0, nameStartsWith: nil) {
            (result, characters) in
            switch result {
                case .success:
                    guard let characters = characters else { return XCTFail("Test failed testGetAllCharacters") }
                    XCTAssertTrue(characters.count >= 0)
                case .error:
                    XCTFail("Test failed testGetAllCharacters")
            }
            exp.fulfill()
        }

        waitForExpectations(timeout: 10) { (error) in
        }
    }

    /// Test webservice API call check first element.
    func testGetFirstCharacter() {
        let characterTest = Character(id: 1011334, name: "3-D Man", description: "", resourceURI: "http://gateway.marvel.com/v1/public/characters/1011334", thumbnail: Image(path: "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784", ext: "jpg"))
        let exp = expectation(description: "Get First Character")
        repository.getAllCharacters(page: 0, nameStartsWith: nil) {
            (result, characters) in
            switch result {
                case .success:
                    guard let characters = characters else { return XCTFail("Test failed testFirstCharacter") }
                    XCTAssertTrue(characters[0] == characterTest)
                case .error:
                    XCTFail("Test failed testFirstCharacter")
            }
            exp.fulfill()
        }

        waitForExpectations(timeout: 10) { (error) in
        }
    }

    /// Test to check encryption process.
    func testEncryption() {
        // These keys are not real, they have only been created randomly for this test, because I think it is interesting to have a test of this part.
        let ts = "1633541056"
        let privateKey = "a68a7e65342d6a714277737d3bde"
        let publicKey = "4002ee1979a96a15c29cce"

        let md5Hex = (ts + privateKey + publicKey).md5()
        XCTAssertTrue(md5Hex == "e5c60910096d2535792fb887dad744d0")
    }
}
