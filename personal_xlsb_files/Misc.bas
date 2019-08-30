Attribute VB_Name = "Misc"
Sub FilterTDL()
    Worksheets("To Do Lists").AutoFilterMode = False
    Range("TDL").AutoFilter Field:=1, Operator:=xlFilterDynamic, Criteria1:=xlFilterToday
End Sub
