export APP_SAMOURAI_SERVER_IP="10.21.21.22"
export APP_SAMOURAI_SERVER_DOJO_PORT="3009"
export APP_SAMOURAI_SERVER_CONNECT_PORT="3005"
export APP_SAMOURAI_SERVER_WHIRLPOOL_IP="10.21.21.23"
export APP_SAMOURAI_SERVER_WHIRLPOOL_PORT="8898"
export APP_SAMOURAI_SERVER_DB_IP="10.21.21.24"
export APP_SAMOURAI_SERVER_NODE_IP="10.21.21.25"

dojo_hidden_service_file="${UMBREL_ROOT}/tor/data/app-${app}-dojo/hostname"
whirlpool_hidden_service_file="${UMBREL_ROOT}/tor/data/app-${app}-whirlpool/hostname"
export SAMOURAI_SERVER_DOJO_HIDDEN_SERVICE="$(cat "${dojo_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"
export SAMOURAI_SERVER_WHIRLPOOL_HIDDEN_SERVICE="$(cat "${whirlpool_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"
export SAMOURAI_SERVER_NODE_API_KEY=$(derive_entropy "env-${app_entropy_identifier}-NODE_API_KEY")
export SAMOURAI_SERVER_NODE_ADMIN_KEY=$(derive_entropy "env-${app_entropy_identifier}-NODE_ADMIN_KEY")
export SAMOURAI_SERVER_NODE_JWT_SECRET=$(derive_entropy "env-${app_entropy_identifier}-NODE_JWT_SECRET")
export SAMOURAI_SERVER_WHIRLPOOL_API_KEY=$(derive_entropy "env-${app_entropy_identifier}-WHIRLPOOL_API_KEY")