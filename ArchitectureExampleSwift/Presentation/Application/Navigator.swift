//
//  Navigator.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import UIKit

protocol Navigatable {
    var navigator: Navigator! { get set }
}

class Navigator {
    static var `default` = Navigator()
    
    // MARK: - segues list, all app scenes
    enum Scene {
        case signIn(viewModel: SignInViewModel)
//        case launch(viewModel: LaunchScreenViewModel)
//
//        case homeMoreList(viewModel: HomeBookListViewModel)
//        case tabs(viewModel: MainTabBarViewModel)
//        case home(viewModel: HomeViewModel)
//        case browse(viewModel: BrowseViewModel)
//        case search(viewModel: SearchViewModel)
//        case library(viewModel: LibraryViewModel)
//        case shelvesList(viewModel: ShelvesListViewModel)
//        case shelfDetail(viewModel: ShelfDetailViewModel)
//        case addToShelf(viewModel: AddToShelfViewModel)
//        case highlight(viewModel: HighlightsViewModel)
//        case highlightInBook(viewModel: HighlightsInBookViewModel)
//        case homeList(viewModel: CategoryDetailsViewModel)
//
//        /// auth
//        case onboarding(viewModel: OnboardingViewModel)
//        case login(viewModel: LoginViewModel)
//        case forgotPassword(viewModel: ForgotPasswordViewModel)
//        case forgotPasswordConfirmation(viewModel: ForgotPasswordConfirmationViewModel)
//        case registrationConfirmation(viewModel: RegistrationConfirmationViewModel)
//        case registration(viewModel: RegistrationViewModel)
//        case subscriptionPlan(viewModel: SubscriptionPlanViewModel)
//        case subscriptionAllPlans(viewModel: SubsciptionAllPlansViewModel)
//
//        case bookSheet(viewModel: BookSheetViewModel)
//        case shelfSheet(viewModel: ShelfSheetViewModel)
//        case sortShelvesSheet(viewModel: ShelvesSortViewModel)
//        case inShelfSheet(viewModel: InShelfFiltrationSheetViewModel)
//        case addBookSearch(viewModel: AddBookSearchViewModel)
//        case highlightSheet(viewModel: HighlightSheetViewModel)
//
//        case bookDetails(viewModel: BookDetailsViewModel)
//
//        /// reader
//        case reader(viewModel: BookReaderViewModel)
//        case readerSetting(viewModel: ReadSettingsSheetViewModel)
//        case rateBook(viewModel: RateBookViewModel)
//        case congratulation(viewModel: CongratulationViewModel)
//        case jumpToInsight(viewModel: JumpToInsightViewModel)
//        case voice(viewModel: VoiceViewModel)
//        /// player
//        case player(viewModel: PlayerViewModel)
//        /// settings
//        case settings(viewModel: SettingsViewModel)
//        case verificationEmail(viewModel: VerificationEmailViewModel)
//        case interests(viewModel: InterestsViewModel)
    }
    
    enum Transition {
        case root(in: UIWindow) /// make component as root
        case rootWithNavigation(in: UIWindow) /// make component embedded in navigation controller
        case rootWithoutWindow
        case navigation ///  deffault
        case detail ///  make component embedded in navigation controller and hide tab
        case fullScreen(withAnim: Bool) /// modalPresentationStyle = .fullScreen
        case overFullScreen
        case popover(withAnim: Bool)
        case fullScreenWithNavController
        case fullScreenPresentToTopController
        case modal
        case custom
    }
    
    // MARK: - get a single VC
    func get(segue: Scene) -> UIViewController? {
        switch segue {
        case .signIn(viewModel: let viewModel):
            
        default:
            <#code#>
        }
//        switch segue {
//        case .launch(let viewModel): return LaunchScreenViewController(viewModel: viewModel, navigator: self)
//        case .shelvesList(viewModel: let viewModel): return ShelvesListViewController(viewModel: viewModel, navigator: self)
//        case .shelfDetail(viewModel: let viewModel): return ShelfDetailViewController(viewModel: viewModel, navigator: self)
//        case .highlight(let viewModel): return HighlightsViewController(viewModel: viewModel, navigator: self)
//        case .highlightInBook(let viewModel): return HighlightsInBookViewController(viewModel: viewModel, navigator: self)
//
//        case .tabs(let viewModel): return MainTabBarViewController(viewModel: viewModel, navigator: self)
//        case .home(let viewModel): return HomeViewController(viewModel: viewModel, navigator: self)
//        case .search(let viewModel): return SearchViewController(viewModel: viewModel, navigator: self)
//        case .library(let viewModel): return LibraryViewController(viewModel: viewModel, navigator: self)
//        case .addToShelf(viewModel: let viewModel): return AddToShelfViewController(viewModel: viewModel, navigator: self)
//        case .homeList(let viewModel): return CategoryDetailsViewController(viewModel: viewModel, navigator: self)
//
//        case .onboarding(let viewModel): return OnboardingViewController(viewModel: viewModel, navigator: self)
//        case .login(let viewModel): return LoginViewController(viewModel: viewModel, navigator: self)
//        case .forgotPassword(let viewModel): return ForgotPasswordViewController(viewModel: viewModel, navigator: self)
//        case .registrationConfirmation(let viewModel): return RegistrationConfirmationViewController(viewModel: viewModel, navigator: self)
//        case .registration(let viewModel): return RegistrationViewController(viewModel: viewModel, navigator: self)
//        case .forgotPasswordConfirmation(let viewModel): return ForgotPasswordConfirmationViewController(viewModel: viewModel, navigator: self)
//        case .subscriptionPlan(let viewModel): return SubscriptionPlanViewController(viewModel: viewModel, navigator: self)
//        case .subscriptionAllPlans(let viewModel): return SubscriptionAllPlansViewController(viewModel: viewModel, navigator: self)
//
//        case .bookSheet(viewModel: let viewModel): return BookSheetViewViewController(viewModel: viewModel, navigator: self)
//        case .shelfSheet(let viewModel): return ShelfSheetViewController(viewModel: viewModel, navigator: self)
//        case .sortShelvesSheet(viewModel: let viewModel): return ShelvesSortViewController(viewModel: viewModel, navigator: self)
//        case .inShelfSheet(let viewModel): return InShelfFiltrationSheetViewController(viewModel: viewModel, navigator: self)
//
//        case .bookDetails(let viewModel): return BookDetailsViewController(viewModel: viewModel, navigator: self)
//        case .reader(let viewModel): return BookReaderViewController(viewModel: viewModel, navigator: self)
//
//        case .readerSetting(let viewModel): return ReaderSettingsSheetViewController(viewModel: viewModel, navigator: self)
//        case .rateBook(let viewModel): return RateBookViewController(viewModel: viewModel, navigator: self)
//
//        case .congratulation(let viewModel): return CongratulationViewController(viewModel: viewModel, navigator: self)
//
//        case .jumpToInsight(let viewModel): return JumpToInsightViewController(viewModel: viewModel, navigator: self)
//        case .browse(let viewModel): return BrowseViewController(viewModel: viewModel, navigator: self)
//        case .voice(let viewModel): return VoiceViewController(viewModel: viewModel, navigator: self)
//        case .addBookSearch(let viewModel): return AddBookSearchViewController(viewModel: viewModel, navigator: self)
//        case .player(let viewModel): return PlayerViewController(viewModel: viewModel, navigator: self)
//        case .homeMoreList(let viewModel) : return HomeBookListViewController(viewModel: viewModel, navigator: self)
//
//            /// settings
//        case .settings(let viewModel): return SettingsViewController(viewModel: viewModel, navigator: self)
//        case .verificationEmail(let viewModel): return VerificationEmailViewController(viewModel: viewModel, navigator: self)
//        case .highlightSheet(viewModel: let viewModel): return HighlightSheetViewController(viewModel: viewModel, navigator: self)
//        case .interests(viewModel: let viewModel): return InterestsViewController(viewModel: viewModel, navigator: self)
//        }
    }
    
    func dismissToWindow(view: UIView) {
        view.window?.rootViewController?.dismiss(animated: false, completion: nil)
    }
    
    func pop(sender: UIViewController?, toRoot: Bool = false) {
        if toRoot {
            sender?.navigationController?.popToRootViewController(animated: true)
        } else {
            sender?.navigationController?.popViewController(animated: true)
        }
    }
    
    func dismiss(sender: UIViewController?) {
        sender?.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func show(segue: Scene, sender: UIViewController?, transition: Transition = .navigation) {
            if let target = get(segue: segue) {
            show(target: target, sender: sender, transition: transition, completion: nil)
        }
    }
    
    func show(segue: Scene, sender: UIViewController?, transition: Transition = .navigation, completion: @escaping () -> Void) {
        if let target = get(segue: segue) {
            show(target: target, sender: sender, transition: transition, completion: completion)
        }
    }
    
    private func show(target: UIViewController, sender: UIViewController?, transition: Transition, completion: (() -> Void)?) {
        switch transition {
        case .root(in: let window):
            window.rootViewController = target
            completion?()
            return
        case .rootWithNavigation(in: let window):
            window.rootViewController = NavigationController(rootViewController: target)
            completion?()
            return
        case .rootWithoutWindow:
            guard let window  = UIApplication.shared.windows.first else { return }
            window.rootViewController = target
            completion?()
        case .custom: return
        default: break
        }
        
        guard let sender = sender else {
            fatalError("You need to pass in a sender for .navigation or .modal transitions")
        }
        
        if let nav = sender as? UINavigationController {
            //push root controller on navigation stack
            nav.pushViewController(target, animated: false)
            completion?()
            return
        }
        
        switch transition {
        case .navigation:
            if let nav = sender.navigationController {
                // push controller to navigation stack
                nav.pushViewController(target, animated: true)
                completion?()
            }

        case .modal:
            // present modally
            DispatchQueue.main.async {
                let nav = NavigationController(rootViewController: target)
                sender.present(nav, animated: true, completion: completion)
            }
        case .detail:
            DispatchQueue.main.async {
                if let nav = sender.navigationController {
            target.hidesBottomBarWhenPushed = true
                    nav.pushViewController(target, animated: true)
                    completion?()
                }
            }
        case .fullScreen(let animation):
            DispatchQueue.main.async {
                target.modalPresentationStyle = .fullScreen
                sender.present(target, animated: animation, completion: completion)
            }
        case .fullScreenPresentToTopController:
            DispatchQueue.main.async {
                if var topController = UIApplication.shared.windows.filter({$0.isKeyWindow}).first?.rootViewController  {
                         while let presentedViewController = topController.presentedViewController {
                               topController = presentedViewController
                              }
                   target.modalPresentationStyle = .fullScreen
                   topController.present(target, animated: true, completion: nil)
                }
            }
        case .overFullScreen:
            target.modalPresentationStyle = .overFullScreen
            sender.present(target, animated: false, completion: nil)
        case .popover(let anim):
            target.modalPresentationStyle = .formSheet
            sender.present(target, animated: anim, completion: nil)
        case .fullScreenWithNavController:
            target.modalPresentationStyle = .fullScreen
            sender.present(NavigationController(rootViewController: target), animated: false, completion: completion)
        default: break
        }
    }
}
