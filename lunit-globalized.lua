-- A short-cut for
--   local lunit = require "lunit"
--   lunit.globalize_iface()
--
-- So that it is enough to 'require' only this file:
--   require "lunit-globalized"

return require "lunit".globalize_iface()
