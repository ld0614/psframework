﻿# The path where type-files are stored when registered
Set-PSFConfig -Module PSFramework -Name 'Serialization.WorkingDirectory' -Value "$env:APPDATA\WindowsPowerShell\PSFramework\TypeData" -Initialize -Validation "bool" -Handler { [PSFramework.PSFCore.PSFCoreHost]::Unattended = $args[0] } -Description "Central setting, showing whether the current execution is unattended or not. This allows scripts/moduls to react to whether there is a user at the controls or not."