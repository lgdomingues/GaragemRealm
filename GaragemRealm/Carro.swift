//
//  Carro.swift
//  GaragemRealm
//
//  Created by Swift on 17/01/2018.
//  Copyright © 2018 Corporate. All rights reserved.
//

import UIKit
// Realm é um banco de dados local (tamb[em possui versão online, porém paga) open-source criado para substituir o CoreData e o SQLite. A sua forma de trabalho é aprimorada para o modo de programação mobile, diferente do CoreData e SQLite.
import RealmSwift

class Carro: Object {
    
    // A criação de variáveis para o Realm é um pouco diferente da forma nativa. Para descobrir qual a declaração apropriada para o seu uso, consulte a cheatsheet nos docs do Realm. https://realm.io/docs/swift/latest#property-cheatsheet
    @objc dynamic var nome: String? = nil
    let comprado = RealmOptional<Bool>()

}
