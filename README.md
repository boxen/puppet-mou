# Mou Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-mou.png?branch=master)](https://travis-ci.org/boxen/puppet-mou)

Installw [Mou](http://mouapp.com/), a lightweight Markdown client for Mac.
Also can install additional Solarized theme.

## Usage

```puppet
include mou
include mou::themes
```


## Preferences

You can change Mou preferences using this command:

```puppet
mou::config { 'Mou':
  theme => 'Solarized (Dark)+',
  css => 'GitHub2'
}
```

### Themes

| Default          | Mout Puppet Module |
| ---------------- | ------------------ |
| Mou Fresh Air    | Solarized (Dark)   |
| Mou Fresh Air+   | Solarized (Dark)+  |
| Mou Night        | Solarized (Light)  |
| Mou Night+       | Solarized (Light)+ |
| Mou Paper        |  |
| Mou Paper+       |  |
| Tomorrow         |  |
| Tomorrow Blue    |  |
| Tomorrow+        |  |
| Writer           |  |
| Writer+          |  |

### CSS

| Default          | Mou Puppet Module |
| ---------------- | ----------------- |
| Clearness        | Solarized (Dark)  |
| Clearness Dark   | Solarized (Light) |
| GitHub           |  |
| GitHub2          |  |


## Required Puppet Modules

* `boxen`
* `property_list_key` (v0.1.0)


## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
