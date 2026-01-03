INTEREVAL= 3

TEXT_SCALE = 3

MONITOR_SIDE = "left"

TEXT_X_POS = 1
TEXT="Welcome To DinePart"

TEXT_COLORS={
    colors.white,
    colors.grey,
    colors.lime,
    colors.white,
    colors.orange,
    colors.grey,
    colors.purple,
    colors.black
}
 BACK_COLORS={
    colors.orange,
    colors.red,
    colors.purple,
    colors.blue,
    colors.cyan,
    colors.green,
    colors.lime,
    colors.yellow
 }
 
 col_indx = 1

 function changeCol(monitor)
    --checls if index is within range
     if col_indx > tableLength(BACK_COLORS)then
        col_indx=1
    end
    --sets background and text color
    local backCol = BACK_COLORS(col_indx)
    local textCol = TEXT_COLORS(col_indx)
    --increments color index
    col_indx= col_indx + 1
    --clears last display
    monitor.clear()
    monitor.setTestScale(TEXT_SCALE)
    monitor.setCursorPos(TEXT_X_POS,2)
    monitor.setBackgroundColor(backCol)
    monitor.setTextColor(textCol)
    
    monitor.write(TEXT)


 end
 function run()
    local monitor =peripheral.wrap(MONITOR_SIDE)
    
    while true do 
        changeCol(monitor)
        os.sleep(INTEREVAL)
    end
end