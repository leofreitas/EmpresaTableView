//
//  Empresas.h
//  EmpresaTableView
//
//  Created by Leonardo Freitas da Silva Pereira on 03/08/13.
//  Copyright (c) 2013 Leonardo Freitas da Silva Pereira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Empresas : NSObject{
    NSString *nome;
    NSNumber *funcionarios;
}


- (id) initWithNome:(NSString *)nomeInicial andFuncionarios:(NSNumber *) funcInicial;

@property (nonatomic, retain) NSString *nome;
@property (nonatomic, retain) NSNumber *funcionarios;

@end
