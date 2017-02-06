BEGIN;
-- os_name should pass valid os_name;
-- ./spec/os_name_spec.rb:8;
CREATE EXTENSION os_name;
SELECT 'android'::os_name;
SELECT 'blackberry'::os_name;
SELECT 'ios'::os_name;
SELECT 'linux'::os_name;
SELECT 'macos'::os_name;
SELECT 'server'::os_name;
SELECT 'symbian'::os_name;
SELECT 'webos'::os_name;
SELECT 'windows'::os_name;
SELECT 'windows-phone'::os_name;
SELECT 'unknown'::os_name;
ROLLBACK;
BEGIN;
-- os_name should rais an exception on invalid os_name;
-- ./spec/os_name_spec.rb:26;
CREATE EXTENSION os_name;
SELECT 'kermit'::os_name;
ROLLBACK;
