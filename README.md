# Dart Domainrobot API

A dart package for easy integration of the **Domainrobot API** powered by [InterNetX GmbH](https://internetx.com).

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

As this sdk is written in pure [Dart](https://dart.dev), it can be used on all [platforms](https://dart.dev/platforms) on which dart is currently running. This includes the use of frameworks like [Flutter](https://flutter.dev), [Angular Dart](https://angulardart.dev) and many more. This package can also be used for command line tools or rest services compiled with [dart2native](https://dart.dev/tools/dart2native).

**Note:** Feel free to contribute by creating pull requests or file an issue for bugs, questions and feature requests.

## Install And Import

### pubspec.yaml

Update pubspec.yaml and add the following line to your dependencies.

```yaml
dependencies:
  dart_domainrobot_sdk: ^0.6.0
```

### Import

Import the package with:

```dart
import 'package:dart_domainrobot_sdk/dart_domainrobot_sdk.dart';
```

## Usage

### Provider

The package contains a [DomainRobot](/lib/src/DomainRobot.dart) class that is the main access to the api. Instantiate the class with your api credentials and the matching baseUrl of the api.

* Productive System: <https://api.autodns.com/v1>
* Demo System: <https://api.demo.autodns.com/v1>

```dart
String userName = 'USER';
String password = 'PASSWORD';
String context = 'CONTEXT';
String baseUrl = 'URL';
var provider = DomainRobot(userName,password,context,baseUrl);
```

### Supported API calls

#### Domain tasks

```dart
Future<Job> create(domainrobot.Domain payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<Job> update(domainrobot.Domain payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<domainrobot.Domain> info(String name, {Map<String, String> headers, Map<String, String> queryParameters});
Future<List<domainrobot.Domain>> list(Query payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<domainrobot.Domain> createAuthinfo1(String domain, {Map<String, String> headers, Map<String, String> queryParameters});
Future<void> deleteAuthinfo1(String name, {Map<String, String> headers, Map<String, String> queryParameters});
Future<void> createAuthinfo2(String domain, {Map<String, String> headers, Map<String, String> queryParameters});
Future<Job> renew(domainrobot.Domain payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<Job> transfer(domainrobot.Domain payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<void> updateStatus(domainrobot.Domain payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<List<DomainRestore>> restoreList(Query payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<Job> restore(DomainRestore payload, {Map<String, String> headers, Map<String, String> queryParameters});
```

#### Domain cancelation tasks

```dart
Future<DomainCancelation> create(DomainCancelation payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<void> update(DomainCancelation payload, {Map<String, String> headers});
Future<void> delete(String domain, {Map<String, String> headers});
Future<DomainCancelation> info(String domain, {Map<String, String> headers});
Future<List<DomainCancelation>> list({Query payload, Map<String, String> headers, Map<String, String> queryParameters});
```

#### Contact tasks

```dart
Future<Contact> create(Contact payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<void> update(Contact payload, {Map<String, String> headers});
Future<void> delete(int id, {Map<String, String> headers});
Future<Contact> info(int id, {Map<String, String> headers});
Future<List<Contact>> list({Query payload, Map<String, String> headers, Map<String, String> queryParameters});
```

#### Zone tasks

```dart
Future<Zone> create(Zone payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<void> update(Zone payload, {Map<String, String> headers});
Future<void> delete(String origin, String virtualNameServer, {Map<String, String> headers});
Future<Zone> info(String origin, String virtualNameServer, {Map<String, String> headers});
Future<List<Zone>> list({Query payload, Map<String, String> headers, Map<String, String> queryParameters});
Future<Zone> import(Zone payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<void> stream(String origin, ZoneStream payload, {Map<String, String> headers, Map<String, String> queryParameters});
```

#### Certificate tasks

```dart
Future<Certificate> realtime(Certificate payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<CertificateData> prepareOrder(CertificateData payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<Job> create(Certificate payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<Job> reissue(int id, {Certificate payload, Map<String, String> headers, Map<String, String> queryParameters});
Future<Job> delete(int id, {Map<String, String> headers});
Future<Certificate> info(int id, {Map<String, String> headers});
Future<Job> renew(int id, {Certificate payload, Map<String, String> headers, Map<String, String> queryParameters});
Future<void> commentUpdate(int id, String comment, {Map<String, String> headers,Map<String, String> queryParameters});
```

#### SslContact tasks

```dart
Future<SslContact> create(SslContact payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<void> update(SslContact payload, {Map<String, String> headers});
Future<void> delete(int id, {Map<String, String> headers});
Future<SslContact> info(int id, {Map<String, String> headers});
Future<List<SslContact>> list({Query payload, Map<String, String> headers, Map<String, String> queryParameters});
```

#### TrustedApplication tasks

```dart
Future<TrustedApplication> create(TrustedApplication payload, {Map<String, String> headers, Map<String, String> queryParameters});
Future<TrustedApplication> update(TrustedApplication payload, {Map<String, String> headers});
Future<void> delete(String uuid,{Map<String, String> headers});
Future<TrustedApplication> info(String uuid, {Map<String, String> headers})
Future<List<TrustedApplication>> list({Query payload, Map<String, String> headers, Map<String, String> queryParameters});
```

#### Domainstudio tasks

```dart
Future<List<DomainEnvelope>> search(DomainEnvelopeSearchRequest payload,{Map<String, String> headers, Map<String, String> queryParameters});
```

#### Poll tasks

```dart
Future<PollMessage> info({Map<String, String> headers});
Future<void> confirm(int id, {Map<String, String> headers});
```

#### Transferout tasks

```dart
Future<List<TransferOut>> list({Query payload,Map<String, String> headers, Map<String, String> queryParameters});
Future<Contact> answer(String domain, TransferAnswer answer, {Map<String, String> headers, Map<String, String> queryParameters});
```

### Models

The package contains many classes that represent entities from the Domainrobot API. All Models can be used inside of your own project.

### Handling exceptions

If there is any error response from the API. The DomainRobotprovider will throw a [DomainRobotApiException](/lib/src/model/exception/DomainRobotApiException.dart), which contains information about the error.

```dart
try {
  List<DomainEnvelope> domains = await provider.domainStudio.search(search);
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

Copyright (c) 2020 InterNetX GmbH

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
