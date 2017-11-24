{# cyrus_sasl #}

{% from "cyrus_sasl/map.jinja" import cyrus_sasl_settings with context %}

cyrus_sasl:
  pkg.installed:
    - pkgs: {{ cyrus_sasl_settings.lookup.pkgs }}

{% if cyrus_sasl_settings.manage_service|default(True) == True %}
saslauthd:
  service.running:
    - name: {{ cyrus_sasl_settings.lookup.service_name }}
    - enable: True
{% endif %}

{# EOF #}
