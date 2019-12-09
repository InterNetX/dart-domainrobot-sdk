# Dart Domainrobot API

A dart package for easy integration of the domainrobot API powered by InterNetX GmbH.

## Table of Contents

1. [Preamble](#preamble)
2. [Install And Import](#install-and-import)
   * [pubspec.yaml](#pubspec.yaml)
   * [Import](#import)
3. [Usage](#usage)
   * [Provider](#provider)
   * [Supported API calls](#supported-api-calls)
   * [Models](#models)
   * [Handling exceptions](#exception-handling)
4. [Changelog](#changelog)
5. [Copyright and license](#copyright-and-license)

## Preamble

As this sdk is written in pure [Dart](https://dart.dev), it can be used on all platforms on which dart is currently running. This includes the use of frameworks like [Flutter](https://flutter.dev), [Angular Dart](https://angulardart.dev) and many more.

Important: Important: This package is under development and more functionality of the domainrobot API will be covered in the future. Feel free to contribute by creating pull requests or file an issue for bugs, questions and feature requests.

## Install And Import

### pubspec.yaml

Update pubspec.yaml and add the following line to your dependencies.

```yaml
dependencies:
  dart_domainrobot_sdk: ^0.1.2
```

### Import

Import the package with:

```dart
import 'package:dart_domainrobot_sdk/domainrobot_api.dart';
```

## Usage

### Provider

The package contains a [DomainRobotProvider](/lib/src/DomainRobotProvider.dart) that is the main access to the api. Instantiate the provider with your api credentials and the matching baseUrl of the api.

* Productive System: <https://api.autodns.com/v1>
* Demo System: <https://api.demo.autodns.com/v1>

```dart
String userName = "USER";
String password = "PASSWORD";
String context = "CONTEXT";
String baseUrl = "URL";
DomainRobotProvider provider = DomainRobotProvider(userName,password,context,baseUrl);
```

### Supported API calls

#### Domain tasks

```dart
Future<Job> domainCreate(DomainRobotDomain domain, {String ctid = ""});
Future<Job> domainUpdate(DomainRobotDomain domain, {String ctid =""});
Future<DomainRobotDomain> domainInfo(String name, {String ctid = ""});
Future<List<DomainRobotDomain>> domainList({Query query,String ctid = "",Map<String, String> queryParameters});
```

#### Contact tasks

```dart
Future<Contact> contactCreate(Contact contact, {String ctid = ""});
Future<Contact> contactUpdate(Contact contact, {String ctid = ""});
Future<void> contactDelete(int id, {String ctid = ""});
Future<Contact> contactInfo(int id, {String ctid = ""});
Future<List<Contact>> contactList({Query query, String ctid = "",Map<String, String> queryParameters});
```

#### TrustedApplication tasks

```dart
Future<TrustedApplication> trustedApplicationCreate(TrustedApplication trustedApp,{String ctid = ""});
Future<TrustedApplication> trustedApplicationUpdate(TrustedApplication trustedApp,{String ctid = ""});
Future<void> trustedApplicationDelete(String uuid, {String ctid = ""});
Future<TrustedApplication> trustedApplicationInfo(String uuid,{String ctid = ""});
Future<List<TrustedApplication>> trustedApplicationList({Query query,String ctid = "",Map<String, String> queryParameters});
```

#### Domainstudio tasks

```dart
Future<List<DomainStudioDomain>> domainStudioSearch(DomainStudioSearch search,{String ctid = "", Map<String, String> queryParameters});
```

### Models

The package contains many classes that represent entities from the Domainrobot API. All Models can be used inside of your own project.

### Handling exceptions

If there is any error response from the API. The DomainRobotprovider will throw a [DomainRobotApiException](/lib/src/model/exception/DomainRobotApiException.dart), which contains information about the error.

```dart
try {
  List<DomainStudioDomain> domains = await provider.domainStudioSearch(search);
} on DomainRobotApiException catch (e) {
    // Handle error from the API
    print(e.toString());
} on Exception catch (e){
    // Handle any other exception
}
```

## Changelog

For a detailed changelog, see the [CHANGELOG.md](CHANGELOG.md) file

## Copyright and license

MIT License

Copyright (c) 2019 InterNetX GmbH

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
