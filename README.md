# docassemble.GBLSLettersLSL

A docassemble extension.

## Author

tobyfey@protonmail.com



## Automated interview tests

The draft ALKiln workflow starts a fresh isolated docassemble server. The enabled configuration-boundary scenario verifies the missing-token ending; it does not cover successful letter generation.

Successful completion requires a LegalServer Demo site, a test matter UUID, a current user UUID, and a valid API v2 bearer token. Add a `legalserver` mapping to the docassemble server configuration with the lowercase `<site>-demo` key containing `bearer` and a future `expiration` date. The interview asks for the matter UUID, site abbreviation, and site type `Demo`. Use synthetic client data in the authorized Demo matter. The primary assignment must contain the advocate/program/contact information used by the selected letter.

These integration requirements are unresolved in this draft PR. No production credentials or test doubles are bundled with the isolated workflow.

The isolated workflow passes the optional repository secret `ALKILN_DOCASSEMBLE_CONFIG` to the temporary server as `CONFIG_CONTENTS`. Store only disposable test-server YAML configuration there, with the real authorized sandbox integration settings described above. If unset, the server uses its default configuration. This input does not resolve missing includes, install private dependencies, create OAuth accounts, or provision external matters/templates. Configuration-boundary scenarios intentionally exercise missing configuration; a successful integration scenario will also need to be authored with the provisioned synthetic records.
