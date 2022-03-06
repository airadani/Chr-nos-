//
//  EmailViewController.swift
//  Chronus
//
//  Created by Aryaa Shah on 2/7/22.
//

import UIKit
import SafariServices
import MessageUI

class EmailViewController: UIViewController, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton (frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.setTitle("Send an email", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.center = view.center
        button.addTarget(self,
                         action: #selector(didTapButton),
                         for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        if MFMailComposeViewController.canSendMail() {
            let vc = MFMailComposeViewController()
            vc.delegate = self
            vc.setSubject("Change Me")
            vc.setToRecipients(["changeme@gmail.com"])
            vc.setMessageBody("<h1> Hello World </h1> ", isHTML: true)
            present(UINavigationController(rootViewController: vc),
                    animated: true)
        }
        else{
            guard let url = URL (string: "https://mail.google.com") else {
                return
            }
            let vc = SFSafariViewController(url: url)
            present(vc, animated: true)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
    }
}
        
        
        
   /* @IBOutlet weak var emailButton: SAButton!
    
    @IBAction func emailButtonTapped(_ sender: SAButton) {
        showMailComposer()
    }
    func showMailComposer() {
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["aashnashah2016@gmail.com"])
        composer.setMessageBody("Hello!", isHTML: false)
        present(composer, animated: true)
    }


}
extension ViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if let _ = error {
            controller.dismiss(animated: true)
        }
        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed to send")
        case .saved:
            print("Saved")
        case .sent:
            print("Email Sent")
        }
        controller.dismiss(animated: true)
    }
}

*/

