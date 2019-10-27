window.AppConfig = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\\
<configuration>\\
    <system.serviceModel>\\
        <bindings>\\
            <basicHttpBinding>\\
                <binding name=\"BasicHttpBinding_IObjectWcfService\" />\\
            </basicHttpBinding>\\
        </bindings>\\
        <client>\\
            <endpoint address=\"http://localhost:13663/ObjectWcfService.svc\" binding=\"basicHttpBinding\"\\
                bindingConfiguration=\"BasicHttpBinding_IObjectWcfService\"\\
                contract=\"ObjectService.IObjectWcfService\" name=\"BasicHttpBinding_IObjectWcfService\" />\\
        </client>\\
    </system.serviceModel>\\
</configuration>";