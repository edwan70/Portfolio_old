USE [SystemMonitoring]

GO
-- Кондиционирование РТП

-- Сплиты и температуры РТП Пенай
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , [DataLog].[Object] AS 'РТП Пенай'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(30), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , [DataSamples].[Unit] AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj51' AND [SampleID] = '32')
UNION ALL
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , [DataLog].[Object] AS 'РТП Пенай'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(30), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , [DataSamples].[Unit] AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj51' AND [SampleID] = '39')
UNION ALL
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , [DataLog].[Object] AS 'РТП Пенай'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(30), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , [DataSamples].[Unit] AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj51' AND [SampleID] = '33')

SELECT TOP 3 --[Id]
      --, [IP]
       [DateTime]
      ,CONVERT(char(20),[Object]) AS 'РТП Пенай'
      --,[Status]
      ,CONVERT(char(40),[Message]) AS Message
  FROM [SystemMonitoring].[dbo].[MainMessageLog]
  where [SystemMonitoring].[dbo].[MainMessageLog].[Object] = 'MonObj51'
  and (cast([SystemMonitoring].[dbo].[MainMessageLog].[Message] as char(40)) = 'Кондиционер №2, Работа: Включен'
  or cast([SystemMonitoring].[dbo].[MainMessageLog].[Message] as char(40)) ='Кондиционер №1, Работа: Включен')
  order by [SystemMonitoring].[dbo].[MainMessageLog].[Id] desc
  
-- Сплиты и температуры РТП Дооб
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , [DataLog].[Object] AS 'РТП Дооб'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(30), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , [DataSamples].[Unit] AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj49' AND [SampleID] = '32')
UNION ALL
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , [DataLog].[Object] AS 'РТП Дооб'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(30), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , [DataSamples].[Unit] AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj49' AND [SampleID] = '38')
UNION ALL
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , [DataLog].[Object] AS 'РТП Дооб'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(30), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , [DataSamples].[Unit] AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj49' AND [SampleID] = '33')

SELECT TOP 3 --[Id]
      --, [IP]
       [DateTime]
      ,CONVERT(char(20),[Object]) AS 'РТП Дооб'
      --,[Status]
      ,CONVERT(char(40),[Message]) AS Message
  FROM [SystemMonitoring].[dbo].[MainMessageLog]
  where [SystemMonitoring].[dbo].[MainMessageLog].[Object] = 'MonObj49'
  and (cast([SystemMonitoring].[dbo].[MainMessageLog].[Message] as char(40)) = 'Кондиционер №2, Работа: Включен'
  or cast([SystemMonitoring].[dbo].[MainMessageLog].[Message] as char(40)) ='Кондиционер №1, Работа: Включен')
  order by [SystemMonitoring].[dbo].[MainMessageLog].[Id] desc

-- Сплиты и температуры РТП Геледжик
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , CONVERT(char(30), [DataLog].[Object]) AS 'РТП Геленджик'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(15), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , CONVERT(char(10),[DataSamples].[Unit]) AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj84' AND [SampleID] = '35')
UNION ALL
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , CONVERT(char(30), [DataLog].[Object]) AS 'РТП Геленджик'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(15), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , CONVERT(char(10), [DataSamples].[Unit]) AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj84' AND [SampleID] = '34')

SELECT TOP 1 --[id]
       [date] as 'DateTime'
      , CONVERT(char(30),[device_id]) as 'РТП Геленджик'
      , CONVERT(real, [t]) as 'Значение'
      , CONVERT(char(15),'Температура') AS 'Параметр'
	  , CONVERT(char(10),'°C') AS 'Единица измерения'
	  --,[U]
      ,case when [SRK].[dbo].[MonitorData].[cond1Status] = '3' then 'Вкл.' else 'Выкл.' end as 'Сплит1'
      ,case when [SRK].[dbo].[MonitorData].[cond2Status] = '3' then 'Вкл.' else 'Выкл.' end as 'Сплит2'
      --,[cond3Status]
  FROM [SRK].[dbo].[MonitorData]
  WHERE[SRK].[dbo].[MonitorData].[device_id] = 1
  ORDER BY [SRK].[dbo].[MonitorData].[date] desc

-- Сплиты и температуры РТП Ю.Озереевка радар-контейнер
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , CONVERT(char(30), [DataLog].[Object]) AS 'РТП Ю.Озер. радар-контейнер'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(15), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , CONVERT(char(10), [DataSamples].[Unit]) AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj4' AND [SampleID] = '26')
UNION ALL
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , CONVERT(char(30), [DataLog].[Object]) AS 'РТП Ю.Озер. радар-контейнер'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(15), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , CONVERT(char(10), [DataSamples].[Unit]) AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj4' AND [SampleID] = '25')

SELECT TOP 1 --[id]
       [date] as 'DateTime'
      , CONVERT(char(30), [device_id]) as 'РТП Ю.Озер. радар-контейнер'
      , CONVERT(real, [t]) as 'Значение'
      , CONVERT(char(15), 'Температура') AS 'Параметр'  
	  , CONVERT(char(10), '°C') AS 'Единица измерения'
	  --,[U]
      ,case when [SRK].[dbo].[MonitorData].[cond1Status] = '3' then 'Вкл.' else 'Выкл.' end as 'Сплит1'
      ,case when [SRK].[dbo].[MonitorData].[cond2Status] = '3' then 'Вкл.' else 'Выкл.' end as 'Сплит2'
      --,[cond3Status]
  FROM [SRK].[dbo].[MonitorData]
  WHERE[SRK].[dbo].[MonitorData].[device_id] = 0
  ORDER BY [SRK].[dbo].[MonitorData].[date] desc


-- Сплиты и температуры РТП Ю.Озереевка энергоконтейнер
SELECT TOP 1
     --[DataLog].[Id]
     --, [DataLog].[SampleID]
       [DataLog].[DateTime]
     , CONVERT(char(30), [DataLog].[Object]) AS 'РТП Ю.Озер. энергоконтейнер'
     --, [DataLog].[Type]
     --, [DataLog].[Value]
     , [DataLog].[ValuePerSec] AS 'Значение'
	 , CONVERT(char(15), [DataSamples].[SourceElement]) AS 'Параметр'
	 --, [DataSamples].[Type]
	 --, [DataSamples].[Description]
     , CONVERT(char(10),[DataSamples].[Unit]) AS 'Единица измерения'
	 --, [RecKinds].[Name]
	 --, [RecKinds].[Unit]
	 --, [RecKinds].[Element]
 FROM [dbo].[DataLog]
 INNER JOIN [SystemMonitoring].[dbo].[DataSamples] on [SystemMonitoring].[dbo].[DataLog].[SampleID] = [SystemMonitoring].[dbo].[DataSamples].[Id] 
 WHERE [SystemMonitoring].[dbo].[DataLog].[Id] = 
        (SELECT max([SystemMonitoring].[dbo].[DataLog].[Id])
        FROM [dbo].[DataLog]
        WHERE [SystemMonitoring].[dbo].[DataLog].[Object] = 'MonObj5' AND [SampleID] = '27')


  GO