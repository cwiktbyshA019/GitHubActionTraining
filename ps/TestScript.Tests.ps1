<#
$MyInvocation.MyCommand.Path
Split-Path -Parent $MyInvocation.MyCommand.Path
Split-Path -Leaf $MyInvocation.MyCommand.Path
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"
"$here\$sut"
#>
function TestScript($postal) {
    return ./GetStation.ps1 $postal
}
Describe "TestScript" {
    It "郵便番号1070061から最寄り駅を取得" {
        TestScript 1070061 | Should Be "外苑前"
    }
    It "郵便番号1010051から最寄り駅を取得" {
        TestScript 1010051 | Should Be "神保町"
    }
    It "郵便番号1500001から最寄り駅を取得" {
        TestScript 1500001 | Should Be "外苑前"
    }
}
