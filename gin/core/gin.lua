-- settings
local settings = require 'gin.core.settings'


local Gin = {}

-- version
Gin.version = '0.1'

-- environment
Gin.env = os.getenv("GIN_ENV") or 'development'

-- directories
Gin.app_dirs = {
    tmp = 'tmp',
    logs = 'logs',
    schemas = 'db/schemas',
    migrations = 'db/migrations'
}

Gin.settings = settings.for_environment(Gin.env)

return Gin