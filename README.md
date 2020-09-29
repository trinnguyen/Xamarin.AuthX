# Xamarin.AuthX
[![NuGet version](https://badge.fury.io/nu/Xamarin.AuthX.svg)](https://badge.fury.io/nu/Xamarin.AuthX)

- Drop-in replacement for Xamarin.Auth that uses AccountStore only (equivalent to Xamarin.Auth 1.7.0)
- Supported frameworks/profiles:
    + NetStandard 2.0
    + PCL Profile259
    + Xamarin.Android
    + Xamarin.iOS
- Xamarin.AuthX 1.7.0 is equivalent to Xamarin.Auth 1.7.0 (https://github.com/xamarin/Xamarin.Auth/tree/1.7.0.0)

## Install Nuget package
- https://www.nuget.org/packages/Xamarin.AuthX

## BREAKING CHANGES
- Change namespace from `using Xamarin.Auth` to `using Xamarin.AuthX`
- Only `AccountStore` is supported. Other components (i.e Web authentication, Oauth2 are removed)


## Usage
```csharp

using Xamarin.AuthX;
...

AccountStore store = AccountStore.Create("YOUR_PASSWORD");
            
// new account
Account account = new Account("USERNAME");
account.Properties.Add("Key", "Value");
store.Save(account, "YOUR_SERVICE_ID");

// get existing account
IEnumerable<Account> accounts  = store.FindAccountsForService("YOUR_SERVICE_ID");
```

## Recomendation
- This Nuget package is for backward compatible. It is only useful for project that use Xamarin.Auth already, to get rid of the Xamarin.Auth package
- Use Xamarin.Essentials: Secure Storage for new project
- Or use encrypted Preferences/UserDefaults on Xamarin Android/iOS:
    + Android: https://developer.android.com/jetpack/androidx/releases/security
    + Xamarin.iOS: https://github.com/trinnguyen/TnnCrypto.EncryptedUserDefaults
