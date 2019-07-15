
# sophos



#### Table of Contents

- [sophos](#sophos)
      - [Table of Contents](#Table-of-Contents)
  - [Description](#Description)
  - [Setup](#Setup)
    - [What sophos affects **OPTIONAL**](#What-sophos-affects-OPTIONAL)
    - [Setup Requirements **OPTIONAL**](#Setup-Requirements-OPTIONAL)
    - [Beginning with sophos](#Beginning-with-sophos)
  - [Usage](#Usage)
  - [Reference](#Reference)
  - [Limitations](#Limitations)
  - [Development](#Development)
  - [Release Notes/Contributors/Etc. **Optional**](#Release-NotesContributorsEtc-Optional)

## Description
Module to deploy Sophos endpoint as the instructions found at https://community.sophos.com/kb/en-us/120570 on OSX only.


## Setup

### What sophos affects **OPTIONAL**

If there's more that they should know about, though, this is the place to mention:

* Files, packages, services, or operations that the module will alter, impact, or execute.
* Dependencies that your module automatically installs.
* Warnings or other important notices.

### Setup Requirements **OPTIONAL**

needs os unzip, and wget. 

### Beginning with sophos

The very basic steps needed for a user to get the module up and running. This can include setup steps, if necessary, or it can be an example of the most basic use of the module.

```puppet
include sophos #requires sophos::installer_source set in hiera
```
or
```puppet
class {'sophos':
  installer_source => https://api-cloudstation-us-east-2.prod.hydra.sophos.com/api/download/<TOKEN>/SophosInstall.zip} #example url but any url will substitute
}
```

## Usage

Include usage examples for common use cases in the **Usage** section. Show your users how to use your module to solve problems, and be sure to include code examples. Include three to five examples of the most important or common tasks a user can accomplish with your module. Show users how to accomplish more complex tasks that involve different types, classes, and functions working in tandem.

## Reference

https://community.sophos.com/kb/en-us/120570



## Limitations

initially developed on OSX

## Development



## Release Notes/Contributors/Etc. **Optional**


