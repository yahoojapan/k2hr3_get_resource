K2HR3 GET RESOURCE(K2HR3 Utilities)
===================================
[![Systemd AntPickax CI](https://github.com/yahoojapan/k2hr3_get_resource/workflows/Systemd%20AntPickax%20CI/badge.svg)](https://github.com/yahoojapan/k2hr3_get_resource/actions)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/yahoojapan/k2hr3_get_resource/blob/master/COPYING)
[![GitHub forks](https://img.shields.io/github/forks/yahoojapan/k2hr3_get_resource.svg)](https://github.com/yahoojapan/k2hr3_get_resource/network)
[![GitHub stars](https://img.shields.io/github/stars/yahoojapan/k2hr3_get_resource.svg)](https://github.com/yahoojapan/k2hr3_get_resource/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/yahoojapan/k2hr3_get_resource.svg)](https://github.com/yahoojapan/k2hr3_get_resource/issues)

This repository contains utilities for [K2HR3](https://k2hr3.antpick.ax/), which is a role-based ACL system developed in [Yahoo Japan Corporation](https://about.yahoo.co.jp/info/en/company/)

## **K2HR3** - **K2H**dkc based **R**esource and **R**oles and policy **R**ules

![K2HR3 system](https://k2hr3.antpick.ax/images/top_k2hr3.png)

[K2HR3](https://k2hr3.antpick.ax/) is a RBAC (Role Based Access Control) system. [K2HR3](https://k2hr3.antpick.ax/) is designed to primarily work in a private cloud environment, which is dedicated to deliver services to a single organization. [K2HR3](https://k2hr3.antpick.ax/)-0.9.0 works with [OpenStack](https://www.openstack.org/).

The primary feature is called **+SERVICE** that enables service owners in cloud environments to control their resources. [K2HR3](https://k2hr3.antpick.ax/) as a RBAC system defines the three primary elements: role, rule(or policy rule) and resource. Every host is defined as a member of roles in [K2HR3](https://k2hr3.antpick.ax/) and a host can access resources in a way followed by rules.

* Role  
  Defines a collection of a host(or an IP address) that access assets in a service.
* Rule(or Policy Rule)  
  Defines a group of actions(read and write) over assets in a service and a permission(allow or deny) to the group of actions.
* Resource  
  Defines a value(string or object) as an asset in a service. A value can contains data in any form: text or binary. A text data can be a key, a token or an URL.

![K2HR3 system overview](https://k2hr3.antpick.ax/images/overview_abstract.png)

### K2HR3 System Overview

The following figure shows the [K2HR3](https://k2hr3.antpick.ax/) system overview.

![K2HR3 Setup overview](https://k2hr3.antpick.ax/images/setup_overview.png)

## K2HR3 GET RESOURCE(K2HR3 Utilities)
k2hr3-get-resource is a Systemd Timer Service for retrieving RESOURCE data from [K2HR3](https://k2hr3.antpick.ax/) System.

- Systemd timer service, which starts regularly.
- Runs on a virtual machine launched with UserDataScript by the K2HR3 system.
- Get K2HR3 resource related to the role for the virtual machine.
- Use the common directory /etc/antpickax.

## Documents
[K2HR3 Document](https://k2hr3.antpick.ax/index.html)  
[K2HR3 Web Application Usage](https://k2hr3.antpick.ax/usage_app.html)  
[K2HR3 REST API Usage](https://k2hr3.antpick.ax/api.html)  
[K2HR3 OpenStack Notification Listener Usage](https://k2hr3.antpick.ax/detail_osnl.html)  
[K2HR3 Watcher Usage](https://k2hr3.antpick.ax/tools.html)  
[K2HR3 Utilities for Setup](https://k2hr3.antpick.ax/setup.html)  
[K2HR3 Demonstration](https://demo.k2hr3.antpick.ax/)

[About AntPickax](https://antpick.ax/)  

## Repositories
[K2HR3 main repository](https://github.com/yahoojapan/k2hr3)  
[K2HR3 Web Application repository](https://github.com/yahoojapan/k2hr3_app)  
[K2HR3 REST API repository](https://github.com/yahoojapan/k2hr3_api)  
[K2HR3 OpenStack Notification Listener](https://github.com/yahoojapan/k2hr3_osnl)  
[K2HR3 Utilities](https://github.com/yahoojapan/k2hr3_utils)  
[K2HR3 Utilities : Get Resource](https://github.com/yahoojapan/k2hr3_get_resource)  
[K2HR3 Container Registration Sidecar](https://github.com/yahoojapan/k2hr3_sidecar)  

### License
This software is released under the MIT License, see the license file.

### AntPickax
k2hr3_get_resource is one of [AntPickax](https://antpick.ax/) products.

Copyright(C) 2021 Yahoo Japan Corporation.
