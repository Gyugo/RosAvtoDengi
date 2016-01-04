//
//  FilialsViewController.m
//  RosAvtoDengi
//
//  Created by Viktor on 26.12.15.
//  Copyright © 2015 Viktor. All rights reserved.
//

#import "FilialsViewController.h"

@interface FilialsViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *callButton;
@property (weak, nonatomic) IBOutlet UIPickerView *mainPickerView;
@property (strong, nonatomic) NSArray *testArray;
//@property (strong, nonatomic) GMSMapView * mainMap;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@end

@implementation FilialsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainView.layer.cornerRadius = 3.f;
//    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:43.610426230566794
//                                                            longitude:39.73967581987381
//                                                                 zoom:15];
//    self.mainMap = [GMSMapView mapWithFrame:self.mainView.bounds camera:camera];
//    self.mainMap.myLocationEnabled = YES;
//    self.mainMap.settings.rotateGestures = NO;
//    self.mainMap.settings.allowScrollGesturesDuringRotateOrZoom = YES;
//    self.mainMap.delegate = self;
//    [self.mainView addSubview:self.mainMap];
    
//    // Creates a marker in the center of the map.
//    GMSMarker *marker = [[GMSMarker alloc] init];
//    marker.position = CLLocationCoordinate2DMake(43.610426230566794, 39.73967581987381);
//    marker.title = @"Сочи";
//    marker.snippet = @"Макаренко 8/4";
//    marker.map = self.mainMap;
    
    self.testArray = [NSArray arrayWithObjects:
                      @"Ставрополь",
                      @"Сочи",
                      @"Архангельск",
                      @"Краснодар",  nil];
    
    
//    [self.backButton addTarget:self action:@selector(backButtonAction)
//              forControlEvents:UIControlEventTouchUpInside];
//    [self.callButton addTarget:self action:@selector(callButtonAction)
//              forControlEvents:UIControlEventTouchUpInside];
    
//    self.mainPickerView.frame = CGRectMake(130, 50, 130, 45);
    [self.mainPickerView selectRow:self.testArray.count - 1 inComponent:0 animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)backButtonAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void) callButtonAction
{
    NSLog(@"Дзынь Дзынь филиалы");
}

//- (void) buttonZoomInAction
//{
//    GMSCameraUpdate *zoomCamera = [GMSCameraUpdate zoomBy:1];
//    [self.mainMap animateWithCameraUpdate:zoomCamera];
//}
//
//- (void) buttonZoomOutAction
//{
//    GMSCameraUpdate *zoomCamera = [GMSCameraUpdate zoomBy:-1];
//    [self.mainMap animateWithCameraUpdate:zoomCamera];
//}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView
numberOfRowsInComponent:(NSInteger)component
{
    return self.testArray.count;
}

- (NSString *)pickerView:(UIPickerView *)thePickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return [self.testArray objectAtIndex:row];
}

- (UIView*)pickerView:(UIPickerView*)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView*)view
{
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, pickerView.frame.size.width, 20)];
    
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor blackColor];
    label.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:15];
    label.text = [NSString stringWithFormat:@" %@", self.testArray[row]];
    label.textAlignment = NSTextAlignmentCenter;
    
    [[self.mainPickerView.subviews objectAtIndex:1] setHidden:YES];
    [[self.mainPickerView.subviews objectAtIndex:2] setHidden:YES];
    
    return label;
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (row == 0) {
//        [self.mainMap animateToLocation:CLLocationCoordinate2DMake(-33.868, 151.208)];
    }
    else if (row == 1) {
        
//        [self.mainMap animateToLocation:CLLocationCoordinate2DMake(43.610426230566794, 39.73967581987381)];
    }
    else if (row == 2) {

    }
    else if (row == 3) {

    }
    else
    {
        
    }

}
@end
