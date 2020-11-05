BeforeAll { 
    function GetStationTest($postal) {
        return ./GetStation.ps1 $postal
    }
}

Describe "GetStationTest" {
    It "郵便番号1070061から最寄り駅を取得" {
        GetStationTest 1070061 | Should -Be "外苑前"
    }
    It "郵便番号1010051から最寄り駅を取得" {
        GetStationTest 1010051 | Should -Be "神保町"
    }
    It "郵便番号1500001から最寄り駅を取得" {
        GetStationTest 1500001 | Should -Be "外苑前〉"
    }
}
