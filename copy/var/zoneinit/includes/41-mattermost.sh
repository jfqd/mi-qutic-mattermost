svccfg import /opt/local/lib/svc/manifest/mattermost.xml 

# TODO: change these settings:
# ServiceSettings.SiteURL
# SqlSettings.DataSource
# NotificationLogSettings.FileLocation
# PasswordSettings.MinimumLength
# FileSettings.Directory
# EmailSettings.FeedbackEmail
# EmailSettings.ReplyToAddress
# EmailSettings.EnableSMTPAuth
# EmailSettings.SMTPUsername
# EmailSettings.SMTPPassword
# EmailSettings.SMTPServer
# EmailSettings.SMTPPort
# EmailSettings.ConnectionSecurity
# SupportSettings.TermsOfServiceLink
# SupportSettings.PrivacyPolicyLink
# SupportSettings.AboutLink
# SupportSettings.HelpLink
# SupportSettings.ReportAProblemLink
# SupportSettings.SupportEmail
# LocalizationSettings.DefaultServerLocale
# LocalizationSettings.DefaultClientLocale
# LocalizationSettings.AvailableLocales
# NativeAppSettings.AppDownloadLink
# NativeAppSettings.AndroidAppDownloadLink
# NativeAppSettings.IosAppDownloadLink
# ElasticsearchSettings.ConnectionUrl
# ElasticsearchSettings.Username
# ElasticsearchSettings.Password
# ElasticsearchSettings.IndexPrefix
# PluginSettings.Directory
# GuestAccountsSettings.Enable

sed -i \
    -e's#mmuser:mostest@tcp(localhost:3306)/mattermost_test#mattermost:mostest@tcp(localhost:3306)/mattermost#' \
    /home/mattermost/mattermost/config/config.json

# /usr/sbin/svcadm enable -r svc:/pkgsrc/percona:default

# echo "* Create mattermost database"
# CREATE DATABASE IF NOT EXISTS mattermost CHARACTER SET = 'utf8mb4' COLLATE = 'utf8mb4_unicode_ci';
# CREATE USER 'mattermost_kxxxx'@'%' IDENTIFIED BY 'password';
# https://github.com/mattermost/mattermost-server/issues/8432
# GRANT ALTER, CREATE, DELETE, DROP, INDEX, INSERT, SELECT, UPDATE ON mattermost_kxxxx.* TO 'mattermost_kxxxx'@'%'

# svcadm enable -r svc:/application/mattermost:default