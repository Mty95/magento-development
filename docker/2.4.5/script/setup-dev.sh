#!/usr/bin/env bash

config:set admin/usage/enabled 0


config:env:set system.default.admin.usage.enabled 0

config:env:set system.default.system.full_page_cache.caching_application 1
config:env:set system.default.system.security.max_session_size_admin 2560000

config:env:set system.default.web.secure.base_url "https://local.magento.com/"
config:env:set system.default.web.secure.base_link_url "{{secure_base_url}}"
config:env:set system.default.web.unsecure.base_url "https://local.magento.com/"
config:env:set system.default.web.unsecure.base_link_url "{{secure_base_url}}"
config:env:set system.default.web.cookie.cookie_lifetime 86400

config:env:set system.default.login_as_customer.general.enabled 1
config:env:set system.default.security.max_session_size_admin 2560000

config:env:set system.default.admin.security.password_is_forced 0
config:env:set system.default.admin.security.password_lifetime 0
config:env:set system.default.admin.security.use_form_key 0
config:env:set system.default.admin.security.session_lifetime 86400

mo:d Magento_AdminAnalytics Magento_TwoFactorAuth

s:up
s:d:c