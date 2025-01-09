﻿#
# Module manifest for module 'ps2exe'
#
# Generated by: Markus Scholtes
#
# Generated on: 2022-11-25
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'ps2exe.psm1'

# Version number of this module.
ModuleVersion = '1.0.12'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'ff25bfed-b14c-4781-9c2d-bf25870696d6'

# Author of this module
Author = 'Markus Scholtes'

# Company or vendor of this module
CompanyName = ''

# Copyright statement for this module
Copyright = '(c) Markus Scholtes 2022'

# Description of the functionality provided by this module
Description = @'
Compiles Powershell scripts to executables. Overworking of the great script of Ingo Karstein with GUI support.
'Invoke-ps2exe script.ps1' (or 'ps2exe script.ps1') compiles to script.exe. Several control parameters available.
Or use Win-PS2EXE as a graphical front end to the compiler.
'@

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('Invoke-PS2EXE')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @('ps2exe', 'ps2exe.ps1', 'Win-PS2EXE', 'Win-PS2EXE.exe')

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

	PSData = @{
		# Tags applied to this module. These help with module discovery in online galleries.
		Tags = @('Compiler', 'ps2exe', 'Executable', 'Win-PS2EXE')

		# A URL to the license for this module.
		LicenseUri = 'https://github.com/MScholtes/PS2EXE/blob/master/LICENSE'

		# A URL to the main website for this project.
		ProjectUri = 'https://github.com/MScholtes/PS2EXE'

		# A URL to an icon representing this module.
		# IconUri = ''

		# ReleaseNotes of this module
		ReleaseNotes = @'
# 1.0.12 / 2022-11-22
- new parameter -winFormsDPIAware to support scaling for WinForms in noConsole mode (only Windows 10 or up)
# 1.0.11 / 2021-11-21
- fixed password longer than 24 characters error
- new parameter -DPIAware to support scaling in noConsole mode
- new parameter -exitOnCancel to stop program execution on cancel in input boxes (only in noConsole mode)
# 1.0.10 / 2021-04-10
- parameter outputFile now accepts a target folder (without filename)
# 1.0.9 / 2021-02-28
- new parameter UNICODEEncoding to output as UNICODE
- changed parameter debug to prepareDebug
- finally dared to use advanced parameters
# 1.0.8 / 2020-10-24
- refactored
# 1.0.7 / 2020-08-21
- bug fix for simultanous progress bars in one pipeline
# 1.0.6 / 2020-08-10
- prompt for choice behaves like Powershell now (only for console mode)
- (limited) support for Powershell Core (starts Windows Powershell in the background)
- fixed processing of negative parameter values
- support for animated progress bars (noConsole mode only)
# 1.0.5 / 2020-07-11
- support for nested progress bars (noConsole mode only)
# 1.0.4 / 2020-04-19
- Application.EnableVisualStyles() as default for GUI applications, new parameter -noVisualStyles to prevent this
# 1.0.3 / 2020-02-15
- Ignore control keys in secure string request in console mode
# 1.0.1 / 2019-12-16
- Fixed "unlimited window width for GUI windows" issue in ps2exe.ps1 and Win-PS2EXE
# 1.0.0 / 2019-11-08
- First stable release
# 0.0.0 / 2019-09-15
- Experimental
'@
	} # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
