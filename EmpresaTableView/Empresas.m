//
//  Empresas.m
//  EmpresaTableView
//
//  Created by Leonardo Freitas da Silva Pereira on 03/08/13.
//  Copyright (c) 2013 Leonardo Freitas da Silva Pereira. All rights reserved.
//

#import "Empresas.h"

@implementation Empresas
@synthesize nome, funcionarios;

- (id) initWithNome:(NSString *)nomeInicial andFuncionarios:(NSNumber *) funcInicial{
    
    if(self = [super init]){
        self.nome = nomeInicial;
        self.funcionarios = funcInicial;
    }
    
    return self;
}

-(void) dealloc{
    [nome release];
    [funcionarios release];
    [super dealloc];
}

@end
