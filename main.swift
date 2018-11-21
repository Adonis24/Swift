//
//  main.swift
//  1L_ChernetsovRoman
//
//  Created by Чернецова Юлия on 20/11/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import Foundation
//Solving 10x²+9x+1 = 0
let a: Double = 10.0
let b: Int = 9
let c: Int = 1
let d: Double =  Double(pow(Double(b),2) - Double(4*a)*Double(c))
let x1: Double?
let x2: Double?

//d = b²-4*a*c

if d < 0
{
    //no solving
    x1 = nil
    x2 = nil
    print(" no result")
} else
{
    if d == 0.0
    {
        //1 solving
        x1 =  sqrt(Double(d))/2*a
        print(" x1 = x2: \(String(describing: x1))")

    } else if d>0 {
        //2 solving
        x1 = (-Double(b) + sqrt(Double(d)))/2*a
        x2 = (-Double(b) - sqrt(Double(d)))/2*a
       print(" x1: \(String(describing: x1!))")
       print(" x2: \(String(describing: x2!))")
    }
}



//P =a+b+c
//c = √a2+b2
//S = 1/2 a*b

let f: UInt = 5
let m: UInt = 9
let g: Double = sqrt(Double(pow(Double(f),2)+Double(pow(Double(m),2))))
let p: Double = Double(f)+Double(m)+g
let s: Double = Double(m)*Double(f)/2.0
print(" g: \(String(describing: g))")
print(" p: \(String(describing: p))")
print(" s: \(String(describing: s))")

