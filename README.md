# titanium-swift-module

This is an example project that uses pure Swift modules for Titanium.

> ⚠️ Warning: This project is not ready for production, yet. It was open-sourced to get more possible contribution on it. Go ahead! 

## General Challenges

- [x] Titanium used Objective-C static libraries to export module before, Swift only uses frameworks.
- [x] The module project used Xcode Configuration (.xcconfig) files to inject the header search paths
- [x] Swift frameworks require modular framework references (module-maps)
- [x] The Titanium API loads native module by `require`'ing them. Not sure if the .framework files will even be directly recongnized by the SDK

## Open issues

- [ ] Embedded framework-dependencies need to be linked properly

Code Strong! :rocket:
