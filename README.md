# marvelApp

# Project info

- Xcode 12.4
- Swift 5.3
- VIPER
- Swift Package Manager

# Architecture: VIPER

VIPER is the backronym for View, Interactor, Presenter, Entity, and Router. It is the application of clean architecture to iOS apps. Unlike most other patterns which are more like UI patterns, Viper thinks about the whole architecture. Designed via distinct layers it separates the application logic from the domain model logic creating a clean framework for better management of the code.

For this reason, I think it is a good option for the development of this project.


# External libs

- Alamofire
- AlamofireImage
- CryptoSwift

# Unit Testing

Unit testing allows us to isolate those parts of the code that we are interested in to ensure its correct functioning.
I have included tests of what is most susceptible to failure

# Installation

Follow this simple steps for launch project:

- Clone the project.
- Wait until fetch SPM dependencies.
- Put your api keys in the environment variables created at Scheme arguments.
    - Go to schemes, MarvelCode, and clic on edit shceme.
    - Then, edit the environment variables into Run option -> Arguments -> Environment Variables.
- Run the project with MarvelCode app target. Check following screenshots:

<img width="207" alt="Captura de pantalla 2021-10-08 a las 11 04 57" src="https://user-images.githubusercontent.com/22171311/136531666-6c2dff4c-5b9e-4257-8f92-e2707f6f2c08.png">
<img width="943" alt="Captura de pantalla 2021-10-08 a las 11 08 20" src="https://user-images.githubusercontent.com/22171311/136531690-6850b830-7285-483d-b687-2b165370c78d.png">

# Author

Juan Sánchez Marín - <a href="https://www.linkedin.com/in/juan-s%C3%A1nchez-mar%C3%ADn-9387037a">LinkedIN</a> - <a href="mailto:juanxo2505@gmail.com">Email</a>

# License

Distributed under the MIT license. See LICENSE for more information.
