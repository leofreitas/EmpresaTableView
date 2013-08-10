//
//  ViewController.m
//  EmpresaTableView
//
//  Created by Leonardo Freitas da Silva Pereira on 03/08/13.
//  Copyright (c) 2013 Leonardo Freitas da Silva Pereira. All rights reserved.
//

#import "ViewController.h"
#import "Empresas.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self carregaEmpresa];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) carregaEmpresa{
    
    NSString *plistEmpresa = [[NSBundle mainBundle] pathForResource:@"empresas" ofType:@"plist"];
    NSDictionary *plist = [NSDictionary dictionaryWithContentsOfFile:plistEmpresa];
    
    NSArray *dadosEmpresa = [plist objectForKey:@"empresas"];
    
    empresas = [[NSMutableArray alloc] init];
    
    for (NSDictionary *item in dadosEmpresa) {
        NSString *nome = [item objectForKey:@"nome"];
        NSNumber *funcionarios = [item objectForKey:@"funcionarios"];
    
        Empresas *e = [[Empresas alloc] initWithNome:nome andFuncionarios: funcionarios];
        [empresas addObject:e];
        [e release];
    }

}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return empresas.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cacheID = @"cacheID";
    
    UITableViewCell *cell = [self.TVEmpresas dequeueReusableCellWithIdentifier:cacheID];
    
    if(!cell){
        
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cacheID] autorelease];
    }
    
    Empresas *empresa = [empresas objectAtIndex:indexPath.row];
    
    cell.textLabel.text = empresa.nome;
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView
    didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Empresas *empresa = [empresas objectAtIndex:indexPath.row];
    NSString *msg =
    [NSString stringWithFormat:@"Nome: %@\nFuncionarios: %@",
     empresa.nome, empresa.funcionarios];
    UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:@"Empresa"
                                                     message:msg
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil] autorelease];
    [alert show];
    [self.TVEmpresas deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)dealloc {
    [_TVEmpresas release];
    [super dealloc];
}
@end
