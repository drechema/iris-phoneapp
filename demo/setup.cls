Class demo.setup Extends %RegisteredObject
{

ClassMethod setup(nsp As %String = "DEMO", webapp As %String = "/phoneapp")
{
	Do ..createCspPhoneapp(nsp, webapp)
	Do ..createCspPhoneappApi(nsp, webapp)
	Do ##class(demo.phones.phone).CreateData()
}

ClassMethod createCspPhoneapp(nsp As %String = "DEMO", webapp As %String = "/phoneapp") [ Private ]
{
	Set oldNS = $namespace
	Set $namespace = "%SYS"
	#dim app as Security.Applications
	Set app = ##class(Security.Applications).%New()
	Set app.Name = webapp
	Set app.NameSpace = nsp
	Set app.Path = ##class(%File).NormalizeDirectory($zu(12)_"../csp"_webapp)
	Set sc = app.%Save()
	
	Set $namespace = oldNS
	Quit ''sc
}

ClassMethod createCspPhoneappApi(nsp As %String = "DEMO", webapp As %String = "/phoneapp") [ Private ]
{
	Set oldNS = $namespace
	Set $namespace = "%SYS"
	Set app = ##class(Security.Applications).%New()
	Set app.Name = webapp_"/api"
	Set app.NameSpace = nsp
	Set app.DispatchClass = "demo.phones.restserver"
	Set sc = app.%Save()
	
	Set $namespace = oldNS
	Quit ''sc
}

ClassMethod reset(webapp As %String = "/phoneapp")
{
	Set oldNS = $namespace
	Set $namespace = "%SYS"
	Do ##class(Security.Applications).%DeleteId(webapp)
	Do ##class(Security.Applications).%DeleteId(webapp_"/api")
	Set $namespace = oldNS
}

}

