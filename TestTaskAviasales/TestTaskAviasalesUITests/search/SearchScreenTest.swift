//
// Created by Соколова Анастасия Андреевна on 17.03.2021.
//

class SearchScreenTest: TestTaskAviasalesUITests
{
    func testReturnFromDirection() {
        super.launch(apiStubPath: "/apiStubs/airports_list_info_response.json")
        aviaTicketScreen
                .tapOnWhereField()
                .swipeSearchSheetDown()
                .checkFindTitleLabel()
                .checkSearchSheetIsHidden()
    }
}
