/*
* This header is generated by classdump-dyld 1.0
* on Tuesday, November 5, 2019 at 2:45:29 AM Mountain Standard Time
* Operating System: Version 13.0 (Build 17J586)
* Image Source: /System/Library/PrivateFrameworks/TVSystemMenuUI.framework/TVSystemMenuUI
* classdump-dyld is licensed under GPLv3, Copyright © 2013-2016 by Elias Limneos.
*/

#import <TVSystemMenuUI/TVSystemMenuUI-Structs.h>
#import <UIKitCore/UIView.h>
#import <TVSystemMenuUI/TVLockupViewComponent.h>

@class UIImage, NSString, _UIFloatingContentView, UIImageView, UILabel, _TVSMHighContrastFocusView;

@interface _TVSMRectangleButtonContentView : UIView <TVLockupViewComponent> {

	long long _style;
	UIImage* _image;
	NSString* _imageSymbolName;
	NSString* _titleText;
	NSString* _secondaryText;
	_UIFloatingContentView* _floatingContentView;
	UIImageView* _contentImageView;
	UILabel* _titleLabel;
	UILabel* _secondaryLabel;
	_TVSMHighContrastFocusView* _highContrastFocusView;

}

@property (nonatomic,readonly) _UIFloatingContentView * floatingContentView;                    //@synthesize floatingContentView=_floatingContentView - In the implementation block
@property (nonatomic,readonly) UIImageView * contentImageView;                                  //@synthesize contentImageView=_contentImageView - In the implementation block
@property (nonatomic,readonly) UILabel * titleLabel;                                            //@synthesize titleLabel=_titleLabel - In the implementation block
@property (nonatomic,readonly) UILabel * secondaryLabel;                                        //@synthesize secondaryLabel=_secondaryLabel - In the implementation block
@property (nonatomic,readonly) _TVSMHighContrastFocusView * highContrastFocusView;              //@synthesize highContrastFocusView=_highContrastFocusView - In the implementation block
@property (nonatomic,readonly) long long style;                                                 //@synthesize style=_style - In the implementation block
@property (nonatomic,retain) UIImage * image;                                                   //@synthesize image=_image - In the implementation block
@property (nonatomic,copy) NSString * imageSymbolName;                                          //@synthesize imageSymbolName=_imageSymbolName - In the implementation block
@property (nonatomic,copy) NSString * titleText;                                                //@synthesize titleText=_titleText - In the implementation block
@property (nonatomic,copy) NSString * secondaryText;                                            //@synthesize secondaryText=_secondaryText - In the implementation block
@property (readonly) unsigned long long hash; 
@property (readonly) Class superclass; 
@property (copy,readonly) NSString * description; 
@property (copy,readonly) NSString * debugDescription; 
+(void)_configureFloatingContentViewAppearance;
+(long long)_contentModeForStyle:(long long)arg1 ;
+(id)_imageForSymbolName:(id)arg1 style:(long long)arg2 ;
-(long long)style;
-(UIImage *)image;
-(void)setImage:(UIImage *)arg1 ;
-(id)initWithFrame:(CGRect)arg1 ;
-(NSString *)secondaryText;
-(void)setSecondaryText:(NSString *)arg1 ;
-(NSString *)titleText;
-(void)setTitleText:(NSString *)arg1 ;
-(UILabel *)titleLabel;
-(id)initWithFrame:(CGRect)arg1 style:(long long)arg2 ;
-(UILabel *)secondaryLabel;
-(_UIFloatingContentView *)floatingContentView;
-(void)updateAppearanceForLockupViewState:(unsigned long long)arg1 ;
-(UIImageView *)contentImageView;
-(void)setImageSymbolName:(NSString *)arg1 ;
-(NSString *)imageSymbolName;
-(_TVSMHighContrastFocusView *)highContrastFocusView;
@end

