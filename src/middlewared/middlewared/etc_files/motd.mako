<%
	buildtime = middleware.call_sync('system.build_time')
	motd = middleware.call_sync('system.advanced.config')['motd']
%>\

	Tyrone Verta Pro (c) 2025-${buildtime.year}, Netweb technologies India Ltd.
	All rights reserved.
	For more information, documentation, help or support, go here:
	https://www.netwebindia.com/

Warning: the supported mechanisms for making configuration changes
are the Tyrone Verta Pro  WebUI, CLI, and API exclusively. ALL OTHERS ARE
NOT SUPPORTED AND WILL RESULT IN UNDEFINED BEHAVIOR AND MAY
RESULT IN SYSTEM FAILURE.

% if motd:
${motd}
% endif
