//
//  main.swift
//  L3 Chernetsov Roman
//
//  Created by Чернецова Юлия on 27/11/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import Foundation
//Перечисления
//1. Двигатель (включен/выключен)
enum EngineState: String {
    case on = "двигатель включен"
    case off = "двигатель выключен"
}

//2.  Окна автомобилей
enum WindowState: String{
    case open = "окна открыты"
    case close = "окна закрыты"
}

//3. Тип автомобиля - грузовой или легковой
enum TypeCar:String {
    case passenger = "пассажирский"
    case cargo     = "грузовой"

}
//4. Тип хранения - кузов или багажник
enum TrankType{
    case kuzov,trank
}

//Грузовой автомобиль
//марка авто, год выпуска, объем багажника/кузова, запущен ли двигатель,
//открыты ли окна, заполненный объем багажника

// Вообще можно обойтись описанием одной структуры для грузового и легкового, но для примера рассмотрим похожие две структуры с небольшими отличиями в инициализации
struct Cargo {
    
    //Свойства
    
    let type: TypeCar
    let yearOfManufacture: Int
    var mark: String
    var engineState: EngineState
    var windowState: WindowState {
        willSet{ if newValue == .open{
            print("окна сейчас откроются! Будьте осторожны!")
        } else{
            print("окна сейчас закроются!")
            }
        }
    }
    public var currentTrunkVolume: Double
    
    //печать параметров
    mutating func printStruct(){
        
        
        print("модель автомобиля: \(self.mark),год выпуска: \(self.yearOfManufacture),тип автомобиля: \(self.type.rawValue), состояние двигателя: \(self.engineState.rawValue),состояние окон: \(self.windowState.rawValue),заполненный объем: \(self.currentTrunkVolume)")
        
    }
    
    //метод открытия окон
    mutating func changeWindowState(state: WindowState){
        self.windowState = state
    }
    //метод загрузки груза определенного вес ( в багажник или кабину)
    mutating func loadTrunk(trank: TrankType, weight: Double)
    {
        print("Объем груза до загрузки: \(currentTrunkVolume)")
        
        currentTrunkVolume += weight
        if  trank == .trank {
            
            print("Текущий объем груза в багажнике: \(currentTrunkVolume)")
        } else
            if trank == .kuzov{
                print("Текущий объем груза в кузове: \(currentTrunkVolume)")
        }
    }
    
    //метод разгрузки груза определенного вес ( в багажник или кабину)
    mutating func unloadTrunk(trank: TrankType, weight: Double)
    {
        print("Объем груза до разгрузки: \(currentTrunkVolume)")
        
        currentTrunkVolume -= weight
        if  trank == .trank {
            
            print("Текущий объем груза в багажнике: \(currentTrunkVolume)")
        } else
            if trank == .kuzov{
                print("Текущий объем груза в кузове: \(currentTrunkVolume)")
        }
        
        
    }
    //Инициализация
    
    //#1 - по марке
    init( marka: String) {
        type = .cargo
        mark = marka
        yearOfManufacture = 2010
        engineState = .on
        windowState = .close
        currentTrunkVolume = 0
    }
    //#2 - по умолчанию
    init() {
        type = .cargo
        mark = "Kamaz"
        yearOfManufacture = 2019
        engineState = .on
        windowState = .close
        currentTrunkVolume = 3000
    }
    
}
//************************----------****************************
//Легковой автомобиль
struct PassangerCar {
    
    //Свойства
    
    let type: TypeCar
    let yearOfManufacture: Int
    var mark: String
    var engineState: EngineState
    var windowState: WindowState {
    willSet{ if newValue == .open{
            print("Окна сейчас откроются! ")
        } else{
            print("Окна сейчас закроются!")
            }
        }
    }
    public var currentTrunkVolume: Double
    
    //печать параметров
    mutating func printStruct(){
       
       
   print("модель автомобиля: \(self.mark),год выпуска: \(self.yearOfManufacture),тип автомобиля: \(self.type.rawValue), состояние двигателя: \(self.engineState.rawValue),состояние окон: \(self.windowState.rawValue),заполненный объем: \(self.currentTrunkVolume)")
   
    }
    
    //метод открытия окон
    mutating func changeWindowState(state: WindowState){
        self.windowState = state
    }
    //метод загрузки груза определенного вес ( в багажник или кабину)
    mutating func loadTrunk(trank: TrankType, weight: Double)
    {
        print("Объем груза до загрузки: \(currentTrunkVolume)")
        
        currentTrunkVolume += weight
        if  trank == .trank {
           
            print("Текущий объем груза в багажнике: \(currentTrunkVolume)")
        } else
            if trank == .kuzov{
             print("Текущий объем груза в кузове: \(currentTrunkVolume)")
        }
    }
   
    //метод разгрузки груза определенного вес ( в багажник или кабину)
    mutating func unloadTrunk(trank: TrankType, weight: Double)
    {
        print("Объем груза до разгрузки: \(currentTrunkVolume)")
        
        currentTrunkVolume -= weight
        if  trank == .trank {
            
            print("Текущий объем груза в багажнике: \(currentTrunkVolume)")
        } else
            if trank == .kuzov{
                print("Текущий объем груза в кузове: \(currentTrunkVolume)")
        }
        
        
    }
    //Инициализация

    //#1 - по марке
    init( marka: String) {
        type = .passenger
        mark = marka
        yearOfManufacture = 1988
        engineState = .on
        windowState = .close
        currentTrunkVolume = 0
    }
     //#2 - по умолчанию
    init() {
        type = .passenger
        mark = "Toyota"
        yearOfManufacture = 1988
        engineState = .on
        windowState = .close
        currentTrunkVolume = 0
    }
    
}

// 1. Выводим данные по легковой машине с инициализацией без параметров - по умолчанию
print("Инициализация 1-го лекового автомобиля")
var car1 = PassangerCar()
car1.printStruct()
car1.loadTrunk(trank: .trank, weight: 40.0)
car1.loadTrunk(trank: .trank, weight: 60.0)
car1.changeWindowState(state: WindowState.open)
print("\n")
// 2. Выводим данные по легковой машине с инициализацией по модели
print("Инициализация 2-го лекового автомобиля")
var car2 = PassangerCar(marka: "Fiat")
car2.printStruct()
print("Загрузка 30 кг.")
car2.loadTrunk(trank: .trank, weight: 30.0)
print("Загрузка 10 кг.")
car2.loadTrunk(trank: .trank, weight: 10.0)
car2.changeWindowState(state: WindowState.open)
print("\n")
// 3. Выводим данные по грузовой машине
print("Инициализация 3-го грузового автомобиля")
var car3 = Cargo()
car3.printStruct()
print("Загрузка 300 кг.")
car3.loadTrunk(trank: .kuzov, weight: 300.0)
print("Разгрузка 500 кг.")
car3.unloadTrunk(trank: .kuzov, weight: 500.0)
car3.changeWindowState(state: WindowState.open)
