{# cyrus-sasl #}

{% from "cyrus-sasl/map.jinja" import cyrus-sasl_settings with context %}

cyrus-sasl:
  pkg.installed:
    - pkgs: {{ cyrus-sasl_settings.lookup.pkgs }}

{% if cyrus-sasl_settings.manage_service|default(True) == True %}
saslauthd:
  service.running:
    - name: {{ cyrus-sasl_settings.lookup.service_name }}
    - enable: True
{% endif %}

{# EOF #}
