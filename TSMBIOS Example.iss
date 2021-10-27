[Setup]
AppId=TSMBIOS Example
AppName=TSMBIOS Example
AppVersion=1.0
CreateAppDir=no
Uninstallable=no
DisableFinishedPage=yes
PrivilegesRequired=lowest
#If Ver < 0x06002000
WizardSmallImageFile=compiler:WizModernSmallImage-IS.bmp
#Else
WizardSmallImageFile=compiler:WizClassicSmallImage-IS.bmp
#EndIf
OutputDir=.
OutputBaseFilename=TSMBIOS Example
WizardResizable=yes

[Types]
Name: "SmbiosVersion"; Description: "Smbios Version"; Check: SMBiosNotNil();
Name: "BiosInformation"; Description: "Bios Information"; Check: SMBiosNotNil();
Name: "SysInformation"; Description: "Sys Information"; Check: SMBiosNotNil();
Name: "BaseBoardInformation"; Description: "Base Board Information"; Check: HasBaseBoardInformation();
Name: "EnclosureInformation"; Description: "Enclosure Information"; Check: HasEnclosureInformation();
Name: "CacheInformation"; Description: "Cache Information"; Check: HasCacheInformation();
Name: "ProcessorInformation"; Description: "Processor Information"; Check: HasProcessorInformation();
Name: "MemoryControllerInformation"; Description: "Memory Controller Information"; Check: HasMemoryControllerInformation();
Name: "PortConnectorInformation"; Description: "Port Connector Information"; Check: HasPortConnectorInformation();
Name: "SystemSlotInformation"; Description: "System Slot Information"; Check: HasSystemSlotInformation();
Name: "OnBoardSystemInformation"; Description: "OnBoard System Information"; Check: HasOnBoardSystemInformation();
Name: "OEMStringsInformation"; Description: "OEM Strings Information"; Check: HasOEMStringsInformation();
Name: "BIOSLanguageInformation"; Description: "BIOS Language Information"; Check: HasBIOSLanguageInformation();
Name: "SystemConfInformation"; Description: "System Conf Information"; Check: HasSystemConfInformation();
Name: "PhysicalMemoryArrayInformation"; Description: "Physical Memory Array Information"; Check: HasPhysicalMemoryArrayInformation();
Name: "MemoryDeviceInformation"; Description: "Memory Device Information"; Check: HasMemoryDeviceInformation();
Name: "MemoryModuleInformation"; Description: "Memory Module Information"; Check: HasMemoryModuleInformation();
Name: "BatteryInformation"; Description: "Battery Information"; Check: HasBatteryInformation();
Name: "MemoryArrayMappedAddressInformation"; Description: "Memory Array Mapped Address Information"; Check: HasMemoryArrayMappedAddressInformation();
Name: "MemoryDeviceMappedAddressInformation"; Description: "Memory Device Mapped Address Information"; Check: HasMemoryDeviceMappedAddressInformation();
Name: "BuiltInPointingDeviceInformation"; Description: "BuiltIn Pointing Device Information"; Check: HasBuiltInPointingDeviceInformation();
Name: "VoltageProbeInformation"; Description: "Voltage Probe Information"; Check: HasVoltageProbeInformation();
Name: "CoolingDeviceInformation"; Description: "Cooling Device Information"; Check: HasCoolingDeviceInformation();
Name: "TemperatureProbeInformation"; Description: "Temperature Probe Information"; Check: HasTemperatureProbeInformation();
Name: "ElectricalCurrentProbeInformation"; Description: "Electrical Current Probe Information"; Check: HasElectricalCurrentProbeInformation();
Name: "GroupAssociationsInformation"; Description: "Group Associations Information"; Check: HasGroupAssociationsInformation();

Name: "all"; Description: "^ Show ALL of the above ^"; Check: SMBiosNotNil();

[Components]
Name: "a"; Description: "a";

#Include "TSMBIOS.isi"

[code]
Var
  SMBios: TSMBios;

// ---

Function SMBiosNotNil(): Boolean;
  begin
    Result := SMBios <> nil;
end;

Function HasBaseBoardInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasBaseBoardInfo(SMBios);
end;

Function HasEnclosureInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasEnclosureInfo(SMBios);
end;

Function HasCacheInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasCacheInfo(SMBios);
end;

Function HasProcessorInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasProcessorInfo(SMBios);
end;

Function HasMemoryControllerInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasMemoryControllerInfo(SMBios);
end;

Function HasPortConnectorInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasPortConnectorInfo(SMBios);
end;

Function HasSystemSlotInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasSystemSlotInfo(SMBios);
end;

Function HasOnBoardSystemInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasOnBoardSystemInfo(SMBios);
end;

Function HasOEMStringsInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasOEMStringsInfo(SMBios);
end;

Function HasBIOSLanguageInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasBIOSLanguageInfo(SMBios);
end;

Function HasSystemConfInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasSystemConfInfo(SMBios);
end;

Function HasPhysicalMemoryArrayInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasPhysicalMemoryArrayInfo(SMBios);
end;

Function HasMemoryDeviceInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasMemoryDeviceInfo(SMBios);
end;

Function HasMemoryModuleInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasMemoryModuleInfo(SMBios);
end;

Function HasBatteryInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasBatteryInfo(SMBios);
end;

Function HasMemoryArrayMappedAddressInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasMemoryArrayMappedAddressInfo(SMBios);
end;

Function HasMemoryDeviceMappedAddressInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasMemoryDeviceMappedAddressInfo(SMBios);
end;

Function HasBuiltInPointingDeviceInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasBuiltInPointingDeviceInfo(SMBios);
end;

Function HasVoltageProbeInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasVoltageProbeInfo(SMBios);
end;

Function HasCoolingDeviceInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasCoolingDeviceInfo(SMBios);
end;

Function HasTemperatureProbeInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasTemperatureProbeInfo(SMBios);
end;

Function HasElectricalCurrentProbeInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasElectricalCurrentProbeInfo(SMBios);
end;

Function HasGroupAssociationsInformation(): Boolean;
  begin
    Result := SMBiosNotNil();
    If Result then
      Result := HasGroupAssociationsInfo(SMBios);
end;

// ---

Procedure SmbiosVersionInfo(ClearItems: Boolean);
  begin
    With WizardForm.ComponentsList do
    begin
      if ClearItems then
        Items.Clear
      else
        AddGroup('', '', 0, nil );
      AddGroup( 'Smbios Version', SmbiosVersion(SMBios), 0, nil );
    end;
end;

Procedure BiosInformation(ClearItems: Boolean);
  Var
    BI: TBiosInformation;
    Level: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If BiosInfo(SMBios, BI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With BI do
        begin
          Level := 0;
          AddGroup( 'Bios Information:', '', Level, nil );
          Level := Level + 1;
          AddGroup( 'VendorStr', VendorStr, Level, nil );
          AddGroup( 'VersionStr', VersionStr, Level, nil );
          AddGroup( 'ReleaseDateStr', ReleaseDateStr, Level, nil );
          AddGroup( 'RAWBiosInformation:', '', Level, nil );
          With RAWBiosInformation do
          begin
            Level := Level + 1;
            AddGroup( 'BiosRomSize', Format('%d (0x%x)', [BiosRomSize, BiosRomSize]), Level, nil );
          end;
        end;
      end;
    end;
end;

Procedure SysInformation(ClearItems: Boolean);
  Var
    SI: TSystemInformation;
    Level: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If SysInfo(SMBios, SI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With SI do
        begin
          Level := 0;
          AddGroup( 'Sys Information:', '', Level, nil );
          Level := Level + 1;
          AddGroup( 'ManufacturerStr', ManufacturerStr, Level, nil );
          AddGroup( 'ProductNameStr', ProductNameStr, Level, nil );
          AddGroup( 'VersionStr', VersionStr, Level, nil );
          AddGroup( 'SerialNumberStr', SerialNumberStr, Level, nil );
          AddGroup( 'SKUNumberStr', SKUNumberStr, Level, nil );
          AddGroup( 'FamilyStr', FamilyStr, Level, nil );
        end;
      end;
    end;
end;

Procedure BaseBoardInformation(ClearItems: Boolean);
  Var
    BBI: TBaseBoardInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If BaseBoardInfo(SMBios, Index, BBI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With BBI do
        begin
          Level := 0;
          AddGroup( 'Base Board Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If BaseBoardInfo(SMBios, Index, BBI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'BoardTypeStr', BoardTypeStr, Level+1, nil );
              AddGroup( 'ManufacturerStr', ManufacturerStr, Level+1, nil );
              AddGroup( 'ProductStr', ProductStr, Level+1, nil );
              AddGroup( 'VersionStr', VersionStr, Level+1, nil );
              AddGroup( 'SerialNumberStr', SerialNumberStr, Level+1, nil );
              AddGroup( 'AssetTagStr', AssetTagStr, Level+1, nil );
              AddGroup( 'LocationinChassisStr', LocationinChassisStr, Level+1, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure EnclosureInformation(ClearItems: Boolean);
  Var
    EI: TEnclosureInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If EnclosureInfo(SMBios, Index, EI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With EI do
        begin
          Level := 0;
          AddGroup( 'Enclosure Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If EnclosureInfo(SMBios, Index, EI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'ManufacturerStr', ManufacturerStr, Level+1, nil );
              AddGroup( 'VersionStr', VersionStr, Level+1, nil );
              AddGroup( 'SerialNumberStr', SerialNumberStr, Level+1, nil );
              AddGroup( 'AssetTagNumberStr', AssetTagNumberStr, Level+1, nil );
              AddGroup( 'TypeStr', TypeStr, Level+1, nil );
              AddGroup( 'BootUpStateStr', BootUpStateStr, Level+1, nil );
              AddGroup( 'PowerSupplyStateStr', PowerSupplyStateStr, Level+1, nil );
            end;
            AddGroup( 'RAWEnclosureInformation:', '', Level+1, nil );
            With RAWEnclosureInformation do
              AddGroup( 'NumberofPowerCords', Format('%d (0x%x)', [NumberofPowerCords+1, NumberofPowerCords+1]), Level+2, nil );
          end;
        end;
      end;
    end;
end;

Function TCacheSRAMTypes2Str(CacheSRAMTypes: TCacheSRAMTypes): String;
  begin
    Result := '';
    If SROther In CacheSRAMTypes then
      Result :=  Result + ' Other';
    If SRUnknown In CacheSRAMTypes then
      Result := Result + ' Unknown';
    If SRNon_Burst In CacheSRAMTypes then
      Result := Result + ' Non_Burst';
    If SRBurst In CacheSRAMTypes then
      Result := Result + ' Burst';
    If SRPipelineBurst In CacheSRAMTypes then
      Result := Result + ' PipelineBurst';
    If SRSynchronous In CacheSRAMTypes then
      Result := Result + ' Synchronous';
    If SRAsynchronous In CacheSRAMTypes then
      Result := Result + ' Asynchronous';
    If Length(Result) > 0 then
      Delete(Result, 1, 1);
end;

Function TErrorCorrectionType2Str(ErrorCorrectionType: TErrorCorrectionType): String;
  begin
    Result := '';
    Case ErrorCorrectionType of
      ECFiller: Result := 'Filler';
      ECOther: Result := 'Other';
      ECUnknown: Result := 'Unknown';
      ECNone: Result := 'None';
      ECParity: Result := 'Parity';
      ECSingle_bitECC: Result := 'Single_bitECC';
      ECMulti_bitECC: Result := 'Multi_bitECC';
    end;
end;

Function TSystemCacheType2Str(SystemCacheType: TSystemCacheType): String;
  begin
    Result := '';
    Case SystemCacheType of
      SCFiller: Result := 'Filler';
      SCOther: Result := 'Other';
      SCUnknown: Result := 'Unknown';
      SCInstruction: Result := 'Instruction';
      SCData: Result := 'Data';
      SCUnified: Result := 'Unified';
    end;
end;

Procedure CacheInformation(ClearItems: Boolean);
  Var
    CI: TCacheInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If CacheInfo(SMBios, Index, CI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With CI do
        begin
          Level := 0;
          AddGroup( 'Cache Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If CacheInfo(SMBios, Index, CI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'SocketDesignationStr', SocketDesignationStr, Level+1, nil );
              AddGroup( 'MaximumCacheSize', Format('%d (0x%x)', [MaximumCacheSize, MaximumCacheSize]), Level+1, nil );
              AddGroup( 'InstalledCacheSize', Format('%d (0x%x)', [InstalledCacheSize, InstalledCacheSize]), Level+1, nil );
              AddGroup( 'SupportedSRAMType', TCacheSRAMTypes2Str(SupportedSRAMType), Level+1, nil );
              AddGroup( 'CurrentSRAMType', TCacheSRAMTypes2Str(CurrentSRAMType), Level+1, nil );
              AddGroup( 'ErrorCorrectionType', TErrorCorrectionType2Str(ErrorCorrectionType), Level+1, nil );
              AddGroup( 'SystemCacheType', TSystemCacheType2Str(SystemCacheType), Level+1, nil );
              AddGroup( 'AssociativityStr', AssociativityStr, Level+1, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure ProcessorInformation(ClearItems: Boolean);
  Var
    PI: TProcessorInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If ProcessorInfo(SMBios, Index, PI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With PI do
        begin
          Level := 0;
          AddGroup( 'Processor Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If ProcessorInfo(SMBios, Index, PI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
(* if you want to see it again ->
              AddGroup( 'L1Cache:', '', Level+1, nil );
              With L1Chache do
              begin
                AddGroup( 'SocketDesignationStr', SocketDesignationStr, Level+2, nil );
                AddGroup( 'MaximumCacheSize', Format('%d (0x%x)', [MaximumCacheSize, MaximumCacheSize]), Level+2, nil );
                AddGroup( 'InstalledCacheSize', Format('%d (0x%x)', [InstalledCacheSize, InstalledCacheSize]), Level+2, nil );
                AddGroup( 'SupportedSRAMType', TCacheSRAMTypes2Str(SupportedSRAMType), Level+2, nil );
                AddGroup( 'CurrentSRAMType', TCacheSRAMTypes2Str(CurrentSRAMType), Level+2, nil );
                AddGroup( 'ErrorCorrectionType', TErrorCorrectionType2Str(ErrorCorrectionType), Level+2, nil );
                AddGroup( 'SystemCacheType', TSystemCacheType2Str(SystemCacheType), Level+2, nil );
                AddGroup( 'AssociativityStr', AssociativityStr, Level+2, nil );
              end;
              AddGroup( 'L2Cache', '', Level+1, nil );
              With L2Chache do
              begin
                AddGroup( 'SocketDesignationStr', SocketDesignationStr, Level+2, nil );
                AddGroup( 'MaximumCacheSize', Format('%d (0x%x)', [MaximumCacheSize, MaximumCacheSize]), Level+2, nil );
                AddGroup( 'InstalledCacheSize', Format('%d (0x%x)', [InstalledCacheSize, InstalledCacheSize]), Level+2, nil );
                AddGroup( 'SupportedSRAMType', TCacheSRAMTypes2Str(SupportedSRAMType), Level+2, nil );
                AddGroup( 'CurrentSRAMType', TCacheSRAMTypes2Str(CurrentSRAMType), Level+2, nil );
                AddGroup( 'ErrorCorrectionType', TErrorCorrectionType2Str(ErrorCorrectionType), Level+2, nil );
                AddGroup( 'SystemCacheType', TSystemCacheType2Str(SystemCacheType), Level+2, nil );
                AddGroup( 'AssociativityStr', AssociativityStr, Level+2, nil );
              end;
              AddGroup( 'L3Cache', '', Level+1, nil );
              With L3Chache do
              begin
                AddGroup( 'SocketDesignationStr', SocketDesignationStr, Level+2, nil );
                AddGroup( 'MaximumCacheSize', Format('%d (0x%x)', [MaximumCacheSize, MaximumCacheSize]), Level+2, nil );
                AddGroup( 'InstalledCacheSize', Format('%d (0x%x)', [InstalledCacheSize, InstalledCacheSize]), Level+2, nil );
                AddGroup( 'SupportedSRAMType', TCacheSRAMTypes2Str(SupportedSRAMType), Level+2, nil );
                AddGroup( 'CurrentSRAMType', TCacheSRAMTypes2Str(CurrentSRAMType), Level+2, nil );
                AddGroup( 'ErrorCorrectionType', TErrorCorrectionType2Str(ErrorCorrectionType), Level+2, nil );
                AddGroup( 'SystemCacheType', TSystemCacheType2Str(SystemCacheType), Level+2, nil );
                AddGroup( 'AssociativityStr', AssociativityStr, Level+2, nil );
              end;
<- if you want to see it again *)
              AddGroup( 'ProcessorManufacturerStr', ProcessorManufacturerStr, Level+1, nil );
              AddGroup( 'SocketDesignationStr', SocketDesignationStr, Level+1, nil );
              AddGroup( 'ProcessorTypeStr', ProcessorTypeStr, Level+1, nil );
              AddGroup( 'ProcessorFamilyStr', ProcessorFamilyStr, Level+1, nil );
              AddGroup( 'ProcessorVersionStr', ProcessorVersionStr, Level+1, nil );
              AddGroup( 'ProcessorVoltaje', Format('%.3f', [ProcessorVoltaje]), Level+1, nil );
              AddGroup( 'ProcessorUpgradeStr', ProcessorUpgradeStr, Level+1, nil );
              AddGroup( 'SerialNumberStr', SerialNumberStr, Level+1, nil );
              AddGroup( 'AssetTagStr', AssetTagStr, Level+1, nil );
              AddGroup( 'PartNumberStr', PartNumberStr, Level+1, nil );
            end;
            AddGroup( 'RAWProcessorInformation:', '', Level+1, nil );
            With RAWProcessorInformation do
            begin
              AddGroup( 'ProcessorID', Format('%x', [ProcessorID]), Level+2, nil );
              AddGroup( 'ExternalClock', IntToStr(ExternalClock), Level+2, nil );
              AddGroup( 'MaxSpeed', IntToStr(MaxSpeed), Level+2, nil );
              AddGroup( 'CurrentSpeed', IntToStr(CurrentSpeed), Level+2, nil );
              AddGroup( 'CoreCount', IntToStr(CoreCount), Level+2, nil );
              AddGroup( 'ThreadCount', IntToStr(ThreadCount), Level+2, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure MemoryControllerInformation(ClearItems: Boolean);
  Var
    MCI: TMemoryControllerInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If MemoryControllerInfo(SMBios, Index, MCI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With MCI do
        begin
          Level := 0;
          AddGroup( 'Memory Controller Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If MemoryControllerInfo(SMBios, Index, MCI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'ErrorDetectingMethodDescr', ErrorDetectingMethodDescr, Level+1, nil );
              AddGroup( 'SupportedInterleaveDescr', SupportedInterleaveDescr, Level+1, nil );
              AddGroup( 'CurrentInterleaveDescr', CurrentInterleaveDescr, Level+1, nil );
              AddGroup( 'RAWMemoryControllerInformation:', '', Level+1, nil );
              With RAWMemoryControllerInformation do
              begin
                AddGroup( 'MaximumMemoryModuleSize', IntToStr(MaximumMemoryModuleSize), Level+2, nil );
                AddGroup( 'SupportedSpeeds', IntToStr(SupportedSpeeds), Level+2, nil );
                AddGroup( 'SupportedMemoryTypes', IntToStr(SupportedMemoryTypes), Level+2, nil );
                AddGroup( 'MemoryModuleVoltage', IntToStr(MemoryModuleVoltage), Level+2, nil );
                AddGroup( 'NumberofAssociatedMemorySlots', IntToStr(NumberofAssociatedMemorySlots), Level+2, nil );
                AddGroup( 'MemoryModuleConfigurationHandles', IntToStr(MemoryModuleConfigurationHandles), Level+2, nil );
                AddGroup( 'EnabledErrorCorrectingCapabilities', IntToStr(EnabledErrorCorrectingCapabilities), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure PortConnectorInformation(ClearItems: Boolean);
  Var
    PCI: TPortConnectorInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If PortConnectorInfo(SMBios, Index, PCI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With PCI do
        begin
          Level := 0;
          AddGroup( 'Port Connector Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If PortConnectorInfo(SMBios, Index, PCI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'InternalReferenceDesignatorStr', InternalReferenceDesignatorStr, Level+1, nil );
              AddGroup( 'ConnectorType', ConnectorType, Level+1, nil );
              AddGroup( 'ExternalReferenceDesignatorStr', ExternalReferenceDesignatorStr, Level+1, nil );
              AddGroup( 'PortTypeStr', PortTypeStr, Level+1, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure SystemSlotInformation(ClearItems: Boolean);
  Var
    SSI: TSystemSlotInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If SystemSlotInfo(SMBios, Index, SSI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With SSI do
        begin
          Level := 0;
          AddGroup( 'System Slot Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If SystemSlotInfo(SMBios, Index, SSI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'SlotDesignationStr', SlotDesignationStr, Level+1, nil );
              AddGroup( 'SlotType', SlotType, Level+1, nil );
              AddGroup( 'SlotDataBusWidth', SlotDataBusWidth, Level+1, nil );
              AddGroup( 'CurrentUsage', CurrentUsage, Level+1, nil );
              AddGroup( 'SlotLength', SlotLength, Level+1, nil );
              AddGroup( 'RAWSystemSlotInformation:', '', Level+1, nil );
              With RAWSystemSlotInformation do
              begin
                AddGroup( 'SlotID', IntToStr(SlotID), Level+2, nil );
                AddGroup( 'BusNumber', IntToStr(BusNumber), Level+2, nil );
                AddGroup( 'DeviceFunctionNumber', IntToStr(DeviceFunctionNumber), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Function Bool2Str(TrueFalse: Boolean): String;
  begin
    If TrueFalse then
      Result := 'True'
    else
      Result := 'False';
end;

Procedure OnBoardSystemInformation(ClearItems: Boolean);
  Var
    OSI: TOnBoardSystemInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If OnBoardSystemInfo(SMBios, Index, OSI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With OSI do
        begin
          Level := 0;
          AddGroup( 'On Board System Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If OnBoardSystemInfo(SMBios, Index, OSI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'Description', Description, Level+1, nil );
              AddGroup( 'Enabled', Bool2Str(Enabled), Level+1, nil );
              AddGroup( 'TypeDescription', TypeDescription, Level+1, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure OEMStringsInformation(ClearItems: Boolean);
  Var
    OEMSI: TOEMStringsInformation;
    Level: Integer;
    Index: Integer;
    i, w: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If OEMStringsInfo(SMBios, Index, OEMSI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With OEMSI do
        begin
          Level := 0;
          AddGroup( 'OEM Strings Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If OEMStringsInfo(SMBios, Index, OEMSI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'OEMStrings:', '', Level+1, nil );
              For w := 0 to GetArrayLength(OEMStrings)-1 do
                AddGroup( 'OEMString[' + IntToStr(w+1) + ']', OEMStrings[w], Level+2, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure BIOSLanguageInformation(ClearItems: Boolean);
  Var
    BIOSLI: TBIOSLanguageInformation;
    Level: Integer;
    Index: Integer;
    i, w: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If BIOSLanguageInfo(SMBios, Index, BIOSLI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With BIOSLI do
        begin
          Level := 0;
          AddGroup( 'BIOS Language Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If BIOSLanguageInfo(SMBios, Index, BIOSLI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'LanguagesStrings:', '', Level+1, nil );
              For w := 0 to GetArrayLength(LanguagesStrings)-1 do
                AddGroup( 'LanguageString[' + IntToStr(w+1) + ']', LanguagesStrings[w], Level+2, nil );
              AddGroup( 'CurrentLanguageStr', CurrentLanguageStr, Level+1, nil );
              AddGroup( 'RAWBIOSLanguageInformation:', '', Level+1, nil );
              With RAWBIOSLanguageInformation do
              begin
                AddGroup( 'InstallableLanguages', IntToStr(InstallableLanguages), Level+2, nil );
                AddGroup( 'CurrentLanguage', IntToStr(CurrentLanguage), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure SystemConfInformation(ClearItems: Boolean);
  Var
    SCI: TSystemConfInformation;
    Level: Integer;
    Index: Integer;
    i, w: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If SystemConfInfo(SMBios, Index, SCI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With SCI do
        begin
          Level := 0;
          AddGroup( 'System Conf Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If SystemConfInfo(SMBios, Index, SCI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'ConfStrings:', '', Level+1, nil );
              For w := 0 to GetArrayLength(ConfStrings)-1 do
                AddGroup( 'ConfString[' + IntToStr(w+1) + ']', ConfStrings[w], Level+2, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure PhysicalMemoryArrayInformation(ClearItems: Boolean);
  Var
    PMAI: TPhysicalMemoryArrayInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If PhysicalMemoryArrayInfo(SMBios, Index, PMAI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With PMAI do
        begin
          Level := 0;
          AddGroup( 'Physical Memory Array Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If PhysicalMemoryArrayInfo(SMBios, Index, PMAI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'LocationStr', LocationStr, Level+1, nil );
              AddGroup( 'UseStr', UseStr, Level+1, nil );
              AddGroup( 'ErrorCorrectionStr', ErrorCorrectionStr, Level+1, nil );
              AddGroup( 'RAWPhysicalMemoryArrayInformation:', '', Level+1, nil );
              With RAWPhysicalMemoryArrayInformation do
              begin
                AddGroup( 'MaximumCapacity', Format('%d (0x%x)', [MaximumCapacity/1024/1024, MaximumCapacity]), Level+2, nil );
                AddGroup( 'NumberofMemoryDevices', IntToStr(NumberofMemoryDevices), Level+2, nil );
                AddGroup( 'ExtendedMaximumCapacity', IntToStr(ExtendedMaximumCapacity), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure MemoryDeviceInformation(ClearItems: Boolean);
  Var
    MDI: TMemoryDeviceInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If MemoryDeviceInfo(SMBios, Index, MDI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With MDI do
        begin
          Level := 0;
          AddGroup( 'Memory Device Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If MemoryDeviceInfo(SMBios, Index, MDI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
(* if you want to see it again ->
              AddGroup( 'PhysicalMemoryArray:', '', Level+1, nil );
              With PhysicalMemoryArray do
              begin
                AddGroup( 'LocationStr', LocationStr, Level+2, nil );
                AddGroup( 'UseStr', UseStr, Level+2, nil );
                AddGroup( 'ErrorCorrectionStr', ErrorCorrectionStr, Level+2, nil );
                AddGroup( 'RAWPhysicalMemoryArrayInformation:', '', Level+2, nil );
                With RAWPhysicalMemoryArrayInformation do
                begin
                  AddGroup( 'MaximumCapacity', Format('%d (0x%x)', [MaximumCapacity/1024/1024, MaximumCapacity]), Level+3, nil );
                  AddGroup( 'NumberofMemoryDevices', IntToStr(NumberofMemoryDevices), Level+3, nil );
                  AddGroup( 'ExtendedMaximumCapacity', IntToStr(ExtendedMaximumCapacity), Level+3, nil );
                end;
              end;
<- if you want to see it again *)
              AddGroup( 'Size', Format('%d (0x%x)', [Size/1024, Size]), Level+1, nil );
              AddGroup( 'FormFactor', FormFactor, Level+1, nil );
              AddGroup( 'DeviceLocatorStr', DeviceLocatorStr, Level+1, nil );
              AddGroup( 'BankLocatorStr', BankLocatorStr, Level+1, nil );
              AddGroup( 'MemoryTypeStr', MemoryTypeStr, Level+1, nil );
              AddGroup( 'ManufacturerStr', ManufacturerStr, Level+1, nil );
              AddGroup( 'SerialNumberStr', SerialNumberStr, Level+1, nil );
              AddGroup( 'AssetTagStr', AssetTagStr, Level+1, nil );
              AddGroup( 'PartNumberStr', PartNumberStr, Level+1, nil );
              AddGroup( 'RAWMemoryDeviceInfo:', '', Level+1, nil );
              With RAWMemoryDeviceInfo do
              begin
                AddGroup( 'Speed', IntToStr(Speed), Level+2, nil );
                AddGroup( 'ExtendedSize', IntToStr(ExtendedSize), Level+2, nil );
                AddGroup( 'ConfiguredMemoryClockSpeed', IntToStr(ConfiguredMemoryClockSpeed/1000/1000), Level+2, nil );
                AddGroup( 'MinimumVoltage', IntToStr(MinimumVoltage), Level+2, nil );
                AddGroup( 'MaximumVoltage', IntToStr(MaximumVoltage), Level+2, nil );
                AddGroup( 'ConfiguredVoltage', IntToStr(ConfiguredVoltage), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure MemoryModuleInformation(ClearItems: Boolean);
  Var
    MMI: TMemoryModuleInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If MemoryModuleInfo(SMBios, Index, MMI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With MMI do
        begin
          Level := 0;
          AddGroup( 'Memory ModuleIn formation:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If MemoryModuleInfo(SMBios, Index, MMI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'SocketDesignationDescr', SocketDesignationDescr, Level+1, nil );
              AddGroup( 'RAWMemoryModuleInformation:', '', Level+1, nil );
              With RAWMemoryModuleInformation do
              begin
                AddGroup( 'SocketDesignation', IntToStr(SocketDesignation), Level+2, nil );
                AddGroup( 'BankConnections', IntToStr(BankConnections), Level+2, nil );
                AddGroup( 'CurrentSpeed', IntToStr(CurrentSpeed/1000/1000), Level+2, nil );
                AddGroup( 'InstalledSize', IntToStr(InstalledSize/1024/1024), Level+2, nil );
                AddGroup( 'EnabledSize', IntToStr(EnabledSize), Level+2, nil );
                AddGroup( 'ErrorStatus', IntToStr(ErrorStatus), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure BatteryInformation(ClearItems: Boolean);
  Var
    BI: TBatteryInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If BatteryInfo(SMBios, Index, BI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With BI do
        begin
          Level := 0;
          AddGroup( 'Battery Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If BatteryInfo(SMBios, Index, BI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'LocationStr', LocationStr, Level+1, nil );
              AddGroup( 'ManufacturerStr', ManufacturerStr, Level+1, nil );
              AddGroup( 'ManufacturerDateStr', ManufacturerDateStr, Level+1, nil );
              AddGroup( 'SerialNumberStr', SerialNumberStr, Level+1, nil );
              AddGroup( 'DeviceNameStr', DeviceNameStr, Level+1, nil );
              AddGroup( 'DeviceChemistry', DeviceChemistry, Level+1, nil );
              AddGroup( 'SBDSVersionNumberStr', SBDSVersionNumberStr, Level+1, nil );
              AddGroup( 'SBDSManufacturerDate', DateToStr(SBDSManufacturerDate), Level+1, nil );
              AddGroup( 'SBDSDeviceChemistryStr', SBDSDeviceChemistryStr, Level+1, nil );
              AddGroup( 'RAWBatteryInfo:', '', Level+1, nil );
              With RAWBatteryInfo do
              begin
                AddGroup( 'DesignCapacity', IntToStr(DesignCapacity), Level+2, nil );
                AddGroup( 'DesignVoltage', IntToStr(DesignVoltage), Level+2, nil );
                AddGroup( 'MaximumErrorInBatteryData', IntToStr(MaximumErrorInBatteryData), Level+2, nil );
                AddGroup( 'DesignCapacityMultiplier', IntToStr(DesignCapacityMultiplier), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure MemoryArrayMappedAddressInformation(ClearItems: Boolean);
  Var
    MAMAI: TMemoryArrayMappedAddressInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If MemoryArrayMappedAddressInfo(SMBios, Index, MAMAI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With MAMAI do
        begin
          Level := 0;
          AddGroup( 'Memory Array Mapped Address Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If MemoryArrayMappedAddressInfo(SMBios, Index, MAMAI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'RAWMemoryArrayMappedAddressInfo:', '', Level+1, nil );
              With RAWMemoryArrayMappedAddressInfo do
              begin
                AddGroup( 'StartingAddress', Format('%d (0x%x)', [StartingAddress/1024/1024, StartingAddress]), Level+2, nil );
                AddGroup( 'EndingAddress', Format('%d (0x%x)', [EndingAddress/1024/1024, EndingAddress]), Level+2, nil );
                AddGroup( 'PartitionWidth', Format('%d (0x%x)', [PartitionWidth/1024/1024, PartitionWidth]), Level+2, nil );
                AddGroup( 'ExtendedStartingAddress', Format('%d (0x%x)', [ExtendedStartingAddress/1024/1024, ExtendedStartingAddress]), Level+2, nil );
                AddGroup( 'ExtendedEndingAddress', Format('%d (0x%x)', [ExtendedEndingAddress/1024/1024, ExtendedEndingAddress]), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure MemoryDeviceMappedAddressInformation(ClearItems: Boolean);
  Var
    MDMAI: TMemoryDeviceMappedAddressInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If MemoryDeviceMappedAddressInfo(SMBios, Index, MDMAI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With MDMAI do
        begin
          Level := 0;
          AddGroup( 'Memory Device Mapped Address Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If MemoryDeviceMappedAddressInfo(SMBios, Index, MDMAI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'RAWMemoryDeviceMappedAddressInfo:', '', Level+1, nil );
              With RAWMemoryDeviceMappedAddressInfo do
              begin
                AddGroup( 'StartingAddress', Format('%d (0x%x)', [StartingAddress/1024/1024, StartingAddress]), Level+2, nil );
                AddGroup( 'EndingAddress', Format('%d (0x%x)', [EndingAddress/1024/1024, EndingAddress]), Level+2, nil );
                AddGroup( 'PartitionRowPosition', IntToStr(PartitionRowPosition), Level+2, nil );
                AddGroup( 'InterleavePosition', IntToStr(InterleavePosition), Level+2, nil );
                AddGroup( 'InterleavedDataDepth', IntToStr(InterleavedDataDepth), Level+2, nil );
                AddGroup( 'ExtendedStartingAddress', Format('%d (0x%x)', [ExtendedStartingAddress/1024/1024, ExtendedStartingAddress]), Level+2, nil );
                AddGroup( 'ExtendedEndingAddress', Format('%d (0x%x)', [ExtendedEndingAddress/1024/1024, ExtendedEndingAddress]), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure BuiltInPointingDeviceInformation(ClearItems: Boolean);
  Var
    BIPDI: TBuiltInPointingDeviceInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If BuiltInPointingDeviceInfo(SMBios, Index, BIPDI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With BIPDI do
        begin
          Level := 0;
          AddGroup( 'BuiltIn Pointing Device Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If BuiltInPointingDeviceInfo(SMBios, Index, BIPDI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'BidiType', BidiType, Level+1, nil );
              AddGroup( 'BidiInterface', BidiInterface, Level+1, nil );
              AddGroup( 'RAWBuiltInPointingDeviceInfo:', '', Level+1, nil );
              With RAWBuiltInPointingDeviceInfo do
                AddGroup( 'NumberofButtons', IntToStr(NumberofButtons), Level+2, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure VoltageProbeInformation(ClearItems: Boolean);
  Var
    VPI: TVoltageProbeInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If VoltageProbeInfo(SMBios, Index, VPI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With VPI do
        begin
          Level := 0;
          AddGroup( 'Voltage Probe Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If VoltageProbeInfo(SMBios, Index, VPI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'DescriptionStr', DescriptionStr, Level+1, nil );
              AddGroup( 'Location', Location, Level+1, nil );
              AddGroup( 'Status', Status, Level+1, nil );
              AddGroup( 'RAWVoltageProbeInfo:', '', Level+1, nil );
              With RAWVoltageProbeInfo do
              begin
                AddGroup( 'MaximumValue', IntToStr(MaximumValue), Level+2, nil );
                AddGroup( 'MinimumValue', IntToStr(MinimumValue), Level+2, nil );
                AddGroup( 'Resolution', IntToStr(Resolution), Level+2, nil );
                AddGroup( 'Tolerance', IntToStr(Tolerance), Level+2, nil );
                AddGroup( 'Accuracy', IntToStr(Accuracy), Level+2, nil );
                AddGroup( 'NominalValue', IntToStr(NominalValue), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure CoolingDeviceInformation(ClearItems: Boolean);
  Var
    CDI: TCoolingDeviceInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If CoolingDeviceInfo(SMBios, Index, CDI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With CDI do
        begin
          Level := 0;
          AddGroup( 'Cooling Device Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If CoolingDeviceInfo(SMBios, Index, CDI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'DescriptionStr', DescriptionStr, Level+1, nil );
              AddGroup( 'DeviceType', DeviceType, Level+1, nil );
              AddGroup( 'Status', Status, Level+1, nil );
              AddGroup( 'RAWCoolingDeviceInfo:', '', Level+1, nil );
              With RAWCoolingDeviceInfo do
              begin
                AddGroup( 'TemperatureProbeHandle', IntToStr(TemperatureProbeHandle), Level+2, nil );
                AddGroup( 'NominalSpeed', IntToStr(NominalSpeed), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure TemperatureProbeInformation(ClearItems: Boolean);
  Var
    TPI: TTemperatureProbeInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If TemperatureProbeInfo(SMBios, Index, TPI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With TPI do
        begin
          Level := 0;
          AddGroup( 'Temperature Probe Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If TemperatureProbeInfo(SMBios, Index, TPI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'DescriptionStr', DescriptionStr, Level+1, nil );
              AddGroup( 'Location', Location, Level+1, nil );
              AddGroup( 'Status', Status, Level+1, nil );
              AddGroup( 'RAWTemperatureProbeInfo:', '', Level+1, nil );
              With RAWTemperatureProbeInfo do
              begin
                AddGroup( 'MaximumValue', IntToStr(MaximumValue), Level+2, nil );
                AddGroup( 'MinimumValue', IntToStr(MinimumValue), Level+2, nil );
                AddGroup( 'Resolution', IntToStr(Resolution), Level+2, nil );
                AddGroup( 'Tolerance', IntToStr(Tolerance), Level+2, nil );
                AddGroup( 'Accuracy', IntToStr(Accuracy), Level+2, nil );
                AddGroup( 'NominalValue', IntToStr(NominalValue), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure ElectricalCurrentProbeInformation(ClearItems: Boolean);
  Var
    ECPI: TElectricalCurrentProbeInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If ElectricalCurrentProbeInfo(SMBios, Index, ECPI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With ECPI do
        begin
          Level := 0;
          AddGroup( 'Electrical Current Probe Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If ElectricalCurrentProbeInfo(SMBios, Index, ECPI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'DescriptionStr', DescriptionStr, Level+1, nil );
              AddGroup( 'Location', Location, Level+1, nil );
              AddGroup( 'Status', Status, Level+1, nil );
              AddGroup( 'RAWElectricalCurrentProbeInfo:', '', Level+1, nil );
              With RAWElectricalCurrentProbeInfo do
              begin
                AddGroup( 'MaximumValue', IntToStr(MaximumValue), Level+2, nil );
                AddGroup( 'MinimumValue', IntToStr(MinimumValue), Level+2, nil );
                AddGroup( 'Resolution', IntToStr(Resolution), Level+2, nil );
                AddGroup( 'Tolerance', IntToStr(Tolerance), Level+2, nil );
                AddGroup( 'Accuracy', IntToStr(Accuracy), Level+2, nil );
                AddGroup( 'NominalValue', IntToStr(NominalValue), Level+2, nil );
              end;
            end;
          end;
        end;
      end;
    end;
end;

Procedure GroupAssociationsInformation(ClearItems: Boolean);
  Var
    GAI: TGroupAssociationsInformation;
    Level: Integer;
    Index: Integer;
    i: Integer;
  begin
    With WizardForm.ComponentsList do
    begin
      If GroupAssociationsInfo(SMBios, Index, GAI) then
      begin
        if ClearItems then
          Items.Clear
        else
          AddGroup('', '', 0, nil );
        With GAI do
        begin
          Level := 0;
          AddGroup( 'Group Associations Information:', '', Level, nil );
          Level := Level + 1;
          For i := 0 to Index do
          begin
            Index := i;
            If GroupAssociationsInfo(SMBios, Index, GAI) then
            begin
              AddGroup( Format('%d:', [i+1]), '', Level, nil );
              AddGroup( 'GroupName', GroupName, Level+1, nil );
              AddGroup( 'RAWGroupAssociationsInformation:', '', Level+1, nil );
              With RAWGroupAssociationsInformation do
                AddGroup( 'ItemType', IntToStr(ItemType), Level+2, nil );
            end;
          end;
        end;
      end;
    end;
end;

Procedure TypesComboOnChange(Sender: TObject);
  begin
    Case WizardSetupType(False) of
      LowerCase('SmbiosVersion'): SmbiosVersionInfo(True);
      LowerCase('BiosInformation'): BiosInformation(True);
      LowerCase('SysInformation'): SysInformation(True);
      LowerCase('BaseBoardInformation'): BaseBoardInformation(True);
      LowerCase('EnclosureInformation'): EnclosureInformation(True);
      LowerCase('CacheInformation'): CacheInformation(True);
      LowerCase('ProcessorInformation'): ProcessorInformation(True);
      LowerCase('MemoryControllerInformation'): MemoryControllerInformation(True);
      LowerCase('PortConnectorInformation'): PortConnectorInformation(True);
      LowerCase('SystemSlotInformation'): SystemSlotInformation(True);
      LowerCase('OnBoardSystemInformation'): OnBoardSystemInformation(True);
      LowerCase('OEMStringsInformation'): OEMStringsInformation(True);
      LowerCase('BIOSLanguageInformation'): BIOSLanguageInformation(True);
      LowerCase('SystemConfInformation'): SystemConfInformation(True);
      LowerCase('PhysicalMemoryArrayInformation'): PhysicalMemoryArrayInformation(True);
      LowerCase('MemoryDeviceInformation'): MemoryDeviceInformation(True);
      LowerCase('MemoryModuleInformation'): MemoryModuleInformation(True);
      LowerCase('BatteryInformation'): BatteryInformation(True);
      LowerCase('MemoryArrayMappedAddressInformation'): MemoryArrayMappedAddressInformation(True);
      LowerCase('MemoryDeviceMappedAddressInformation'): MemoryDeviceMappedAddressInformation(True);
      LowerCase('BuiltInPointingDeviceInformation'): BuiltInPointingDeviceInformation(True);
      LowerCase('VoltageProbeInformation'): VoltageProbeInformation(True);
      LowerCase('CoolingDeviceInformation'): CoolingDeviceInformation(True);
      LowerCase('TemperatureProbeInformation'): TemperatureProbeInformation(True);
      LowerCase('ElectricalCurrentProbeInformation'): ElectricalCurrentProbeInformation(True);
      LowerCase('GroupAssociationsInformation'): GroupAssociationsInformation(True);
      'all':
        begin
          SmbiosVersionInfo(True);
          BiosInformation(False);
          SysInformation(False);
          BaseBoardInformation(False);
          EnclosureInformation(False);
          CacheInformation(False);
          ProcessorInformation(False);
          MemoryControllerInformation(False);
          PortConnectorInformation(False);
          SystemSlotInformation(False);
          OnBoardSystemInformation(False);
          OEMStringsInformation(False);
          BIOSLanguageInformation(False);
          SystemConfInformation(False);
          PhysicalMemoryArrayInformation(False);
          MemoryDeviceInformation(False);
          MemoryModuleInformation(False);
          BatteryInformation(False);
          MemoryArrayMappedAddressInformation(False);
          MemoryDeviceMappedAddressInformation(False);
          BuiltInPointingDeviceInformation(False);
          VoltageProbeInformation(False);
          CoolingDeviceInformation(False);
          TemperatureProbeInformation(False);
          ElectricalCurrentProbeInformation(False);
          GroupAssociationsInformation(False);
        end;
    end;
end;

Procedure InitializeWizard();
  begin
    With WizardForm do
    begin
      With ComponentsList do
      begin
        Items.Clear;
        OnClickCheck := nil;
        Height := SelectComponentsPage.ClientHeight - Top;
        Show;
      end;
      With TypesCombo do
      begin
        OnChange := @TypesComboOnChange;
        ItemIndex := 0;
        TypesComboOnChange(nil);
        Show;
      end;
    end;
end;

Function InitializeSetup(): Boolean;
  begin
    Result := True;
    Try
      SMBios := SMBiosCreate(true);
    except
      Result := MsgBox('Problem loading the BIOS/EFI settings, continue?', mbError, MB_YESNO or MB_DEFBUTTON2) = IDYES;
    end;
end;

Procedure DeinitializeSetup();
  begin
    If SMBiosNotNil() then
      SMBiosFree(SMBios);
end;
