//
// Created by Соколова Анастасия Андреевна on 17.03.2021.
//

import XCTest

final class SearchTicketScreen
{

    private let app = XCUIApplication()
    private let whereFieldId = "where_field_id"
    private let searchBottomSheetId = "search_bottom_sheet_id"
    private let findTitleLabelId = "find_title_label_id"

    @discardableResult
    func tapOnWhereField() -> Self {
        let searchField = app.otherElements[whereFieldId].searchFields.firstMatch
        XCTAssertTrue(searchField.waitForExistence(timeout: 1), "Поле '\(whereFieldId)' не найдено")
        searchField.typeText("")
        return self
    }

    @discardableResult
    func swipeSearchSheetDown() -> Self {
        let bottomSheet = app.otherElements[searchBottomSheetId]
        XCTAssertTrue(bottomSheet.waitForExistence(timeout: 1), "Элемент '\(searchBottomSheetId)' не найден")
        bottomSheet.swipeDown()
        return self
    }

    @discardableResult
    func checkFindTitleLabel() -> Self {
        let predicate = NSPredicate(format: "label LIKE %@", findTitleLabelId)
        XCTAssertEqual(true,
                app.staticTexts.element(matching: predicate).waitForExistence(timeout: 1),
                "Видимость текста '\(findTitleLabelId)' должна была быть true")
        return self
    }

    @discardableResult
    func checkSearchSheetIsHidden() -> Self {
        let bottomSheet = app.otherElements[searchBottomSheetId]
        XCTAssertFalse(bottomSheet.isSelected, "Элемент '\(searchBottomSheetId)' не скрыт")
        return self
    }
}
