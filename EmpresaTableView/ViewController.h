//
//  ViewController.h
//  EmpresaTableView
//
//  Created by Leonardo Freitas da Silva Pereira on 03/08/13.
//  Copyright (c) 2013 Leonardo Freitas da Silva Pereira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *empresas;
}


@property (retain, nonatomic) IBOutlet UIBarButtonItem *botaoEditar;
@property (retain, nonatomic) IBOutlet UITableView *TVEmpresas;
- (IBAction)botaoEditarTap:(id)sender;


@end
