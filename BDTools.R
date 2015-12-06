# TaiBIF 臺灣生物多樣性資訊機構 - 地理分布線上坐標轉換
# Contributer: Rafe. C. H. Liu (snexuz@gmail.com)
# Website: http://www.idealyzt.com/
# Last update: 2015/12/06

require('rvest')
require('dplyr')

transl <- function(sourceSystem, targetSystem, x, y){
  url <- paste('http://taibif.org.tw/BDTools/proj4/convert.php?',
               'source=', sourceSystem,
               '&destination=', targetSystem,
               '&x=', x,'&y=', y, sep='')
  
  result <- read_html(url) %>% html_nodes(xpath = '//*[@id="body"]/text()[2]') %>% 
    as.character() %>% strsplit(' ') %>% unlist() 
  
  result <- data.frame(lon = result[3], lat = result[4])
  
  return(result)
}

transl(5, 1, 123456, 2234567)


# API URL：http://taibif.org.tw/BDTools/
# 參數說明：transl(sourceSystem, targetSystem, x, y)
# sourceSystem: 來源坐標系統
# targetSystem: 欲轉換的座標系統
#     1: WGS 84 經緯度
#     2: TWD 67 經緯度
#     3: TWD 97 經緯度
#     4: TWD97/ 澎湖地區
#     5: TWD97/ 臺灣地區
#     6: TWD67/ 澎湖地區
#     7: TWD67/ 臺灣地區
# x: X 坐標 lon 東西經度, longitude E
# y: Y 坐標 lat 南北緯度, latitude N
# 回傳：轉換後的經緯度 dataframe
