#import "SCILinksSheet.h"
#import "../Localization/SCILocalization.h"
#import "../Utils.h"

@implementation SCILinksSheet

+ (void)presentFrom:(UIViewController *)source {
    SCILinksSheet *vc = [[SCILinksSheet alloc] init];
    vc.modalPresentationStyle = UIModalPresentationPageSheet;
    UISheetPresentationController *sheet = vc.sheetPresentationController;
    if (sheet) {
        sheet.detents = @[[UISheetPresentationControllerDetent mediumDetent]];
        sheet.prefersGrabberVisible = YES;
        sheet.preferredCornerRadius = 28;
    }
    [source presentViewController:vc animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithDynamicProvider:^UIColor *(UITraitCollection *tc) {
        return tc.userInterfaceStyle == UIUserInterfaceStyleDark
            ? [UIColor colorWithWhite:0.11 alpha:1.0]
            : [UIColor systemBackgroundColor];
    }];

    UIImageView *logo = [[UIImageView alloc] initWithImage:
        [UIImage imageNamed:@"CapsuleGram"
                   inBundle:SCILocalizationBundle()
      compatibleWithTraitCollection:nil]];
    logo.contentMode = UIViewContentModeScaleAspectFill;
    logo.clipsToBounds = YES;
    logo.layer.cornerRadius = 18;
    logo.layer.cornerCurve = kCACornerCurveContinuous;
    [logo.widthAnchor constraintEqualToConstant:78].active = YES;
    [logo.heightAnchor constraintEqualToConstant:78].active = YES;

    UILabel *title = [[UILabel alloc] init];
    title.text = @"CapsuleGram";
    title.font = [UIFont systemFontOfSize:22 weight:UIFontWeightBold];
    title.textAlignment = NSTextAlignmentCenter;

    UILabel *version = [[UILabel alloc] init];
    version.text = SCIVersionString;
    version.font = [UIFont systemFontOfSize:14 weight:UIFontWeightRegular];
    version.textColor = [UIColor secondaryLabelColor];
    version.textAlignment = NSTextAlignmentCenter;

    UIButton *github = [self makeButtonWithTitle:SCILocalized(@"View on GitHub")
                                        sfSymbol:@"chevron.left.forwardslash.chevron.right"
                                            tint:[UIColor labelColor]
                                      background:[UIColor tertiarySystemFillColor]];
    [github addTarget:self action:@selector(openGitHub) forControlEvents:UIControlEventTouchUpInside];

    UIButton *reddit = [self makeButtonWithTitle:SCILocalized(@"Reddit")
                                      sfSymbol:@"bubble.left.and.bubble.right.fill"
                                          tint:[UIColor whiteColor]
                                    background:[UIColor colorWithRed:1.0 green:0.27 blue:0.0 alpha:1.0]];
    [reddit addTarget:self action:@selector(openReddit) forControlEvents:UIControlEventTouchUpInside];

    UIButton *kofi = [self makeButtonWithTitle:SCILocalized(@"Support on Ko-fi")
                                    sfSymbol:@"cup.and.saucer.fill"
                                        tint:[UIColor whiteColor]
                                  background:[UIColor colorWithRed:1.0 green:0.37 blue:0.36 alpha:1.0]];
    [kofi addTarget:self action:@selector(openKoFi) forControlEvents:UIControlEventTouchUpInside];

    UIStackView *buttons = [[UIStackView alloc] initWithArrangedSubviews:@[github, reddit, kofi]];
    buttons.axis = UILayoutConstraintAxisVertical;
    buttons.spacing = 10;
    buttons.distribution = UIStackViewDistributionFillEqually;

    UILabel *byLabel = [[UILabel alloc] init];
    byLabel.text = @"Enhanced by KayJann";
    byLabel.font = [UIFont systemFontOfSize:12 weight:UIFontWeightMedium];
    byLabel.textColor = [UIColor secondaryLabelColor];
    byLabel.textAlignment = NSTextAlignmentCenter;

    UIStackView *stack = [[UIStackView alloc] initWithArrangedSubviews:@[logo, title, version, buttons, byLabel]];
    stack.axis = UILayoutConstraintAxisVertical;
    stack.alignment = UIStackViewAlignmentCenter;
    stack.spacing = 14;
    [stack setCustomSpacing:2 afterView:title];
    [stack setCustomSpacing:22 afterView:version];
    stack.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:stack];

    UILayoutGuide *g = self.view.safeAreaLayoutGuide;
    [NSLayoutConstraint activateConstraints:@[
        [stack.centerYAnchor constraintEqualToAnchor:g.centerYAnchor],
        [stack.leadingAnchor constraintEqualToAnchor:g.leadingAnchor constant:20],
        [stack.trailingAnchor constraintEqualToAnchor:g.trailingAnchor constant:-20],
        [buttons.widthAnchor constraintEqualToAnchor:stack.widthAnchor],
    ]];
}

- (UIButton *)makeButtonWithTitle:(NSString *)title
                         sfSymbol:(NSString *)symbol
                             tint:(UIColor *)tint
                       background:(UIColor *)bg {
    UIButtonConfiguration *cfg = [UIButtonConfiguration filledButtonConfiguration];
    cfg.title = title;
    cfg.image = [UIImage systemImageNamed:symbol];
    cfg.imagePadding = 10;
    cfg.imagePlacement = NSDirectionalRectEdgeLeading;
    cfg.baseForegroundColor = tint;
    cfg.baseBackgroundColor = bg;
    cfg.cornerStyle = UIButtonConfigurationCornerStyleLarge;
    cfg.contentInsets = NSDirectionalEdgeInsetsMake(14, 16, 14, 16);

    UIButton *b = [UIButton buttonWithConfiguration:cfg primaryAction:nil];
    b.translatesAutoresizingMaskIntoConstraints = NO;
    return b;
}

- (void)openGitHub {
    NSURL *url = [NSURL URLWithString:@"https://github.com/KayJannOnGit/CapsuleGram"];
    [self dismissViewControllerAnimated:YES completion:^{
        if (url) [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
    }];
}

- (void)openReddit {
    NSURL *url = [NSURL URLWithString:@"https://reddit.com/u/KayJann"];
    [self dismissViewControllerAnimated:YES completion:^{
        if (url) [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
    }];
}

- (void)openKoFi {
    NSURL *url = [NSURL URLWithString:@"https://ko-fi.com/kayjann"];
    [self dismissViewControllerAnimated:YES completion:^{
        if (url) [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
    }];
}

@end
