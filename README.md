# Native Titanium Swift Modules

This is an example project that uses pure Swift modules in Titanium. Both the module
and it's dependencies are 100 % Swift and do not require any additional setup / linking
anymore.

It is using the #1 Swift Networking Library `Alamofire` with only three lines of code. More examples like SwiftyJSON or RxSwift are coming over the next weekens and months. 

> ⚠️ Warning: This project is not ready for production, yet. It will be part
> of Titanium SDK 8.0.0+.

## General Challenges

- [x] Titanium used Objective-C static libraries to export module before, Swift only uses frameworks.
- [x] The module project used Xcode Configuration (.xcconfig) files to inject the header search paths
- [x] Swift frameworks require modular framework references (module-maps)
- [x] The Titanium API loads native module by `require`'ing them. Not sure if the .framework files will even be directly recongnized by the SDK
- [x] Embedded framework-dependencies need to be linked properly

## Open issues

None!

## License

MIT

## Author

Hans Knöchel

Code Strong! :rocket:
