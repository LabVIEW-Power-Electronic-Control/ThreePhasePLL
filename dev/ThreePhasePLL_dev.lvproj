<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="sbRIO9607" Type="RT Single-Board RIO">
		<Property Name="alias.name" Type="Str">sbRIO9607</Property>
		<Property Name="alias.value" Type="Str">10.1.129.22</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,77D6;</Property>
		<Property Name="crio.ControllerPID" Type="Str">77D6</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="sbRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">sbRIO-9607</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Real-Time Scan Resources" Type="Module Container">
				<Property Name="crio.ModuleContainerType" Type="Str">crio.RSIModuleContainer</Property>
			</Item>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{2428DA94-BD08-4500-87DD-CCD2CF26EABD}"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{34D9EBAF-F17B-4D25-9B2F-438806AE00AD}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{43FEB8B0-54BA-410B-8DEF-32A601C6E822}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{6882F259-1608-4970-91DC-57E461914434}resource=/Scan Clock;0;ReadMethodType=bool{8888E43F-D90C-4D8D-A0C6-2C64F5022476}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{CF18A389-3507-4A91-8254-21C32CD9262E}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolsbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;FPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolreg.host instruction fifo 0"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"sbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">sbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">sbRIO-9607</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Onboard I/O" Type="Folder">
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8888E43F-D90C-4D8D-A0C6-2C64F5022476}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{43FEB8B0-54BA-410B-8DEF-32A601C6E822}</Property>
					</Item>
					<Item Name="FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CF18A389-3507-4A91-8254-21C32CD9262E}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6882F259-1608-4970-91DC-57E461914434}</Property>
					</Item>
				</Item>
				<Item Name="HostMemoryBuffer" Type="FPGA Component Level IP">
					<Property Name="crio.OldestValidLabVIEWVersion" Type="Str">17</Property>
					<Property Name="NI.LV.CLIP.DeclarationCategory" Type="Str"></Property>
					<Property Name="NI.LV.CLIP.SocketedCLIP" Type="Bool">true</Property>
					<Property Name="NI.LV.CLIP.SocketSelection" Type="Str">HostMemoryBuffer</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.SortType" Type="Int">3</Property>
				</Item>
				<Item Name="RMC Socket" Type="FPGA Component Level IP">
					<Property Name="NI.LV.CLIP.DeclarationCategory" Type="Str"></Property>
					<Property Name="NI.LV.CLIP.SocketedCLIP" Type="Bool">true</Property>
					<Property Name="NI.LV.CLIP.SocketSelection" Type="Str">RMC Socket</Property>
					<Property Name="NI.LV.CLIP.SocketSpecificCompileSignature" Type="Str"></Property>
					<Property Name="NI.LV.CLIP.Version" Type="UInt">4</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.SortType" Type="Int">3</Property>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{34D9EBAF-F17B-4D25-9B2F-438806AE00AD}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="IP Builder" Type="IP Builder Target">
					<Item Name="Dependencies" Type="Dependencies"/>
					<Item Name="Build Specifications" Type="Build"/>
				</Item>
				<Item Name="ThreePhasePLL_dev.vi" Type="VI" URL="../FPGA/ThreePhasePLL_dev.vi">
					<Property Name="BuildSpec" Type="Str">{E12FB24D-FFBE-481E-BD8A-943B17F1C4D9}</Property>
					<Property Name="configString.guid" Type="Str">{2428DA94-BD08-4500-87DD-CCD2CF26EABD}"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{34D9EBAF-F17B-4D25-9B2F-438806AE00AD}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{43FEB8B0-54BA-410B-8DEF-32A601C6E822}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{6882F259-1608-4970-91DC-57E461914434}resource=/Scan Clock;0;ReadMethodType=bool{8888E43F-D90C-4D8D-A0C6-2C64F5022476}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{CF18A389-3507-4A91-8254-21C32CD9262E}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolsbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;FPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolreg.host instruction fifo 0"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"sbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\github\ThreePhasePLL\dev\FPGA Bitfiles\ThreePhasePLLdev_FPGATarget_ThreePhasePLLdev_cNgKxiCEvCc.lvbitx</Property>
				</Item>
				<Item Name="ThreePhasePLL.lvlib" Type="Library" URL="../FPGA/ThreePhasePLL.lvlib"/>
				<Item Name="IFwTest.vi" Type="VI" URL="../FPGA/IFwTest.vi">
					<Property Name="BuildSpec" Type="Str">{A3A738EF-EA0A-480C-B4C4-287A6D07FDE3}</Property>
					<Property Name="configString.guid" Type="Str">{2428DA94-BD08-4500-87DD-CCD2CF26EABD}"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{34D9EBAF-F17B-4D25-9B2F-438806AE00AD}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{43FEB8B0-54BA-410B-8DEF-32A601C6E822}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{6882F259-1608-4970-91DC-57E461914434}resource=/Scan Clock;0;ReadMethodType=bool{8888E43F-D90C-4D8D-A0C6-2C64F5022476}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{CF18A389-3507-4A91-8254-21C32CD9262E}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolsbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;FPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolreg.host instruction fifo 0"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"sbRIO-9607/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSSBRIO_9607FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\github\ThreePhasePLL\dev\FPGA Bitfiles\ThreePhasePLLdev_FPGATarget_IFwTest_AXdVPM-7ZFk.lvbitx</Property>
				</Item>
				<Item Name="reg.host instruction fifo 0" Type="FPGA FIFO">
					<Property Name="Actual Number of Elements" Type="UInt">69</Property>
					<Property Name="Arbitration for Read" Type="UInt">1</Property>
					<Property Name="Arbitration for Write" Type="UInt">1</Property>
					<Property Name="Control Logic" Type="UInt">0</Property>
					<Property Name="Data Type" Type="UInt">8</Property>
					<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
					<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=69;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;reg.host instruction fifo 0;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
					<Property Name="fifo.configured" Type="Bool">true</Property>
					<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
					<Property Name="fifo.valid" Type="Bool">true</Property>
					<Property Name="fifo.version" Type="Int">12</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{2428DA94-BD08-4500-87DD-CCD2CF26EABD}</Property>
					<Property Name="Local" Type="Bool">false</Property>
					<Property Name="Memory Type" Type="UInt">2</Property>
					<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
					<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
					<Property Name="Requested Number of Elements" Type="UInt">64</Property>
					<Property Name="Type" Type="UInt">1</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094008000355363400010000000000000000000000000000</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="user.lib" Type="Folder">
						<Item Name="FlpLib General Error Handle.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib General Error Handle.vi"/>
						<Item Name="FlpLib Multiply Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Multiply Latency 0.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Outside SCTL.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Sine &amp; Cosine Outside SCTL.vi"/>
						<Item Name="FlpLib Cosine Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Cosine Shared Instance 4.vi"/>
						<Item Name="FlpLib Cosine Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Cosine Shared Instance 3.vi"/>
						<Item Name="FlpLib Cosine Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Cosine Shared Instance 2.vi"/>
						<Item Name="FlpLib Cosine Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Cosine Shared Instance 1.vi"/>
						<Item Name="FlpLib Cosine Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Cosine Shared Instance 0.vi"/>
						<Item Name="FlpLib Cosine.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Cosine.vi"/>
						<Item Name="FlpLib Multiply SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Multiply SCTL Latency 0.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 4.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 3.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 2.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 1.vi"/>
						<Item Name="FlpLib Multiply Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Multiply Shared Instance 0.vi"/>
						<Item Name="FlpLib Multiply.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Multiply.vi"/>
						<Item Name="FlpLib Add Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Add Latency 0.vi"/>
						<Item Name="FlpLib Add SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Add SCTL Latency 0.vi"/>
						<Item Name="FlpLib Add Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 4.vi"/>
						<Item Name="FlpLib Add Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 3.vi"/>
						<Item Name="FlpLib Add Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 2.vi"/>
						<Item Name="FlpLib Add Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 1.vi"/>
						<Item Name="FlpLib Add Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Add Shared Instance 0.vi"/>
						<Item Name="FlpLib Add.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Add.vi"/>
						<Item Name="FlpLib Compare Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Compare Latency 0.vi"/>
						<Item Name="FlpLib Greater Than SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Greater Than SCTL Latency 0.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 4.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 3.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 2.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 1.vi"/>
						<Item Name="FlpLib Greater Than Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Greater Than Shared Instance 0.vi"/>
						<Item Name="FlpLib Greater Than.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Greater Than.vi"/>
						<Item Name="FlpLib Subtract Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/core/FlpLib Subtract Latency 0.vi"/>
						<Item Name="FlpLib Subtract SCTL Latency 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/insideSCTL/FlpLib Subtract SCTL Latency 0.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 4.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 3.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 2.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 1.vi"/>
						<Item Name="FlpLib Subtract Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Subtract Shared Instance 0.vi"/>
						<Item Name="FlpLib Subtract.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Subtract.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 4.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 3.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 2.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 1.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ABCtoAlphaBeta_3PhaseUnitaryMagnitude/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude 0.vi"/>
						<Item Name="FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/FlpLib ABCtoAlphaBeta_3PhaseUnitaryMagnitude.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 4.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 3.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 2.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 1.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/AlphaBetaToDQ_noSine/FlpLib AlphaBetaToDQ_noSine 0.vi"/>
						<Item Name="FlpLib AlphaBetaToDQ_noSine.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/FlpLib AlphaBetaToDQ_noSine.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 4.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 3.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 2.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 1.vi"/>
						<Item Name="FlpLib In Range and Coerce Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib In Range and Coerce Shared Instance 0.vi"/>
						<Item Name="FlpLib In Range and Coerce.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib In Range and Coerce.vi"/>
						<Item Name="FlpLib PI_Controller 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 4.vi"/>
						<Item Name="FlpLib PI_Controller 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 3.vi"/>
						<Item Name="FlpLib PI_Controller 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 2.vi"/>
						<Item Name="FlpLib PI_Controller 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 1.vi"/>
						<Item Name="FlpLib PI_Controller 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/PI_Controller/FlpLib PI_Controller 0.vi"/>
						<Item Name="FlpLib PI_Controller.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/Control/FlpLib PI_Controller.vi"/>
						<Item Name="FlpLib ThreePhasePLL 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 4.vi"/>
						<Item Name="FlpLib ThreePhasePLL 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 3.vi"/>
						<Item Name="FlpLib ThreePhasePLL 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 2.vi"/>
						<Item Name="FlpLib ThreePhasePLL 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 1.vi"/>
						<Item Name="FlpLib ThreePhasePLL 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/ThreePhasePLL/FlpLib ThreePhasePLL 0.vi"/>
						<Item Name="FlpLib ThreePhasePLL.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/addons/PowerElectronics/FlpLib ThreePhasePLL.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 4.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 4.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 3.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 3.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 2.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 2.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 1.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 1.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine Shared Instance 0.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/outsideSCTL/FlpLib Sine &amp; Cosine Shared Instance 0.vi"/>
						<Item Name="FlpLib Sine &amp; Cosine.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib Sine &amp; Cosine.vi"/>
						<Item Name="FlpLib U32 to SGL Cast.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib U32 to SGL Cast.vi"/>
						<Item Name="FlpLib SGL to U32 Cast.vi" Type="VI" URL="/&lt;userlib&gt;/_NI FLP Library/FPGA/top/FlpLib SGL to U32 Cast.vi"/>
					</Item>
					<Item Name="vi.lib" Type="Folder">
						<Item Name="niFPGA SGL To U32 Cast.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/utilities/niFPGA SGL To U32 Cast.vi"/>
						<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
						<Item Name="lvSimController.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/Simulation/lvSimController.dll"/>
						<Item Name="niFPGA U32 To SGL Cast.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Analysis/utilities/niFPGA U32 To SGL Cast.vi"/>
					</Item>
					<Item Name="instr.lib" Type="Folder">
						<Item Name="niInstr Instruction Framework v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/FPGA/Typedefs/niInstr Instruction Framework v1 FPGA.lvlib"/>
						<Item Name="niInstr Instruction Framework Interfaces v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/FPGA/Interfaces/niInstr Instruction Framework Interfaces v1 FPGA.lvlib"/>
						<Item Name="niInstr Instruction Framework Helper Classes v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/FPGA/Helper Classes/niInstr Instruction Framework Helper Classes v1 FPGA.lvlib"/>
						<Item Name="niInstr Instruction Framework Top Level Bus v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/FPGA/Top Level Bus/niInstr Instruction Framework Top Level Bus v1 FPGA.lvlib"/>
						<Item Name="niInstr Basic Elements v1 FPGA.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/niInstr Basic Elements v1 FPGA.lvlib"/>
						<Item Name="niInstr FIFO Register Bus v1 FPGA.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/FIFO Register Bus/v1/FPGA/niInstr FIFO Register Bus v1 FPGA.lvclass"/>
						<Item Name="niInstr FIFO Register Bus v1 Shared.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/FIFO Register Bus/v1/Shared/niInstr FIFO Register Bus v1 Shared.lvlib"/>
						<Item Name="DFlopBasicElements_C792537791DE412E8810E138F5BC4696.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DFlopBEPresetSimFiles/DFlopBasicElements_C792537791DE412E8810E138F5BC4696.dll"/>
						<Item Name="xsimkC792537791DE412E8810E138F5BC4696.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DFlopBEPresetSimFiles/xsim.dir/DFlopBasicElements/xsimkC792537791DE412E8810E138F5BC4696.dll"/>
						<Item Name="DFlopBasicElements_0B830B7E81994019B09E50CE7A175B36.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DFlopBEResetSimFiles/DFlopBasicElements_0B830B7E81994019B09E50CE7A175B36.dll"/>
						<Item Name="xsimk0B830B7E81994019B09E50CE7A175B36.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DFlopBEResetSimFiles/xsim.dir/DFlopBasicElements/xsimk0B830B7E81994019B09E50CE7A175B36.dll"/>
						<Item Name="DoubleSyncBasicElements_C792537791DE412E8810E138F5BC4696.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/DblSyncBEResetSimFiles/DoubleSyncBasicElements_C792537791DE412E8810E138F5BC4696.dll"/>
						<Item Name="MaxFanoutFf_E0EDB5E65B8B49DD8E163F5688E824C1.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_4SimFiles/MaxFanoutFf_E0EDB5E65B8B49DD8E163F5688E824C1.dll"/>
						<Item Name="xsimkE0EDB5E65B8B49DD8E163F5688E824C1.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_4SimFiles/xsim.dir/MaxFanoutFf/xsimkE0EDB5E65B8B49DD8E163F5688E824C1.dll"/>
						<Item Name="MaxFanoutFf_6A315D12FBC743E4ACD121A1951E87AC.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_8SimFiles/MaxFanoutFf_6A315D12FBC743E4ACD121A1951E87AC.dll"/>
						<Item Name="xsimk6A315D12FBC743E4ACD121A1951E87AC.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_8SimFiles/xsim.dir/MaxFanoutFf/xsimk6A315D12FBC743E4ACD121A1951E87AC.dll"/>
						<Item Name="MaxFanoutFf_36915C3B0A964A738AD3121E87CF92C2.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_16SimFiles/MaxFanoutFf_36915C3B0A964A738AD3121E87CF92C2.dll"/>
						<Item Name="xsimk36915C3B0A964A738AD3121E87CF92C2.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_16SimFiles/xsim.dir/MaxFanoutFf/xsimk36915C3B0A964A738AD3121E87CF92C2.dll"/>
						<Item Name="MaxFanoutFf_417FC7712F0F4A3C95450BAF224B3F38.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_32SimFiles/MaxFanoutFf_417FC7712F0F4A3C95450BAF224B3F38.dll"/>
						<Item Name="xsimk417FC7712F0F4A3C95450BAF224B3F38.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Public/ModGen/ff_max_fanout_32SimFiles/xsim.dir/MaxFanoutFf/xsimk417FC7712F0F4A3C95450BAF224B3F38.dll"/>
						<Item Name="FourInputGlitchFreeMuxBasicElements_B15BA4892E5F4023A51AA2E61B6FD011.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/GlitchlessMux_4InputSimFiles/FourInputGlitchFreeMuxBasicElements_B15BA4892E5F4023A51AA2E61B6FD011.dll"/>
						<Item Name="xsimkB15BA4892E5F4023A51AA2E61B6FD011.dll" Type="Document" URL="/&lt;instrlib&gt;/_niInstr/Basic Elements/v1/FPGA/Private/GlitchlessMux_4InputSimFiles/xsim.dir/FourInputGlitchFreeMuxBasicElements/xsimkB15BA4892E5F4023A51AA2E61B6FD011.dll"/>
					</Item>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="ThreePhasePLL_dev" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">ThreePhasePLL_dev</Property>
						<Property Name="Comp.BitfileName" Type="Str">ThreePhasePLLdev_FPGATarget_ThreePhasePLLdev_cNgKxiCEvCc.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/github/ThreePhasePLL/dev/FPGA Bitfiles/ThreePhasePLLdev_FPGATarget_ThreePhasePLLdev_cNgKxiCEvCc.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/ThreePhasePLLdev_FPGATarget_ThreePhasePLLdev_cNgKxiCEvCc.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/github/ThreePhasePLL/dev/ThreePhasePLL_dev.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/sbRIO9607/Chassis/FPGA Target/ThreePhasePLL_dev.vi</Property>
					</Item>
					<Item Name="IFwTest" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">IFwTest</Property>
						<Property Name="Comp.BitfileName" Type="Str">ThreePhasePLLdev_FPGATarget_IFwTest_AXdVPM-7ZFk.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/github/ThreePhasePLL/dev/FPGA Bitfiles/ThreePhasePLLdev_FPGATarget_IFwTest_AXdVPM-7ZFk.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/ThreePhasePLLdev_FPGATarget_IFwTest_AXdVPM-7ZFk.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/github/ThreePhasePLL/dev/ThreePhasePLL_dev.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/sbRIO9607/Chassis/FPGA Target/IFwTest.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="CoreTestHarness.vi" Type="VI" URL="../../CoreTestHarness.vi"/>
		<Item Name="InterfaceTest.vi" Type="VI" URL="../InterfaceTest.vi"/>
		<Item Name="ThreePhasePLLInterface.lvlib" Type="Library" URL="../Interface/ThreePhasePLLInterface.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niInstr FIFO Register Bus v1 Host.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/FIFO Register Bus/v1/Host/niInstr FIFO Register Bus v1 Host.lvclass"/>
				<Item Name="niInstr Instruction Framework Context v1 Host.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/Host/Instruction Framework Context/niInstr Instruction Framework Context v1 Host.lvclass"/>
				<Item Name="niInstr Instruction Target v1 Host.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/Host/Instruction Target/niInstr Instruction Target v1 Host.lvclass"/>
				<Item Name="niInstr Subsystem Map v1 Host.lvclass" Type="LVClass" URL="/&lt;instrlib&gt;/_niInstr/Instruction Framework/v1/Host/Subsystem Map/niInstr Subsystem Map v1 Host.lvclass"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="AFE_interface.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/PowerElectronicsControl/ActiveFrontEnd/AFE_Interface/AFE_interface.lvlib"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niifwu.dll" Type="Document" URL="/&lt;resource&gt;/niifwu.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
