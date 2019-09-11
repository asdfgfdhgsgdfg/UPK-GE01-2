//
//  BackBody.swift
//  SVGDemo
//
//  Created by kuwan on 2019/8/28.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import UIKit


public class BackBody : NSObject {
    
    //点击坐标
    var clickPoint : CGPoint = CGPoint(x: 0, y: 0)
    //横向比
    var viewScalesW : CGFloat?
    //纵向比
    var viewScalesH : CGFloat?
    //横向移动距离
    var translateX : CGFloat?
    //纵向移动距离
    var translateY : CGFloat?
    
    
    //判断是哪一区域被点击了
    func clickBody(point : CGPoint){
        //获取b状态栏高度
        
        
        let clickx = point.x / viewScalesW! + translateX!
        let clicky = (point.y) / viewScalesH! + translateY!
        
        print("放大后 \(clickx),\(clicky)")
        clickPoint = CGPoint(x: clickx, y: clicky)
        
        //// Drawing Methods
    }
        
    func drawBackBodyCanvas(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 2126, height: 3628*550/639), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 2126, height: 3628*550/639), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 2126, y: resizedFrame.height / 3628*550/639)
       // print("---------------------------- \(resizedFrame.width),\(resizedFrame.height)")
        
        viewScalesW = resizedFrame.width / 2126
        viewScalesH = resizedFrame.height / 3628*550/639
        translateX = resizedFrame.minX
        translateY = resizedFrame.minY
        
        //// Color Declarations
        let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor2 = UIColor(red: 0.980, green: 0.886, blue: 0.835, alpha: 1.000)
        let fillColor3 = UIColor(red: 0.973, green: 0.773, blue: 0.663, alpha: 1.000)
        
        //// backbody.svg Group
        //// Group 3
        //// Bezier Drawing
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 1366.02, y: 1125.44))
        bezier2Path.addCurve(to: CGPoint(x: 1248.86, y: 1168.15), controlPoint1: CGPoint(x: 1330.34, y: 1144.63), controlPoint2: CGPoint(x: 1290.42, y: 1161.02))
        bezier2Path.addCurve(to: CGPoint(x: 1244.5, y: 1168.85), controlPoint1: CGPoint(x: 1247.45, y: 1168.39), controlPoint2: CGPoint(x: 1245.99, y: 1168.63))
        bezier2Path.addCurve(to: CGPoint(x: 1055.34, y: 1177.24), controlPoint1: CGPoint(x: 1181.97, y: 1178.49), controlPoint2: CGPoint(x: 1055.57, y: 1177.14))
        bezier2Path.addCurve(to: CGPoint(x: 875.75, y: 1163), controlPoint1: CGPoint(x: 991.97, y: 1178.38), controlPoint2: CGPoint(x: 933.08, y: 1172.81))
        bezier2Path.addCurve(to: CGPoint(x: 760.77, y: 1126.85), controlPoint1: CGPoint(x: 834.19, y: 1155.87), controlPoint2: CGPoint(x: 796.46, y: 1146.06))
        bezier2Path.addCurve(to: CGPoint(x: 761.67, y: 1135.92), controlPoint1: CGPoint(x: 760.67, y: 1129.9), controlPoint2: CGPoint(x: 761.74, y: 1132.88))
        bezier2Path.addCurve(to: CGPoint(x: 761.69, y: 1135.96), controlPoint1: CGPoint(x: 761.68, y: 1135.93), controlPoint2: CGPoint(x: 761.68, y: 1135.94))
        bezier2Path.addCurve(to: CGPoint(x: 835.85, y: 1174.81), controlPoint1: CGPoint(x: 777.16, y: 1161.65), controlPoint2: CGPoint(x: 807.08, y: 1167.08))
        bezier2Path.addCurve(to: CGPoint(x: 1063.76, y: 1200.14), controlPoint1: CGPoint(x: 922.56, y: 1198.09), controlPoint2: CGPoint(x: 987.09, y: 1200.41))
        bezier2Path.addCurve(to: CGPoint(x: 1289.03, y: 1180.15), controlPoint1: CGPoint(x: 1139.59, y: 1199.87), controlPoint2: CGPoint(x: 1218.88, y: 1202.69))
        bezier2Path.addCurve(to: CGPoint(x: 1365.16, y: 1136.23), controlPoint1: CGPoint(x: 1328.19, y: 1167.57), controlPoint2: CGPoint(x: 1349.71, y: 1161.96))
        bezier2Path.addCurve(to: CGPoint(x: 1365.83, y: 1128.05), controlPoint1: CGPoint(x: 1365.64, y: 1131.64), controlPoint2: CGPoint(x: 1365.48, y: 1132.78))
        bezier2Path.addCurve(to: CGPoint(x: 1366.02, y: 1125.48), controlPoint1: CGPoint(x: 1365.85, y: 1127.7), controlPoint2: CGPoint(x: 1366.02, y: 1125.9))
        bezier2Path.addCurve(to: CGPoint(x: 1366.02, y: 1125.44), controlPoint1: CGPoint(x: 1366.02, y: 1125.47), controlPoint2: CGPoint(x: 1366.02, y: 1125.45))
        bezier2Path.close()
        fillColor.setFill()
        bezier2Path.fill()
        
        
        
        
        //// Group 4
        //// Bezier 3 Drawing
        
        
        //// Group 5
        //// Group 6
        //// Bezier 4 Drawing
        
        
        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 902.38, y: 1515.79))
        bezier5Path.addCurve(to: CGPoint(x: 924.3, y: 1525.64), controlPoint1: CGPoint(x: 909.38, y: 1518.85), controlPoint2: CGPoint(x: 916.68, y: 1522.12))
        bezier5Path.addCurve(to: CGPoint(x: 1067.21, y: 1611.53), controlPoint1: CGPoint(x: 1022.49, y: 1571.05), controlPoint2: CGPoint(x: 1033.46, y: 1611.53))
        bezier5Path.addCurve(to: CGPoint(x: 1207.6, y: 1526.79), controlPoint1: CGPoint(x: 1100.95, y: 1611.53), controlPoint2: CGPoint(x: 1109.41, y: 1572.19))
        bezier5Path.addCurve(to: CGPoint(x: 1373.43, y: 1476.79), controlPoint1: CGPoint(x: 1315.2, y: 1477.03), controlPoint2: CGPoint(x: 1359.46, y: 1475.58))
        bezier5Path.addCurve(to: CGPoint(x: 1363.05, y: 1433.13), controlPoint1: CGPoint(x: 1367.38, y: 1450), controlPoint2: CGPoint(x: 1363.05, y: 1433.13))
        bezier5Path.addCurve(to: CGPoint(x: 1346.67, y: 1276.26), controlPoint1: CGPoint(x: 1356.7, y: 1397.96), controlPoint2: CGPoint(x: 1350.8, y: 1349.64))
        bezier5Path.addCurve(to: CGPoint(x: 1365.16, y: 1136.24), controlPoint1: CGPoint(x: 1340.43, y: 1165.17), controlPoint2: CGPoint(x: 1360.86, y: 1157.93))
        bezier5Path.addCurve(to: CGPoint(x: 1289.02, y: 1180.16), controlPoint1: CGPoint(x: 1349.72, y: 1161.96), controlPoint2: CGPoint(x: 1328.19, y: 1167.57))
        bezier5Path.addCurve(to: CGPoint(x: 1063.75, y: 1200.14), controlPoint1: CGPoint(x: 1218.88, y: 1202.69), controlPoint2: CGPoint(x: 1139.59, y: 1199.87))
        bezier5Path.addCurve(to: CGPoint(x: 835.85, y: 1174.81), controlPoint1: CGPoint(x: 987.08, y: 1200.42), controlPoint2: CGPoint(x: 922.56, y: 1198.1))
        bezier5Path.addCurve(to: CGPoint(x: 761.69, y: 1135.96), controlPoint1: CGPoint(x: 807.07, y: 1167.08), controlPoint2: CGPoint(x: 777.16, y: 1161.65))
        bezier5Path.addCurve(to: CGPoint(x: 761.63, y: 1135.92), controlPoint1: CGPoint(x: 761.67, y: 1135.95), controlPoint2: CGPoint(x: 761.65, y: 1135.94))
        bezier5Path.addCurve(to: CGPoint(x: 780.12, y: 1275.95), controlPoint1: CGPoint(x: 765.93, y: 1157.62), controlPoint2: CGPoint(x: 786.36, y: 1164.86))
        bezier5Path.addCurve(to: CGPoint(x: 757.68, y: 1475.58), controlPoint1: CGPoint(x: 777.17, y: 1328.48), controlPoint2: CGPoint(x: 766.38, y: 1416.58))
        bezier5Path.addCurve(to: CGPoint(x: 902.38, y: 1515.79), controlPoint1: CGPoint(x: 770.1, y: 1474.38), controlPoint2: CGPoint(x: 809.27, y: 1475.13))
        bezier5Path.close()
        if bezier5Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: 757.66, y: 1475.58))
        bezier6Path.addCurve(to: CGPoint(x: 757.34, y: 1477.85), controlPoint1: CGPoint(x: 757.6, y: 1475.84), controlPoint2: CGPoint(x: 757.5, y: 1476.74))
        bezier6Path.addCurve(to: CGPoint(x: 757.68, y: 1475.58), controlPoint1: CGPoint(x: 757.45, y: 1477.1), controlPoint2: CGPoint(x: 757.57, y: 1476.33))
        bezier6Path.addCurve(to: CGPoint(x: 757.66, y: 1475.58), controlPoint1: CGPoint(x: 757.67, y: 1475.58), controlPoint2: CGPoint(x: 757.67, y: 1475.58))
        bezier6Path.close()
        fillColor.setFill()
        bezier6Path.fill()
        
        
        //// Group 7
        //// Bezier 7 Drawing
        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: 1072.64, y: 1851.82))
        bezier7Path.addCurve(to: CGPoint(x: 1076.71, y: 1908.29), controlPoint1: CGPoint(x: 1072.95, y: 1855.06), controlPoint2: CGPoint(x: 1074.31, y: 1893.99))
        bezier7Path.addCurve(to: CGPoint(x: 1125.02, y: 1962.99), controlPoint1: CGPoint(x: 1080.87, y: 1933.19), controlPoint2: CGPoint(x: 1103.9, y: 1949.48))
        bezier7Path.addCurve(to: CGPoint(x: 1271.52, y: 1994.14), controlPoint1: CGPoint(x: 1168.88, y: 1991.09), controlPoint2: CGPoint(x: 1220.39, y: 2002.11))
        bezier7Path.addCurve(to: CGPoint(x: 1428.33, y: 1899.88), controlPoint1: CGPoint(x: 1334.37, y: 1984.35), controlPoint2: CGPoint(x: 1385.48, y: 1946.94))
        bezier7Path.addCurve(to: CGPoint(x: 1421.63, y: 1695.64), controlPoint1: CGPoint(x: 1431.17, y: 1834.55), controlPoint2: CGPoint(x: 1430.79, y: 1757.2))
        bezier7Path.addCurve(to: CGPoint(x: 1374.76, y: 1483.02), controlPoint1: CGPoint(x: 1411.62, y: 1628.34), controlPoint2: CGPoint(x: 1390.55, y: 1554.59))
        bezier7Path.addCurve(to: CGPoint(x: 1369.74, y: 1483.59), controlPoint1: CGPoint(x: 1373.44, y: 1483.15), controlPoint2: CGPoint(x: 1371.76, y: 1483.34))
        bezier7Path.addCurve(to: CGPoint(x: 1088.68, y: 1625.26), controlPoint1: CGPoint(x: 1338.06, y: 1487.65), controlPoint2: CGPoint(x: 1223.23, y: 1509.83))
        bezier7Path.addCurve(to: CGPoint(x: 1088.67, y: 1625.25), controlPoint1: CGPoint(x: 1088.68, y: 1625.26), controlPoint2: CGPoint(x: 1088.68, y: 1625.26))
        bezier7Path.addCurve(to: CGPoint(x: 1073.61, y: 1638.45), controlPoint1: CGPoint(x: 1083.67, y: 1629.54), controlPoint2: CGPoint(x: 1078.65, y: 1633.93))
        bezier7Path.addCurve(to: CGPoint(x: 1072.46, y: 1639.48), controlPoint1: CGPoint(x: 1073.23, y: 1638.8), controlPoint2: CGPoint(x: 1072.84, y: 1639.13))
        bezier7Path.addCurve(to: CGPoint(x: 1072.64, y: 1851.82), controlPoint1: CGPoint(x: 1072.19, y: 1735.18), controlPoint2: CGPoint(x: 1072.87, y: 1755.84))
        bezier7Path.close()
        if bezier7Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier7Path.fill()
        
        
        
        
        
        
        
        
        
        
        //// Group 8
        //// Bezier 8 Drawing
        let bezier8Path = UIBezierPath()
        bezier8Path.move(to: CGPoint(x: 1058.87, y: 1850.47))
        bezier8Path.addCurve(to: CGPoint(x: 1054.81, y: 1906.94), controlPoint1: CGPoint(x: 1058.56, y: 1853.71), controlPoint2: CGPoint(x: 1057.2, y: 1892.63))
        bezier8Path.addCurve(to: CGPoint(x: 1006.49, y: 1961.64), controlPoint1: CGPoint(x: 1050.64, y: 1931.84), controlPoint2: CGPoint(x: 1027.6, y: 1948.12))
        bezier8Path.addCurve(to: CGPoint(x: 859.99, y: 1992.78), controlPoint1: CGPoint(x: 962.64, y: 1989.73), controlPoint2: CGPoint(x: 911.12, y: 2000.76))
        bezier8Path.addCurve(to: CGPoint(x: 703.18, y: 1898.52), controlPoint1: CGPoint(x: 797.14, y: 1983), controlPoint2: CGPoint(x: 746.03, y: 1945.58))
        bezier8Path.addCurve(to: CGPoint(x: 709.88, y: 1694.29), controlPoint1: CGPoint(x: 700.35, y: 1833.19), controlPoint2: CGPoint(x: 700.73, y: 1755.84))
        bezier8Path.addCurve(to: CGPoint(x: 756.75, y: 1481.66), controlPoint1: CGPoint(x: 719.89, y: 1626.98), controlPoint2: CGPoint(x: 740.96, y: 1553.23))
        bezier8Path.addCurve(to: CGPoint(x: 761.77, y: 1482.24), controlPoint1: CGPoint(x: 758.07, y: 1481.79), controlPoint2: CGPoint(x: 759.76, y: 1481.98))
        bezier8Path.addCurve(to: CGPoint(x: 1043, y: 1623.34), controlPoint1: CGPoint(x: 793.46, y: 1486.29), controlPoint2: CGPoint(x: 908.46, y: 1507.9))
        bezier8Path.addCurve(to: CGPoint(x: 1043.51, y: 1623.82), controlPoint1: CGPoint(x: 1043.01, y: 1623.33), controlPoint2: CGPoint(x: 1043.51, y: 1623.82))
        bezier8Path.addCurve(to: CGPoint(x: 1058.27, y: 1636.47), controlPoint1: CGPoint(x: 1048.51, y: 1628.11), controlPoint2: CGPoint(x: 1053.22, y: 1631.95))
        bezier8Path.addCurve(to: CGPoint(x: 1059.25, y: 1638.09), controlPoint1: CGPoint(x: 1058.65, y: 1636.82), controlPoint2: CGPoint(x: 1058.87, y: 1637.75))
        bezier8Path.addCurve(to: CGPoint(x: 1058.87, y: 1850.47), controlPoint1: CGPoint(x: 1059.51, y: 1733.79), controlPoint2: CGPoint(x: 1058.64, y: 1754.49))
        bezier8Path.close()
        if bezier8Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = UIBezierPath()
        bezier9Path.move(to: CGPoint(x: 1428.33, y: 1899.88))
        bezier9Path.addCurve(to: CGPoint(x: 1271.52, y: 1994.14), controlPoint1: CGPoint(x: 1385.48, y: 1946.93), controlPoint2: CGPoint(x: 1334.37, y: 1984.35))
        bezier9Path.addCurve(to: CGPoint(x: 1125.02, y: 1962.99), controlPoint1: CGPoint(x: 1220.39, y: 2002.11), controlPoint2: CGPoint(x: 1168.88, y: 1991.09))
        bezier9Path.addCurve(to: CGPoint(x: 1076.71, y: 1908.29), controlPoint1: CGPoint(x: 1103.91, y: 1949.47), controlPoint2: CGPoint(x: 1080.87, y: 1933.19))
        bezier9Path.addCurve(to: CGPoint(x: 1076.65, y: 1907.96), controlPoint1: CGPoint(x: 1076.69, y: 1908.19), controlPoint2: CGPoint(x: 1076.67, y: 1908.06))
        bezier9Path.addCurve(to: CGPoint(x: 1076.01, y: 1636.3), controlPoint1: CGPoint(x: 1077.09, y: 1904.84), controlPoint2: CGPoint(x: 1076.44, y: 1728.83))
        bezier9Path.addCurve(to: CGPoint(x: 1088.67, y: 1625.25), controlPoint1: CGPoint(x: 1080.25, y: 1632.53), controlPoint2: CGPoint(x: 1084.47, y: 1628.86))
        bezier9Path.addCurve(to: CGPoint(x: 1088.68, y: 1625.26), controlPoint1: CGPoint(x: 1088.68, y: 1625.25), controlPoint2: CGPoint(x: 1088.68, y: 1625.26))
        bezier9Path.addCurve(to: CGPoint(x: 1369.75, y: 1483.59), controlPoint1: CGPoint(x: 1223.24, y: 1509.83), controlPoint2: CGPoint(x: 1338.06, y: 1487.65))
        bezier9Path.addCurve(to: CGPoint(x: 1374.76, y: 1483.02), controlPoint1: CGPoint(x: 1371.76, y: 1483.34), controlPoint2: CGPoint(x: 1373.44, y: 1483.15))
        bezier9Path.addCurve(to: CGPoint(x: 1374.82, y: 1483.01), controlPoint1: CGPoint(x: 1374.78, y: 1483.02), controlPoint2: CGPoint(x: 1374.8, y: 1483.02))
        bezier9Path.addLine(to: CGPoint(x: 1373.43, y: 1476.79))
        bezier9Path.addCurve(to: CGPoint(x: 1207.6, y: 1526.79), controlPoint1: CGPoint(x: 1359.46, y: 1475.58), controlPoint2: CGPoint(x: 1315.2, y: 1477.03))
        bezier9Path.addCurve(to: CGPoint(x: 1067.21, y: 1611.53), controlPoint1: CGPoint(x: 1109.41, y: 1572.19), controlPoint2: CGPoint(x: 1100.96, y: 1611.53))
        bezier9Path.addCurve(to: CGPoint(x: 1053.32, y: 1608.96), controlPoint1: CGPoint(x: 1062.19, y: 1611.53), controlPoint2: CGPoint(x: 1057.69, y: 1610.63))
        bezier9Path.addCurve(to: CGPoint(x: 924.3, y: 1525.65), controlPoint1: CGPoint(x: 1028.28, y: 1599.39), controlPoint2: CGPoint(x: 1007.9, y: 1564.3))
        bezier9Path.addCurve(to: CGPoint(x: 902.38, y: 1515.79), controlPoint1: CGPoint(x: 916.68, y: 1522.12), controlPoint2: CGPoint(x: 909.38, y: 1518.85))
        bezier9Path.addCurve(to: CGPoint(x: 897.28, y: 1513.58), controlPoint1: CGPoint(x: 900.66, y: 1515.04), controlPoint2: CGPoint(x: 898.97, y: 1514.31))
        bezier9Path.addCurve(to: CGPoint(x: 776.58, y: 1476.03), controlPoint1: CGPoint(x: 834.94, y: 1486.77), controlPoint2: CGPoint(x: 797.61, y: 1478.3))
        bezier9Path.addCurve(to: CGPoint(x: 757.68, y: 1475.58), controlPoint1: CGPoint(x: 767.44, y: 1475.05), controlPoint2: CGPoint(x: 761.37, y: 1475.23))
        bezier9Path.addCurve(to: CGPoint(x: 757.35, y: 1477.85), controlPoint1: CGPoint(x: 757.57, y: 1476.33), controlPoint2: CGPoint(x: 757.46, y: 1477.1))
        bezier9Path.addLine(to: CGPoint(x: 756.89, y: 1480.93))
        bezier9Path.addLine(to: CGPoint(x: 756.75, y: 1481.84))
        bezier9Path.addCurve(to: CGPoint(x: 766.19, y: 1483.01), controlPoint1: CGPoint(x: 758.89, y: 1482.04), controlPoint2: CGPoint(x: 762.06, y: 1482.4))
        bezier9Path.addCurve(to: CGPoint(x: 1033.54, y: 1615.96), controlPoint1: CGPoint(x: 801.84, y: 1488.23), controlPoint2: CGPoint(x: 908.36, y: 1511.94))
        bezier9Path.addCurve(to: CGPoint(x: 1043.21, y: 1624.12), controlPoint1: CGPoint(x: 1036.75, y: 1618.63), controlPoint2: CGPoint(x: 1039.97, y: 1621.34))
        bezier9Path.addCurve(to: CGPoint(x: 1043.26, y: 1624.08), controlPoint1: CGPoint(x: 1043.23, y: 1624.1), controlPoint2: CGPoint(x: 1043.24, y: 1624.09))
        bezier9Path.addCurve(to: CGPoint(x: 1055.51, y: 1634.74), controlPoint1: CGPoint(x: 1047.32, y: 1627.55), controlPoint2: CGPoint(x: 1051.4, y: 1631.1))
        bezier9Path.addCurve(to: CGPoint(x: 1053.67, y: 1911.99), controlPoint1: CGPoint(x: 1055.3, y: 1727.98), controlPoint2: CGPoint(x: 1053.88, y: 1907.73))
        bezier9Path.addCurve(to: CGPoint(x: 1006.49, y: 1961.64), controlPoint1: CGPoint(x: 1047.44, y: 1934.08), controlPoint2: CGPoint(x: 1026.14, y: 1949.06))
        bezier9Path.addCurve(to: CGPoint(x: 859.98, y: 1992.78), controlPoint1: CGPoint(x: 962.63, y: 1989.73), controlPoint2: CGPoint(x: 911.12, y: 2000.76))
        bezier9Path.addCurve(to: CGPoint(x: 703.18, y: 1898.53), controlPoint1: CGPoint(x: 797.14, y: 1983), controlPoint2: CGPoint(x: 746.03, y: 1945.58))
        bezier9Path.addCurve(to: CGPoint(x: 703.28, y: 1921.25), controlPoint1: CGPoint(x: 702.23, y: 1906.06), controlPoint2: CGPoint(x: 702.33, y: 1913.67))
        bezier9Path.addCurve(to: CGPoint(x: 703.29, y: 1921.21), controlPoint1: CGPoint(x: 703.28, y: 1921.24), controlPoint2: CGPoint(x: 703.29, y: 1921.22))
        bezier9Path.addCurve(to: CGPoint(x: 830.45, y: 2011.06), controlPoint1: CGPoint(x: 742.69, y: 1963.98), controlPoint2: CGPoint(x: 771.44, y: 1998.51))
        bezier9Path.addCurve(to: CGPoint(x: 1017.24, y: 1985.84), controlPoint1: CGPoint(x: 888.21, y: 2023.34), controlPoint2: CGPoint(x: 955.6, y: 2027))
        bezier9Path.addCurve(to: CGPoint(x: 1065.14, y: 1935.16), controlPoint1: CGPoint(x: 1039.67, y: 1970.86), controlPoint2: CGPoint(x: 1055.55, y: 1946.08))
        bezier9Path.addCurve(to: CGPoint(x: 1114.28, y: 1987.2), controlPoint1: CGPoint(x: 1074.58, y: 1945.24), controlPoint2: CGPoint(x: 1090.85, y: 1971.56))
        bezier9Path.addCurve(to: CGPoint(x: 1301.06, y: 2012.41), controlPoint1: CGPoint(x: 1175.91, y: 2028.36), controlPoint2: CGPoint(x: 1243.3, y: 2024.7))
        bezier9Path.addCurve(to: CGPoint(x: 1428.22, y: 1922.56), controlPoint1: CGPoint(x: 1360.07, y: 1999.87), controlPoint2: CGPoint(x: 1388.82, y: 1965.33))
        bezier9Path.addCurve(to: CGPoint(x: 1428.23, y: 1922.61), controlPoint1: CGPoint(x: 1428.22, y: 1922.58), controlPoint2: CGPoint(x: 1428.23, y: 1922.59))
        bezier9Path.addCurve(to: CGPoint(x: 1428.33, y: 1899.88), controlPoint1: CGPoint(x: 1429.18, y: 1915.03), controlPoint2: CGPoint(x: 1429.28, y: 1907.42))
        bezier9Path.close()
        fillColor.setFill()
        bezier9Path.fill()
        
        
        
        
        //// Group 9
        //// Group 10
        //// Bezier 10 Drawing
        let bezier10Path = UIBezierPath()
        bezier10Path.move(to: CGPoint(x: 1485.06, y: 2548.96))
        bezier10Path.addCurve(to: CGPoint(x: 1517.07, y: 2589.77), controlPoint1: CGPoint(x: 1492.16, y: 2553.63), controlPoint2: CGPoint(x: 1509.93, y: 2571.01))
        bezier10Path.addCurve(to: CGPoint(x: 1517.52, y: 2589.55), controlPoint1: CGPoint(x: 1517.22, y: 2589.71), controlPoint2: CGPoint(x: 1517.37, y: 2589.63))
        bezier10Path.addCurve(to: CGPoint(x: 1512.4, y: 2485.27), controlPoint1: CGPoint(x: 1519.72, y: 2584.73), controlPoint2: CGPoint(x: 1514.72, y: 2523.2))
        bezier10Path.addCurve(to: CGPoint(x: 1493.08, y: 2261.91), controlPoint1: CGPoint(x: 1507.68, y: 2407.63), controlPoint2: CGPoint(x: 1505.54, y: 2338.65))
        bezier10Path.addCurve(to: CGPoint(x: 1469.37, y: 2106.63), controlPoint1: CGPoint(x: 1488.93, y: 2236.33), controlPoint2: CGPoint(x: 1474.27, y: 2127.2))
        bezier10Path.addCurve(to: CGPoint(x: 1469.2, y: 2106.6), controlPoint1: CGPoint(x: 1469.32, y: 2106.61), controlPoint2: CGPoint(x: 1469.26, y: 2106.6))
        bezier10Path.addCurve(to: CGPoint(x: 1428.25, y: 1922.61), controlPoint1: CGPoint(x: 1456.12, y: 2047.78), controlPoint2: CGPoint(x: 1442.97, y: 1988.78))
        bezier10Path.addCurve(to: CGPoint(x: 1428.23, y: 1922.56), controlPoint1: CGPoint(x: 1428.24, y: 1922.59), controlPoint2: CGPoint(x: 1428.24, y: 1922.58))
        bezier10Path.addCurve(to: CGPoint(x: 1303.3, y: 2009.87), controlPoint1: CGPoint(x: 1389.69, y: 1965.33), controlPoint2: CGPoint(x: 1361.02, y: 1997.32))
        bezier10Path.addCurve(to: CGPoint(x: 1121.16, y: 1987.2), controlPoint1: CGPoint(x: 1246.81, y: 2022.15), controlPoint2: CGPoint(x: 1181.45, y: 2028.36))
        bezier10Path.addCurve(to: CGPoint(x: 1073.18, y: 1947.3), controlPoint1: CGPoint(x: 1091.44, y: 1966.91), controlPoint2: CGPoint(x: 1077.42, y: 1947.38))
        bezier10Path.addCurve(to: CGPoint(x: 1071.15, y: 2021.32), controlPoint1: CGPoint(x: 1070.58, y: 1947.25), controlPoint2: CGPoint(x: 1070.13, y: 2000.46))
        bezier10Path.addCurve(to: CGPoint(x: 1105.43, y: 2147.09), controlPoint1: CGPoint(x: 1071.27, y: 2023.93), controlPoint2: CGPoint(x: 1074.03, y: 2072.7))
        bezier10Path.addCurve(to: CGPoint(x: 1206.49, y: 2404.48), controlPoint1: CGPoint(x: 1133.15, y: 2234.76), controlPoint2: CGPoint(x: 1166.81, y: 2300.04))
        bezier10Path.addCurve(to: CGPoint(x: 1301.22, y: 2632.13), controlPoint1: CGPoint(x: 1233.04, y: 2461.41), controlPoint2: CGPoint(x: 1269.84, y: 2588.87))
        bezier10Path.addCurve(to: CGPoint(x: 1306.53, y: 2613.74), controlPoint1: CGPoint(x: 1301.42, y: 2624.25), controlPoint2: CGPoint(x: 1305.02, y: 2618.7))
        bezier10Path.addCurve(to: CGPoint(x: 1485.06, y: 2548.96), controlPoint1: CGPoint(x: 1338.17, y: 2521.83), controlPoint2: CGPoint(x: 1403.14, y: 2493.12))
        bezier10Path.close()
        if bezier10Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier10Path.fill()
        
        
        //// Bezier 11 Drawing
        let bezier11Path = UIBezierPath()
        bezier11Path.move(to: CGPoint(x: 1395.67, y: 2547.78))
        bezier11Path.addCurve(to: CGPoint(x: 1489.18, y: 2582.87), controlPoint1: CGPoint(x: 1435.23, y: 2538.63), controlPoint2: CGPoint(x: 1460.52, y: 2551.12))
        bezier11Path.addCurve(to: CGPoint(x: 1516.29, y: 2619.08), controlPoint1: CGPoint(x: 1499.29, y: 2594.1), controlPoint2: CGPoint(x: 1505.81, y: 2608.07))
        bezier11Path.addCurve(to: CGPoint(x: 1516.8, y: 2618.16), controlPoint1: CGPoint(x: 1516.47, y: 2618.78), controlPoint2: CGPoint(x: 1516.63, y: 2618.47))
        bezier11Path.addCurve(to: CGPoint(x: 1517.07, y: 2589.77), controlPoint1: CGPoint(x: 1521.58, y: 2609.35), controlPoint2: CGPoint(x: 1520.73, y: 2599.39))
        bezier11Path.addCurve(to: CGPoint(x: 1485.05, y: 2548.96), controlPoint1: CGPoint(x: 1509.93, y: 2571.01), controlPoint2: CGPoint(x: 1492.15, y: 2553.62))
        bezier11Path.addCurve(to: CGPoint(x: 1306.53, y: 2613.74), controlPoint1: CGPoint(x: 1403.14, y: 2493.12), controlPoint2: CGPoint(x: 1338.17, y: 2521.83))
        bezier11Path.addCurve(to: CGPoint(x: 1301.22, y: 2632.12), controlPoint1: CGPoint(x: 1305.02, y: 2618.69), controlPoint2: CGPoint(x: 1301.42, y: 2624.25))
        bezier11Path.addCurve(to: CGPoint(x: 1320.62, y: 2669.24), controlPoint1: CGPoint(x: 1300.99, y: 2640.85), controlPoint2: CGPoint(x: 1304.96, y: 2652.44))
        bezier11Path.addCurve(to: CGPoint(x: 1322.04, y: 2670.74), controlPoint1: CGPoint(x: 1321.08, y: 2669.74), controlPoint2: CGPoint(x: 1321.56, y: 2670.24))
        bezier11Path.addCurve(to: CGPoint(x: 1395.67, y: 2547.78), controlPoint1: CGPoint(x: 1324.16, y: 2635.19), controlPoint2: CGPoint(x: 1340.27, y: 2560.6))
        bezier11Path.close()
        fillColor.setFill()
        bezier11Path.fill()
        
        
        
        
        //// Group 11
        //// Bezier 12 Drawing
        let bezier12Path = UIBezierPath()
        bezier12Path.move(to: CGPoint(x: 1534.83, y: 3227.82))
        bezier12Path.addCurve(to: CGPoint(x: 1607.32, y: 3247.39), controlPoint1: CGPoint(x: 1562.9, y: 3219.22), controlPoint2: CGPoint(x: 1586.7, y: 3219.03))
        bezier12Path.addCurve(to: CGPoint(x: 1583.39, y: 3145.35), controlPoint1: CGPoint(x: 1625.14, y: 3242.3), controlPoint2: CGPoint(x: 1619.46, y: 3220.94))
        bezier12Path.addCurve(to: CGPoint(x: 1571.49, y: 3066.92), controlPoint1: CGPoint(x: 1578.23, y: 3119.49), controlPoint2: CGPoint(x: 1568.18, y: 3099.33))
        bezier12Path.addCurve(to: CGPoint(x: 1552.29, y: 2752.08), controlPoint1: CGPoint(x: 1564.69, y: 2961.99), controlPoint2: CGPoint(x: 1555.28, y: 2857.17))
        bezier12Path.addCurve(to: CGPoint(x: 1518.56, y: 2622.08), controlPoint1: CGPoint(x: 1550.94, y: 2704.73), controlPoint2: CGPoint(x: 1530.96, y: 2665))
        bezier12Path.addCurve(to: CGPoint(x: 1516.8, y: 2618.16), controlPoint1: CGPoint(x: 1517.99, y: 2620.75), controlPoint2: CGPoint(x: 1517.39, y: 2619.46))
        bezier12Path.addCurve(to: CGPoint(x: 1516.29, y: 2619.08), controlPoint1: CGPoint(x: 1516.63, y: 2618.46), controlPoint2: CGPoint(x: 1516.48, y: 2618.77))
        bezier12Path.addCurve(to: CGPoint(x: 1489.18, y: 2582.86), controlPoint1: CGPoint(x: 1505.81, y: 2608.07), controlPoint2: CGPoint(x: 1499.29, y: 2594.1))
        bezier12Path.addCurve(to: CGPoint(x: 1395.67, y: 2547.78), controlPoint1: CGPoint(x: 1460.52, y: 2551.12), controlPoint2: CGPoint(x: 1435.24, y: 2538.62))
        bezier12Path.addCurve(to: CGPoint(x: 1322.04, y: 2670.74), controlPoint1: CGPoint(x: 1340.28, y: 2560.59), controlPoint2: CGPoint(x: 1324.16, y: 2635.19))
        bezier12Path.addCurve(to: CGPoint(x: 1320.63, y: 2669.24), controlPoint1: CGPoint(x: 1321.56, y: 2670.24), controlPoint2: CGPoint(x: 1321.09, y: 2669.74))
        bezier12Path.addCurve(to: CGPoint(x: 1320.06, y: 2676.47), controlPoint1: CGPoint(x: 1320.46, y: 2671.78), controlPoint2: CGPoint(x: 1320.28, y: 2674.2))
        bezier12Path.addCurve(to: CGPoint(x: 1323.08, y: 2738.34), controlPoint1: CGPoint(x: 1317.89, y: 2698.63), controlPoint2: CGPoint(x: 1319.49, y: 2698.12))
        bezier12Path.addCurve(to: CGPoint(x: 1428.63, y: 3036.35), controlPoint1: CGPoint(x: 1337.49, y: 2845.15), controlPoint2: CGPoint(x: 1394.02, y: 2936.82))
        bezier12Path.addCurve(to: CGPoint(x: 1472.27, y: 3220.86), controlPoint1: CGPoint(x: 1453.2, y: 3095.35), controlPoint2: CGPoint(x: 1458.93, y: 3159.15))
        bezier12Path.addCurve(to: CGPoint(x: 1484.38, y: 3264.41), controlPoint1: CGPoint(x: 1473.74, y: 3252.71), controlPoint2: CGPoint(x: 1477.76, y: 3263.27))
        bezier12Path.addCurve(to: CGPoint(x: 1534.83, y: 3227.82), controlPoint1: CGPoint(x: 1493.89, y: 3238.84), controlPoint2: CGPoint(x: 1517.88, y: 3233.03))
        bezier12Path.close()
        if bezier12Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier12Path.fill()
        
        
        //// Group 12
        //// Bezier 13 Drawing
        
        
        //// Bezier 14 Drawing
        
        
        //// Bezier 15 Drawing
        
        
        //// Bezier 16 Drawing
        
        
        //// Bezier 17 Drawing
        
        
        //// Bezier 18 Drawing
        
        
        //// Bezier 19 Drawing
        
        
        //// Bezier 20 Drawing
        
        
        //// Bezier 21 Drawing
        
        
        //// Bezier 22 Drawing
        
        
        //// Bezier 23 Drawing
        
        
        //// Bezier 24 Drawing
        
        
        //// Bezier 25 Drawing
        
        
        //// Bezier 26 Drawing
        
        
        //// Bezier 27 Drawing
        
        
        //// Bezier 28 Drawing
        
        
        //// Bezier 29 Drawing
        
        
        //// Bezier 30 Drawing
        
        
        //// Bezier 31 Drawing
        
        
        //// Bezier 32 Drawing
        
        
        //// Bezier 33 Drawing
        
        
        //// Bezier 34 Drawing
        
        
        //// Bezier 35 Drawing
        
        
        //// Bezier 36 Drawing
        
        
        //// Bezier 37 Drawing
        
        
        //// Bezier 38 Drawing
        
        
        //// Bezier 39 Drawing
        
        
        //// Bezier 40 Drawing
        
        
        //// Bezier 41 Drawing
        
        
        //// Bezier 42 Drawing
        
        
        //// Bezier 43 Drawing
        
        
        //// Bezier 44 Drawing
        
        
        //// Bezier 45 Drawing
        
        
        //// Bezier 46 Drawing
        
        
        //// Bezier 47 Drawing
        
        
        //// Bezier 48 Drawing
        
        
        //// Bezier 49 Drawing
        
        
        //// Bezier 50 Drawing
        
        
        //// Bezier 51 Drawing
        
        
        //// Bezier 52 Drawing
        
        
        //// Bezier 53 Drawing
        
        
        //// Bezier 54 Drawing
        
        
        //// Bezier 55 Drawing
        
        
        //// Bezier 56 Drawing
        
        
        //// Bezier 57 Drawing
        
        
        //// Bezier 58 Drawing
        
        
        //// Bezier 59 Drawing
        
        
        //// Bezier 60 Drawing
        
        
        //// Bezier 61 Drawing
        
        
        //// Bezier 62 Drawing
        
        
        //// Bezier 63 Drawing
        
        
        //// Bezier 64 Drawing
        
        
        //// Bezier 65 Drawing
        
        
        //// Bezier 66 Drawing
        
        
        //// Bezier 67 Drawing
        
        
        //// Bezier 68 Drawing
        
        
        //// Bezier 69 Drawing
        
        
        //// Bezier 70 Drawing
        let bezier70Path = UIBezierPath()
        bezier70Path.move(to: CGPoint(x: 1632.62, y: 3299.43))
        bezier70Path.addCurve(to: CGPoint(x: 1630.35, y: 3295.08), controlPoint1: CGPoint(x: 1631.63, y: 3297.53), controlPoint2: CGPoint(x: 1630.92, y: 3296.14))
        bezier70Path.addCurve(to: CGPoint(x: 1619.17, y: 3282.46), controlPoint1: CGPoint(x: 1626.6, y: 3290.56), controlPoint2: CGPoint(x: 1622.87, y: 3286.37))
        bezier70Path.addCurve(to: CGPoint(x: 1610.77, y: 3274.06), controlPoint1: CGPoint(x: 1615.58, y: 3278.93), controlPoint2: CGPoint(x: 1611.04, y: 3274.44))
        bezier70Path.addCurve(to: CGPoint(x: 1608.1, y: 3271.57), controlPoint1: CGPoint(x: 1609.88, y: 3273.21), controlPoint2: CGPoint(x: 1608.99, y: 3272.38))
        bezier70Path.addCurve(to: CGPoint(x: 1607.31, y: 3270.87), controlPoint1: CGPoint(x: 1607.83, y: 3271.33), controlPoint2: CGPoint(x: 1607.57, y: 3271.1))
        bezier70Path.addCurve(to: CGPoint(x: 1605.44, y: 3269.19), controlPoint1: CGPoint(x: 1606.68, y: 3270.3), controlPoint2: CGPoint(x: 1606.06, y: 3269.74))
        bezier70Path.addCurve(to: CGPoint(x: 1603.87, y: 3267.84), controlPoint1: CGPoint(x: 1604.91, y: 3268.73), controlPoint2: CGPoint(x: 1604.39, y: 3268.29))
        bezier70Path.addCurve(to: CGPoint(x: 1602.79, y: 3266.92), controlPoint1: CGPoint(x: 1603.51, y: 3267.53), controlPoint2: CGPoint(x: 1603.15, y: 3267.22))
        bezier70Path.addCurve(to: CGPoint(x: 1601.53, y: 3265.88), controlPoint1: CGPoint(x: 1602.36, y: 3266.56), controlPoint2: CGPoint(x: 1601.94, y: 3266.22))
        bezier70Path.addCurve(to: CGPoint(x: 1600.15, y: 3264.74), controlPoint1: CGPoint(x: 1601.06, y: 3265.5), controlPoint2: CGPoint(x: 1600.6, y: 3265.11))
        bezier70Path.addCurve(to: CGPoint(x: 1598.94, y: 3263.79), controlPoint1: CGPoint(x: 1599.74, y: 3264.42), controlPoint2: CGPoint(x: 1599.34, y: 3264.11))
        bezier70Path.addCurve(to: CGPoint(x: 1597.53, y: 3262.68), controlPoint1: CGPoint(x: 1598.47, y: 3263.42), controlPoint2: CGPoint(x: 1598, y: 3263.04))
        bezier70Path.addCurve(to: CGPoint(x: 1595.61, y: 3261.24), controlPoint1: CGPoint(x: 1596.89, y: 3262.19), controlPoint2: CGPoint(x: 1596.25, y: 3261.72))
        bezier70Path.addCurve(to: CGPoint(x: 1594.92, y: 3260.73), controlPoint1: CGPoint(x: 1595.38, y: 3261.07), controlPoint2: CGPoint(x: 1595.15, y: 3260.89))
        bezier70Path.addCurve(to: CGPoint(x: 1592.96, y: 3259.32), controlPoint1: CGPoint(x: 1594.27, y: 3260.24), controlPoint2: CGPoint(x: 1593.61, y: 3259.78))
        bezier70Path.addCurve(to: CGPoint(x: 1592.33, y: 3258.87), controlPoint1: CGPoint(x: 1592.75, y: 3259.17), controlPoint2: CGPoint(x: 1592.54, y: 3259.01))
        bezier70Path.addCurve(to: CGPoint(x: 1590.35, y: 3257.53), controlPoint1: CGPoint(x: 1591.67, y: 3258.41), controlPoint2: CGPoint(x: 1591.01, y: 3257.97))
        bezier70Path.addCurve(to: CGPoint(x: 1589.75, y: 3257.12), controlPoint1: CGPoint(x: 1590.15, y: 3257.39), controlPoint2: CGPoint(x: 1589.95, y: 3257.25))
        bezier70Path.addCurve(to: CGPoint(x: 1587.45, y: 3255.64), controlPoint1: CGPoint(x: 1588.98, y: 3256.61), controlPoint2: CGPoint(x: 1588.21, y: 3256.12))
        bezier70Path.addCurve(to: CGPoint(x: 1587.19, y: 3255.47), controlPoint1: CGPoint(x: 1587.36, y: 3255.58), controlPoint2: CGPoint(x: 1587.27, y: 3255.53))
        bezier70Path.addCurve(to: CGPoint(x: 1584.97, y: 3254.12), controlPoint1: CGPoint(x: 1586.45, y: 3255.01), controlPoint2: CGPoint(x: 1585.71, y: 3254.56))
        bezier70Path.addCurve(to: CGPoint(x: 1584.64, y: 3253.93), controlPoint1: CGPoint(x: 1584.86, y: 3254.06), controlPoint2: CGPoint(x: 1584.75, y: 3253.99))
        bezier70Path.addCurve(to: CGPoint(x: 1582.4, y: 3252.65), controlPoint1: CGPoint(x: 1583.89, y: 3253.49), controlPoint2: CGPoint(x: 1583.14, y: 3253.06))
        bezier70Path.addCurve(to: CGPoint(x: 1582.11, y: 3252.49), controlPoint1: CGPoint(x: 1582.3, y: 3252.6), controlPoint2: CGPoint(x: 1582.21, y: 3252.54))
        bezier70Path.addCurve(to: CGPoint(x: 1579.97, y: 3251.34), controlPoint1: CGPoint(x: 1581.4, y: 3252.09), controlPoint2: CGPoint(x: 1580.68, y: 3251.72))
        bezier70Path.addCurve(to: CGPoint(x: 1579.6, y: 3251.15), controlPoint1: CGPoint(x: 1579.85, y: 3251.28), controlPoint2: CGPoint(x: 1579.72, y: 3251.21))
        bezier70Path.addCurve(to: CGPoint(x: 1577.47, y: 3250.09), controlPoint1: CGPoint(x: 1578.89, y: 3250.78), controlPoint2: CGPoint(x: 1578.18, y: 3250.43))
        bezier70Path.addCurve(to: CGPoint(x: 1577.11, y: 3249.91), controlPoint1: CGPoint(x: 1577.35, y: 3250.03), controlPoint2: CGPoint(x: 1577.23, y: 3249.97))
        bezier70Path.addCurve(to: CGPoint(x: 1575.04, y: 3248.96), controlPoint1: CGPoint(x: 1576.41, y: 3249.58), controlPoint2: CGPoint(x: 1575.73, y: 3249.27))
        bezier70Path.addCurve(to: CGPoint(x: 1574.63, y: 3248.77), controlPoint1: CGPoint(x: 1574.9, y: 3248.9), controlPoint2: CGPoint(x: 1574.77, y: 3248.83))
        bezier70Path.addCurve(to: CGPoint(x: 1572.61, y: 3247.92), controlPoint1: CGPoint(x: 1573.95, y: 3248.47), controlPoint2: CGPoint(x: 1573.28, y: 3248.2))
        bezier70Path.addCurve(to: CGPoint(x: 1572.17, y: 3247.74), controlPoint1: CGPoint(x: 1572.46, y: 3247.86), controlPoint2: CGPoint(x: 1572.32, y: 3247.79))
        bezier70Path.addCurve(to: CGPoint(x: 1570.2, y: 3246.99), controlPoint1: CGPoint(x: 1571.51, y: 3247.47), controlPoint2: CGPoint(x: 1570.86, y: 3247.23))
        bezier70Path.addCurve(to: CGPoint(x: 1569.73, y: 3246.8), controlPoint1: CGPoint(x: 1570.04, y: 3246.92), controlPoint2: CGPoint(x: 1569.89, y: 3246.86))
        bezier70Path.addCurve(to: CGPoint(x: 1567.19, y: 3245.94), controlPoint1: CGPoint(x: 1568.87, y: 3246.49), controlPoint2: CGPoint(x: 1568.03, y: 3246.21))
        bezier70Path.addCurve(to: CGPoint(x: 1566.6, y: 3245.76), controlPoint1: CGPoint(x: 1566.99, y: 3245.87), controlPoint2: CGPoint(x: 1566.8, y: 3245.82))
        bezier70Path.addCurve(to: CGPoint(x: 1564.7, y: 3245.19), controlPoint1: CGPoint(x: 1565.96, y: 3245.56), controlPoint2: CGPoint(x: 1565.33, y: 3245.37))
        bezier70Path.addCurve(to: CGPoint(x: 1563.86, y: 3244.97), controlPoint1: CGPoint(x: 1564.42, y: 3245.11), controlPoint2: CGPoint(x: 1564.14, y: 3245.04))
        bezier70Path.addCurve(to: CGPoint(x: 1562.22, y: 3244.54), controlPoint1: CGPoint(x: 1563.31, y: 3244.82), controlPoint2: CGPoint(x: 1562.77, y: 3244.67))
        bezier70Path.addCurve(to: CGPoint(x: 1561.32, y: 3244.34), controlPoint1: CGPoint(x: 1561.92, y: 3244.47), controlPoint2: CGPoint(x: 1561.62, y: 3244.41))
        bezier70Path.addCurve(to: CGPoint(x: 1559.76, y: 3244.01), controlPoint1: CGPoint(x: 1560.8, y: 3244.23), controlPoint2: CGPoint(x: 1560.28, y: 3244.12))
        bezier70Path.addCurve(to: CGPoint(x: 1558.84, y: 3243.84), controlPoint1: CGPoint(x: 1559.45, y: 3243.95), controlPoint2: CGPoint(x: 1559.15, y: 3243.9))
        bezier70Path.addCurve(to: CGPoint(x: 1557.32, y: 3243.58), controlPoint1: CGPoint(x: 1558.33, y: 3243.75), controlPoint2: CGPoint(x: 1557.82, y: 3243.66))
        bezier70Path.addCurve(to: CGPoint(x: 1556.4, y: 3243.45), controlPoint1: CGPoint(x: 1557.01, y: 3243.54), controlPoint2: CGPoint(x: 1556.71, y: 3243.5))
        bezier70Path.addCurve(to: CGPoint(x: 1554.89, y: 3243.27), controlPoint1: CGPoint(x: 1555.9, y: 3243.39), controlPoint2: CGPoint(x: 1555.39, y: 3243.32))
        bezier70Path.addCurve(to: CGPoint(x: 1554, y: 3243.17), controlPoint1: CGPoint(x: 1554.59, y: 3243.23), controlPoint2: CGPoint(x: 1554.29, y: 3243.2))
        bezier70Path.addCurve(to: CGPoint(x: 1552.49, y: 3243.06), controlPoint1: CGPoint(x: 1553.49, y: 3243.13), controlPoint2: CGPoint(x: 1552.99, y: 3243.09))
        bezier70Path.addCurve(to: CGPoint(x: 1551.62, y: 3243), controlPoint1: CGPoint(x: 1552.2, y: 3243.04), controlPoint2: CGPoint(x: 1551.91, y: 3243.02))
        bezier70Path.addCurve(to: CGPoint(x: 1550.1, y: 3242.95), controlPoint1: CGPoint(x: 1551.11, y: 3242.98), controlPoint2: CGPoint(x: 1550.6, y: 3242.96))
        bezier70Path.addCurve(to: CGPoint(x: 1549.27, y: 3242.94), controlPoint1: CGPoint(x: 1549.82, y: 3242.95), controlPoint2: CGPoint(x: 1549.54, y: 3242.94))
        bezier70Path.addCurve(to: CGPoint(x: 1547.71, y: 3242.96), controlPoint1: CGPoint(x: 1548.75, y: 3242.94), controlPoint2: CGPoint(x: 1548.23, y: 3242.95))
        bezier70Path.addCurve(to: CGPoint(x: 1546.95, y: 3242.98), controlPoint1: CGPoint(x: 1547.46, y: 3242.97), controlPoint2: CGPoint(x: 1547.2, y: 3242.98))
        bezier70Path.addCurve(to: CGPoint(x: 1545.33, y: 3243.08), controlPoint1: CGPoint(x: 1546.41, y: 3243), controlPoint2: CGPoint(x: 1545.87, y: 3243.04))
        bezier70Path.addCurve(to: CGPoint(x: 1544.65, y: 3243.13), controlPoint1: CGPoint(x: 1545.11, y: 3243.1), controlPoint2: CGPoint(x: 1544.88, y: 3243.11))
        bezier70Path.addCurve(to: CGPoint(x: 1542.94, y: 3243.32), controlPoint1: CGPoint(x: 1544.08, y: 3243.18), controlPoint2: CGPoint(x: 1543.51, y: 3243.25))
        bezier70Path.addCurve(to: CGPoint(x: 1542.38, y: 3243.39), controlPoint1: CGPoint(x: 1542.76, y: 3243.34), controlPoint2: CGPoint(x: 1542.57, y: 3243.36))
        bezier70Path.addCurve(to: CGPoint(x: 1540.52, y: 3243.68), controlPoint1: CGPoint(x: 1541.76, y: 3243.47), controlPoint2: CGPoint(x: 1541.14, y: 3243.57))
        bezier70Path.addCurve(to: CGPoint(x: 1540.13, y: 3243.75), controlPoint1: CGPoint(x: 1540.39, y: 3243.7), controlPoint2: CGPoint(x: 1540.26, y: 3243.72))
        bezier70Path.addCurve(to: CGPoint(x: 1537.92, y: 3244.21), controlPoint1: CGPoint(x: 1539.39, y: 3243.88), controlPoint2: CGPoint(x: 1538.65, y: 3244.03))
        bezier70Path.addCurve(to: CGPoint(x: 1537.91, y: 3244.21), controlPoint1: CGPoint(x: 1537.92, y: 3244.21), controlPoint2: CGPoint(x: 1537.92, y: 3244.21))
        bezier70Path.addCurve(to: CGPoint(x: 1531.23, y: 3246.31), controlPoint1: CGPoint(x: 1535.64, y: 3244.74), controlPoint2: CGPoint(x: 1533.41, y: 3245.44))
        bezier70Path.addCurve(to: CGPoint(x: 1531.16, y: 3246.33), controlPoint1: CGPoint(x: 1531.2, y: 3246.32), controlPoint2: CGPoint(x: 1531.18, y: 3246.33))
        bezier70Path.addCurve(to: CGPoint(x: 1519.88, y: 3252.57), controlPoint1: CGPoint(x: 1527.25, y: 3247.89), controlPoint2: CGPoint(x: 1523.48, y: 3249.97))
        bezier70Path.addCurve(to: CGPoint(x: 1519.86, y: 3252.59), controlPoint1: CGPoint(x: 1519.87, y: 3252.58), controlPoint2: CGPoint(x: 1519.87, y: 3252.59))
        bezier70Path.addCurve(to: CGPoint(x: 1518.32, y: 3253.75), controlPoint1: CGPoint(x: 1519.34, y: 3252.96), controlPoint2: CGPoint(x: 1518.83, y: 3253.35))
        bezier70Path.addCurve(to: CGPoint(x: 1518.03, y: 3253.98), controlPoint1: CGPoint(x: 1518.22, y: 3253.82), controlPoint2: CGPoint(x: 1518.12, y: 3253.9))
        bezier70Path.addCurve(to: CGPoint(x: 1516.65, y: 3255.09), controlPoint1: CGPoint(x: 1517.56, y: 3254.33), controlPoint2: CGPoint(x: 1517.11, y: 3254.71))
        bezier70Path.addCurve(to: CGPoint(x: 1516.22, y: 3255.45), controlPoint1: CGPoint(x: 1516.51, y: 3255.21), controlPoint2: CGPoint(x: 1516.36, y: 3255.33))
        bezier70Path.addCurve(to: CGPoint(x: 1514.96, y: 3256.55), controlPoint1: CGPoint(x: 1515.79, y: 3255.8), controlPoint2: CGPoint(x: 1515.37, y: 3256.18))
        bezier70Path.addCurve(to: CGPoint(x: 1514.44, y: 3257.01), controlPoint1: CGPoint(x: 1514.79, y: 3256.7), controlPoint2: CGPoint(x: 1514.61, y: 3256.86))
        bezier70Path.addCurve(to: CGPoint(x: 1513.26, y: 3258.12), controlPoint1: CGPoint(x: 1514.04, y: 3257.37), controlPoint2: CGPoint(x: 1513.65, y: 3257.75))
        bezier70Path.addCurve(to: CGPoint(x: 1512.69, y: 3258.66), controlPoint1: CGPoint(x: 1513.07, y: 3258.3), controlPoint2: CGPoint(x: 1512.88, y: 3258.48))
        bezier70Path.addCurve(to: CGPoint(x: 1511.58, y: 3259.79), controlPoint1: CGPoint(x: 1512.32, y: 3259.03), controlPoint2: CGPoint(x: 1511.95, y: 3259.41))
        bezier70Path.addCurve(to: CGPoint(x: 1510.98, y: 3260.41), controlPoint1: CGPoint(x: 1511.38, y: 3260), controlPoint2: CGPoint(x: 1511.17, y: 3260.2))
        bezier70Path.addCurve(to: CGPoint(x: 1509.91, y: 3261.55), controlPoint1: CGPoint(x: 1510.62, y: 3260.78), controlPoint2: CGPoint(x: 1510.26, y: 3261.17))
        bezier70Path.addCurve(to: CGPoint(x: 1509.28, y: 3262.24), controlPoint1: CGPoint(x: 1509.7, y: 3261.78), controlPoint2: CGPoint(x: 1509.49, y: 3262.01))
        bezier70Path.addCurve(to: CGPoint(x: 1508.27, y: 3263.41), controlPoint1: CGPoint(x: 1508.94, y: 3262.62), controlPoint2: CGPoint(x: 1508.61, y: 3263.02))
        bezier70Path.addCurve(to: CGPoint(x: 1507.63, y: 3264.17), controlPoint1: CGPoint(x: 1508.06, y: 3263.66), controlPoint2: CGPoint(x: 1507.84, y: 3263.91))
        bezier70Path.addCurve(to: CGPoint(x: 1506.65, y: 3265.36), controlPoint1: CGPoint(x: 1507.3, y: 3264.56), controlPoint2: CGPoint(x: 1506.98, y: 3264.96))
        bezier70Path.addCurve(to: CGPoint(x: 1506, y: 3266.18), controlPoint1: CGPoint(x: 1506.43, y: 3265.63), controlPoint2: CGPoint(x: 1506.22, y: 3265.9))
        bezier70Path.addCurve(to: CGPoint(x: 1505.06, y: 3267.4), controlPoint1: CGPoint(x: 1505.68, y: 3266.58), controlPoint2: CGPoint(x: 1505.38, y: 3266.99))
        bezier70Path.addCurve(to: CGPoint(x: 1504.4, y: 3268.28), controlPoint1: CGPoint(x: 1504.84, y: 3267.69), controlPoint2: CGPoint(x: 1504.62, y: 3267.98))
        bezier70Path.addCurve(to: CGPoint(x: 1503.5, y: 3269.53), controlPoint1: CGPoint(x: 1504.1, y: 3268.69), controlPoint2: CGPoint(x: 1503.8, y: 3269.11))
        bezier70Path.addCurve(to: CGPoint(x: 1502.84, y: 3270.48), controlPoint1: CGPoint(x: 1503.28, y: 3269.84), controlPoint2: CGPoint(x: 1503.06, y: 3270.16))
        bezier70Path.addCurve(to: CGPoint(x: 1501.98, y: 3271.75), controlPoint1: CGPoint(x: 1502.55, y: 3270.9), controlPoint2: CGPoint(x: 1502.26, y: 3271.32))
        bezier70Path.addCurve(to: CGPoint(x: 1501.3, y: 3272.76), controlPoint1: CGPoint(x: 1501.75, y: 3272.08), controlPoint2: CGPoint(x: 1501.53, y: 3272.42))
        bezier70Path.addCurve(to: CGPoint(x: 1500.47, y: 3274.06), controlPoint1: CGPoint(x: 1501.02, y: 3273.19), controlPoint2: CGPoint(x: 1500.75, y: 3273.62))
        bezier70Path.addCurve(to: CGPoint(x: 1499.8, y: 3275.14), controlPoint1: CGPoint(x: 1500.25, y: 3274.41), controlPoint2: CGPoint(x: 1500.03, y: 3274.77))
        bezier70Path.addCurve(to: CGPoint(x: 1499, y: 3276.46), controlPoint1: CGPoint(x: 1499.53, y: 3275.57), controlPoint2: CGPoint(x: 1499.27, y: 3276.01))
        bezier70Path.addCurve(to: CGPoint(x: 1498.33, y: 3277.59), controlPoint1: CGPoint(x: 1498.78, y: 3276.83), controlPoint2: CGPoint(x: 1498.56, y: 3277.21))
        bezier70Path.addCurve(to: CGPoint(x: 1497.56, y: 3278.94), controlPoint1: CGPoint(x: 1498.07, y: 3278.04), controlPoint2: CGPoint(x: 1497.82, y: 3278.49))
        bezier70Path.addCurve(to: CGPoint(x: 1496.9, y: 3280.14), controlPoint1: CGPoint(x: 1497.34, y: 3279.34), controlPoint2: CGPoint(x: 1497.12, y: 3279.74))
        bezier70Path.addCurve(to: CGPoint(x: 1496.16, y: 3281.52), controlPoint1: CGPoint(x: 1496.65, y: 3280.6), controlPoint2: CGPoint(x: 1496.41, y: 3281.05))
        bezier70Path.addCurve(to: CGPoint(x: 1495.5, y: 3282.79), controlPoint1: CGPoint(x: 1495.94, y: 3281.94), controlPoint2: CGPoint(x: 1495.72, y: 3282.36))
        bezier70Path.addCurve(to: CGPoint(x: 1494.79, y: 3284.18), controlPoint1: CGPoint(x: 1495.26, y: 3283.25), controlPoint2: CGPoint(x: 1495.02, y: 3283.71))
        bezier70Path.addCurve(to: CGPoint(x: 1494.13, y: 3285.51), controlPoint1: CGPoint(x: 1494.56, y: 3284.62), controlPoint2: CGPoint(x: 1494.35, y: 3285.07))
        bezier70Path.addCurve(to: CGPoint(x: 1493.45, y: 3286.93), controlPoint1: CGPoint(x: 1493.9, y: 3285.99), controlPoint2: CGPoint(x: 1493.67, y: 3286.45))
        bezier70Path.addCurve(to: CGPoint(x: 1492.8, y: 3288.33), controlPoint1: CGPoint(x: 1493.23, y: 3287.39), controlPoint2: CGPoint(x: 1493.01, y: 3287.86))
        bezier70Path.addCurve(to: CGPoint(x: 1492.14, y: 3289.77), controlPoint1: CGPoint(x: 1492.58, y: 3288.81), controlPoint2: CGPoint(x: 1492.36, y: 3289.28))
        bezier70Path.addCurve(to: CGPoint(x: 1491.5, y: 3291.24), controlPoint1: CGPoint(x: 1491.93, y: 3290.25), controlPoint2: CGPoint(x: 1491.71, y: 3290.75))
        bezier70Path.addCurve(to: CGPoint(x: 1490.87, y: 3292.69), controlPoint1: CGPoint(x: 1491.29, y: 3291.72), controlPoint2: CGPoint(x: 1491.08, y: 3292.2))
        bezier70Path.addCurve(to: CGPoint(x: 1490.23, y: 3294.23), controlPoint1: CGPoint(x: 1490.65, y: 3293.2), controlPoint2: CGPoint(x: 1490.44, y: 3293.71))
        bezier70Path.addCurve(to: CGPoint(x: 1489.63, y: 3295.7), controlPoint1: CGPoint(x: 1490.03, y: 3294.72), controlPoint2: CGPoint(x: 1489.83, y: 3295.21))
        bezier70Path.addCurve(to: CGPoint(x: 1489, y: 3297.32), controlPoint1: CGPoint(x: 1489.42, y: 3296.23), controlPoint2: CGPoint(x: 1489.21, y: 3296.78))
        bezier70Path.addCurve(to: CGPoint(x: 1488.43, y: 3298.8), controlPoint1: CGPoint(x: 1488.81, y: 3297.81), controlPoint2: CGPoint(x: 1488.62, y: 3298.3))
        bezier70Path.addCurve(to: CGPoint(x: 1487.81, y: 3300.49), controlPoint1: CGPoint(x: 1488.22, y: 3299.36), controlPoint2: CGPoint(x: 1488.02, y: 3299.93))
        bezier70Path.addCurve(to: CGPoint(x: 1487.27, y: 3301.98), controlPoint1: CGPoint(x: 1487.63, y: 3300.99), controlPoint2: CGPoint(x: 1487.44, y: 3301.48))
        bezier70Path.addCurve(to: CGPoint(x: 1486.64, y: 3303.78), controlPoint1: CGPoint(x: 1487.06, y: 3302.57), controlPoint2: CGPoint(x: 1486.85, y: 3303.18))
        bezier70Path.addCurve(to: CGPoint(x: 1486.14, y: 3305.24), controlPoint1: CGPoint(x: 1486.47, y: 3304.27), controlPoint2: CGPoint(x: 1486.3, y: 3304.75))
        bezier70Path.addCurve(to: CGPoint(x: 1485.49, y: 3307.22), controlPoint1: CGPoint(x: 1485.92, y: 3305.9), controlPoint2: CGPoint(x: 1485.71, y: 3306.56))
        bezier70Path.addCurve(to: CGPoint(x: 1485.05, y: 3308.59), controlPoint1: CGPoint(x: 1485.35, y: 3307.68), controlPoint2: CGPoint(x: 1485.19, y: 3308.13))
        bezier70Path.addCurve(to: CGPoint(x: 1484.34, y: 3310.91), controlPoint1: CGPoint(x: 1484.81, y: 3309.36), controlPoint2: CGPoint(x: 1484.57, y: 3310.14))
        bezier70Path.addCurve(to: CGPoint(x: 1484, y: 3312.03), controlPoint1: CGPoint(x: 1484.23, y: 3311.29), controlPoint2: CGPoint(x: 1484.11, y: 3311.65))
        bezier70Path.addCurve(to: CGPoint(x: 1482.98, y: 3315.55), controlPoint1: CGPoint(x: 1483.65, y: 3313.19), controlPoint2: CGPoint(x: 1483.31, y: 3314.36))
        bezier70Path.addCurve(to: CGPoint(x: 1482.38, y: 3312.18), controlPoint1: CGPoint(x: 1482.76, y: 3314.41), controlPoint2: CGPoint(x: 1482.56, y: 3313.29))
        bezier70Path.addCurve(to: CGPoint(x: 1482.34, y: 3312.41), controlPoint1: CGPoint(x: 1482.36, y: 3312.26), controlPoint2: CGPoint(x: 1482.35, y: 3312.34))
        bezier70Path.addCurve(to: CGPoint(x: 1517.66, y: 3442.03), controlPoint1: CGPoint(x: 1464.85, y: 3363.59), controlPoint2: CGPoint(x: 1498.76, y: 3402.33))
        bezier70Path.addCurve(to: CGPoint(x: 1549.18, y: 3464.1), controlPoint1: CGPoint(x: 1523.56, y: 3454.45), controlPoint2: CGPoint(x: 1535.26, y: 3461.59))
        bezier70Path.addCurve(to: CGPoint(x: 1559.48, y: 3465.09), controlPoint1: CGPoint(x: 1552.49, y: 3464.72), controlPoint2: CGPoint(x: 1555.96, y: 3464.99))
        bezier70Path.addCurve(to: CGPoint(x: 1567.35, y: 3464.93), controlPoint1: CGPoint(x: 1562.07, y: 3465.15), controlPoint2: CGPoint(x: 1564.69, y: 3465.14))
        bezier70Path.addCurve(to: CGPoint(x: 1567.51, y: 3464.92), controlPoint1: CGPoint(x: 1567.41, y: 3464.91), controlPoint2: CGPoint(x: 1567.45, y: 3464.92))
        bezier70Path.addCurve(to: CGPoint(x: 1620.49, y: 3441.24), controlPoint1: CGPoint(x: 1586.38, y: 3463.4), controlPoint2: CGPoint(x: 1606.35, y: 3455.1))
        bezier70Path.addCurve(to: CGPoint(x: 1632.62, y: 3299.43), controlPoint1: CGPoint(x: 1655.39, y: 3406.98), controlPoint2: CGPoint(x: 1663.97, y: 3342.69))
        bezier70Path.close()
        if bezier70Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier70Path.fill()
        
        
        //// Bezier 71 Drawing
        let bezier71Path = UIBezierPath()
        bezier71Path.move(to: CGPoint(x: 1484, y: 3312.03))
        bezier71Path.addCurve(to: CGPoint(x: 1484.34, y: 3310.91), controlPoint1: CGPoint(x: 1484.11, y: 3311.66), controlPoint2: CGPoint(x: 1484.23, y: 3311.29))
        bezier71Path.addCurve(to: CGPoint(x: 1485.05, y: 3308.6), controlPoint1: CGPoint(x: 1484.57, y: 3310.14), controlPoint2: CGPoint(x: 1484.81, y: 3309.36))
        bezier71Path.addCurve(to: CGPoint(x: 1485.49, y: 3307.22), controlPoint1: CGPoint(x: 1485.2, y: 3308.14), controlPoint2: CGPoint(x: 1485.35, y: 3307.68))
        bezier71Path.addCurve(to: CGPoint(x: 1486.14, y: 3305.25), controlPoint1: CGPoint(x: 1485.71, y: 3306.56), controlPoint2: CGPoint(x: 1485.92, y: 3305.9))
        bezier71Path.addCurve(to: CGPoint(x: 1486.64, y: 3303.78), controlPoint1: CGPoint(x: 1486.31, y: 3304.76), controlPoint2: CGPoint(x: 1486.47, y: 3304.27))
        bezier71Path.addCurve(to: CGPoint(x: 1487.27, y: 3301.98), controlPoint1: CGPoint(x: 1486.85, y: 3303.18), controlPoint2: CGPoint(x: 1487.06, y: 3302.58))
        bezier71Path.addCurve(to: CGPoint(x: 1487.81, y: 3300.5), controlPoint1: CGPoint(x: 1487.44, y: 3301.48), controlPoint2: CGPoint(x: 1487.63, y: 3300.99))
        bezier71Path.addCurve(to: CGPoint(x: 1488.43, y: 3298.8), controlPoint1: CGPoint(x: 1488.02, y: 3299.93), controlPoint2: CGPoint(x: 1488.22, y: 3299.36))
        bezier71Path.addCurve(to: CGPoint(x: 1489, y: 3297.32), controlPoint1: CGPoint(x: 1488.62, y: 3298.3), controlPoint2: CGPoint(x: 1488.81, y: 3297.81))
        bezier71Path.addCurve(to: CGPoint(x: 1489.63, y: 3295.71), controlPoint1: CGPoint(x: 1489.21, y: 3296.78), controlPoint2: CGPoint(x: 1489.42, y: 3296.24))
        bezier71Path.addCurve(to: CGPoint(x: 1490.23, y: 3294.24), controlPoint1: CGPoint(x: 1489.83, y: 3295.21), controlPoint2: CGPoint(x: 1490.03, y: 3294.73))
        bezier71Path.addCurve(to: CGPoint(x: 1490.87, y: 3292.69), controlPoint1: CGPoint(x: 1490.44, y: 3293.72), controlPoint2: CGPoint(x: 1490.65, y: 3293.2))
        bezier71Path.addCurve(to: CGPoint(x: 1491.5, y: 3291.24), controlPoint1: CGPoint(x: 1491.08, y: 3292.2), controlPoint2: CGPoint(x: 1491.29, y: 3291.72))
        bezier71Path.addCurve(to: CGPoint(x: 1492.14, y: 3289.77), controlPoint1: CGPoint(x: 1491.71, y: 3290.75), controlPoint2: CGPoint(x: 1491.93, y: 3290.26))
        bezier71Path.addCurve(to: CGPoint(x: 1492.8, y: 3288.33), controlPoint1: CGPoint(x: 1492.36, y: 3289.28), controlPoint2: CGPoint(x: 1492.58, y: 3288.81))
        bezier71Path.addCurve(to: CGPoint(x: 1493.45, y: 3286.94), controlPoint1: CGPoint(x: 1493.02, y: 3287.86), controlPoint2: CGPoint(x: 1493.23, y: 3287.4))
        bezier71Path.addCurve(to: CGPoint(x: 1494.14, y: 3285.52), controlPoint1: CGPoint(x: 1493.68, y: 3286.46), controlPoint2: CGPoint(x: 1493.9, y: 3285.99))
        bezier71Path.addCurve(to: CGPoint(x: 1494.79, y: 3284.19), controlPoint1: CGPoint(x: 1494.35, y: 3285.07), controlPoint2: CGPoint(x: 1494.57, y: 3284.63))
        bezier71Path.addCurve(to: CGPoint(x: 1495.5, y: 3282.79), controlPoint1: CGPoint(x: 1495.02, y: 3283.71), controlPoint2: CGPoint(x: 1495.26, y: 3283.25))
        bezier71Path.addCurve(to: CGPoint(x: 1496.16, y: 3281.52), controlPoint1: CGPoint(x: 1495.72, y: 3282.36), controlPoint2: CGPoint(x: 1495.94, y: 3281.94))
        bezier71Path.addCurve(to: CGPoint(x: 1496.9, y: 3280.15), controlPoint1: CGPoint(x: 1496.4, y: 3281.06), controlPoint2: CGPoint(x: 1496.65, y: 3280.6))
        bezier71Path.addCurve(to: CGPoint(x: 1497.56, y: 3278.95), controlPoint1: CGPoint(x: 1497.12, y: 3279.75), controlPoint2: CGPoint(x: 1497.34, y: 3279.34))
        bezier71Path.addCurve(to: CGPoint(x: 1498.34, y: 3277.6), controlPoint1: CGPoint(x: 1497.82, y: 3278.5), controlPoint2: CGPoint(x: 1498.08, y: 3278.05))
        bezier71Path.addCurve(to: CGPoint(x: 1499, y: 3276.46), controlPoint1: CGPoint(x: 1498.56, y: 3277.22), controlPoint2: CGPoint(x: 1498.78, y: 3276.84))
        bezier71Path.addCurve(to: CGPoint(x: 1499.8, y: 3275.14), controlPoint1: CGPoint(x: 1499.27, y: 3276.02), controlPoint2: CGPoint(x: 1499.53, y: 3275.58))
        bezier71Path.addCurve(to: CGPoint(x: 1500.47, y: 3274.06), controlPoint1: CGPoint(x: 1500.03, y: 3274.78), controlPoint2: CGPoint(x: 1500.25, y: 3274.42))
        bezier71Path.addCurve(to: CGPoint(x: 1501.31, y: 3272.77), controlPoint1: CGPoint(x: 1500.75, y: 3273.62), controlPoint2: CGPoint(x: 1501.03, y: 3273.2))
        bezier71Path.addCurve(to: CGPoint(x: 1501.98, y: 3271.75), controlPoint1: CGPoint(x: 1501.53, y: 3272.43), controlPoint2: CGPoint(x: 1501.75, y: 3272.09))
        bezier71Path.addCurve(to: CGPoint(x: 1502.84, y: 3270.48), controlPoint1: CGPoint(x: 1502.26, y: 3271.32), controlPoint2: CGPoint(x: 1502.55, y: 3270.9))
        bezier71Path.addCurve(to: CGPoint(x: 1503.51, y: 3269.53), controlPoint1: CGPoint(x: 1503.06, y: 3270.16), controlPoint2: CGPoint(x: 1503.28, y: 3269.85))
        bezier71Path.addCurve(to: CGPoint(x: 1504.4, y: 3268.29), controlPoint1: CGPoint(x: 1503.8, y: 3269.11), controlPoint2: CGPoint(x: 1504.1, y: 3268.7))
        bezier71Path.addCurve(to: CGPoint(x: 1505.07, y: 3267.4), controlPoint1: CGPoint(x: 1504.62, y: 3267.99), controlPoint2: CGPoint(x: 1504.85, y: 3267.69))
        bezier71Path.addCurve(to: CGPoint(x: 1506, y: 3266.18), controlPoint1: CGPoint(x: 1505.38, y: 3266.99), controlPoint2: CGPoint(x: 1505.68, y: 3266.58))
        bezier71Path.addCurve(to: CGPoint(x: 1506.65, y: 3265.36), controlPoint1: CGPoint(x: 1506.22, y: 3265.91), controlPoint2: CGPoint(x: 1506.44, y: 3265.63))
        bezier71Path.addCurve(to: CGPoint(x: 1507.63, y: 3264.17), controlPoint1: CGPoint(x: 1506.98, y: 3264.96), controlPoint2: CGPoint(x: 1507.3, y: 3264.56))
        bezier71Path.addCurve(to: CGPoint(x: 1508.27, y: 3263.41), controlPoint1: CGPoint(x: 1507.84, y: 3263.92), controlPoint2: CGPoint(x: 1508.06, y: 3263.66))
        bezier71Path.addCurve(to: CGPoint(x: 1509.29, y: 3262.25), controlPoint1: CGPoint(x: 1508.61, y: 3263.02), controlPoint2: CGPoint(x: 1508.95, y: 3262.63))
        bezier71Path.addCurve(to: CGPoint(x: 1509.92, y: 3261.56), controlPoint1: CGPoint(x: 1509.5, y: 3262.01), controlPoint2: CGPoint(x: 1509.71, y: 3261.79))
        bezier71Path.addCurve(to: CGPoint(x: 1510.98, y: 3260.41), controlPoint1: CGPoint(x: 1510.27, y: 3261.17), controlPoint2: CGPoint(x: 1510.62, y: 3260.79))
        bezier71Path.addCurve(to: CGPoint(x: 1511.58, y: 3259.8), controlPoint1: CGPoint(x: 1511.18, y: 3260.2), controlPoint2: CGPoint(x: 1511.38, y: 3260))
        bezier71Path.addCurve(to: CGPoint(x: 1512.7, y: 3258.67), controlPoint1: CGPoint(x: 1511.95, y: 3259.41), controlPoint2: CGPoint(x: 1512.32, y: 3259.03))
        bezier71Path.addCurve(to: CGPoint(x: 1513.26, y: 3258.13), controlPoint1: CGPoint(x: 1512.88, y: 3258.48), controlPoint2: CGPoint(x: 1513.07, y: 3258.31))
        bezier71Path.addCurve(to: CGPoint(x: 1514.44, y: 3257.02), controlPoint1: CGPoint(x: 1513.65, y: 3257.75), controlPoint2: CGPoint(x: 1514.04, y: 3257.38))
        bezier71Path.addCurve(to: CGPoint(x: 1514.96, y: 3256.56), controlPoint1: CGPoint(x: 1514.62, y: 3256.86), controlPoint2: CGPoint(x: 1514.79, y: 3256.71))
        bezier71Path.addCurve(to: CGPoint(x: 1516.22, y: 3255.45), controlPoint1: CGPoint(x: 1515.38, y: 3256.18), controlPoint2: CGPoint(x: 1515.8, y: 3255.81))
        bezier71Path.addCurve(to: CGPoint(x: 1516.66, y: 3255.09), controlPoint1: CGPoint(x: 1516.37, y: 3255.33), controlPoint2: CGPoint(x: 1516.51, y: 3255.21))
        bezier71Path.addCurve(to: CGPoint(x: 1518.03, y: 3253.98), controlPoint1: CGPoint(x: 1517.12, y: 3254.72), controlPoint2: CGPoint(x: 1517.57, y: 3254.34))
        bezier71Path.addCurve(to: CGPoint(x: 1518.32, y: 3253.76), controlPoint1: CGPoint(x: 1518.13, y: 3253.91), controlPoint2: CGPoint(x: 1518.23, y: 3253.84))
        bezier71Path.addCurve(to: CGPoint(x: 1519.87, y: 3252.6), controlPoint1: CGPoint(x: 1518.84, y: 3253.36), controlPoint2: CGPoint(x: 1519.35, y: 3252.97))
        bezier71Path.addCurve(to: CGPoint(x: 1519.89, y: 3252.58), controlPoint1: CGPoint(x: 1519.87, y: 3252.59), controlPoint2: CGPoint(x: 1519.88, y: 3252.59))
        bezier71Path.addCurve(to: CGPoint(x: 1531.17, y: 3246.34), controlPoint1: CGPoint(x: 1523.49, y: 3249.98), controlPoint2: CGPoint(x: 1527.26, y: 3247.89))
        bezier71Path.addCurve(to: CGPoint(x: 1531.23, y: 3246.32), controlPoint1: CGPoint(x: 1531.19, y: 3246.33), controlPoint2: CGPoint(x: 1531.21, y: 3246.32))
        bezier71Path.addCurve(to: CGPoint(x: 1531.24, y: 3246.31), controlPoint1: CGPoint(x: 1531.23, y: 3246.31), controlPoint2: CGPoint(x: 1531.23, y: 3246.31))
        bezier71Path.addCurve(to: CGPoint(x: 1537.92, y: 3244.22), controlPoint1: CGPoint(x: 1533.42, y: 3245.45), controlPoint2: CGPoint(x: 1535.65, y: 3244.75))
        bezier71Path.addCurve(to: CGPoint(x: 1537.93, y: 3244.21), controlPoint1: CGPoint(x: 1537.93, y: 3244.22), controlPoint2: CGPoint(x: 1537.93, y: 3244.22))
        bezier71Path.addCurve(to: CGPoint(x: 1540.14, y: 3243.75), controlPoint1: CGPoint(x: 1538.66, y: 3244.04), controlPoint2: CGPoint(x: 1539.4, y: 3243.89))
        bezier71Path.addCurve(to: CGPoint(x: 1540.53, y: 3243.69), controlPoint1: CGPoint(x: 1540.27, y: 3243.73), controlPoint2: CGPoint(x: 1540.4, y: 3243.71))
        bezier71Path.addCurve(to: CGPoint(x: 1542.39, y: 3243.4), controlPoint1: CGPoint(x: 1541.15, y: 3243.58), controlPoint2: CGPoint(x: 1541.77, y: 3243.48))
        bezier71Path.addCurve(to: CGPoint(x: 1542.95, y: 3243.33), controlPoint1: CGPoint(x: 1542.58, y: 3243.37), controlPoint2: CGPoint(x: 1542.77, y: 3243.35))
        bezier71Path.addCurve(to: CGPoint(x: 1544.66, y: 3243.14), controlPoint1: CGPoint(x: 1543.52, y: 3243.26), controlPoint2: CGPoint(x: 1544.09, y: 3243.19))
        bezier71Path.addCurve(to: CGPoint(x: 1545.34, y: 3243.09), controlPoint1: CGPoint(x: 1544.89, y: 3243.12), controlPoint2: CGPoint(x: 1545.11, y: 3243.1))
        bezier71Path.addCurve(to: CGPoint(x: 1546.96, y: 3242.99), controlPoint1: CGPoint(x: 1545.88, y: 3243.05), controlPoint2: CGPoint(x: 1546.42, y: 3243.01))
        bezier71Path.addCurve(to: CGPoint(x: 1547.72, y: 3242.96), controlPoint1: CGPoint(x: 1547.21, y: 3242.98), controlPoint2: CGPoint(x: 1547.47, y: 3242.97))
        bezier71Path.addCurve(to: CGPoint(x: 1549.28, y: 3242.95), controlPoint1: CGPoint(x: 1548.24, y: 3242.95), controlPoint2: CGPoint(x: 1548.76, y: 3242.94))
        bezier71Path.addCurve(to: CGPoint(x: 1550.1, y: 3242.96), controlPoint1: CGPoint(x: 1549.55, y: 3242.95), controlPoint2: CGPoint(x: 1549.83, y: 3242.95))
        bezier71Path.addCurve(to: CGPoint(x: 1551.63, y: 3243.01), controlPoint1: CGPoint(x: 1550.61, y: 3242.97), controlPoint2: CGPoint(x: 1551.12, y: 3242.98))
        bezier71Path.addCurve(to: CGPoint(x: 1552.5, y: 3243.06), controlPoint1: CGPoint(x: 1551.92, y: 3243.03), controlPoint2: CGPoint(x: 1552.2, y: 3243.04))
        bezier71Path.addCurve(to: CGPoint(x: 1554.01, y: 3243.18), controlPoint1: CGPoint(x: 1553, y: 3243.09), controlPoint2: CGPoint(x: 1553.5, y: 3243.13))
        bezier71Path.addCurve(to: CGPoint(x: 1554.9, y: 3243.27), controlPoint1: CGPoint(x: 1554.3, y: 3243.21), controlPoint2: CGPoint(x: 1554.6, y: 3243.24))
        bezier71Path.addCurve(to: CGPoint(x: 1556.41, y: 3243.46), controlPoint1: CGPoint(x: 1555.4, y: 3243.33), controlPoint2: CGPoint(x: 1555.91, y: 3243.39))
        bezier71Path.addCurve(to: CGPoint(x: 1557.33, y: 3243.59), controlPoint1: CGPoint(x: 1556.72, y: 3243.5), controlPoint2: CGPoint(x: 1557.02, y: 3243.54))
        bezier71Path.addCurve(to: CGPoint(x: 1558.85, y: 3243.85), controlPoint1: CGPoint(x: 1557.83, y: 3243.66), controlPoint2: CGPoint(x: 1558.34, y: 3243.76))
        bezier71Path.addCurve(to: CGPoint(x: 1559.77, y: 3244.02), controlPoint1: CGPoint(x: 1559.16, y: 3243.9), controlPoint2: CGPoint(x: 1559.46, y: 3243.95))
        bezier71Path.addCurve(to: CGPoint(x: 1561.33, y: 3244.35), controlPoint1: CGPoint(x: 1560.29, y: 3244.12), controlPoint2: CGPoint(x: 1560.81, y: 3244.24))
        bezier71Path.addCurve(to: CGPoint(x: 1562.23, y: 3244.55), controlPoint1: CGPoint(x: 1561.63, y: 3244.41), controlPoint2: CGPoint(x: 1561.93, y: 3244.48))
        bezier71Path.addCurve(to: CGPoint(x: 1563.87, y: 3244.97), controlPoint1: CGPoint(x: 1562.77, y: 3244.68), controlPoint2: CGPoint(x: 1563.32, y: 3244.82))
        bezier71Path.addCurve(to: CGPoint(x: 1564.71, y: 3245.19), controlPoint1: CGPoint(x: 1564.15, y: 3245.04), controlPoint2: CGPoint(x: 1564.43, y: 3245.11))
        bezier71Path.addCurve(to: CGPoint(x: 1566.61, y: 3245.76), controlPoint1: CGPoint(x: 1565.34, y: 3245.37), controlPoint2: CGPoint(x: 1565.98, y: 3245.56))
        bezier71Path.addCurve(to: CGPoint(x: 1567.2, y: 3245.94), controlPoint1: CGPoint(x: 1566.81, y: 3245.83), controlPoint2: CGPoint(x: 1567.01, y: 3245.88))
        bezier71Path.addCurve(to: CGPoint(x: 1569.74, y: 3246.81), controlPoint1: CGPoint(x: 1568.04, y: 3246.21), controlPoint2: CGPoint(x: 1568.89, y: 3246.5))
        bezier71Path.addCurve(to: CGPoint(x: 1569.74, y: 3246.81), controlPoint1: CGPoint(x: 1569.74, y: 3246.81), controlPoint2: CGPoint(x: 1569.74, y: 3246.81))
        bezier71Path.addCurve(to: CGPoint(x: 1570.21, y: 3246.99), controlPoint1: CGPoint(x: 1569.9, y: 3246.87), controlPoint2: CGPoint(x: 1570.06, y: 3246.93))
        bezier71Path.addCurve(to: CGPoint(x: 1572.18, y: 3247.74), controlPoint1: CGPoint(x: 1570.86, y: 3247.23), controlPoint2: CGPoint(x: 1571.52, y: 3247.48))
        bezier71Path.addCurve(to: CGPoint(x: 1572.62, y: 3247.92), controlPoint1: CGPoint(x: 1572.33, y: 3247.8), controlPoint2: CGPoint(x: 1572.47, y: 3247.86))
        bezier71Path.addCurve(to: CGPoint(x: 1574.64, y: 3248.78), controlPoint1: CGPoint(x: 1573.29, y: 3248.2), controlPoint2: CGPoint(x: 1573.96, y: 3248.48))
        bezier71Path.addCurve(to: CGPoint(x: 1575.05, y: 3248.96), controlPoint1: CGPoint(x: 1574.78, y: 3248.84), controlPoint2: CGPoint(x: 1574.91, y: 3248.9))
        bezier71Path.addCurve(to: CGPoint(x: 1577.12, y: 3249.91), controlPoint1: CGPoint(x: 1575.74, y: 3249.27), controlPoint2: CGPoint(x: 1576.43, y: 3249.58))
        bezier71Path.addCurve(to: CGPoint(x: 1577.48, y: 3250.09), controlPoint1: CGPoint(x: 1577.23, y: 3249.97), controlPoint2: CGPoint(x: 1577.36, y: 3250.03))
        bezier71Path.addCurve(to: CGPoint(x: 1579.61, y: 3251.15), controlPoint1: CGPoint(x: 1578.19, y: 3250.43), controlPoint2: CGPoint(x: 1578.9, y: 3250.78))
        bezier71Path.addCurve(to: CGPoint(x: 1579.98, y: 3251.34), controlPoint1: CGPoint(x: 1579.73, y: 3251.21), controlPoint2: CGPoint(x: 1579.86, y: 3251.28))
        bezier71Path.addCurve(to: CGPoint(x: 1582.13, y: 3252.49), controlPoint1: CGPoint(x: 1580.69, y: 3251.72), controlPoint2: CGPoint(x: 1581.41, y: 3252.09))
        bezier71Path.addCurve(to: CGPoint(x: 1582.41, y: 3252.65), controlPoint1: CGPoint(x: 1582.22, y: 3252.54), controlPoint2: CGPoint(x: 1582.31, y: 3252.6))
        bezier71Path.addCurve(to: CGPoint(x: 1584.65, y: 3253.93), controlPoint1: CGPoint(x: 1583.15, y: 3253.06), controlPoint2: CGPoint(x: 1583.9, y: 3253.49))
        bezier71Path.addCurve(to: CGPoint(x: 1584.98, y: 3254.13), controlPoint1: CGPoint(x: 1584.76, y: 3253.99), controlPoint2: CGPoint(x: 1584.87, y: 3254.06))
        bezier71Path.addCurve(to: CGPoint(x: 1587.2, y: 3255.48), controlPoint1: CGPoint(x: 1585.71, y: 3254.56), controlPoint2: CGPoint(x: 1586.45, y: 3255.01))
        bezier71Path.addCurve(to: CGPoint(x: 1587.46, y: 3255.64), controlPoint1: CGPoint(x: 1587.28, y: 3255.53), controlPoint2: CGPoint(x: 1587.37, y: 3255.58))
        bezier71Path.addCurve(to: CGPoint(x: 1589.76, y: 3257.12), controlPoint1: CGPoint(x: 1588.22, y: 3256.12), controlPoint2: CGPoint(x: 1588.99, y: 3256.61))
        bezier71Path.addCurve(to: CGPoint(x: 1590.37, y: 3257.53), controlPoint1: CGPoint(x: 1589.96, y: 3257.25), controlPoint2: CGPoint(x: 1590.16, y: 3257.39))
        bezier71Path.addCurve(to: CGPoint(x: 1592.34, y: 3258.87), controlPoint1: CGPoint(x: 1591.02, y: 3257.97), controlPoint2: CGPoint(x: 1591.68, y: 3258.41))
        bezier71Path.addCurve(to: CGPoint(x: 1592.97, y: 3259.32), controlPoint1: CGPoint(x: 1592.55, y: 3259.02), controlPoint2: CGPoint(x: 1592.76, y: 3259.17))
        bezier71Path.addCurve(to: CGPoint(x: 1594.93, y: 3260.73), controlPoint1: CGPoint(x: 1593.62, y: 3259.78), controlPoint2: CGPoint(x: 1594.28, y: 3260.25))
        bezier71Path.addCurve(to: CGPoint(x: 1595.62, y: 3261.24), controlPoint1: CGPoint(x: 1595.16, y: 3260.89), controlPoint2: CGPoint(x: 1595.39, y: 3261.07))
        bezier71Path.addCurve(to: CGPoint(x: 1597.54, y: 3262.68), controlPoint1: CGPoint(x: 1596.26, y: 3261.72), controlPoint2: CGPoint(x: 1596.9, y: 3262.19))
        bezier71Path.addCurve(to: CGPoint(x: 1598.95, y: 3263.79), controlPoint1: CGPoint(x: 1598.01, y: 3263.04), controlPoint2: CGPoint(x: 1598.48, y: 3263.42))
        bezier71Path.addCurve(to: CGPoint(x: 1600.16, y: 3264.74), controlPoint1: CGPoint(x: 1599.35, y: 3264.11), controlPoint2: CGPoint(x: 1599.75, y: 3264.42))
        bezier71Path.addCurve(to: CGPoint(x: 1601.53, y: 3265.88), controlPoint1: CGPoint(x: 1600.61, y: 3265.11), controlPoint2: CGPoint(x: 1601.07, y: 3265.5))
        bezier71Path.addCurve(to: CGPoint(x: 1602.8, y: 3266.92), controlPoint1: CGPoint(x: 1601.96, y: 3266.23), controlPoint2: CGPoint(x: 1602.38, y: 3266.56))
        bezier71Path.addCurve(to: CGPoint(x: 1603.88, y: 3267.84), controlPoint1: CGPoint(x: 1603.16, y: 3267.22), controlPoint2: CGPoint(x: 1603.52, y: 3267.53))
        bezier71Path.addCurve(to: CGPoint(x: 1605.45, y: 3269.19), controlPoint1: CGPoint(x: 1604.4, y: 3268.29), controlPoint2: CGPoint(x: 1604.92, y: 3268.73))
        bezier71Path.addCurve(to: CGPoint(x: 1607.32, y: 3270.87), controlPoint1: CGPoint(x: 1606.07, y: 3269.74), controlPoint2: CGPoint(x: 1606.69, y: 3270.3))
        bezier71Path.addCurve(to: CGPoint(x: 1608.11, y: 3271.57), controlPoint1: CGPoint(x: 1607.58, y: 3271.1), controlPoint2: CGPoint(x: 1607.84, y: 3271.33))
        bezier71Path.addCurve(to: CGPoint(x: 1610.78, y: 3274.06), controlPoint1: CGPoint(x: 1609, y: 3272.38), controlPoint2: CGPoint(x: 1609.89, y: 3273.21))
        bezier71Path.addCurve(to: CGPoint(x: 1619.18, y: 3282.46), controlPoint1: CGPoint(x: 1613.56, y: 3276.68), controlPoint2: CGPoint(x: 1616.36, y: 3279.49))
        bezier71Path.addCurve(to: CGPoint(x: 1630.36, y: 3295.08), controlPoint1: CGPoint(x: 1622.87, y: 3286.37), controlPoint2: CGPoint(x: 1626.61, y: 3290.57))
        bezier71Path.addCurve(to: CGPoint(x: 1630.63, y: 3295.39), controlPoint1: CGPoint(x: 1630.45, y: 3295.18), controlPoint2: CGPoint(x: 1630.54, y: 3295.28))
        bezier71Path.addCurve(to: CGPoint(x: 1607.33, y: 3246.37), controlPoint1: CGPoint(x: 1623.33, y: 3273.62), controlPoint2: CGPoint(x: 1615.58, y: 3257.71))
        bezier71Path.addCurve(to: CGPoint(x: 1534.84, y: 3226.81), controlPoint1: CGPoint(x: 1586.71, y: 3218.02), controlPoint2: CGPoint(x: 1562.91, y: 3218.21))
        bezier71Path.addCurve(to: CGPoint(x: 1484.38, y: 3263.4), controlPoint1: CGPoint(x: 1517.89, y: 3232.01), controlPoint2: CGPoint(x: 1493.9, y: 3237.83))
        bezier71Path.addCurve(to: CGPoint(x: 1482.39, y: 3312.19), controlPoint1: CGPoint(x: 1480.07, y: 3275), controlPoint2: CGPoint(x: 1478.73, y: 3290.67))
        bezier71Path.addCurve(to: CGPoint(x: 1483, y: 3315.56), controlPoint1: CGPoint(x: 1482.58, y: 3313.3), controlPoint2: CGPoint(x: 1482.78, y: 3314.42))
        bezier71Path.addCurve(to: CGPoint(x: 1484, y: 3312.03), controlPoint1: CGPoint(x: 1483.31, y: 3314.37), controlPoint2: CGPoint(x: 1483.65, y: 3313.19))
        bezier71Path.close()
        fillColor.setFill()
        bezier71Path.fill()
        
        
        
        
        
        
        
        
        //// Group 13
        //// Group 14
        //// Bezier 72 Drawing
        let bezier72Path = UIBezierPath()
        bezier72Path.move(to: CGPoint(x: 646.72, y: 2547.69))
        bezier72Path.addCurve(to: CGPoint(x: 614.71, y: 2588.5), controlPoint1: CGPoint(x: 639.62, y: 2552.35), controlPoint2: CGPoint(x: 621.85, y: 2569.74))
        bezier72Path.addCurve(to: CGPoint(x: 614.26, y: 2588.28), controlPoint1: CGPoint(x: 614.56, y: 2588.43), controlPoint2: CGPoint(x: 614.41, y: 2588.36))
        bezier72Path.addCurve(to: CGPoint(x: 619.37, y: 2484), controlPoint1: CGPoint(x: 612.06, y: 2583.47), controlPoint2: CGPoint(x: 617.06, y: 2521.93))
        bezier72Path.addCurve(to: CGPoint(x: 638.7, y: 2260.64), controlPoint1: CGPoint(x: 624.1, y: 2406.36), controlPoint2: CGPoint(x: 626.24, y: 2337.38))
        bezier72Path.addCurve(to: CGPoint(x: 662.41, y: 2105.36), controlPoint1: CGPoint(x: 642.84, y: 2235.07), controlPoint2: CGPoint(x: 657.51, y: 2125.93))
        bezier72Path.addCurve(to: CGPoint(x: 662.57, y: 2105.33), controlPoint1: CGPoint(x: 662.45, y: 2105.34), controlPoint2: CGPoint(x: 662.51, y: 2105.33))
        bezier72Path.addCurve(to: CGPoint(x: 703.53, y: 1921.34), controlPoint1: CGPoint(x: 675.66, y: 2046.51), controlPoint2: CGPoint(x: 688.8, y: 1987.51))
        bezier72Path.addCurve(to: CGPoint(x: 703.54, y: 1921.29), controlPoint1: CGPoint(x: 703.53, y: 1921.32), controlPoint2: CGPoint(x: 703.54, y: 1921.31))
        bezier72Path.addCurve(to: CGPoint(x: 828.48, y: 2008.6), controlPoint1: CGPoint(x: 742.08, y: 1964.06), controlPoint2: CGPoint(x: 770.76, y: 1996.05))
        bezier72Path.addCurve(to: CGPoint(x: 1010.62, y: 1985.93), controlPoint1: CGPoint(x: 884.97, y: 2020.88), controlPoint2: CGPoint(x: 950.33, y: 2027.09))
        bezier72Path.addCurve(to: CGPoint(x: 1058.6, y: 1946.03), controlPoint1: CGPoint(x: 1040.34, y: 1965.64), controlPoint2: CGPoint(x: 1054.36, y: 1946.11))
        bezier72Path.addCurve(to: CGPoint(x: 1060.63, y: 2020.05), controlPoint1: CGPoint(x: 1061.2, y: 1945.97), controlPoint2: CGPoint(x: 1061.65, y: 1999.19))
        bezier72Path.addCurve(to: CGPoint(x: 1026.36, y: 2145.82), controlPoint1: CGPoint(x: 1060.51, y: 2022.66), controlPoint2: CGPoint(x: 1057.75, y: 2071.43))
        bezier72Path.addCurve(to: CGPoint(x: 925.29, y: 2403.21), controlPoint1: CGPoint(x: 998.63, y: 2233.49), controlPoint2: CGPoint(x: 964.97, y: 2298.78))
        bezier72Path.addCurve(to: CGPoint(x: 830.56, y: 2630.86), controlPoint1: CGPoint(x: 898.74, y: 2460.14), controlPoint2: CGPoint(x: 861.94, y: 2587.6))
        bezier72Path.addCurve(to: CGPoint(x: 825.26, y: 2612.48), controlPoint1: CGPoint(x: 830.36, y: 2622.99), controlPoint2: CGPoint(x: 826.76, y: 2617.43))
        bezier72Path.addCurve(to: CGPoint(x: 646.72, y: 2547.69), controlPoint1: CGPoint(x: 793.61, y: 2520.56), controlPoint2: CGPoint(x: 728.64, y: 2491.85))
        bezier72Path.close()
        if bezier72Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier72Path.fill()
        
        
        //// Bezier 73 Drawing
        let bezier73Path = UIBezierPath()
        bezier73Path.move(to: CGPoint(x: 736.11, y: 2546.51))
        bezier73Path.addCurve(to: CGPoint(x: 642.6, y: 2581.59), controlPoint1: CGPoint(x: 696.55, y: 2537.35), controlPoint2: CGPoint(x: 671.26, y: 2549.85))
        bezier73Path.addCurve(to: CGPoint(x: 615.49, y: 2617.81), controlPoint1: CGPoint(x: 632.49, y: 2592.84), controlPoint2: CGPoint(x: 625.97, y: 2606.8))
        bezier73Path.addCurve(to: CGPoint(x: 614.98, y: 2616.89), controlPoint1: CGPoint(x: 615.31, y: 2617.5), controlPoint2: CGPoint(x: 615.15, y: 2617.2))
        bezier73Path.addCurve(to: CGPoint(x: 614.71, y: 2588.5), controlPoint1: CGPoint(x: 610.2, y: 2608.08), controlPoint2: CGPoint(x: 611.05, y: 2598.11))
        bezier73Path.addCurve(to: CGPoint(x: 646.72, y: 2547.69), controlPoint1: CGPoint(x: 621.85, y: 2569.74), controlPoint2: CGPoint(x: 639.62, y: 2552.35))
        bezier73Path.addCurve(to: CGPoint(x: 825.25, y: 2612.47), controlPoint1: CGPoint(x: 728.64, y: 2491.85), controlPoint2: CGPoint(x: 793.61, y: 2520.56))
        bezier73Path.addCurve(to: CGPoint(x: 830.56, y: 2630.85), controlPoint1: CGPoint(x: 826.76, y: 2617.42), controlPoint2: CGPoint(x: 830.36, y: 2622.98))
        bezier73Path.addCurve(to: CGPoint(x: 811.16, y: 2667.97), controlPoint1: CGPoint(x: 830.78, y: 2639.58), controlPoint2: CGPoint(x: 826.82, y: 2651.17))
        bezier73Path.addCurve(to: CGPoint(x: 809.74, y: 2669.47), controlPoint1: CGPoint(x: 810.69, y: 2668.47), controlPoint2: CGPoint(x: 810.22, y: 2668.97))
        bezier73Path.addCurve(to: CGPoint(x: 736.11, y: 2546.51), controlPoint1: CGPoint(x: 807.62, y: 2633.92), controlPoint2: CGPoint(x: 791.51, y: 2559.33))
        bezier73Path.close()
        fillColor.setFill()
        bezier73Path.fill()
        
        
        
        
        //// Group 15
        //// Bezier 74 Drawing
        let bezier74Path = UIBezierPath()
        bezier74Path.move(to: CGPoint(x: 596.95, y: 3226.55))
        bezier74Path.addCurve(to: CGPoint(x: 524.46, y: 3246.11), controlPoint1: CGPoint(x: 568.88, y: 3217.95), controlPoint2: CGPoint(x: 545.08, y: 3217.76))
        bezier74Path.addCurve(to: CGPoint(x: 548.39, y: 3144.08), controlPoint1: CGPoint(x: 506.64, y: 3241.03), controlPoint2: CGPoint(x: 512.32, y: 3219.67))
        bezier74Path.addCurve(to: CGPoint(x: 560.29, y: 3065.65), controlPoint1: CGPoint(x: 553.55, y: 3118.22), controlPoint2: CGPoint(x: 563.6, y: 3098.06))
        bezier74Path.addCurve(to: CGPoint(x: 579.49, y: 2750.81), controlPoint1: CGPoint(x: 567.09, y: 2960.72), controlPoint2: CGPoint(x: 576.49, y: 2855.9))
        bezier74Path.addCurve(to: CGPoint(x: 613.22, y: 2620.81), controlPoint1: CGPoint(x: 580.85, y: 2703.46), controlPoint2: CGPoint(x: 600.82, y: 2663.73))
        bezier74Path.addCurve(to: CGPoint(x: 614.98, y: 2616.89), controlPoint1: CGPoint(x: 613.8, y: 2619.48), controlPoint2: CGPoint(x: 614.39, y: 2618.19))
        bezier74Path.addCurve(to: CGPoint(x: 615.49, y: 2617.81), controlPoint1: CGPoint(x: 615.15, y: 2617.2), controlPoint2: CGPoint(x: 615.3, y: 2617.5))
        bezier74Path.addCurve(to: CGPoint(x: 642.6, y: 2581.59), controlPoint1: CGPoint(x: 625.97, y: 2606.8), controlPoint2: CGPoint(x: 632.49, y: 2592.84))
        bezier74Path.addCurve(to: CGPoint(x: 736.11, y: 2546.51), controlPoint1: CGPoint(x: 671.26, y: 2549.85), controlPoint2: CGPoint(x: 696.55, y: 2537.35))
        bezier74Path.addCurve(to: CGPoint(x: 809.74, y: 2669.47), controlPoint1: CGPoint(x: 791.5, y: 2559.33), controlPoint2: CGPoint(x: 807.61, y: 2633.92))
        bezier74Path.addCurve(to: CGPoint(x: 811.15, y: 2667.97), controlPoint1: CGPoint(x: 810.22, y: 2668.97), controlPoint2: CGPoint(x: 810.69, y: 2668.47))
        bezier74Path.addCurve(to: CGPoint(x: 811.72, y: 2675.2), controlPoint1: CGPoint(x: 811.32, y: 2670.52), controlPoint2: CGPoint(x: 811.5, y: 2672.93))
        bezier74Path.addCurve(to: CGPoint(x: 808.7, y: 2737.07), controlPoint1: CGPoint(x: 813.89, y: 2697.36), controlPoint2: CGPoint(x: 812.28, y: 2696.85))
        bezier74Path.addCurve(to: CGPoint(x: 703.15, y: 3035.08), controlPoint1: CGPoint(x: 794.29, y: 2843.88), controlPoint2: CGPoint(x: 737.76, y: 2935.55))
        bezier74Path.addCurve(to: CGPoint(x: 659.51, y: 3219.59), controlPoint1: CGPoint(x: 678.57, y: 3094.08), controlPoint2: CGPoint(x: 672.85, y: 3157.88))
        bezier74Path.addCurve(to: CGPoint(x: 647.4, y: 3263.15), controlPoint1: CGPoint(x: 658.05, y: 3251.44), controlPoint2: CGPoint(x: 654.02, y: 3262))
        bezier74Path.addCurve(to: CGPoint(x: 596.95, y: 3226.55), controlPoint1: CGPoint(x: 637.89, y: 3237.57), controlPoint2: CGPoint(x: 613.9, y: 3231.75))
        bezier74Path.close()
        if bezier74Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier74Path.fill()
        
        
        //// Group 16
        //// Bezier 75 Drawing
        
        
        //// Bezier 76 Drawing
        
        
        //// Bezier 77 Drawing
        
        
        //// Bezier 78 Drawing
        
        
        //// Bezier 79 Drawing
        
        
        //// Bezier 80 Drawing
        
        
        //// Bezier 81 Drawing
        
        
        //// Bezier 82 Drawing
        
        
        //// Bezier 83 Drawing
        
        
        //// Bezier 84 Drawing
        
        
        //// Bezier 85 Drawing
        
        
        //// Bezier 86 Drawing
        
        
        //// Bezier 87 Drawing
        
        
        //// Bezier 88 Drawing
        
        
        //// Bezier 89 Drawing
        
        
        //// Bezier 90 Drawing
        
        
        //// Bezier 91 Drawing
        
        
        //// Bezier 92 Drawing
        
        
        //// Bezier 93 Drawing
        
        
        //// Bezier 94 Drawing
        
        
        //// Bezier 95 Drawing
        
        
        //// Bezier 96 Drawing
        
        
        //// Bezier 97 Drawing
        
        
        //// Bezier 98 Drawing
        
        
        //// Bezier 99 Drawing
        
        
        //// Bezier 100 Drawing
        
        
        //// Bezier 101 Drawing
        
        
        //// Bezier 102 Drawing
        
        
        //// Bezier 103 Drawing
        
        
        //// Bezier 104 Drawing
        
        
        //// Bezier 105 Drawing
        
        
        //// Bezier 106 Drawing
        
        
        //// Bezier 107 Drawing
        
        
        //// Bezier 108 Drawing
        
        
        //// Bezier 109 Drawing
        
        
        //// Bezier 110 Drawing
        
        
        //// Bezier 111 Drawing
        
        
        //// Bezier 112 Drawing
        
        
        //// Bezier 113 Drawing
        
        
        //// Bezier 114 Drawing
        
        
        //// Bezier 115 Drawing
        
        
        //// Bezier 116 Drawing
        
        
        //// Bezier 117 Drawing
        
        
        //// Bezier 118 Drawing
        
        
        //// Bezier 119 Drawing
        
        
        //// Bezier 120 Drawing
        
        
        //// Bezier 121 Drawing
        
        
        //// Bezier 122 Drawing
        
        
        //// Bezier 123 Drawing
        
        
        //// Bezier 124 Drawing
        
        
        //// Bezier 125 Drawing
        
        
        //// Bezier 126 Drawing
        
        
        //// Bezier 127 Drawing
        
        
        //// Bezier 128 Drawing
        
        
        //// Bezier 129 Drawing
        
        
        //// Bezier 130 Drawing
        
        
        //// Bezier 131 Drawing
        
        
        //// Bezier 132 Drawing
        let bezier132Path = UIBezierPath()
        bezier132Path.move(to: CGPoint(x: 499.15, y: 3298.16))
        bezier132Path.addCurve(to: CGPoint(x: 501.43, y: 3293.8), controlPoint1: CGPoint(x: 500.15, y: 3296.25), controlPoint2: CGPoint(x: 500.86, y: 3294.86))
        bezier132Path.addCurve(to: CGPoint(x: 512.61, y: 3281.19), controlPoint1: CGPoint(x: 505.18, y: 3289.29), controlPoint2: CGPoint(x: 508.91, y: 3285.1))
        bezier132Path.addCurve(to: CGPoint(x: 521.01, y: 3272.78), controlPoint1: CGPoint(x: 516.19, y: 3277.66), controlPoint2: CGPoint(x: 520.74, y: 3273.17))
        bezier132Path.addCurve(to: CGPoint(x: 523.68, y: 3270.3), controlPoint1: CGPoint(x: 521.9, y: 3271.94), controlPoint2: CGPoint(x: 522.79, y: 3271.1))
        bezier132Path.addCurve(to: CGPoint(x: 524.47, y: 3269.59), controlPoint1: CGPoint(x: 523.95, y: 3270.06), controlPoint2: CGPoint(x: 524.21, y: 3269.83))
        bezier132Path.addCurve(to: CGPoint(x: 526.34, y: 3267.92), controlPoint1: CGPoint(x: 525.1, y: 3269.03), controlPoint2: CGPoint(x: 525.72, y: 3268.46))
        bezier132Path.addCurve(to: CGPoint(x: 527.91, y: 3266.57), controlPoint1: CGPoint(x: 526.87, y: 3267.46), controlPoint2: CGPoint(x: 527.39, y: 3267.02))
        bezier132Path.addCurve(to: CGPoint(x: 528.99, y: 3265.64), controlPoint1: CGPoint(x: 528.27, y: 3266.26), controlPoint2: CGPoint(x: 528.63, y: 3265.94))
        bezier132Path.addCurve(to: CGPoint(x: 530.26, y: 3264.6), controlPoint1: CGPoint(x: 529.41, y: 3265.29), controlPoint2: CGPoint(x: 529.83, y: 3264.95))
        bezier132Path.addCurve(to: CGPoint(x: 531.63, y: 3263.47), controlPoint1: CGPoint(x: 530.72, y: 3264.23), controlPoint2: CGPoint(x: 531.18, y: 3263.84))
        bezier132Path.addCurve(to: CGPoint(x: 532.84, y: 3262.52), controlPoint1: CGPoint(x: 532.04, y: 3263.15), controlPoint2: CGPoint(x: 532.44, y: 3262.84))
        bezier132Path.addCurve(to: CGPoint(x: 534.25, y: 3261.41), controlPoint1: CGPoint(x: 533.31, y: 3262.15), controlPoint2: CGPoint(x: 533.78, y: 3261.77))
        bezier132Path.addCurve(to: CGPoint(x: 536.17, y: 3259.97), controlPoint1: CGPoint(x: 534.9, y: 3260.92), controlPoint2: CGPoint(x: 535.53, y: 3260.44))
        bezier132Path.addCurve(to: CGPoint(x: 536.86, y: 3259.45), controlPoint1: CGPoint(x: 536.4, y: 3259.8), controlPoint2: CGPoint(x: 536.63, y: 3259.62))
        bezier132Path.addCurve(to: CGPoint(x: 538.82, y: 3258.05), controlPoint1: CGPoint(x: 537.51, y: 3258.97), controlPoint2: CGPoint(x: 538.17, y: 3258.51))
        bezier132Path.addCurve(to: CGPoint(x: 539.45, y: 3257.6), controlPoint1: CGPoint(x: 539.03, y: 3257.9), controlPoint2: CGPoint(x: 539.24, y: 3257.74))
        bezier132Path.addCurve(to: CGPoint(x: 541.43, y: 3256.26), controlPoint1: CGPoint(x: 540.11, y: 3257.13), controlPoint2: CGPoint(x: 540.77, y: 3256.7))
        bezier132Path.addCurve(to: CGPoint(x: 542.03, y: 3255.84), controlPoint1: CGPoint(x: 541.63, y: 3256.12), controlPoint2: CGPoint(x: 541.83, y: 3255.98))
        bezier132Path.addCurve(to: CGPoint(x: 544.33, y: 3254.37), controlPoint1: CGPoint(x: 542.8, y: 3255.33), controlPoint2: CGPoint(x: 543.57, y: 3254.84))
        bezier132Path.addCurve(to: CGPoint(x: 544.59, y: 3254.2), controlPoint1: CGPoint(x: 544.42, y: 3254.31), controlPoint2: CGPoint(x: 544.51, y: 3254.25))
        bezier132Path.addCurve(to: CGPoint(x: 546.82, y: 3252.85), controlPoint1: CGPoint(x: 545.33, y: 3253.73), controlPoint2: CGPoint(x: 546.07, y: 3253.29))
        bezier132Path.addCurve(to: CGPoint(x: 547.14, y: 3252.65), controlPoint1: CGPoint(x: 546.92, y: 3252.79), controlPoint2: CGPoint(x: 547.03, y: 3252.71))
        bezier132Path.addCurve(to: CGPoint(x: 549.39, y: 3251.38), controlPoint1: CGPoint(x: 547.89, y: 3252.21), controlPoint2: CGPoint(x: 548.64, y: 3251.79))
        bezier132Path.addCurve(to: CGPoint(x: 549.67, y: 3251.21), controlPoint1: CGPoint(x: 549.48, y: 3251.32), controlPoint2: CGPoint(x: 549.57, y: 3251.27))
        bezier132Path.addCurve(to: CGPoint(x: 551.81, y: 3250.07), controlPoint1: CGPoint(x: 550.39, y: 3250.82), controlPoint2: CGPoint(x: 551.1, y: 3250.44))
        bezier132Path.addCurve(to: CGPoint(x: 552.18, y: 3249.87), controlPoint1: CGPoint(x: 551.94, y: 3250), controlPoint2: CGPoint(x: 552.06, y: 3249.94))
        bezier132Path.addCurve(to: CGPoint(x: 554.32, y: 3248.81), controlPoint1: CGPoint(x: 552.9, y: 3249.51), controlPoint2: CGPoint(x: 553.61, y: 3249.16))
        bezier132Path.addCurve(to: CGPoint(x: 554.68, y: 3248.63), controlPoint1: CGPoint(x: 554.44, y: 3248.75), controlPoint2: CGPoint(x: 554.56, y: 3248.7))
        bezier132Path.addCurve(to: CGPoint(x: 556.74, y: 3247.69), controlPoint1: CGPoint(x: 555.37, y: 3248.31), controlPoint2: CGPoint(x: 556.06, y: 3247.99))
        bezier132Path.addCurve(to: CGPoint(x: 557.15, y: 3247.5), controlPoint1: CGPoint(x: 556.88, y: 3247.63), controlPoint2: CGPoint(x: 557.02, y: 3247.56))
        bezier132Path.addCurve(to: CGPoint(x: 559.18, y: 3246.65), controlPoint1: CGPoint(x: 557.83, y: 3247.2), controlPoint2: CGPoint(x: 558.5, y: 3246.92))
        bezier132Path.addCurve(to: CGPoint(x: 559.61, y: 3246.46), controlPoint1: CGPoint(x: 559.32, y: 3246.59), controlPoint2: CGPoint(x: 559.47, y: 3246.52))
        bezier132Path.addCurve(to: CGPoint(x: 561.58, y: 3245.71), controlPoint1: CGPoint(x: 560.27, y: 3246.2), controlPoint2: CGPoint(x: 560.92, y: 3245.96))
        bezier132Path.addCurve(to: CGPoint(x: 562.06, y: 3245.53), controlPoint1: CGPoint(x: 561.74, y: 3245.65), controlPoint2: CGPoint(x: 561.9, y: 3245.59))
        bezier132Path.addCurve(to: CGPoint(x: 564.59, y: 3244.67), controlPoint1: CGPoint(x: 562.9, y: 3245.22), controlPoint2: CGPoint(x: 563.75, y: 3244.94))
        bezier132Path.addCurve(to: CGPoint(x: 565.18, y: 3244.49), controlPoint1: CGPoint(x: 564.79, y: 3244.6), controlPoint2: CGPoint(x: 564.99, y: 3244.55))
        bezier132Path.addCurve(to: CGPoint(x: 567.09, y: 3243.92), controlPoint1: CGPoint(x: 565.82, y: 3244.29), controlPoint2: CGPoint(x: 566.45, y: 3244.09))
        bezier132Path.addCurve(to: CGPoint(x: 567.92, y: 3243.69), controlPoint1: CGPoint(x: 567.36, y: 3243.84), controlPoint2: CGPoint(x: 567.64, y: 3243.77))
        bezier132Path.addCurve(to: CGPoint(x: 569.56, y: 3243.27), controlPoint1: CGPoint(x: 568.47, y: 3243.55), controlPoint2: CGPoint(x: 569.02, y: 3243.4))
        bezier132Path.addCurve(to: CGPoint(x: 570.46, y: 3243.07), controlPoint1: CGPoint(x: 569.87, y: 3243.2), controlPoint2: CGPoint(x: 570.16, y: 3243.14))
        bezier132Path.addCurve(to: CGPoint(x: 572.02, y: 3242.74), controlPoint1: CGPoint(x: 570.98, y: 3242.96), controlPoint2: CGPoint(x: 571.5, y: 3242.84))
        bezier132Path.addCurve(to: CGPoint(x: 572.94, y: 3242.57), controlPoint1: CGPoint(x: 572.33, y: 3242.68), controlPoint2: CGPoint(x: 572.64, y: 3242.63))
        bezier132Path.addCurve(to: CGPoint(x: 574.46, y: 3242.31), controlPoint1: CGPoint(x: 573.45, y: 3242.48), controlPoint2: CGPoint(x: 573.96, y: 3242.39))
        bezier132Path.addCurve(to: CGPoint(x: 575.38, y: 3242.18), controlPoint1: CGPoint(x: 574.77, y: 3242.27), controlPoint2: CGPoint(x: 575.08, y: 3242.22))
        bezier132Path.addCurve(to: CGPoint(x: 576.89, y: 3241.99), controlPoint1: CGPoint(x: 575.89, y: 3242.12), controlPoint2: CGPoint(x: 576.39, y: 3242.05))
        bezier132Path.addCurve(to: CGPoint(x: 577.78, y: 3241.91), controlPoint1: CGPoint(x: 577.19, y: 3241.96), controlPoint2: CGPoint(x: 577.49, y: 3241.93))
        bezier132Path.addCurve(to: CGPoint(x: 579.3, y: 3241.78), controlPoint1: CGPoint(x: 578.29, y: 3241.86), controlPoint2: CGPoint(x: 578.79, y: 3241.82))
        bezier132Path.addCurve(to: CGPoint(x: 580.16, y: 3241.74), controlPoint1: CGPoint(x: 579.58, y: 3241.76), controlPoint2: CGPoint(x: 579.87, y: 3241.75))
        bezier132Path.addCurve(to: CGPoint(x: 581.69, y: 3241.68), controlPoint1: CGPoint(x: 580.67, y: 3241.71), controlPoint2: CGPoint(x: 581.18, y: 3241.69))
        bezier132Path.addCurve(to: CGPoint(x: 582.51, y: 3241.67), controlPoint1: CGPoint(x: 581.96, y: 3241.68), controlPoint2: CGPoint(x: 582.24, y: 3241.67))
        bezier132Path.addCurve(to: CGPoint(x: 584.07, y: 3241.69), controlPoint1: CGPoint(x: 583.03, y: 3241.67), controlPoint2: CGPoint(x: 583.55, y: 3241.68))
        bezier132Path.addCurve(to: CGPoint(x: 584.83, y: 3241.71), controlPoint1: CGPoint(x: 584.32, y: 3241.7), controlPoint2: CGPoint(x: 584.58, y: 3241.7))
        bezier132Path.addCurve(to: CGPoint(x: 586.45, y: 3241.81), controlPoint1: CGPoint(x: 585.37, y: 3241.73), controlPoint2: CGPoint(x: 585.91, y: 3241.77))
        bezier132Path.addCurve(to: CGPoint(x: 587.13, y: 3241.86), controlPoint1: CGPoint(x: 586.67, y: 3241.83), controlPoint2: CGPoint(x: 586.9, y: 3241.84))
        bezier132Path.addCurve(to: CGPoint(x: 588.83, y: 3242.05), controlPoint1: CGPoint(x: 587.7, y: 3241.92), controlPoint2: CGPoint(x: 588.27, y: 3241.98))
        bezier132Path.addCurve(to: CGPoint(x: 589.4, y: 3242.12), controlPoint1: CGPoint(x: 589.02, y: 3242.07), controlPoint2: CGPoint(x: 589.21, y: 3242.09))
        bezier132Path.addCurve(to: CGPoint(x: 591.26, y: 3242.41), controlPoint1: CGPoint(x: 590.02, y: 3242.2), controlPoint2: CGPoint(x: 590.64, y: 3242.3))
        bezier132Path.addCurve(to: CGPoint(x: 591.65, y: 3242.48), controlPoint1: CGPoint(x: 591.39, y: 3242.43), controlPoint2: CGPoint(x: 591.52, y: 3242.45))
        bezier132Path.addCurve(to: CGPoint(x: 593.85, y: 3242.94), controlPoint1: CGPoint(x: 592.39, y: 3242.61), controlPoint2: CGPoint(x: 593.12, y: 3242.76))
        bezier132Path.addCurve(to: CGPoint(x: 593.87, y: 3242.94), controlPoint1: CGPoint(x: 593.86, y: 3242.94), controlPoint2: CGPoint(x: 593.86, y: 3242.94))
        bezier132Path.addCurve(to: CGPoint(x: 600.55, y: 3245.04), controlPoint1: CGPoint(x: 596.14, y: 3243.47), controlPoint2: CGPoint(x: 598.37, y: 3244.17))
        bezier132Path.addCurve(to: CGPoint(x: 600.61, y: 3245.07), controlPoint1: CGPoint(x: 600.57, y: 3245.05), controlPoint2: CGPoint(x: 600.59, y: 3245.06))
        bezier132Path.addCurve(to: CGPoint(x: 611.9, y: 3251.3), controlPoint1: CGPoint(x: 604.53, y: 3246.62), controlPoint2: CGPoint(x: 608.29, y: 3248.7))
        bezier132Path.addCurve(to: CGPoint(x: 611.92, y: 3251.32), controlPoint1: CGPoint(x: 611.91, y: 3251.31), controlPoint2: CGPoint(x: 611.91, y: 3251.32))
        bezier132Path.addCurve(to: CGPoint(x: 613.46, y: 3252.48), controlPoint1: CGPoint(x: 612.44, y: 3251.7), controlPoint2: CGPoint(x: 612.95, y: 3252.09))
        bezier132Path.addCurve(to: CGPoint(x: 613.76, y: 3252.71), controlPoint1: CGPoint(x: 613.56, y: 3252.56), controlPoint2: CGPoint(x: 613.66, y: 3252.63))
        bezier132Path.addCurve(to: CGPoint(x: 615.12, y: 3253.82), controlPoint1: CGPoint(x: 614.21, y: 3253.07), controlPoint2: CGPoint(x: 614.67, y: 3253.44))
        bezier132Path.addCurve(to: CGPoint(x: 615.56, y: 3254.18), controlPoint1: CGPoint(x: 615.27, y: 3253.94), controlPoint2: CGPoint(x: 615.42, y: 3254.06))
        bezier132Path.addCurve(to: CGPoint(x: 616.82, y: 3255.28), controlPoint1: CGPoint(x: 615.99, y: 3254.54), controlPoint2: CGPoint(x: 616.4, y: 3254.91))
        bezier132Path.addCurve(to: CGPoint(x: 617.34, y: 3255.74), controlPoint1: CGPoint(x: 616.99, y: 3255.44), controlPoint2: CGPoint(x: 617.17, y: 3255.59))
        bezier132Path.addCurve(to: CGPoint(x: 618.52, y: 3256.85), controlPoint1: CGPoint(x: 617.74, y: 3256.1), controlPoint2: CGPoint(x: 618.13, y: 3256.48))
        bezier132Path.addCurve(to: CGPoint(x: 619.09, y: 3257.4), controlPoint1: CGPoint(x: 618.71, y: 3257.04), controlPoint2: CGPoint(x: 618.9, y: 3257.21))
        bezier132Path.addCurve(to: CGPoint(x: 620.2, y: 3258.52), controlPoint1: CGPoint(x: 619.46, y: 3257.76), controlPoint2: CGPoint(x: 619.83, y: 3258.14))
        bezier132Path.addCurve(to: CGPoint(x: 620.81, y: 3259.14), controlPoint1: CGPoint(x: 620.4, y: 3258.73), controlPoint2: CGPoint(x: 620.61, y: 3258.93))
        bezier132Path.addCurve(to: CGPoint(x: 621.87, y: 3260.28), controlPoint1: CGPoint(x: 621.16, y: 3259.51), controlPoint2: CGPoint(x: 621.52, y: 3259.9))
        bezier132Path.addCurve(to: CGPoint(x: 622.5, y: 3260.97), controlPoint1: CGPoint(x: 622.08, y: 3260.51), controlPoint2: CGPoint(x: 622.29, y: 3260.74))
        bezier132Path.addCurve(to: CGPoint(x: 623.51, y: 3262.14), controlPoint1: CGPoint(x: 622.83, y: 3261.35), controlPoint2: CGPoint(x: 623.17, y: 3261.74))
        bezier132Path.addCurve(to: CGPoint(x: 624.16, y: 3262.9), controlPoint1: CGPoint(x: 623.73, y: 3262.39), controlPoint2: CGPoint(x: 623.94, y: 3262.64))
        bezier132Path.addCurve(to: CGPoint(x: 625.13, y: 3264.09), controlPoint1: CGPoint(x: 624.48, y: 3263.29), controlPoint2: CGPoint(x: 624.8, y: 3263.68))
        bezier132Path.addCurve(to: CGPoint(x: 625.78, y: 3264.91), controlPoint1: CGPoint(x: 625.35, y: 3264.36), controlPoint2: CGPoint(x: 625.57, y: 3264.63))
        bezier132Path.addCurve(to: CGPoint(x: 626.72, y: 3266.13), controlPoint1: CGPoint(x: 626.1, y: 3265.31), controlPoint2: CGPoint(x: 626.41, y: 3265.72))
        bezier132Path.addCurve(to: CGPoint(x: 627.38, y: 3267.02), controlPoint1: CGPoint(x: 626.94, y: 3266.42), controlPoint2: CGPoint(x: 627.16, y: 3266.72))
        bezier132Path.addCurve(to: CGPoint(x: 628.28, y: 3268.26), controlPoint1: CGPoint(x: 627.68, y: 3267.42), controlPoint2: CGPoint(x: 627.98, y: 3267.84))
        bezier132Path.addCurve(to: CGPoint(x: 628.94, y: 3269.21), controlPoint1: CGPoint(x: 628.5, y: 3268.57), controlPoint2: CGPoint(x: 628.72, y: 3268.89))
        bezier132Path.addCurve(to: CGPoint(x: 629.81, y: 3270.48), controlPoint1: CGPoint(x: 629.23, y: 3269.63), controlPoint2: CGPoint(x: 629.52, y: 3270.05))
        bezier132Path.addCurve(to: CGPoint(x: 630.48, y: 3271.49), controlPoint1: CGPoint(x: 630.03, y: 3270.81), controlPoint2: CGPoint(x: 630.25, y: 3271.15))
        bezier132Path.addCurve(to: CGPoint(x: 631.31, y: 3272.79), controlPoint1: CGPoint(x: 630.75, y: 3271.92), controlPoint2: CGPoint(x: 631.04, y: 3272.35))
        bezier132Path.addCurve(to: CGPoint(x: 631.98, y: 3273.86), controlPoint1: CGPoint(x: 631.54, y: 3273.14), controlPoint2: CGPoint(x: 631.76, y: 3273.5))
        bezier132Path.addCurve(to: CGPoint(x: 632.78, y: 3275.19), controlPoint1: CGPoint(x: 632.25, y: 3274.3), controlPoint2: CGPoint(x: 632.51, y: 3274.74))
        bezier132Path.addCurve(to: CGPoint(x: 633.45, y: 3276.33), controlPoint1: CGPoint(x: 633, y: 3275.56), controlPoint2: CGPoint(x: 633.23, y: 3275.94))
        bezier132Path.addCurve(to: CGPoint(x: 634.22, y: 3277.68), controlPoint1: CGPoint(x: 633.71, y: 3276.77), controlPoint2: CGPoint(x: 633.96, y: 3277.22))
        bezier132Path.addCurve(to: CGPoint(x: 634.88, y: 3278.87), controlPoint1: CGPoint(x: 634.44, y: 3278.07), controlPoint2: CGPoint(x: 634.66, y: 3278.47))
        bezier132Path.addCurve(to: CGPoint(x: 635.62, y: 3280.25), controlPoint1: CGPoint(x: 635.13, y: 3279.33), controlPoint2: CGPoint(x: 635.38, y: 3279.79))
        bezier132Path.addCurve(to: CGPoint(x: 636.28, y: 3281.51), controlPoint1: CGPoint(x: 635.85, y: 3280.67), controlPoint2: CGPoint(x: 636.07, y: 3281.09))
        bezier132Path.addCurve(to: CGPoint(x: 637, y: 3282.91), controlPoint1: CGPoint(x: 636.52, y: 3281.98), controlPoint2: CGPoint(x: 636.76, y: 3282.44))
        bezier132Path.addCurve(to: CGPoint(x: 637.65, y: 3284.24), controlPoint1: CGPoint(x: 637.22, y: 3283.35), controlPoint2: CGPoint(x: 637.43, y: 3283.79))
        bezier132Path.addCurve(to: CGPoint(x: 638.34, y: 3285.66), controlPoint1: CGPoint(x: 637.88, y: 3284.71), controlPoint2: CGPoint(x: 638.11, y: 3285.18))
        bezier132Path.addCurve(to: CGPoint(x: 638.98, y: 3287.06), controlPoint1: CGPoint(x: 638.56, y: 3286.12), controlPoint2: CGPoint(x: 638.77, y: 3286.59))
        bezier132Path.addCurve(to: CGPoint(x: 639.64, y: 3288.49), controlPoint1: CGPoint(x: 639.21, y: 3287.53), controlPoint2: CGPoint(x: 639.42, y: 3288.01))
        bezier132Path.addCurve(to: CGPoint(x: 640.29, y: 3289.97), controlPoint1: CGPoint(x: 639.86, y: 3288.98), controlPoint2: CGPoint(x: 640.07, y: 3289.47))
        bezier132Path.addCurve(to: CGPoint(x: 640.91, y: 3291.42), controlPoint1: CGPoint(x: 640.5, y: 3290.45), controlPoint2: CGPoint(x: 640.71, y: 3290.93))
        bezier132Path.addCurve(to: CGPoint(x: 641.55, y: 3292.96), controlPoint1: CGPoint(x: 641.13, y: 3291.93), controlPoint2: CGPoint(x: 641.34, y: 3292.44))
        bezier132Path.addCurve(to: CGPoint(x: 642.15, y: 3294.43), controlPoint1: CGPoint(x: 641.75, y: 3293.45), controlPoint2: CGPoint(x: 641.95, y: 3293.94))
        bezier132Path.addCurve(to: CGPoint(x: 642.78, y: 3296.04), controlPoint1: CGPoint(x: 642.36, y: 3294.96), controlPoint2: CGPoint(x: 642.57, y: 3295.5))
        bezier132Path.addCurve(to: CGPoint(x: 643.35, y: 3297.52), controlPoint1: CGPoint(x: 642.97, y: 3296.53), controlPoint2: CGPoint(x: 643.16, y: 3297.02))
        bezier132Path.addCurve(to: CGPoint(x: 643.98, y: 3299.22), controlPoint1: CGPoint(x: 643.56, y: 3298.09), controlPoint2: CGPoint(x: 643.77, y: 3298.66))
        bezier132Path.addCurve(to: CGPoint(x: 644.52, y: 3300.7), controlPoint1: CGPoint(x: 644.16, y: 3299.71), controlPoint2: CGPoint(x: 644.34, y: 3300.2))
        bezier132Path.addCurve(to: CGPoint(x: 645.14, y: 3302.51), controlPoint1: CGPoint(x: 644.73, y: 3301.3), controlPoint2: CGPoint(x: 644.93, y: 3301.9))
        bezier132Path.addCurve(to: CGPoint(x: 645.64, y: 3303.97), controlPoint1: CGPoint(x: 645.31, y: 3302.99), controlPoint2: CGPoint(x: 645.48, y: 3303.48))
        bezier132Path.addCurve(to: CGPoint(x: 646.29, y: 3305.95), controlPoint1: CGPoint(x: 645.86, y: 3304.62), controlPoint2: CGPoint(x: 646.07, y: 3305.28))
        bezier132Path.addCurve(to: CGPoint(x: 646.73, y: 3307.32), controlPoint1: CGPoint(x: 646.44, y: 3306.41), controlPoint2: CGPoint(x: 646.59, y: 3306.86))
        bezier132Path.addCurve(to: CGPoint(x: 647.44, y: 3309.64), controlPoint1: CGPoint(x: 646.97, y: 3308.09), controlPoint2: CGPoint(x: 647.21, y: 3308.86))
        bezier132Path.addCurve(to: CGPoint(x: 647.79, y: 3310.76), controlPoint1: CGPoint(x: 647.56, y: 3310.01), controlPoint2: CGPoint(x: 647.67, y: 3310.38))
        bezier132Path.addCurve(to: CGPoint(x: 648.8, y: 3314.28), controlPoint1: CGPoint(x: 648.13, y: 3311.92), controlPoint2: CGPoint(x: 648.47, y: 3313.09))
        bezier132Path.addCurve(to: CGPoint(x: 649.41, y: 3310.91), controlPoint1: CGPoint(x: 649.02, y: 3313.14), controlPoint2: CGPoint(x: 649.22, y: 3312.01))
        bezier132Path.addCurve(to: CGPoint(x: 649.44, y: 3311.14), controlPoint1: CGPoint(x: 649.42, y: 3310.98), controlPoint2: CGPoint(x: 649.43, y: 3311.06))
        bezier132Path.addCurve(to: CGPoint(x: 614.12, y: 3440.75), controlPoint1: CGPoint(x: 666.93, y: 3362.32), controlPoint2: CGPoint(x: 633.03, y: 3401.06))
        bezier132Path.addCurve(to: CGPoint(x: 582.61, y: 3462.83), controlPoint1: CGPoint(x: 608.23, y: 3453.18), controlPoint2: CGPoint(x: 596.53, y: 3460.32))
        bezier132Path.addCurve(to: CGPoint(x: 572.3, y: 3463.82), controlPoint1: CGPoint(x: 579.29, y: 3463.45), controlPoint2: CGPoint(x: 575.82, y: 3463.72))
        bezier132Path.addCurve(to: CGPoint(x: 564.44, y: 3463.66), controlPoint1: CGPoint(x: 569.72, y: 3463.88), controlPoint2: CGPoint(x: 567.09, y: 3463.86))
        bezier132Path.addCurve(to: CGPoint(x: 564.28, y: 3463.65), controlPoint1: CGPoint(x: 564.37, y: 3463.64), controlPoint2: CGPoint(x: 564.33, y: 3463.64))
        bezier132Path.addCurve(to: CGPoint(x: 511.3, y: 3439.97), controlPoint1: CGPoint(x: 545.4, y: 3462.13), controlPoint2: CGPoint(x: 525.44, y: 3453.83))
        bezier132Path.addCurve(to: CGPoint(x: 499.15, y: 3298.16), controlPoint1: CGPoint(x: 476.39, y: 3405.71), controlPoint2: CGPoint(x: 467.8, y: 3341.42))
        bezier132Path.close()
        if bezier132Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier132Path.fill()
        
        
        //// Bezier 133 Drawing
        let bezier133Path = UIBezierPath()
        bezier133Path.move(to: CGPoint(x: 647.78, y: 3310.76))
        bezier133Path.addCurve(to: CGPoint(x: 647.44, y: 3309.65), controlPoint1: CGPoint(x: 647.67, y: 3310.38), controlPoint2: CGPoint(x: 647.55, y: 3310.02))
        bezier133Path.addCurve(to: CGPoint(x: 646.73, y: 3307.33), controlPoint1: CGPoint(x: 647.2, y: 3308.87), controlPoint2: CGPoint(x: 646.97, y: 3308.09))
        bezier133Path.addCurve(to: CGPoint(x: 646.28, y: 3305.95), controlPoint1: CGPoint(x: 646.58, y: 3306.86), controlPoint2: CGPoint(x: 646.43, y: 3306.41))
        bezier133Path.addCurve(to: CGPoint(x: 645.64, y: 3303.98), controlPoint1: CGPoint(x: 646.07, y: 3305.29), controlPoint2: CGPoint(x: 645.86, y: 3304.63))
        bezier133Path.addCurve(to: CGPoint(x: 645.14, y: 3302.51), controlPoint1: CGPoint(x: 645.47, y: 3303.48), controlPoint2: CGPoint(x: 645.3, y: 3303))
        bezier133Path.addCurve(to: CGPoint(x: 644.51, y: 3300.71), controlPoint1: CGPoint(x: 644.93, y: 3301.91), controlPoint2: CGPoint(x: 644.72, y: 3301.31))
        bezier133Path.addCurve(to: CGPoint(x: 643.97, y: 3299.23), controlPoint1: CGPoint(x: 644.33, y: 3300.21), controlPoint2: CGPoint(x: 644.15, y: 3299.72))
        bezier133Path.addCurve(to: CGPoint(x: 643.35, y: 3297.53), controlPoint1: CGPoint(x: 643.76, y: 3298.66), controlPoint2: CGPoint(x: 643.56, y: 3298.09))
        bezier133Path.addCurve(to: CGPoint(x: 642.77, y: 3296.05), controlPoint1: CGPoint(x: 643.16, y: 3297.03), controlPoint2: CGPoint(x: 642.97, y: 3296.54))
        bezier133Path.addCurve(to: CGPoint(x: 642.15, y: 3294.43), controlPoint1: CGPoint(x: 642.56, y: 3295.51), controlPoint2: CGPoint(x: 642.36, y: 3294.96))
        bezier133Path.addCurve(to: CGPoint(x: 641.55, y: 3292.97), controlPoint1: CGPoint(x: 641.95, y: 3293.94), controlPoint2: CGPoint(x: 641.75, y: 3293.46))
        bezier133Path.addCurve(to: CGPoint(x: 640.91, y: 3291.42), controlPoint1: CGPoint(x: 641.33, y: 3292.45), controlPoint2: CGPoint(x: 641.12, y: 3291.93))
        bezier133Path.addCurve(to: CGPoint(x: 640.28, y: 3289.97), controlPoint1: CGPoint(x: 640.7, y: 3290.94), controlPoint2: CGPoint(x: 640.49, y: 3290.45))
        bezier133Path.addCurve(to: CGPoint(x: 639.64, y: 3288.5), controlPoint1: CGPoint(x: 640.07, y: 3289.48), controlPoint2: CGPoint(x: 639.85, y: 3288.98))
        bezier133Path.addCurve(to: CGPoint(x: 638.98, y: 3287.06), controlPoint1: CGPoint(x: 639.42, y: 3288.02), controlPoint2: CGPoint(x: 639.2, y: 3287.54))
        bezier133Path.addCurve(to: CGPoint(x: 638.33, y: 3285.67), controlPoint1: CGPoint(x: 638.76, y: 3286.59), controlPoint2: CGPoint(x: 638.55, y: 3286.12))
        bezier133Path.addCurve(to: CGPoint(x: 637.64, y: 3284.24), controlPoint1: CGPoint(x: 638.1, y: 3285.19), controlPoint2: CGPoint(x: 637.88, y: 3284.72))
        bezier133Path.addCurve(to: CGPoint(x: 636.99, y: 3282.92), controlPoint1: CGPoint(x: 637.43, y: 3283.8), controlPoint2: CGPoint(x: 637.21, y: 3283.35))
        bezier133Path.addCurve(to: CGPoint(x: 636.28, y: 3281.52), controlPoint1: CGPoint(x: 636.76, y: 3282.44), controlPoint2: CGPoint(x: 636.51, y: 3281.98))
        bezier133Path.addCurve(to: CGPoint(x: 635.62, y: 3280.25), controlPoint1: CGPoint(x: 636.06, y: 3281.1), controlPoint2: CGPoint(x: 635.84, y: 3280.67))
        bezier133Path.addCurve(to: CGPoint(x: 634.88, y: 3278.88), controlPoint1: CGPoint(x: 635.37, y: 3279.79), controlPoint2: CGPoint(x: 635.13, y: 3279.33))
        bezier133Path.addCurve(to: CGPoint(x: 634.21, y: 3277.68), controlPoint1: CGPoint(x: 634.65, y: 3278.48), controlPoint2: CGPoint(x: 634.44, y: 3278.07))
        bezier133Path.addCurve(to: CGPoint(x: 633.44, y: 3276.33), controlPoint1: CGPoint(x: 633.96, y: 3277.23), controlPoint2: CGPoint(x: 633.7, y: 3276.78))
        bezier133Path.addCurve(to: CGPoint(x: 632.77, y: 3275.19), controlPoint1: CGPoint(x: 633.22, y: 3275.95), controlPoint2: CGPoint(x: 633, y: 3275.57))
        bezier133Path.addCurve(to: CGPoint(x: 631.97, y: 3273.87), controlPoint1: CGPoint(x: 632.51, y: 3274.74), controlPoint2: CGPoint(x: 632.24, y: 3274.31))
        bezier133Path.addCurve(to: CGPoint(x: 631.31, y: 3272.8), controlPoint1: CGPoint(x: 631.75, y: 3273.51), controlPoint2: CGPoint(x: 631.53, y: 3273.15))
        bezier133Path.addCurve(to: CGPoint(x: 630.47, y: 3271.5), controlPoint1: CGPoint(x: 631.03, y: 3272.36), controlPoint2: CGPoint(x: 630.75, y: 3271.93))
        bezier133Path.addCurve(to: CGPoint(x: 629.8, y: 3270.49), controlPoint1: CGPoint(x: 630.25, y: 3271.15), controlPoint2: CGPoint(x: 630.03, y: 3270.82))
        bezier133Path.addCurve(to: CGPoint(x: 628.94, y: 3269.21), controlPoint1: CGPoint(x: 629.52, y: 3270.06), controlPoint2: CGPoint(x: 629.23, y: 3269.63))
        bezier133Path.addCurve(to: CGPoint(x: 628.27, y: 3268.27), controlPoint1: CGPoint(x: 628.72, y: 3268.9), controlPoint2: CGPoint(x: 628.5, y: 3268.58))
        bezier133Path.addCurve(to: CGPoint(x: 627.37, y: 3267.02), controlPoint1: CGPoint(x: 627.98, y: 3267.85), controlPoint2: CGPoint(x: 627.68, y: 3267.43))
        bezier133Path.addCurve(to: CGPoint(x: 626.71, y: 3266.13), controlPoint1: CGPoint(x: 627.16, y: 3266.72), controlPoint2: CGPoint(x: 626.94, y: 3266.43))
        bezier133Path.addCurve(to: CGPoint(x: 625.78, y: 3264.92), controlPoint1: CGPoint(x: 626.4, y: 3265.73), controlPoint2: CGPoint(x: 626.09, y: 3265.32))
        bezier133Path.addCurve(to: CGPoint(x: 625.12, y: 3264.09), controlPoint1: CGPoint(x: 625.56, y: 3264.64), controlPoint2: CGPoint(x: 625.34, y: 3264.36))
        bezier133Path.addCurve(to: CGPoint(x: 624.15, y: 3262.9), controlPoint1: CGPoint(x: 624.8, y: 3263.69), controlPoint2: CGPoint(x: 624.48, y: 3263.29))
        bezier133Path.addCurve(to: CGPoint(x: 623.5, y: 3262.14), controlPoint1: CGPoint(x: 623.94, y: 3262.65), controlPoint2: CGPoint(x: 623.72, y: 3262.4))
        bezier133Path.addCurve(to: CGPoint(x: 622.49, y: 3260.98), controlPoint1: CGPoint(x: 623.17, y: 3261.75), controlPoint2: CGPoint(x: 622.83, y: 3261.36))
        bezier133Path.addCurve(to: CGPoint(x: 621.86, y: 3260.29), controlPoint1: CGPoint(x: 622.28, y: 3260.75), controlPoint2: CGPoint(x: 622.07, y: 3260.52))
        bezier133Path.addCurve(to: CGPoint(x: 620.8, y: 3259.14), controlPoint1: CGPoint(x: 621.51, y: 3259.9), controlPoint2: CGPoint(x: 621.16, y: 3259.52))
        bezier133Path.addCurve(to: CGPoint(x: 620.2, y: 3258.53), controlPoint1: CGPoint(x: 620.6, y: 3258.93), controlPoint2: CGPoint(x: 620.4, y: 3258.73))
        bezier133Path.addCurve(to: CGPoint(x: 619.08, y: 3257.4), controlPoint1: CGPoint(x: 619.83, y: 3258.15), controlPoint2: CGPoint(x: 619.46, y: 3257.77))
        bezier133Path.addCurve(to: CGPoint(x: 618.52, y: 3256.86), controlPoint1: CGPoint(x: 618.89, y: 3257.22), controlPoint2: CGPoint(x: 618.7, y: 3257.04))
        bezier133Path.addCurve(to: CGPoint(x: 617.33, y: 3255.75), controlPoint1: CGPoint(x: 618.12, y: 3256.48), controlPoint2: CGPoint(x: 617.73, y: 3256.11))
        bezier133Path.addCurve(to: CGPoint(x: 616.81, y: 3255.29), controlPoint1: CGPoint(x: 617.16, y: 3255.59), controlPoint2: CGPoint(x: 616.99, y: 3255.44))
        bezier133Path.addCurve(to: CGPoint(x: 615.56, y: 3254.18), controlPoint1: CGPoint(x: 616.4, y: 3254.91), controlPoint2: CGPoint(x: 615.98, y: 3254.54))
        bezier133Path.addCurve(to: CGPoint(x: 615.12, y: 3253.82), controlPoint1: CGPoint(x: 615.41, y: 3254.06), controlPoint2: CGPoint(x: 615.26, y: 3253.94))
        bezier133Path.addCurve(to: CGPoint(x: 613.75, y: 3252.71), controlPoint1: CGPoint(x: 614.67, y: 3253.45), controlPoint2: CGPoint(x: 614.21, y: 3253.07))
        bezier133Path.addCurve(to: CGPoint(x: 613.45, y: 3252.49), controlPoint1: CGPoint(x: 613.65, y: 3252.64), controlPoint2: CGPoint(x: 613.55, y: 3252.56))
        bezier133Path.addCurve(to: CGPoint(x: 611.92, y: 3251.33), controlPoint1: CGPoint(x: 612.94, y: 3252.09), controlPoint2: CGPoint(x: 612.43, y: 3251.7))
        bezier133Path.addCurve(to: CGPoint(x: 611.89, y: 3251.31), controlPoint1: CGPoint(x: 611.91, y: 3251.32), controlPoint2: CGPoint(x: 611.9, y: 3251.32))
        bezier133Path.addCurve(to: CGPoint(x: 600.61, y: 3245.07), controlPoint1: CGPoint(x: 608.29, y: 3248.71), controlPoint2: CGPoint(x: 604.52, y: 3246.62))
        bezier133Path.addCurve(to: CGPoint(x: 600.55, y: 3245.05), controlPoint1: CGPoint(x: 600.59, y: 3245.06), controlPoint2: CGPoint(x: 600.57, y: 3245.05))
        bezier133Path.addCurve(to: CGPoint(x: 600.54, y: 3245.04), controlPoint1: CGPoint(x: 600.55, y: 3245.05), controlPoint2: CGPoint(x: 600.55, y: 3245.04))
        bezier133Path.addCurve(to: CGPoint(x: 593.86, y: 3242.94), controlPoint1: CGPoint(x: 598.36, y: 3244.18), controlPoint2: CGPoint(x: 596.13, y: 3243.48))
        bezier133Path.addCurve(to: CGPoint(x: 593.85, y: 3242.94), controlPoint1: CGPoint(x: 593.85, y: 3242.94), controlPoint2: CGPoint(x: 593.85, y: 3242.94))
        bezier133Path.addCurve(to: CGPoint(x: 591.64, y: 3242.48), controlPoint1: CGPoint(x: 593.12, y: 3242.77), controlPoint2: CGPoint(x: 592.38, y: 3242.62))
        bezier133Path.addCurve(to: CGPoint(x: 591.26, y: 3242.42), controlPoint1: CGPoint(x: 591.51, y: 3242.46), controlPoint2: CGPoint(x: 591.38, y: 3242.44))
        bezier133Path.addCurve(to: CGPoint(x: 589.39, y: 3242.12), controlPoint1: CGPoint(x: 590.64, y: 3242.31), controlPoint2: CGPoint(x: 590.02, y: 3242.21))
        bezier133Path.addCurve(to: CGPoint(x: 588.83, y: 3242.06), controlPoint1: CGPoint(x: 589.21, y: 3242.1), controlPoint2: CGPoint(x: 589.02, y: 3242.08))
        bezier133Path.addCurve(to: CGPoint(x: 587.12, y: 3241.87), controlPoint1: CGPoint(x: 588.26, y: 3241.99), controlPoint2: CGPoint(x: 587.69, y: 3241.92))
        bezier133Path.addCurve(to: CGPoint(x: 586.44, y: 3241.82), controlPoint1: CGPoint(x: 586.9, y: 3241.85), controlPoint2: CGPoint(x: 586.67, y: 3241.84))
        bezier133Path.addCurve(to: CGPoint(x: 584.83, y: 3241.72), controlPoint1: CGPoint(x: 585.9, y: 3241.78), controlPoint2: CGPoint(x: 585.36, y: 3241.74))
        bezier133Path.addCurve(to: CGPoint(x: 584.06, y: 3241.7), controlPoint1: CGPoint(x: 584.57, y: 3241.71), controlPoint2: CGPoint(x: 584.32, y: 3241.7))
        bezier133Path.addCurve(to: CGPoint(x: 582.5, y: 3241.68), controlPoint1: CGPoint(x: 583.55, y: 3241.68), controlPoint2: CGPoint(x: 583.02, y: 3241.68))
        bezier133Path.addCurve(to: CGPoint(x: 581.68, y: 3241.69), controlPoint1: CGPoint(x: 582.23, y: 3241.68), controlPoint2: CGPoint(x: 581.95, y: 3241.68))
        bezier133Path.addCurve(to: CGPoint(x: 580.16, y: 3241.74), controlPoint1: CGPoint(x: 581.17, y: 3241.7), controlPoint2: CGPoint(x: 580.67, y: 3241.71))
        bezier133Path.addCurve(to: CGPoint(x: 579.29, y: 3241.79), controlPoint1: CGPoint(x: 579.87, y: 3241.76), controlPoint2: CGPoint(x: 579.58, y: 3241.77))
        bezier133Path.addCurve(to: CGPoint(x: 577.78, y: 3241.91), controlPoint1: CGPoint(x: 578.79, y: 3241.82), controlPoint2: CGPoint(x: 578.28, y: 3241.86))
        bezier133Path.addCurve(to: CGPoint(x: 576.88, y: 3242), controlPoint1: CGPoint(x: 577.48, y: 3241.94), controlPoint2: CGPoint(x: 577.18, y: 3241.97))
        bezier133Path.addCurve(to: CGPoint(x: 575.38, y: 3242.19), controlPoint1: CGPoint(x: 576.38, y: 3242.06), controlPoint2: CGPoint(x: 575.88, y: 3242.12))
        bezier133Path.addCurve(to: CGPoint(x: 574.46, y: 3242.32), controlPoint1: CGPoint(x: 575.07, y: 3242.23), controlPoint2: CGPoint(x: 574.76, y: 3242.27))
        bezier133Path.addCurve(to: CGPoint(x: 572.94, y: 3242.58), controlPoint1: CGPoint(x: 573.95, y: 3242.4), controlPoint2: CGPoint(x: 573.44, y: 3242.49))
        bezier133Path.addCurve(to: CGPoint(x: 572.02, y: 3242.75), controlPoint1: CGPoint(x: 572.63, y: 3242.63), controlPoint2: CGPoint(x: 572.32, y: 3242.69))
        bezier133Path.addCurve(to: CGPoint(x: 570.45, y: 3243.08), controlPoint1: CGPoint(x: 571.5, y: 3242.85), controlPoint2: CGPoint(x: 570.98, y: 3242.96))
        bezier133Path.addCurve(to: CGPoint(x: 569.56, y: 3243.28), controlPoint1: CGPoint(x: 570.15, y: 3243.15), controlPoint2: CGPoint(x: 569.86, y: 3243.21))
        bezier133Path.addCurve(to: CGPoint(x: 567.91, y: 3243.7), controlPoint1: CGPoint(x: 569.01, y: 3243.41), controlPoint2: CGPoint(x: 568.46, y: 3243.56))
        bezier133Path.addCurve(to: CGPoint(x: 567.08, y: 3243.92), controlPoint1: CGPoint(x: 567.63, y: 3243.77), controlPoint2: CGPoint(x: 567.36, y: 3243.85))
        bezier133Path.addCurve(to: CGPoint(x: 565.17, y: 3244.49), controlPoint1: CGPoint(x: 566.44, y: 3244.1), controlPoint2: CGPoint(x: 565.81, y: 3244.3))
        bezier133Path.addCurve(to: CGPoint(x: 564.58, y: 3244.68), controlPoint1: CGPoint(x: 564.98, y: 3244.56), controlPoint2: CGPoint(x: 564.78, y: 3244.61))
        bezier133Path.addCurve(to: CGPoint(x: 562.05, y: 3245.54), controlPoint1: CGPoint(x: 563.74, y: 3244.95), controlPoint2: CGPoint(x: 562.89, y: 3245.24))
        bezier133Path.addCurve(to: CGPoint(x: 562.04, y: 3245.54), controlPoint1: CGPoint(x: 562.04, y: 3245.54), controlPoint2: CGPoint(x: 562.04, y: 3245.54))
        bezier133Path.addCurve(to: CGPoint(x: 561.57, y: 3245.72), controlPoint1: CGPoint(x: 561.88, y: 3245.6), controlPoint2: CGPoint(x: 561.73, y: 3245.66))
        bezier133Path.addCurve(to: CGPoint(x: 559.6, y: 3246.47), controlPoint1: CGPoint(x: 560.92, y: 3245.96), controlPoint2: CGPoint(x: 560.26, y: 3246.21))
        bezier133Path.addCurve(to: CGPoint(x: 559.17, y: 3246.66), controlPoint1: CGPoint(x: 559.46, y: 3246.53), controlPoint2: CGPoint(x: 559.31, y: 3246.59))
        bezier133Path.addCurve(to: CGPoint(x: 557.14, y: 3247.51), controlPoint1: CGPoint(x: 558.49, y: 3246.93), controlPoint2: CGPoint(x: 557.82, y: 3247.21))
        bezier133Path.addCurve(to: CGPoint(x: 556.73, y: 3247.7), controlPoint1: CGPoint(x: 557.01, y: 3247.57), controlPoint2: CGPoint(x: 556.87, y: 3247.64))
        bezier133Path.addCurve(to: CGPoint(x: 554.67, y: 3248.64), controlPoint1: CGPoint(x: 556.05, y: 3248), controlPoint2: CGPoint(x: 555.36, y: 3248.31))
        bezier133Path.addCurve(to: CGPoint(x: 554.31, y: 3248.82), controlPoint1: CGPoint(x: 554.55, y: 3248.7), controlPoint2: CGPoint(x: 554.43, y: 3248.76))
        bezier133Path.addCurve(to: CGPoint(x: 552.17, y: 3249.88), controlPoint1: CGPoint(x: 553.6, y: 3249.16), controlPoint2: CGPoint(x: 552.89, y: 3249.51))
        bezier133Path.addCurve(to: CGPoint(x: 551.8, y: 3250.08), controlPoint1: CGPoint(x: 552.05, y: 3249.94), controlPoint2: CGPoint(x: 551.93, y: 3250.01))
        bezier133Path.addCurve(to: CGPoint(x: 549.66, y: 3251.22), controlPoint1: CGPoint(x: 551.09, y: 3250.45), controlPoint2: CGPoint(x: 550.37, y: 3250.82))
        bezier133Path.addCurve(to: CGPoint(x: 549.38, y: 3251.39), controlPoint1: CGPoint(x: 549.56, y: 3251.27), controlPoint2: CGPoint(x: 549.47, y: 3251.33))
        bezier133Path.addCurve(to: CGPoint(x: 547.13, y: 3252.66), controlPoint1: CGPoint(x: 548.63, y: 3251.8), controlPoint2: CGPoint(x: 547.88, y: 3252.22))
        bezier133Path.addCurve(to: CGPoint(x: 546.81, y: 3252.86), controlPoint1: CGPoint(x: 547.02, y: 3252.73), controlPoint2: CGPoint(x: 546.91, y: 3252.8))
        bezier133Path.addCurve(to: CGPoint(x: 544.58, y: 3254.21), controlPoint1: CGPoint(x: 546.07, y: 3253.29), controlPoint2: CGPoint(x: 545.33, y: 3253.74))
        bezier133Path.addCurve(to: CGPoint(x: 544.32, y: 3254.37), controlPoint1: CGPoint(x: 544.5, y: 3254.26), controlPoint2: CGPoint(x: 544.41, y: 3254.32))
        bezier133Path.addCurve(to: CGPoint(x: 542.02, y: 3255.85), controlPoint1: CGPoint(x: 543.56, y: 3254.85), controlPoint2: CGPoint(x: 542.79, y: 3255.35))
        bezier133Path.addCurve(to: CGPoint(x: 541.42, y: 3256.26), controlPoint1: CGPoint(x: 541.82, y: 3255.98), controlPoint2: CGPoint(x: 541.62, y: 3256.13))
        bezier133Path.addCurve(to: CGPoint(x: 539.44, y: 3257.6), controlPoint1: CGPoint(x: 540.76, y: 3256.7), controlPoint2: CGPoint(x: 540.1, y: 3257.14))
        bezier133Path.addCurve(to: CGPoint(x: 538.81, y: 3258.05), controlPoint1: CGPoint(x: 539.23, y: 3257.75), controlPoint2: CGPoint(x: 539.02, y: 3257.91))
        bezier133Path.addCurve(to: CGPoint(x: 536.85, y: 3259.46), controlPoint1: CGPoint(x: 538.16, y: 3258.51), controlPoint2: CGPoint(x: 537.51, y: 3258.98))
        bezier133Path.addCurve(to: CGPoint(x: 536.16, y: 3259.98), controlPoint1: CGPoint(x: 536.62, y: 3259.63), controlPoint2: CGPoint(x: 536.39, y: 3259.81))
        bezier133Path.addCurve(to: CGPoint(x: 534.24, y: 3261.42), controlPoint1: CGPoint(x: 535.52, y: 3260.46), controlPoint2: CGPoint(x: 534.89, y: 3260.92))
        bezier133Path.addCurve(to: CGPoint(x: 532.83, y: 3262.53), controlPoint1: CGPoint(x: 533.77, y: 3261.78), controlPoint2: CGPoint(x: 533.3, y: 3262.16))
        bezier133Path.addCurve(to: CGPoint(x: 531.62, y: 3263.48), controlPoint1: CGPoint(x: 532.43, y: 3262.85), controlPoint2: CGPoint(x: 532.03, y: 3263.15))
        bezier133Path.addCurve(to: CGPoint(x: 530.25, y: 3264.61), controlPoint1: CGPoint(x: 531.17, y: 3263.85), controlPoint2: CGPoint(x: 530.71, y: 3264.23))
        bezier133Path.addCurve(to: CGPoint(x: 528.98, y: 3265.65), controlPoint1: CGPoint(x: 529.83, y: 3264.96), controlPoint2: CGPoint(x: 529.41, y: 3265.3))
        bezier133Path.addCurve(to: CGPoint(x: 527.9, y: 3266.58), controlPoint1: CGPoint(x: 528.63, y: 3265.95), controlPoint2: CGPoint(x: 528.26, y: 3266.27))
        bezier133Path.addCurve(to: CGPoint(x: 526.33, y: 3267.93), controlPoint1: CGPoint(x: 527.38, y: 3267.02), controlPoint2: CGPoint(x: 526.86, y: 3267.47))
        bezier133Path.addCurve(to: CGPoint(x: 524.46, y: 3269.6), controlPoint1: CGPoint(x: 525.71, y: 3268.47), controlPoint2: CGPoint(x: 525.09, y: 3269.04))
        bezier133Path.addCurve(to: CGPoint(x: 523.67, y: 3270.31), controlPoint1: CGPoint(x: 524.2, y: 3269.84), controlPoint2: CGPoint(x: 523.94, y: 3270.07))
        bezier133Path.addCurve(to: CGPoint(x: 520.99, y: 3272.79), controlPoint1: CGPoint(x: 522.78, y: 3271.12), controlPoint2: CGPoint(x: 521.89, y: 3271.95))
        bezier133Path.addCurve(to: CGPoint(x: 512.6, y: 3281.2), controlPoint1: CGPoint(x: 518.22, y: 3275.42), controlPoint2: CGPoint(x: 515.42, y: 3278.23))
        bezier133Path.addCurve(to: CGPoint(x: 501.42, y: 3293.81), controlPoint1: CGPoint(x: 508.9, y: 3285.1), controlPoint2: CGPoint(x: 505.17, y: 3289.3))
        bezier133Path.addCurve(to: CGPoint(x: 501.15, y: 3294.12), controlPoint1: CGPoint(x: 501.33, y: 3293.92), controlPoint2: CGPoint(x: 501.24, y: 3294.02))
        bezier133Path.addCurve(to: CGPoint(x: 524.45, y: 3245.11), controlPoint1: CGPoint(x: 508.45, y: 3272.35), controlPoint2: CGPoint(x: 516.19, y: 3256.45))
        bezier133Path.addCurve(to: CGPoint(x: 596.94, y: 3225.54), controlPoint1: CGPoint(x: 545.07, y: 3216.75), controlPoint2: CGPoint(x: 568.87, y: 3216.94))
        bezier133Path.addCurve(to: CGPoint(x: 647.4, y: 3262.13), controlPoint1: CGPoint(x: 613.89, y: 3230.74), controlPoint2: CGPoint(x: 637.88, y: 3236.56))
        bezier133Path.addCurve(to: CGPoint(x: 649.39, y: 3310.92), controlPoint1: CGPoint(x: 651.71, y: 3273.73), controlPoint2: CGPoint(x: 653.05, y: 3289.4))
        bezier133Path.addCurve(to: CGPoint(x: 648.79, y: 3314.29), controlPoint1: CGPoint(x: 649.2, y: 3312.03), controlPoint2: CGPoint(x: 649, y: 3313.15))
        bezier133Path.addCurve(to: CGPoint(x: 647.78, y: 3310.76), controlPoint1: CGPoint(x: 648.47, y: 3313.1), controlPoint2: CGPoint(x: 648.13, y: 3311.92))
        bezier133Path.close()
        fillColor.setFill()
        bezier133Path.fill()
        
        
        
        
        
        
        
        
        //// Bezier 134 Drawing
        let bezier134Path = UIBezierPath()
        bezier134Path.move(to: CGPoint(x: 1261.72, y: 268.73))
        bezier134Path.addCurve(to: CGPoint(x: 1243.19, y: 263.94), controlPoint1: CGPoint(x: 1256.02, y: 264.94), controlPoint2: CGPoint(x: 1249.43, y: 263.98))
        bezier134Path.addCurve(to: CGPoint(x: 1243.18, y: 263.83), controlPoint1: CGPoint(x: 1243.18, y: 263.9), controlPoint2: CGPoint(x: 1243.18, y: 263.87))
        bezier134Path.addCurve(to: CGPoint(x: 1226.95, y: 159.94), controlPoint1: CGPoint(x: 1242.16, y: 227), controlPoint2: CGPoint(x: 1237.33, y: 187.36))
        bezier134Path.addCurve(to: CGPoint(x: 1064.43, y: 62.93), controlPoint1: CGPoint(x: 1204.51, y: 100.66), controlPoint2: CGPoint(x: 1141.52, y: 62.02))
        bezier134Path.addCurve(to: CGPoint(x: 901.9, y: 159.94), controlPoint1: CGPoint(x: 987.32, y: 62.02), controlPoint2: CGPoint(x: 924.35, y: 100.66))
        bezier134Path.addCurve(to: CGPoint(x: 885.68, y: 263.99), controlPoint1: CGPoint(x: 891.5, y: 187.4), controlPoint2: CGPoint(x: 886.68, y: 227.12))
        bezier134Path.addCurve(to: CGPoint(x: 864.11, y: 268.73), controlPoint1: CGPoint(x: 878.57, y: 263.75), controlPoint2: CGPoint(x: 870.76, y: 264.32))
        bezier134Path.addCurve(to: CGPoint(x: 869.5, y: 384.71), controlPoint1: CGPoint(x: 839.47, y: 285.16), controlPoint2: CGPoint(x: 855.85, y: 365.15))
        bezier134Path.addCurve(to: CGPoint(x: 913.57, y: 412.42), controlPoint1: CGPoint(x: 887, y: 409.75), controlPoint2: CGPoint(x: 898.09, y: 389.34))
        bezier134Path.addCurve(to: CGPoint(x: 943.48, y: 467.85), controlPoint1: CGPoint(x: 921, y: 429.38), controlPoint2: CGPoint(x: 930.61, y: 447.77))
        bezier134Path.addCurve(to: CGPoint(x: 951.57, y: 493.06), controlPoint1: CGPoint(x: 946.68, y: 476.02), controlPoint2: CGPoint(x: 949.51, y: 484.33))
        bezier134Path.addCurve(to: CGPoint(x: 952.14, y: 493.64), controlPoint1: CGPoint(x: 951.76, y: 493.26), controlPoint2: CGPoint(x: 951.95, y: 493.45))
        bezier134Path.addCurve(to: CGPoint(x: 951.57, y: 492.38), controlPoint1: CGPoint(x: 951.95, y: 493.22), controlPoint2: CGPoint(x: 951.75, y: 492.8))
        bezier134Path.addCurve(to: CGPoint(x: 1191.35, y: 492.85), controlPoint1: CGPoint(x: 1031.58, y: 446.83), controlPoint2: CGPoint(x: 1111.53, y: 441.36))
        bezier134Path.addCurve(to: CGPoint(x: 1191.29, y: 493.54), controlPoint1: CGPoint(x: 1191.33, y: 493.09), controlPoint2: CGPoint(x: 1191.31, y: 493.32))
        bezier134Path.addCurve(to: CGPoint(x: 1191.32, y: 493.53), controlPoint1: CGPoint(x: 1191.3, y: 493.54), controlPoint2: CGPoint(x: 1191.31, y: 493.53))
        bezier134Path.addCurve(to: CGPoint(x: 1192.3, y: 456.42), controlPoint1: CGPoint(x: 1193.09, y: 480.29), controlPoint2: CGPoint(x: 1192.3, y: 467.89))
        bezier134Path.addCurve(to: CGPoint(x: 1218.22, y: 405.32), controlPoint1: CGPoint(x: 1203.36, y: 437.99), controlPoint2: CGPoint(x: 1211.71, y: 421.03))
        bezier134Path.addCurve(to: CGPoint(x: 1256.32, y: 384.71), controlPoint1: CGPoint(x: 1230.8, y: 393.96), controlPoint2: CGPoint(x: 1241.16, y: 406.42))
        bezier134Path.addCurve(to: CGPoint(x: 1261.72, y: 268.73), controlPoint1: CGPoint(x: 1269.99, y: 365.15), controlPoint2: CGPoint(x: 1286.37, y: 285.16))
        bezier134Path.close()
        if bezier134Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier134Path.fill()
        
        
        //// Bezier 135 Drawing
        
        
        //// Bezier 136 Drawing
        
        
        //// Bezier 137 Drawing
        
        
        //// Bezier 138 Drawing
        
        
        //// Bezier 139 Drawing
        let bezier139Path = UIBezierPath()
        bezier139Path.move(to: CGPoint(x: 1074.01, y: 692.13))
        bezier139Path.addCurve(to: CGPoint(x: 1076.97, y: 692.13), controlPoint1: CGPoint(x: 1074.06, y: 692.18), controlPoint2: CGPoint(x: 1076.91, y: 692.18))
        bezier139Path.addCurve(to: CGPoint(x: 1264.94, y: 707.68), controlPoint1: CGPoint(x: 1139.6, y: 686.95), controlPoint2: CGPoint(x: 1202.54, y: 709.19))
        bezier139Path.addCurve(to: CGPoint(x: 1264.86, y: 706.07), controlPoint1: CGPoint(x: 1264.93, y: 707.14), controlPoint2: CGPoint(x: 1264.89, y: 706.6))
        bezier139Path.addCurve(to: CGPoint(x: 1243.72, y: 671.79), controlPoint1: CGPoint(x: 1264.09, y: 692.14), controlPoint2: CGPoint(x: 1256.36, y: 677.92))
        bezier139Path.addCurve(to: CGPoint(x: 1243.71, y: 671.8), controlPoint1: CGPoint(x: 1243.72, y: 671.79), controlPoint2: CGPoint(x: 1243.71, y: 671.8))
        bezier139Path.addCurve(to: CGPoint(x: 1243.85, y: 671.94), controlPoint1: CGPoint(x: 1243.76, y: 671.85), controlPoint2: CGPoint(x: 1243.81, y: 671.89))
        bezier139Path.addCurve(to: CGPoint(x: 1243.47, y: 672.57), controlPoint1: CGPoint(x: 1243.71, y: 672.18), controlPoint2: CGPoint(x: 1243.6, y: 672.34))
        bezier139Path.addCurve(to: CGPoint(x: 1215.45, y: 692.02), controlPoint1: CGPoint(x: 1238.06, y: 690.84), controlPoint2: CGPoint(x: 1227.38, y: 693.36))
        bezier139Path.addCurve(to: CGPoint(x: 1193.56, y: 688.1), controlPoint1: CGPoint(x: 1208.44, y: 691.99), controlPoint2: CGPoint(x: 1201.05, y: 690.11))
        bezier139Path.addCurve(to: CGPoint(x: 1193.43, y: 688.08), controlPoint1: CGPoint(x: 1193.52, y: 688.1), controlPoint2: CGPoint(x: 1193.47, y: 688.08))
        bezier139Path.addCurve(to: CGPoint(x: 1166.89, y: 683.89), controlPoint1: CGPoint(x: 1184.48, y: 686.93), controlPoint2: CGPoint(x: 1175.65, y: 685.47))
        bezier139Path.addCurve(to: CGPoint(x: 958.55, y: 688.08), controlPoint1: CGPoint(x: 1165.43, y: 683.98), controlPoint2: CGPoint(x: 1033.64, y: 668.56))
        bezier139Path.addCurve(to: CGPoint(x: 908.51, y: 672.51), controlPoint1: CGPoint(x: 939.92, y: 692.93), controlPoint2: CGPoint(x: 917.18, y: 701.89))
        bezier139Path.addCurve(to: CGPoint(x: 908.15, y: 671.94), controlPoint1: CGPoint(x: 908.39, y: 672.3), controlPoint2: CGPoint(x: 908.26, y: 672.16))
        bezier139Path.addCurve(to: CGPoint(x: 908.25, y: 671.8), controlPoint1: CGPoint(x: 908.18, y: 671.89), controlPoint2: CGPoint(x: 908.22, y: 671.85))
        bezier139Path.addCurve(to: CGPoint(x: 908.24, y: 671.77), controlPoint1: CGPoint(x: 908.25, y: 671.79), controlPoint2: CGPoint(x: 908.25, y: 671.78))
        bezier139Path.addCurve(to: CGPoint(x: 907.93, y: 671.45), controlPoint1: CGPoint(x: 908.14, y: 671.66), controlPoint2: CGPoint(x: 908.03, y: 671.56))
        bezier139Path.addCurve(to: CGPoint(x: 884.43, y: 704.58), controlPoint1: CGPoint(x: 894.56, y: 677.54), controlPoint2: CGPoint(x: 884.91, y: 690.14))
        bezier139Path.addCurve(to: CGPoint(x: 884.4, y: 705.14), controlPoint1: CGPoint(x: 884.42, y: 704.77), controlPoint2: CGPoint(x: 884.4, y: 704.95))
        bezier139Path.addCurve(to: CGPoint(x: 1074.01, y: 692.13), controlPoint1: CGPoint(x: 946.8, y: 706.65), controlPoint2: CGPoint(x: 1011.39, y: 686.95))
        bezier139Path.close()
        fillColor.setFill()
        bezier139Path.fill()
        
        
        //// Bezier 140 Drawing
        let bezier140Path = UIBezierPath()
        bezier140Path.move(to: CGPoint(x: 908.16, y: 671.94))
        bezier140Path.addCurve(to: CGPoint(x: 908.51, y: 672.51), controlPoint1: CGPoint(x: 908.26, y: 672.16), controlPoint2: CGPoint(x: 908.39, y: 672.29))
        bezier140Path.addCurve(to: CGPoint(x: 958.56, y: 688.08), controlPoint1: CGPoint(x: 917.19, y: 701.89), controlPoint2: CGPoint(x: 939.92, y: 692.93))
        bezier140Path.addCurve(to: CGPoint(x: 1166.89, y: 683.89), controlPoint1: CGPoint(x: 1033.64, y: 668.56), controlPoint2: CGPoint(x: 1165.44, y: 683.98))
        bezier140Path.addCurve(to: CGPoint(x: 1193.43, y: 688.08), controlPoint1: CGPoint(x: 1175.65, y: 685.47), controlPoint2: CGPoint(x: 1184.49, y: 686.93))
        bezier140Path.addCurve(to: CGPoint(x: 1193.57, y: 688.1), controlPoint1: CGPoint(x: 1193.48, y: 688.08), controlPoint2: CGPoint(x: 1193.52, y: 688.1))
        bezier140Path.addCurve(to: CGPoint(x: 1215.45, y: 692.01), controlPoint1: CGPoint(x: 1201.06, y: 690.11), controlPoint2: CGPoint(x: 1208.44, y: 691.99))
        bezier140Path.addCurve(to: CGPoint(x: 1243.47, y: 672.57), controlPoint1: CGPoint(x: 1227.38, y: 693.36), controlPoint2: CGPoint(x: 1238.06, y: 690.84))
        bezier140Path.addCurve(to: CGPoint(x: 1243.85, y: 671.94), controlPoint1: CGPoint(x: 1243.61, y: 672.34), controlPoint2: CGPoint(x: 1243.72, y: 672.18))
        bezier140Path.addCurve(to: CGPoint(x: 1243.72, y: 671.8), controlPoint1: CGPoint(x: 1243.81, y: 671.89), controlPoint2: CGPoint(x: 1243.76, y: 671.85))
        bezier140Path.addCurve(to: CGPoint(x: 1243.72, y: 671.79), controlPoint1: CGPoint(x: 1243.72, y: 671.8), controlPoint2: CGPoint(x: 1243.72, y: 671.79))
        bezier140Path.addCurve(to: CGPoint(x: 1243.85, y: 671.45), controlPoint1: CGPoint(x: 1243.77, y: 671.66), controlPoint2: CGPoint(x: 1243.81, y: 671.57))
        bezier140Path.addCurve(to: CGPoint(x: 1241.04, y: 668.36), controlPoint1: CGPoint(x: 1242.83, y: 670.45), controlPoint2: CGPoint(x: 1242.03, y: 669.37))
        bezier140Path.addCurve(to: CGPoint(x: 1222.89, y: 646.85), controlPoint1: CGPoint(x: 1235.29, y: 661.05), controlPoint2: CGPoint(x: 1229.11, y: 653.94))
        bezier140Path.addCurve(to: CGPoint(x: 1188.29, y: 531.14), controlPoint1: CGPoint(x: 1197.94, y: 612.92), controlPoint2: CGPoint(x: 1186.28, y: 574.34))
        bezier140Path.addCurve(to: CGPoint(x: 1188.25, y: 531.33), controlPoint1: CGPoint(x: 1188.27, y: 531.2), controlPoint2: CGPoint(x: 1188.27, y: 531.28))
        bezier140Path.addCurve(to: CGPoint(x: 1187.96, y: 530.42), controlPoint1: CGPoint(x: 1188.16, y: 531.03), controlPoint2: CGPoint(x: 1188.06, y: 530.72))
        bezier140Path.addCurve(to: CGPoint(x: 1187.96, y: 530.43), controlPoint1: CGPoint(x: 1187.96, y: 530.42), controlPoint2: CGPoint(x: 1187.96, y: 530.43))
        bezier140Path.addCurve(to: CGPoint(x: 1187.62, y: 529.37), controlPoint1: CGPoint(x: 1187.86, y: 530.08), controlPoint2: CGPoint(x: 1187.74, y: 529.72))
        bezier140Path.addCurve(to: CGPoint(x: 1072.92, y: 472.7), controlPoint1: CGPoint(x: 1175.61, y: 494.18), controlPoint2: CGPoint(x: 1120.77, y: 469.63))
        bezier140Path.addCurve(to: CGPoint(x: 1060.81, y: 474.15), controlPoint1: CGPoint(x: 1068.82, y: 472.98), controlPoint2: CGPoint(x: 1064.78, y: 473.46))
        bezier140Path.addCurve(to: CGPoint(x: 962.12, y: 514.92), controlPoint1: CGPoint(x: 1025.31, y: 480.3), controlPoint2: CGPoint(x: 989.63, y: 488.42))
        bezier140Path.addCurve(to: CGPoint(x: 962.09, y: 514.97), controlPoint1: CGPoint(x: 962.11, y: 514.94), controlPoint2: CGPoint(x: 962.1, y: 514.95))
        bezier140Path.addCurve(to: CGPoint(x: 929.12, y: 646.85), controlPoint1: CGPoint(x: 968.05, y: 564.75), controlPoint2: CGPoint(x: 957.15, y: 608.75))
        bezier140Path.addCurve(to: CGPoint(x: 910.98, y: 668.36), controlPoint1: CGPoint(x: 922.9, y: 653.94), controlPoint2: CGPoint(x: 916.73, y: 661.05))
        bezier140Path.addCurve(to: CGPoint(x: 908.17, y: 671.45), controlPoint1: CGPoint(x: 910, y: 669.37), controlPoint2: CGPoint(x: 909.18, y: 670.45))
        bezier140Path.addCurve(to: CGPoint(x: 908.26, y: 671.76), controlPoint1: CGPoint(x: 908.19, y: 671.56), controlPoint2: CGPoint(x: 908.23, y: 671.65))
        bezier140Path.addCurve(to: CGPoint(x: 908.27, y: 671.8), controlPoint1: CGPoint(x: 908.26, y: 671.78), controlPoint2: CGPoint(x: 908.27, y: 671.79))
        bezier140Path.addCurve(to: CGPoint(x: 908.16, y: 671.94), controlPoint1: CGPoint(x: 908.23, y: 671.85), controlPoint2: CGPoint(x: 908.19, y: 671.89))
        bezier140Path.close()
        if bezier140Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier140Path.fill()
        
        
        //// Bezier 141 Drawing
        let bezier141Path = UIBezierPath()
        bezier141Path.move(to: CGPoint(x: 1187.62, y: 529.37))
        bezier141Path.addCurve(to: CGPoint(x: 1187.96, y: 530.42), controlPoint1: CGPoint(x: 1187.74, y: 529.72), controlPoint2: CGPoint(x: 1187.85, y: 530.07))
        bezier141Path.addCurve(to: CGPoint(x: 1188.25, y: 531.33), controlPoint1: CGPoint(x: 1188.06, y: 530.73), controlPoint2: CGPoint(x: 1188.15, y: 531.03))
        bezier141Path.addCurve(to: CGPoint(x: 1188.28, y: 531.14), controlPoint1: CGPoint(x: 1188.26, y: 531.27), controlPoint2: CGPoint(x: 1188.27, y: 531.2))
        bezier141Path.addCurve(to: CGPoint(x: 1188.75, y: 528.13), controlPoint1: CGPoint(x: 1188.47, y: 530.28), controlPoint2: CGPoint(x: 1188.61, y: 529.14))
        bezier141Path.addCurve(to: CGPoint(x: 1189.01, y: 526.63), controlPoint1: CGPoint(x: 1188.83, y: 527.56), controlPoint2: CGPoint(x: 1188.91, y: 527.04))
        bezier141Path.addCurve(to: CGPoint(x: 1191.29, y: 493.54), controlPoint1: CGPoint(x: 1196.2, y: 495.21), controlPoint2: CGPoint(x: 1190.37, y: 506.57))
        bezier141Path.addCurve(to: CGPoint(x: 1191.35, y: 492.85), controlPoint1: CGPoint(x: 1191.31, y: 493.32), controlPoint2: CGPoint(x: 1191.33, y: 493.09))
        bezier141Path.addCurve(to: CGPoint(x: 951.57, y: 492.38), controlPoint1: CGPoint(x: 1111.53, y: 441.36), controlPoint2: CGPoint(x: 1031.58, y: 446.83))
        bezier141Path.addCurve(to: CGPoint(x: 952.14, y: 493.64), controlPoint1: CGPoint(x: 951.76, y: 492.8), controlPoint2: CGPoint(x: 951.95, y: 493.22))
        bezier141Path.addCurve(to: CGPoint(x: 961.83, y: 514.95), controlPoint1: CGPoint(x: 955.35, y: 500.75), controlPoint2: CGPoint(x: 958.6, y: 507.86))
        bezier141Path.addCurve(to: CGPoint(x: 961.85, y: 514.93), controlPoint1: CGPoint(x: 961.84, y: 514.94), controlPoint2: CGPoint(x: 961.85, y: 514.93))
        bezier141Path.addCurve(to: CGPoint(x: 1060.55, y: 474.15), controlPoint1: CGPoint(x: 989.36, y: 488.43), controlPoint2: CGPoint(x: 1025.04, y: 480.3))
        bezier141Path.addCurve(to: CGPoint(x: 1072.91, y: 472.7), controlPoint1: CGPoint(x: 1064.6, y: 473.45), controlPoint2: CGPoint(x: 1068.73, y: 472.97))
        bezier141Path.addCurve(to: CGPoint(x: 1187.62, y: 529.37), controlPoint1: CGPoint(x: 1120.77, y: 469.63), controlPoint2: CGPoint(x: 1175.61, y: 494.18))
        bezier141Path.close()
        fillColor.setFill()
        bezier141Path.fill()
        
        
        //// Bezier 142 Drawing
        let bezier142Path = UIBezierPath()
        bezier142Path.move(to: CGPoint(x: 163.51, y: 1756.41))
        bezier142Path.addCurve(to: CGPoint(x: 126.01, y: 1718.66), controlPoint1: CGPoint(x: 145.28, y: 1748.71), controlPoint2: CGPoint(x: 132, y: 1734.55))
        bezier142Path.addCurve(to: CGPoint(x: 41.32, y: 1898.4), controlPoint1: CGPoint(x: 98.49, y: 1774.85), controlPoint2: CGPoint(x: 57.14, y: 1838.48))
        bezier142Path.addCurve(to: CGPoint(x: 45.82, y: 2011.27), controlPoint1: CGPoint(x: 30.8, y: 1938.23), controlPoint2: CGPoint(x: 40.48, y: 1974.24))
        bezier142Path.addCurve(to: CGPoint(x: 78.64, y: 2015.64), controlPoint1: CGPoint(x: 49.46, y: 2036.56), controlPoint2: CGPoint(x: 65.11, y: 2027.97))
        bezier142Path.addCurve(to: CGPoint(x: 93.25, y: 1957.2), controlPoint1: CGPoint(x: 96.91, y: 1999.07), controlPoint2: CGPoint(x: 89.9, y: 1977.16))
        bezier142Path.addCurve(to: CGPoint(x: 108.55, y: 1902.12), controlPoint1: CGPoint(x: 96.36, y: 1938.49), controlPoint2: CGPoint(x: 101.68, y: 1919.81))
        bezier142Path.addCurve(to: CGPoint(x: 151.22, y: 1861.74), controlPoint1: CGPoint(x: 116.19, y: 1882.48), controlPoint2: CGPoint(x: 127.63, y: 1862.17))
        bezier142Path.addCurve(to: CGPoint(x: 179.83, y: 1904.07), controlPoint1: CGPoint(x: 178.08, y: 1861.26), controlPoint2: CGPoint(x: 175.01, y: 1886.64))
        bezier142Path.addCurve(to: CGPoint(x: 201.32, y: 1934.48), controlPoint1: CGPoint(x: 183.43, y: 1917), controlPoint2: CGPoint(x: 182.78, y: 1935.41))
        bezier142Path.addCurve(to: CGPoint(x: 216.4, y: 1901.46), controlPoint1: CGPoint(x: 222.23, y: 1933.44), controlPoint2: CGPoint(x: 215.61, y: 1913.59))
        bezier142Path.addCurve(to: CGPoint(x: 221.48, y: 1758.14), controlPoint1: CGPoint(x: 219.21, y: 1858.53), controlPoint2: CGPoint(x: 219.78, y: 1801.15))
        bezier142Path.addCurve(to: CGPoint(x: 220.12, y: 1755.27), controlPoint1: CGPoint(x: 221.05, y: 1757.1), controlPoint2: CGPoint(x: 220.6, y: 1756.14))
        bezier142Path.addCurve(to: CGPoint(x: 163.51, y: 1756.41), controlPoint1: CGPoint(x: 204.06, y: 1763.59), controlPoint2: CGPoint(x: 183.12, y: 1764.64))
        bezier142Path.close()
        if bezier142Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier142Path.fill()
        
        
        //// Bezier 143 Drawing
        let bezier143Path = UIBezierPath()
        bezier143Path.move(to: CGPoint(x: 328.55, y: 1405.84))
        bezier143Path.addCurve(to: CGPoint(x: 280.64, y: 1333.48), controlPoint1: CGPoint(x: 301.99, y: 1388.08), controlPoint2: CGPoint(x: 285.36, y: 1361.29))
        bezier143Path.addCurve(to: CGPoint(x: 269.06, y: 1335.65), controlPoint1: CGPoint(x: 277.53, y: 1332.14), controlPoint2: CGPoint(x: 273.75, y: 1332.49))
        bezier143Path.addCurve(to: CGPoint(x: 142.35, y: 1660.77), controlPoint1: CGPoint(x: 206.46, y: 1429.71), controlPoint2: CGPoint(x: 170.54, y: 1551.7))
        bezier143Path.addCurve(to: CGPoint(x: 206.17, y: 1655.16), controlPoint1: CGPoint(x: 158.98, y: 1648.5), controlPoint2: CGPoint(x: 183.48, y: 1645.59))
        bezier143Path.addCurve(to: CGPoint(x: 247.24, y: 1712.79), controlPoint1: CGPoint(x: 231.87, y: 1665.97), controlPoint2: CGPoint(x: 247.72, y: 1689.57))
        bezier143Path.addCurve(to: CGPoint(x: 247.95, y: 1712.51), controlPoint1: CGPoint(x: 247.47, y: 1712.74), controlPoint2: CGPoint(x: 247.7, y: 1712.65))
        bezier143Path.addCurve(to: CGPoint(x: 372.58, y: 1504.77), controlPoint1: CGPoint(x: 273.79, y: 1637.91), controlPoint2: CGPoint(x: 325.4, y: 1566.4))
        bezier143Path.addCurve(to: CGPoint(x: 433.63, y: 1415.62), controlPoint1: CGPoint(x: 391.93, y: 1479.52), controlPoint2: CGPoint(x: 412.48, y: 1447.18))
        bezier143Path.addCurve(to: CGPoint(x: 328.55, y: 1405.84), controlPoint1: CGPoint(x: 402.16, y: 1430.52), controlPoint2: CGPoint(x: 361.8, y: 1428.04))
        bezier143Path.close()
        if bezier143Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier143Path.fill()
        
        
        //// Bezier 144 Drawing
        let bezier144Path = UIBezierPath()
        bezier144Path.move(to: CGPoint(x: 434.82, y: 1246.84))
        bezier144Path.addCurve(to: CGPoint(x: 338.09, y: 1233.61), controlPoint1: CGPoint(x: 404.45, y: 1226.55), controlPoint2: CGPoint(x: 368.14, y: 1222.74))
        bezier144Path.addCurve(to: CGPoint(x: 294.02, y: 1267.73), controlPoint1: CGPoint(x: 320.4, y: 1240.02), controlPoint2: CGPoint(x: 304.87, y: 1251.51))
        bezier144Path.addCurve(to: CGPoint(x: 280.64, y: 1333.49), controlPoint1: CGPoint(x: 280.88, y: 1287.42), controlPoint2: CGPoint(x: 276.79, y: 1310.79))
        bezier144Path.addCurve(to: CGPoint(x: 328.55, y: 1405.84), controlPoint1: CGPoint(x: 285.35, y: 1361.29), controlPoint2: CGPoint(x: 301.99, y: 1388.08))
        bezier144Path.addCurve(to: CGPoint(x: 433.63, y: 1415.62), controlPoint1: CGPoint(x: 361.81, y: 1428.04), controlPoint2: CGPoint(x: 402.16, y: 1430.52))
        bezier144Path.addCurve(to: CGPoint(x: 469.4, y: 1384.94), controlPoint1: CGPoint(x: 447.87, y: 1408.88), controlPoint2: CGPoint(x: 460.29, y: 1398.58))
        bezier144Path.addCurve(to: CGPoint(x: 480.78, y: 1309.98), controlPoint1: CGPoint(x: 484.35, y: 1362.58), controlPoint2: CGPoint(x: 487.6, y: 1335.46))
        bezier144Path.addCurve(to: CGPoint(x: 434.82, y: 1246.84), controlPoint1: CGPoint(x: 474.24, y: 1285.56), controlPoint2: CGPoint(x: 458.45, y: 1262.63))
        bezier144Path.close()
        bezier144Path.move(to: CGPoint(x: 460.09, y: 1378.72))
        bezier144Path.addCurve(to: CGPoint(x: 333.45, y: 1398.53), controlPoint1: CGPoint(x: 433.47, y: 1418.55), controlPoint2: CGPoint(x: 376.72, y: 1427.45))
        bezier144Path.addCurve(to: CGPoint(x: 303.29, y: 1273.95), controlPoint1: CGPoint(x: 290.18, y: 1369.6), controlPoint2: CGPoint(x: 276.67, y: 1313.78))
        bezier144Path.addCurve(to: CGPoint(x: 429.96, y: 1254.17), controlPoint1: CGPoint(x: 329.97, y: 1234.04), controlPoint2: CGPoint(x: 386.65, y: 1225.23))
        bezier144Path.addCurve(to: CGPoint(x: 460.09, y: 1378.72), controlPoint1: CGPoint(x: 473.21, y: 1283.07), controlPoint2: CGPoint(x: 486.77, y: 1338.82))
        bezier144Path.close()
        fillColor.setFill()
        bezier144Path.fill()
        
        
        //// Oval Drawing
        context.saveGState()
        //            context.translateBy(x: 381.7, y: 1321.56)
        //            context.rotate(by: 33.75 * CGFloat.pi/180)
        
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: -94.3, y: -86.8, width: 188.6, height: 173.6))
        ovalPath.apply(CGAffineTransform(rotationAngle: 33.75 * .pi/180))
        ovalPath.apply(CGAffineTransform(translationX: 381.7, y: 1321.56))
        if ovalPath.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
    
        ovalPath.fill()
        
        context.restoreGState()
        
        
        //// Bezier 145 Drawing
        let bezier145Path = UIBezierPath()
        bezier145Path.move(to: CGPoint(x: 206.17, y: 1655.16))
        bezier145Path.addCurve(to: CGPoint(x: 142.35, y: 1660.77), controlPoint1: CGPoint(x: 183.48, y: 1645.59), controlPoint2: CGPoint(x: 158.98, y: 1648.51))
        bezier145Path.addCurve(to: CGPoint(x: 126.21, y: 1681.07), controlPoint1: CGPoint(x: 135.32, y: 1665.95), controlPoint2: CGPoint(x: 129.69, y: 1672.78))
        bezier145Path.addCurve(to: CGPoint(x: 126.01, y: 1718.66), controlPoint1: CGPoint(x: 121.1, y: 1693.18), controlPoint2: CGPoint(x: 121.4, y: 1706.43))
        bezier145Path.addCurve(to: CGPoint(x: 163.52, y: 1756.41), controlPoint1: CGPoint(x: 132, y: 1734.55), controlPoint2: CGPoint(x: 145.28, y: 1748.71))
        bezier145Path.addCurve(to: CGPoint(x: 220.12, y: 1755.27), controlPoint1: CGPoint(x: 183.12, y: 1764.64), controlPoint2: CGPoint(x: 204.06, y: 1763.59))
        bezier145Path.addCurve(to: CGPoint(x: 243.52, y: 1730.48), controlPoint1: CGPoint(x: 230.53, y: 1749.87), controlPoint2: CGPoint(x: 238.9, y: 1741.44))
        bezier145Path.addCurve(to: CGPoint(x: 247.24, y: 1712.79), controlPoint1: CGPoint(x: 245.93, y: 1724.76), controlPoint2: CGPoint(x: 247.12, y: 1718.79))
        bezier145Path.addCurve(to: CGPoint(x: 206.17, y: 1655.16), controlPoint1: CGPoint(x: 247.71, y: 1689.57), controlPoint2: CGPoint(x: 231.87, y: 1665.98))
        bezier145Path.close()
        bezier145Path.move(to: CGPoint(x: 237.29, y: 1727.85))
        bezier145Path.addCurve(to: CGPoint(x: 165.5, y: 1751.75), controlPoint1: CGPoint(x: 226.61, y: 1753.22), controlPoint2: CGPoint(x: 194.44, y: 1763.94))
        bezier145Path.addCurve(to: CGPoint(x: 132.4, y: 1683.68), controlPoint1: CGPoint(x: 136.53, y: 1739.53), controlPoint2: CGPoint(x: 121.74, y: 1709.03))
        bezier145Path.addCurve(to: CGPoint(x: 204.23, y: 1659.83), controlPoint1: CGPoint(x: 143.11, y: 1658.27), controlPoint2: CGPoint(x: 175.28, y: 1647.61))
        bezier145Path.addCurve(to: CGPoint(x: 237.29, y: 1727.85), controlPoint1: CGPoint(x: 233.16, y: 1672.02), controlPoint2: CGPoint(x: 248.01, y: 1702.45))
        bezier145Path.close()
        fillColor.setFill()
        bezier145Path.fill()
        
        
        //// Oval 2 Drawing
        context.saveGState()
        //            context.translateBy(x: 184.85, y: 1703.49)
        //            context.rotate(by: 22.9 * CGFloat.pi/180)
        
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: -56.9, y: -49.85, width: 113.8, height: 99.7))
        oval2Path.apply(CGAffineTransform(rotationAngle: 22.9 * CGFloat.pi/180))
        oval2Path.apply(CGAffineTransform(translationX: 184.85, y: 1703.49))
        if oval2Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval2Path.fill()
        
        context.restoreGState()
        
        
        //// Bezier 146 Drawing
        let bezier146Path = UIBezierPath()
        bezier146Path.move(to: CGPoint(x: 772.64, y: 710.71))
        bezier146Path.addCurve(to: CGPoint(x: 777.59, y: 723.11), controlPoint1: CGPoint(x: 774.66, y: 714.7), controlPoint2: CGPoint(x: 776.31, y: 718.85))
        bezier146Path.addCurve(to: CGPoint(x: 772.64, y: 710.71), controlPoint1: CGPoint(x: 776.94, y: 716.94), controlPoint2: CGPoint(x: 774.57, y: 713.04))
        bezier146Path.close()
        if bezier146Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier146Path.fill()
        
        
        //// Bezier 147 Drawing
        let bezier147Path = UIBezierPath()
        bezier147Path.move(to: CGPoint(x: 581.56, y: 836.43))
        bezier147Path.addCurve(to: CGPoint(x: 568.3, y: 772.29), controlPoint1: CGPoint(x: 568.12, y: 818.21), controlPoint2: CGPoint(x: 564.1, y: 795.35))
        bezier147Path.addCurve(to: CGPoint(x: 482.15, y: 962.96), controlPoint1: CGPoint(x: 534.15, y: 833.16), controlPoint2: CGPoint(x: 512.12, y: 911.52))
        bezier147Path.addCurve(to: CGPoint(x: 347.56, y: 1203), controlPoint1: CGPoint(x: 435.98, y: 1042.23), controlPoint2: CGPoint(x: 392.32, y: 1122.94))
        bezier147Path.addCurve(to: CGPoint(x: 338.09, y: 1233.61), controlPoint1: CGPoint(x: 339.16, y: 1213.27), controlPoint2: CGPoint(x: 332.3, y: 1227.39))
        bezier147Path.addCurve(to: CGPoint(x: 434.82, y: 1246.84), controlPoint1: CGPoint(x: 368.14, y: 1222.74), controlPoint2: CGPoint(x: 404.45, y: 1226.55))
        bezier147Path.addCurve(to: CGPoint(x: 480.77, y: 1309.98), controlPoint1: CGPoint(x: 458.45, y: 1262.63), controlPoint2: CGPoint(x: 474.24, y: 1285.56))
        bezier147Path.addCurve(to: CGPoint(x: 490.97, y: 1308.53), controlPoint1: CGPoint(x: 484.33, y: 1313.71), controlPoint2: CGPoint(x: 487.7, y: 1312.66))
        bezier147Path.addCurve(to: CGPoint(x: 593.56, y: 1142.63), controlPoint1: CGPoint(x: 525.17, y: 1253.23), controlPoint2: CGPoint(x: 559.34, y: 1197.92))
        bezier147Path.addCurve(to: CGPoint(x: 656.45, y: 999.36), controlPoint1: CGPoint(x: 627.01, y: 1073.85), controlPoint2: CGPoint(x: 638.41, y: 1048.39))
        bezier147Path.addCurve(to: CGPoint(x: 721.91, y: 846.71), controlPoint1: CGPoint(x: 662.67, y: 976.71), controlPoint2: CGPoint(x: 694.12, y: 905.27))
        bezier147Path.addCurve(to: CGPoint(x: 581.56, y: 836.43), controlPoint1: CGPoint(x: 672.11, y: 879.43), controlPoint2: CGPoint(x: 610.38, y: 875.4))
        bezier147Path.close()
        if bezier147Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier147Path.fill()
        
        
        //// Group 17
        //// Bezier 148 Drawing
        let bezier148Path = UIBezierPath()
        bezier148Path.move(to: CGPoint(x: 780.39, y: 736.81))
        bezier148Path.addCurve(to: CGPoint(x: 777.59, y: 723.11), controlPoint1: CGPoint(x: 779.84, y: 732.14), controlPoint2: CGPoint(x: 778.92, y: 727.56))
        bezier148Path.addCurve(to: CGPoint(x: 772.64, y: 710.71), controlPoint1: CGPoint(x: 776.31, y: 718.85), controlPoint2: CGPoint(x: 774.66, y: 714.7))
        bezier148Path.addCurve(to: CGPoint(x: 766.12, y: 700.12), controlPoint1: CGPoint(x: 770.78, y: 707.04), controlPoint2: CGPoint(x: 768.62, y: 703.5))
        bezier148Path.addCurve(to: CGPoint(x: 619.26, y: 694.37), controlPoint1: CGPoint(x: 736.08, y: 659.44), controlPoint2: CGPoint(x: 670.12, y: 656.83))
        bezier148Path.addCurve(to: CGPoint(x: 568.3, y: 772.29), controlPoint1: CGPoint(x: 591.2, y: 715.09), controlPoint2: CGPoint(x: 573.48, y: 743.84))
        bezier148Path.addCurve(to: CGPoint(x: 581.56, y: 836.43), controlPoint1: CGPoint(x: 564.1, y: 795.35), controlPoint2: CGPoint(x: 568.12, y: 818.21))
        bezier148Path.addCurve(to: CGPoint(x: 721.91, y: 846.72), controlPoint1: CGPoint(x: 610.38, y: 875.4), controlPoint2: CGPoint(x: 672.11, y: 879.43))
        bezier148Path.addCurve(to: CGPoint(x: 726.83, y: 843.33), controlPoint1: CGPoint(x: 723.57, y: 845.63), controlPoint2: CGPoint(x: 725.2, y: 844.49))
        bezier148Path.addCurve(to: CGPoint(x: 728.43, y: 842.18), controlPoint1: CGPoint(x: 727.36, y: 842.94), controlPoint2: CGPoint(x: 727.9, y: 842.57))
        bezier148Path.addCurve(to: CGPoint(x: 780.39, y: 736.81), controlPoint1: CGPoint(x: 765.67, y: 814.68), controlPoint2: CGPoint(x: 784.68, y: 773.09))
        bezier148Path.close()
        bezier148Path.move(to: CGPoint(x: 722.66, y: 834.33))
        bezier148Path.addCurve(to: CGPoint(x: 590.05, y: 830.12), controlPoint1: CGPoint(x: 676.43, y: 868.48), controlPoint2: CGPoint(x: 616.99, y: 866.65))
        bezier148Path.addCurve(to: CGPoint(x: 625.02, y: 702.15), controlPoint1: CGPoint(x: 563.12, y: 793.68), controlPoint2: CGPoint(x: 578.79, y: 736.31))
        bezier148Path.addCurve(to: CGPoint(x: 757.64, y: 706.41), controlPoint1: CGPoint(x: 671.33, y: 667.97), controlPoint2: CGPoint(x: 730.69, y: 669.9))
        bezier148Path.addCurve(to: CGPoint(x: 722.66, y: 834.33), controlPoint1: CGPoint(x: 784.56, y: 742.86), controlPoint2: CGPoint(x: 768.98, y: 800.17))
        bezier148Path.close()
        fillColor.setFill()
        bezier148Path.fill()
        
        
        //// Oval 3 Drawing
        context.saveGState()
        //            context.translateBy(x: 673.85, y: 760.59)
        //            context.rotate(by: -36.4 * CGFloat.pi/180)
        
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: -104.1, y: -82.2, width: 208.2, height: 164.4))
    
        oval3Path.apply(CGAffineTransform(rotationAngle: -36.4 * CGFloat.pi/180))
        oval3Path.apply(CGAffineTransform(translationX: 673.85, y: 760.59))
        if oval3Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval3Path.fill()
        
        context.restoreGState()
        
        
        
        
        //// Bezier 149 Drawing
        let bezier149Path = UIBezierPath()
        bezier149Path.move(to: CGPoint(x: 1962.15, y: 1756.41))
        bezier149Path.addCurve(to: CGPoint(x: 1999.66, y: 1718.66), controlPoint1: CGPoint(x: 1980.38, y: 1748.71), controlPoint2: CGPoint(x: 1993.67, y: 1734.55))
        bezier149Path.addCurve(to: CGPoint(x: 2084.34, y: 1898.4), controlPoint1: CGPoint(x: 2027.18, y: 1774.85), controlPoint2: CGPoint(x: 2068.52, y: 1838.48))
        bezier149Path.addCurve(to: CGPoint(x: 2079.84, y: 2011.27), controlPoint1: CGPoint(x: 2094.86, y: 1938.23), controlPoint2: CGPoint(x: 2085.18, y: 1974.24))
        bezier149Path.addCurve(to: CGPoint(x: 2047.02, y: 2015.64), controlPoint1: CGPoint(x: 2076.2, y: 2036.56), controlPoint2: CGPoint(x: 2060.56, y: 2027.97))
        bezier149Path.addCurve(to: CGPoint(x: 2032.42, y: 1957.2), controlPoint1: CGPoint(x: 2028.75, y: 1999.07), controlPoint2: CGPoint(x: 2035.76, y: 1977.16))
        bezier149Path.addCurve(to: CGPoint(x: 2017.11, y: 1902.12), controlPoint1: CGPoint(x: 2029.31, y: 1938.49), controlPoint2: CGPoint(x: 2023.98, y: 1919.81))
        bezier149Path.addCurve(to: CGPoint(x: 1974.45, y: 1861.74), controlPoint1: CGPoint(x: 2009.47, y: 1882.48), controlPoint2: CGPoint(x: 1998.03, y: 1862.17))
        bezier149Path.addCurve(to: CGPoint(x: 1945.83, y: 1904.07), controlPoint1: CGPoint(x: 1947.58, y: 1861.26), controlPoint2: CGPoint(x: 1950.65, y: 1886.64))
        bezier149Path.addCurve(to: CGPoint(x: 1924.35, y: 1934.48), controlPoint1: CGPoint(x: 1942.23, y: 1917), controlPoint2: CGPoint(x: 1942.88, y: 1935.41))
        bezier149Path.addCurve(to: CGPoint(x: 1909.26, y: 1901.46), controlPoint1: CGPoint(x: 1903.43, y: 1933.44), controlPoint2: CGPoint(x: 1910.05, y: 1913.59))
        bezier149Path.addCurve(to: CGPoint(x: 1904.19, y: 1758.14), controlPoint1: CGPoint(x: 1906.45, y: 1858.53), controlPoint2: CGPoint(x: 1905.89, y: 1801.15))
        bezier149Path.addCurve(to: CGPoint(x: 1905.55, y: 1755.27), controlPoint1: CGPoint(x: 1904.61, y: 1757.1), controlPoint2: CGPoint(x: 1905.07, y: 1756.14))
        bezier149Path.addCurve(to: CGPoint(x: 1962.15, y: 1756.41), controlPoint1: CGPoint(x: 1921.6, y: 1763.59), controlPoint2: CGPoint(x: 1942.54, y: 1764.64))
        bezier149Path.close()
        if bezier149Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier149Path.fill()
        
        
        //// Bezier 150 Drawing
        let bezier150Path = UIBezierPath()
        bezier150Path.move(to: CGPoint(x: 1797.12, y: 1405.84))
        bezier150Path.addCurve(to: CGPoint(x: 1845.03, y: 1333.48), controlPoint1: CGPoint(x: 1823.68, y: 1388.08), controlPoint2: CGPoint(x: 1840.31, y: 1361.29))
        bezier150Path.addCurve(to: CGPoint(x: 1856.61, y: 1335.65), controlPoint1: CGPoint(x: 1848.13, y: 1332.14), controlPoint2: CGPoint(x: 1851.92, y: 1332.49))
        bezier150Path.addCurve(to: CGPoint(x: 1983.32, y: 1660.77), controlPoint1: CGPoint(x: 1919.2, y: 1429.71), controlPoint2: CGPoint(x: 1955.13, y: 1551.7))
        bezier150Path.addCurve(to: CGPoint(x: 1919.49, y: 1655.16), controlPoint1: CGPoint(x: 1966.68, y: 1648.5), controlPoint2: CGPoint(x: 1942.18, y: 1645.59))
        bezier150Path.addCurve(to: CGPoint(x: 1878.43, y: 1712.79), controlPoint1: CGPoint(x: 1893.8, y: 1665.97), controlPoint2: CGPoint(x: 1877.95, y: 1689.57))
        bezier150Path.addCurve(to: CGPoint(x: 1877.72, y: 1712.51), controlPoint1: CGPoint(x: 1878.2, y: 1712.74), controlPoint2: CGPoint(x: 1877.97, y: 1712.65))
        bezier150Path.addCurve(to: CGPoint(x: 1753.08, y: 1504.77), controlPoint1: CGPoint(x: 1851.88, y: 1637.91), controlPoint2: CGPoint(x: 1800.27, y: 1566.4))
        bezier150Path.addCurve(to: CGPoint(x: 1692.04, y: 1415.62), controlPoint1: CGPoint(x: 1733.73, y: 1479.52), controlPoint2: CGPoint(x: 1713.19, y: 1447.18))
        bezier150Path.addCurve(to: CGPoint(x: 1797.12, y: 1405.84), controlPoint1: CGPoint(x: 1723.5, y: 1430.52), controlPoint2: CGPoint(x: 1763.86, y: 1428.04))
        bezier150Path.close()
        if bezier150Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier150Path.fill()
        
        
        //// Bezier 151 Drawing
        let bezier151Path = UIBezierPath()
        bezier151Path.move(to: CGPoint(x: 1644.89, y: 1309.98))
        bezier151Path.addCurve(to: CGPoint(x: 1656.26, y: 1384.94), controlPoint1: CGPoint(x: 1638.07, y: 1335.46), controlPoint2: CGPoint(x: 1641.32, y: 1362.58))
        bezier151Path.addCurve(to: CGPoint(x: 1692.03, y: 1415.63), controlPoint1: CGPoint(x: 1665.38, y: 1398.58), controlPoint2: CGPoint(x: 1677.79, y: 1408.88))
        bezier151Path.addCurve(to: CGPoint(x: 1797.12, y: 1405.84), controlPoint1: CGPoint(x: 1723.5, y: 1430.52), controlPoint2: CGPoint(x: 1763.86, y: 1428.04))
        bezier151Path.addCurve(to: CGPoint(x: 1845.02, y: 1333.49), controlPoint1: CGPoint(x: 1823.67, y: 1388.08), controlPoint2: CGPoint(x: 1840.31, y: 1361.29))
        bezier151Path.addCurve(to: CGPoint(x: 1831.64, y: 1267.74), controlPoint1: CGPoint(x: 1848.87, y: 1310.79), controlPoint2: CGPoint(x: 1844.78, y: 1287.42))
        bezier151Path.addCurve(to: CGPoint(x: 1787.57, y: 1233.61), controlPoint1: CGPoint(x: 1820.78, y: 1251.51), controlPoint2: CGPoint(x: 1805.27, y: 1240.02))
        bezier151Path.addCurve(to: CGPoint(x: 1690.84, y: 1246.84), controlPoint1: CGPoint(x: 1757.52, y: 1222.74), controlPoint2: CGPoint(x: 1721.21, y: 1226.55))
        bezier151Path.addCurve(to: CGPoint(x: 1644.89, y: 1309.98), controlPoint1: CGPoint(x: 1667.21, y: 1262.63), controlPoint2: CGPoint(x: 1651.43, y: 1285.56))
        bezier151Path.close()
        bezier151Path.move(to: CGPoint(x: 1695.71, y: 1254.17))
        bezier151Path.addCurve(to: CGPoint(x: 1822.38, y: 1273.95), controlPoint1: CGPoint(x: 1739.02, y: 1225.23), controlPoint2: CGPoint(x: 1795.7, y: 1234.04))
        bezier151Path.addCurve(to: CGPoint(x: 1792.22, y: 1398.53), controlPoint1: CGPoint(x: 1848.99, y: 1313.78), controlPoint2: CGPoint(x: 1835.49, y: 1369.6))
        bezier151Path.addCurve(to: CGPoint(x: 1665.57, y: 1378.72), controlPoint1: CGPoint(x: 1748.95, y: 1427.45), controlPoint2: CGPoint(x: 1692.2, y: 1418.55))
        bezier151Path.addCurve(to: CGPoint(x: 1695.71, y: 1254.17), controlPoint1: CGPoint(x: 1638.89, y: 1338.82), controlPoint2: CGPoint(x: 1652.46, y: 1283.07))
        bezier151Path.close()
        fillColor.setFill()
        bezier151Path.fill()
        
        
        //// Oval 4 Drawing
        context.saveGState()
        //            context.translateBy(x: 1743.95, y: 1321.56)
        //            context.rotate(by: -33.75 * CGFloat.pi/180)
        
        let oval4Path = UIBezierPath(ovalIn: CGRect(x: -94.3, y: -86.8, width: 188.6, height: 173.6))
    
        oval4Path.apply(CGAffineTransform(rotationAngle: -33.75 * CGFloat.pi/180))
        oval4Path.apply(CGAffineTransform(translationX: 1743.95, y: 1321.56))
        if oval4Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval4Path.fill()
        
        context.restoreGState()
        
        
        //// Bezier 152 Drawing
        let bezier152Path = UIBezierPath()
        bezier152Path.move(to: CGPoint(x: 1878.42, y: 1712.79))
        bezier152Path.addCurve(to: CGPoint(x: 1882.15, y: 1730.48), controlPoint1: CGPoint(x: 1878.55, y: 1718.79), controlPoint2: CGPoint(x: 1879.74, y: 1724.76))
        bezier152Path.addCurve(to: CGPoint(x: 1905.54, y: 1755.27), controlPoint1: CGPoint(x: 1886.77, y: 1741.44), controlPoint2: CGPoint(x: 1895.13, y: 1749.88))
        bezier152Path.addCurve(to: CGPoint(x: 1962.15, y: 1756.41), controlPoint1: CGPoint(x: 1921.61, y: 1763.59), controlPoint2: CGPoint(x: 1942.55, y: 1764.64))
        bezier152Path.addCurve(to: CGPoint(x: 1999.66, y: 1718.66), controlPoint1: CGPoint(x: 1980.38, y: 1748.72), controlPoint2: CGPoint(x: 1993.67, y: 1734.55))
        bezier152Path.addCurve(to: CGPoint(x: 1999.46, y: 1681.07), controlPoint1: CGPoint(x: 2004.27, y: 1706.43), controlPoint2: CGPoint(x: 2004.56, y: 1693.18))
        bezier152Path.addCurve(to: CGPoint(x: 1983.32, y: 1660.77), controlPoint1: CGPoint(x: 1995.98, y: 1672.79), controlPoint2: CGPoint(x: 1990.35, y: 1665.95))
        bezier152Path.addCurve(to: CGPoint(x: 1919.49, y: 1655.16), controlPoint1: CGPoint(x: 1966.69, y: 1648.51), controlPoint2: CGPoint(x: 1942.18, y: 1645.59))
        bezier152Path.addCurve(to: CGPoint(x: 1878.42, y: 1712.79), controlPoint1: CGPoint(x: 1893.8, y: 1665.98), controlPoint2: CGPoint(x: 1877.95, y: 1689.57))
        bezier152Path.close()
        bezier152Path.move(to: CGPoint(x: 1921.44, y: 1659.83))
        bezier152Path.addCurve(to: CGPoint(x: 1993.26, y: 1683.68), controlPoint1: CGPoint(x: 1950.38, y: 1647.61), controlPoint2: CGPoint(x: 1982.55, y: 1658.27))
        bezier152Path.addCurve(to: CGPoint(x: 1960.17, y: 1751.75), controlPoint1: CGPoint(x: 2003.92, y: 1709.03), controlPoint2: CGPoint(x: 1989.13, y: 1739.54))
        bezier152Path.addCurve(to: CGPoint(x: 1888.37, y: 1727.85), controlPoint1: CGPoint(x: 1931.23, y: 1763.94), controlPoint2: CGPoint(x: 1899.05, y: 1753.22))
        bezier152Path.addCurve(to: CGPoint(x: 1921.44, y: 1659.83), controlPoint1: CGPoint(x: 1877.65, y: 1702.45), controlPoint2: CGPoint(x: 1892.51, y: 1672.02))
        bezier152Path.close()
        fillColor.setFill()
        bezier152Path.fill()
        
        
        //// Oval 5 Drawing
        context.saveGState()
        //            context.translateBy(x: 1940.8, y: 1703.49)
        //            context.rotate(by: -22.9 * CGFloat.pi/180)
        
        let oval5Path = UIBezierPath(ovalIn: CGRect(x: -56.9, y: -49.85, width: 113.8, height: 99.7))
    
        oval5Path.apply(CGAffineTransform(rotationAngle: -22.9 * CGFloat.pi/180))
        oval5Path.apply(CGAffineTransform(translationX: 1940.8, y: 1703.49))
        if oval5Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval5Path.fill()
        
        context.restoreGState()
        
        
        //// Bezier 153 Drawing
        let bezier153Path = UIBezierPath()
        bezier153Path.move(to: CGPoint(x: 1778.1, y: 1203))
        bezier153Path.addCurve(to: CGPoint(x: 1643.52, y: 962.96), controlPoint1: CGPoint(x: 1733.35, y: 1122.94), controlPoint2: CGPoint(x: 1689.69, y: 1042.23))
        bezier153Path.addCurve(to: CGPoint(x: 1547.12, y: 755.21), controlPoint1: CGPoint(x: 1610.65, y: 906.56), controlPoint2: CGPoint(x: 1587.34, y: 817.78))
        bezier153Path.addCurve(to: CGPoint(x: 1539.59, y: 839.43), controlPoint1: CGPoint(x: 1558.61, y: 784.65), controlPoint2: CGPoint(x: 1556.94, y: 815.91))
        bezier153Path.addCurve(to: CGPoint(x: 1407.58, y: 854.79), controlPoint1: CGPoint(x: 1512.36, y: 876.26), controlPoint2: CGPoint(x: 1455.75, y: 881.88))
        bezier153Path.addCurve(to: CGPoint(x: 1469.21, y: 999.36), controlPoint1: CGPoint(x: 1434.36, y: 911.68), controlPoint2: CGPoint(x: 1463.28, y: 977.75))
        bezier153Path.addCurve(to: CGPoint(x: 1532.11, y: 1142.63), controlPoint1: CGPoint(x: 1487.26, y: 1048.39), controlPoint2: CGPoint(x: 1498.65, y: 1073.85))
        bezier153Path.addCurve(to: CGPoint(x: 1634.7, y: 1308.53), controlPoint1: CGPoint(x: 1566.32, y: 1197.92), controlPoint2: CGPoint(x: 1600.49, y: 1253.23))
        bezier153Path.addCurve(to: CGPoint(x: 1644.89, y: 1309.98), controlPoint1: CGPoint(x: 1637.97, y: 1312.66), controlPoint2: CGPoint(x: 1641.34, y: 1313.71))
        bezier153Path.addCurve(to: CGPoint(x: 1690.84, y: 1246.84), controlPoint1: CGPoint(x: 1651.43, y: 1285.56), controlPoint2: CGPoint(x: 1667.21, y: 1262.63))
        bezier153Path.addCurve(to: CGPoint(x: 1787.58, y: 1233.61), controlPoint1: CGPoint(x: 1721.22, y: 1226.55), controlPoint2: CGPoint(x: 1757.53, y: 1222.74))
        bezier153Path.addCurve(to: CGPoint(x: 1778.1, y: 1203), controlPoint1: CGPoint(x: 1793.37, y: 1227.4), controlPoint2: CGPoint(x: 1786.51, y: 1213.27))
        bezier153Path.close()
        if bezier153Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier153Path.fill()
        
        
        //// Bezier 154 Drawing
        let bezier154Path = UIBezierPath()
        bezier154Path.move(to: CGPoint(x: 1341.89, y: 732.72))
        bezier154Path.addCurve(to: CGPoint(x: 1264.86, y: 706.07), controlPoint1: CGPoint(x: 1319.2, y: 712.93), controlPoint2: CGPoint(x: 1288.62, y: 707.99))
        bezier154Path.addCurve(to: CGPoint(x: 1264.94, y: 707.68), controlPoint1: CGPoint(x: 1264.89, y: 706.6), controlPoint2: CGPoint(x: 1264.93, y: 707.14))
        bezier154Path.addCurve(to: CGPoint(x: 1076.98, y: 692.13), controlPoint1: CGPoint(x: 1202.55, y: 709.2), controlPoint2: CGPoint(x: 1139.61, y: 686.95))
        bezier154Path.addCurve(to: CGPoint(x: 1074.02, y: 692.13), controlPoint1: CGPoint(x: 1076.92, y: 692.18), controlPoint2: CGPoint(x: 1074.07, y: 692.18))
        bezier154Path.addCurve(to: CGPoint(x: 884.41, y: 705.13), controlPoint1: CGPoint(x: 1011.39, y: 686.95), controlPoint2: CGPoint(x: 946.8, y: 706.65))
        bezier154Path.addCurve(to: CGPoint(x: 884.44, y: 704.57), controlPoint1: CGPoint(x: 884.41, y: 704.94), controlPoint2: CGPoint(x: 884.43, y: 704.76))
        bezier154Path.addCurve(to: CGPoint(x: 781.71, y: 735.49), controlPoint1: CGPoint(x: 860.73, y: 706.43), controlPoint2: CGPoint(x: 812.69, y: 705.6))
        bezier154Path.addCurve(to: CGPoint(x: 780.39, y: 736.81), controlPoint1: CGPoint(x: 781.26, y: 735.92), controlPoint2: CGPoint(x: 780.83, y: 736.37))
        bezier154Path.addCurve(to: CGPoint(x: 728.43, y: 842.17), controlPoint1: CGPoint(x: 784.69, y: 773.09), controlPoint2: CGPoint(x: 765.67, y: 814.67))
        bezier154Path.addCurve(to: CGPoint(x: 726.83, y: 843.32), controlPoint1: CGPoint(x: 727.9, y: 842.57), controlPoint2: CGPoint(x: 727.36, y: 842.94))
        bezier154Path.addCurve(to: CGPoint(x: 723.62, y: 862.8), controlPoint1: CGPoint(x: 725.31, y: 850.52), controlPoint2: CGPoint(x: 724.26, y: 857.11))
        bezier154Path.addCurve(to: CGPoint(x: 760.77, y: 1126.85), controlPoint1: CGPoint(x: 712.56, y: 962.03), controlPoint2: CGPoint(x: 750.64, y: 1037.39))
        bezier154Path.addCurve(to: CGPoint(x: 875.76, y: 1162.99), controlPoint1: CGPoint(x: 796.46, y: 1146.05), controlPoint2: CGPoint(x: 834.2, y: 1155.87))
        bezier154Path.addCurve(to: CGPoint(x: 1055.34, y: 1177.24), controlPoint1: CGPoint(x: 933.09, y: 1172.81), controlPoint2: CGPoint(x: 991.98, y: 1178.38))
        bezier154Path.addCurve(to: CGPoint(x: 1244.5, y: 1168.85), controlPoint1: CGPoint(x: 1055.57, y: 1177.14), controlPoint2: CGPoint(x: 1181.96, y: 1178.49))
        bezier154Path.addCurve(to: CGPoint(x: 1248.86, y: 1168.15), controlPoint1: CGPoint(x: 1245.96, y: 1168.62), controlPoint2: CGPoint(x: 1247.41, y: 1168.4))
        bezier154Path.addCurve(to: CGPoint(x: 1366.02, y: 1125.44), controlPoint1: CGPoint(x: 1290.42, y: 1161.02), controlPoint2: CGPoint(x: 1330.34, y: 1144.63))
        bezier154Path.addCurve(to: CGPoint(x: 1366.02, y: 1125.48), controlPoint1: CGPoint(x: 1366.02, y: 1125.45), controlPoint2: CGPoint(x: 1366.02, y: 1125.47))
        bezier154Path.addCurve(to: CGPoint(x: 1403.01, y: 862.8), controlPoint1: CGPoint(x: 1376.38, y: 1036.62), controlPoint2: CGPoint(x: 1414.01, y: 961.53))
        bezier154Path.addCurve(to: CGPoint(x: 1401.29, y: 851.02), controlPoint1: CGPoint(x: 1402.61, y: 859.22), controlPoint2: CGPoint(x: 1402.04, y: 855.25))
        bezier154Path.addCurve(to: CGPoint(x: 1392.72, y: 845.17), controlPoint1: CGPoint(x: 1398.39, y: 849.19), controlPoint2: CGPoint(x: 1395.53, y: 847.25))
        bezier154Path.addCurve(to: CGPoint(x: 1341.89, y: 732.72), controlPoint1: CGPoint(x: 1353.03, y: 815.87), controlPoint2: CGPoint(x: 1334.02, y: 770.56))
        bezier154Path.close()
        if bezier154Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier154Path.fill()
        
        
        //// Bezier 155 Drawing
        let bezier155Path = UIBezierPath()
        bezier155Path.move(to: CGPoint(x: 1547.12, y: 755.21))
        bezier155Path.addCurve(to: CGPoint(x: 1501.89, y: 697.37), controlPoint1: CGPoint(x: 1538.73, y: 733.72), controlPoint2: CGPoint(x: 1523.33, y: 713.2))
        bezier155Path.addCurve(to: CGPoint(x: 1355.03, y: 703.12), controlPoint1: CGPoint(x: 1451.03, y: 659.83), controlPoint2: CGPoint(x: 1385.08, y: 662.44))
        bezier155Path.addCurve(to: CGPoint(x: 1341.89, y: 732.72), controlPoint1: CGPoint(x: 1348.44, y: 712.05), controlPoint2: CGPoint(x: 1344.1, y: 722.09))
        bezier155Path.addCurve(to: CGPoint(x: 1392.72, y: 845.18), controlPoint1: CGPoint(x: 1334.02, y: 770.56), controlPoint2: CGPoint(x: 1353.03, y: 815.87))
        bezier155Path.addCurve(to: CGPoint(x: 1401.29, y: 851.03), controlPoint1: CGPoint(x: 1395.53, y: 847.25), controlPoint2: CGPoint(x: 1398.4, y: 849.19))
        bezier155Path.addCurve(to: CGPoint(x: 1407.58, y: 854.79), controlPoint1: CGPoint(x: 1403.37, y: 852.34), controlPoint2: CGPoint(x: 1405.46, y: 853.61))
        bezier155Path.addCurve(to: CGPoint(x: 1539.59, y: 839.43), controlPoint1: CGPoint(x: 1455.75, y: 881.88), controlPoint2: CGPoint(x: 1512.36, y: 876.26))
        bezier155Path.addCurve(to: CGPoint(x: 1547.12, y: 755.21), controlPoint1: CGPoint(x: 1556.94, y: 815.91), controlPoint2: CGPoint(x: 1558.61, y: 784.65))
        bezier155Path.close()
        bezier155Path.move(to: CGPoint(x: 1531.1, y: 833.12))
        bezier155Path.addCurve(to: CGPoint(x: 1398.5, y: 837.33), controlPoint1: CGPoint(x: 1504.16, y: 869.65), controlPoint2: CGPoint(x: 1444.72, y: 871.48))
        bezier155Path.addCurve(to: CGPoint(x: 1363.51, y: 709.41), controlPoint1: CGPoint(x: 1352.18, y: 803.17), controlPoint2: CGPoint(x: 1336.59, y: 745.86))
        bezier155Path.addCurve(to: CGPoint(x: 1496.13, y: 705.15), controlPoint1: CGPoint(x: 1390.46, y: 672.9), controlPoint2: CGPoint(x: 1449.83, y: 670.97))
        bezier155Path.addCurve(to: CGPoint(x: 1531.1, y: 833.12), controlPoint1: CGPoint(x: 1542.36, y: 739.32), controlPoint2: CGPoint(x: 1558.04, y: 796.68))
        bezier155Path.close()
        fillColor.setFill()
        bezier155Path.fill()
        
        
        //// Oval 6 Drawing
        context.saveGState()
        //            context.translateBy(x: 1448.11, y: 767.28)
        //            context.rotate(by: 36.4 * CGFloat.pi/180)
        
        let oval6Path = UIBezierPath(ovalIn: CGRect(x: -100.1, y: -78.66, width: 200.2, height: 157.32))
       
        oval6Path.apply(CGAffineTransform(rotationAngle: 36.4 * CGFloat.pi/180))
        oval6Path.apply(CGAffineTransform(translationX: 1448.11, y: 767.28))
        if oval6Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval6Path.fill()
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    @objc(BackBodyViewResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
