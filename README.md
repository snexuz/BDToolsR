# BDToolsR  
## TaiBIF 臺灣生物多樣性資訊機構 - 地理分布線上坐標轉換 
- Contributer: Rafe. C. H. Liu (snexuz@gmail.com)
- Website: http://www.idealyzt.com/
- Last update: 2015/12/06 

## R function
- API: http://taibif.org.tw/BDTools/
- 使用說明：transl(sourceSystem, targetSystem, x, y)
- 參數說明：
  - sourceSystem: 來源坐標系統
  - targetSystem: 欲轉換的座標系統
    - 1: WGS84 經緯度
    - 2: TWD67 經緯度
    - 3: TWD97 經緯度
    - 4: TWD97/ 澎湖地區
    - 5: TWD97/ 臺灣地區
    - 6: TWD67/ 澎湖地區
    - 7: TWD67/ 臺灣地區
  - x: X 坐標 lon 東西經度, longitude E
  - y: Y 坐標 lat 南北緯度, latitude N
- 傳回：dataframe

transl(5, 1, 123456, 2234567)
