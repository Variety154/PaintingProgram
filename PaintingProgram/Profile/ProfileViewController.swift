import Foundation
import UIKit

final class ProfileViewController: UIViewController {
    
    private func initProfileImage (view: UIView) {
        let profileImage = UIImage(named: "avatar")
        let profilePhotoView = UIImageView(image: profileImage)
        
        profilePhotoView.tag = 1
        view.backgroundColor = UIColor(named: "YP Black")
        profilePhotoView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profilePhotoView)
        profilePhotoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        profilePhotoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        profilePhotoView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        profilePhotoView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
    }
    
    private func initLogoutButton(view: UIView) {
        let logOutButton = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(Self.didTapLogoutButton)
        )
        
        logOutButton.tintColor = UIColor(named: "YP Red")
        logOutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logOutButton)
        logOutButton.centerYAnchor.constraint(equalTo: view.viewWithTag(1)!
            .centerYAnchor).isActive = true
        logOutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24).isActive = true
    }
    
    private func initLabels(view: UIView) {
        let userName = UILabel()
        let boldFontSize: CGFloat = 23
        let boldFont = UIFont.systemFont(ofSize: boldFontSize, weight: .bold)
        
        userName.text = "Екатерина Новикова"
        userName.textColor = UIColor(named: "YP White")
        userName.font = boldFont
        userName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userName)
        userName.topAnchor.constraint(equalTo: view.viewWithTag(1)!.bottomAnchor, constant: 8).isActive = true
        userName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        
        let userNickName = UILabel()
        let regularFontSize: CGFloat = 13
        let regularFont = UIFont.systemFont(ofSize: regularFontSize, weight: .regular)
        
        userNickName.textColor = UIColor(named: "YP White")
        userNickName.text = "@ekaterina_nov"
        userNickName.font = regularFont
        userNickName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNickName)
        userNickName.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 8).isActive = true
        userNickName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        
        let userDescription = UILabel()
        userDescription.text = "Hello, world!"
        userDescription.textColor = UIColor(named: "YP White")
        userDescription.font = regularFont
        userDescription.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userDescription)
        userDescription.topAnchor.constraint(equalTo: userNickName.bottomAnchor, constant: 8).isActive = true
        userDescription.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initProfileImage (view: view)
        initLogoutButton (view: view)
        initLabels (view: view)
    }
    
    
    @objc
    private func didTapLogoutButton() {
        for view in view.subviews {
            if view is UILabel {
                view.removeFromSuperview()
            } else {
                if let imageView = view as? UIImageView {
                    imageView.image = UIImage(named: "ProfilePhotoPlaceholder")
                    imageView.tintColor = UIColor(named: "YP Gray")
                }
            }
        }
        
    }
}
