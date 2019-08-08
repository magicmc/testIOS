//
//  ViewController.m
//  test2ios
//
//  Created by magicma on 2018/8/2.
//  Copyright © 2018年 magicma. All rights reserved.
//

#import "ViewController.h"

//#include <sys/types.h>
//#include <sys/sysctl.h>


//#import <WebKit/WebKit.h>

@interface NSObject (myTest)
+ (void) showColor;
@end

@implementation NSObject (myTest)
- (void) showColor
{
    NSLog(@"nsobject color");
}
@end


@interface Fruit: NSObject
+ (void) showColor;
@end

@implementation Fruit
- (void) showColor
{
    NSLog(@"no color");
}
@end

@interface Apple: Fruit
@end

@implementation Apple: Fruit
- (void) showColor
{
    NSLog(@"RED");
}
@end

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITabBarItem *tabbaritem;
//@property (weak, nonatomic) IBOutlet WKWebView *webview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    size_t size = 100;
//    char *hw_machine = malloc(size);
//    int name[] = {CTL_HW,HW_MACHINE};
//    sysctl(name, 2, hw_machine, &size, NULL, 0);
//    NSString *hardware = [NSString stringWithUTF8String:hw_machine];
//    free(hw_machine);
//    NSLog(@"%@",hardware);
    UIDevice *device = [UIDevice currentDevice];
    
    NSLog(@"%@",[device identifierForVendor]);
    
    
    [Fruit showColor];
    Fruit *obj = [[Fruit alloc] init];
    [obj showColor];
    
    
    [Apple showColor];
    Apple *apple = [[Apple alloc] init];
    [apple showColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btnSearchOrange@1x.png"] style:UIBarButtonItemStylePlain target:self action:@selector(Add:)];
//    self.navigationController.toolbar = self.navigationController.tabBarController.tabBar;
//    [self.navigationController setHidesBottomBarWhenPushed:NO];
//    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender
//{
//
//}

- (IBAction)pushnew:(id)sender {
    
    CGRect nextFrame = self.tabBarController.tabBar.frame;
    nextFrame.origin.y = UIScreen.mainScreen.bounds.size.height - (1 ? 0 : self.tabBarController.tabBar.frame.size.height);
    
    [self.tabBarController.tabBar setFrame:nextFrame];
    [self performSegueWithIdentifier:@"123" sender:nil];
}

- (BOOL)hidesBottomBarWhenPushed {
    return YES;
}
- (IBAction)pop:(id)sender {
    
//    [self.navigationController.view layoutIfNeeded];
    [self.navigationController popViewControllerAnimated:YES];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    return cell;
}



@end
