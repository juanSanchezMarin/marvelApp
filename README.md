# marvelApp

#Project info

Xcode 12.4
Swift 5.3
MVVM
Swift Package Manager

# Architecture: VIPER

VIPER is the backronym for View, Interactor, Presenter, Entity, and Router. It is the application of clean architecture to iOS apps. Unlike most other patterns which are more like UI patterns, Viper thinks about the whole architecture. Designed via distinct layers it separates the application logic from the domain model logic creating a clean framework for better management of the code.

For this reason, I think it is a good option for the development of this project.

# Swift Package Manager

The Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

The Package Manager is included in Swift 3.0 and above.

I have opted for this tool for the integration of libraries.


#Real 3rd Party SPM

- Alamofire
- AlamofireImage
- CryptoSwift

#My Style

- Single comment at top of code files.
- Source code comments valid for generate auto-doc with frameworks like Jekyll or Jazzy.
- Perfectly indented.
- Perfectly linted. After some time ago using linters, they modified my code style and all parts complies with almost all main rules about code linting.

#Unit Testing

Unit testing allows us to isolate those parts of the code that we are interested in to ensure its correct functioning.
I have included tests of what is most susceptible to failure 

#How to run

Follow this simple steps for launch project:

- Clone the project.
- Wait until fetch SPM dependencies.
- Put your api keys in the environment variables created at Scheme arguments.
    - Go to schemes, MarvelCode, and clic on edit shceme.
    - Then, edit the environment variables into Run option -> Arguments -> Environment Variables.
- Run the project with MarvelCode app target. Check following screenshots: 

/Users/Juancho/Desktop/Captura de pantalla 2021-10-08 a las 11.04.57.png
/Users/Juancho/Desktop/Captura de pantalla 2021-10-08 a las 11.08.20.png

#APIKey best practices

No api key should be stored in a repository, end less more at a public repository.

#Meta

Juan Sánchez Marín - LinkedIN - eMail

Distributed under the MIT license. See LICENSE for more information.

https://github.com/CodeNationDev/

#Version History

- 0.0.1
