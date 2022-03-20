//
//  ViewController.swift
//  app
//
//  Created by Julio Enrique Barrón Castañeda on 19/03/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Cotrols
    private lazy var imgLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var imgMujer: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "mujer")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var lblTitulo: UILabel = {
        let label = UILabel()
        label.text = "Reclama tus recompensas al instante"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = UIColor(named: "negro")
        label.font = UIFont(name: "Jost-Bold", size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    private lazy var lblSubtitulo: UILabel = {
        let label = UILabel()
        label.text = "Genera premios y recompesas con tus scores, descubre estos con cada uno de tus shots."
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = UIColor(named: "negro")
        label.font = UIFont(name: "Jost-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var stackViewContenedor: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var btnContinuar: UIButton = {
        let button = UIButton()
        button.setTitle("Continuar", for: .normal)
        button.addTarget(self, action: #selector(continuar), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var viewSeparador44: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var viewSeparador13: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor(named: "color_izquierdo")?.cgColor ?? UIColor(red: 45/255, green: 128/255, blue: 65/255, alpha: 1),
            UIColor(named: "color_derecho")?.cgColor ?? UIColor(red: 13/255, green: 65/255, blue: 26/255, alpha: 1)
        ]
        gradient.locations = [0, 0.5, 1]
        return gradient
    }()
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addSubViews()
        setConstraints()
        setStyles()
    }
    
    override func viewDidLayoutSubviews() {
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        
        gradient.cornerRadius = 20
        gradient.frame = btnContinuar.bounds
    }
    
    // MARK: - Functions
    func addSubViews() {
        view.addSubview(imgLogo)
        view.addSubview(stackViewContenedor)
        stackViewContenedor.addArrangedSubview(imgMujer)
        stackViewContenedor.addArrangedSubview(viewSeparador44)
        stackViewContenedor.addArrangedSubview(lblTitulo)
        stackViewContenedor.addArrangedSubview(viewSeparador13)
        stackViewContenedor.addArrangedSubview(lblSubtitulo)
        view.addSubview(btnContinuar)
    }

    func setConstraints() {
        stackViewContenedor.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackViewContenedor.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackViewContenedor.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 48).isActive = true
        stackViewContenedor.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -48).isActive = true
        stackViewContenedor.heightAnchor.constraint(equalToConstant: 443).isActive = true
        
        imgMujer.heightAnchor.constraint(equalToConstant: 288).isActive = true
        viewSeparador44.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        lblTitulo.leadingAnchor.constraint(equalTo: stackViewContenedor.leadingAnchor, constant: 20).isActive = true
        lblTitulo.trailingAnchor.constraint(equalTo: stackViewContenedor.trailingAnchor, constant: -20).isActive = true
        lblTitulo.heightAnchor.constraint(equalToConstant: 58).isActive = true
        
        viewSeparador13.heightAnchor.constraint(equalToConstant: 13).isActive = true
        
        lblSubtitulo.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        btnContinuar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        btnContinuar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        btnContinuar.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -24).isActive = true
        btnContinuar.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        imgLogo.bottomAnchor.constraint(equalTo: stackViewContenedor.topAnchor, constant: -52).isActive = true
        imgLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imgLogo.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imgLogo.heightAnchor.constraint(equalToConstant: 54).isActive = true
    }
    
    func setStyles() {
        lblTitulo.halfTextColorChange(fullText: lblTitulo.text!, changeText: "recompensas al instante", color: UIColor(named: "verde")!)
        
        btnContinuar.layer.addSublayer(gradient)
        btnContinuar.titleLabel!.font = UIFont(name: "Jost-Bold", size: 14)
    }
    
    // MARK: - Objc Functions
    @objc func continuar(sender: UIButton) {
        print("\n** continuar **\n")
    }
}

