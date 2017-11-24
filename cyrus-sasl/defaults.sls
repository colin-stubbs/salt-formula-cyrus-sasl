cyrus-sasl:
  lookup:
    pkgs:
      - cyrus-sasl
      - cyrus-sasl-md5
      - cyrus-sasl-ntlm
      - cyrus-sasl-plain
      - cyrus-sasl-gssapi
    service_name: saslauthd
  manage_service: True
