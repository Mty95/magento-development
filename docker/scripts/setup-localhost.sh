deploy:mode:show

config:env:set system.default.admin.usage.enabled 0
config:env:set system.default.system.full_page_cache.caching_application 1

config:env:set "system.default.web.secure.base_url" "${url}"
config:env:set "system.default.web.secure.base_link_url" "{{secure_base_url}}"

config:env:set "system.default.web.unsecure.base_url" "${url}"
config:env:set "system.default.web.unsecure.base_link_url" "{{secure_base_url}}"

config:env:set "system.default.web.cookie.cookie_lifetime" 604800
config:env:set "system.default.web.url.use_store" 1

config:env:set "system.default.login_as_customer.general.enabled" 1

config:env:set "system.default.system.security.max_session_size_admin" 2560000
config:env:set "system.default.security.max_session_size_admin" 2560000

config:env:set "system.default.admin.security.session_lifetime" 31536000
config:env:set "system.default.admin.security.lockout_threshold" 0
config:env:set "system.default.admin.security.password_is_forced" 0
config:env:set "system.default.admin.security.password_lifetime" ""
config:env:set "system.default.admin.security.lockout_failures" ""

config:env:set "system.default.admin.dashboard.enable_charts" 1
config:env:set "system.default.admin.captcha.enable"

config:env:set "system.default.dev.debug.template_hints_storefront" 1
config:env:set "system.default.dev.debug.template_hints_storefront_show_with_parameter" 1
config:env:set "system.default.dev.debug.template_hints_parameter_value" "magento"
config:env:set "system.default.dev.debug.template_hints_admin" 1
config:env:set "system.default.dev.debug.admin_adobe_ims_logging" 0

app:config:import
c:f