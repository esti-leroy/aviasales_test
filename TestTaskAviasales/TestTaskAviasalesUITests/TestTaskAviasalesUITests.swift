//
//  TestTaskAviasalesUITests.swift
//  TestTaskAviasalesUITests
//
//  Created by Соколова Анастасия Андреевна on 17.03.2021.
//
//

import XCTest

class TestTaskAviasalesUITests: XCTestCase {

    private let app = XCUIApplication()
    private let ticketScreen = SearchTicketScreen()

    func launch(apiStubPath: String, locale: String = "") {
        // Здесь предполагается, что у нас есть возможность запустить стабовый мок сервер.
        // Например, Vapor или обертку вокруг Perfect
        // Так же, поскольку специфика приложения неизвестна, предполагаем, что можем передавать локаль
        app.launch()
    }

    var aviaTicketScreen: SearchTicketScreen {
        return ticketScreen
    }
}
