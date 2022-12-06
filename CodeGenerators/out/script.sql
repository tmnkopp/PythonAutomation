
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1173,SubmissionCount=1173
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='CFTC' 
    AND PK_CISA_CVE='CVE-2022-4135'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=160653,SubmissionCount=160653
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2013-3900'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=61943,SubmissionCount=61943
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-41073'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=61943,SubmissionCount=61943
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-41128'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=61937,SubmissionCount=61937
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-41125'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=60330,SubmissionCount=60330
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-41049'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=60329,SubmissionCount=60329
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-41091'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=56085,SubmissionCount=56085
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-4135'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=28992,SubmissionCount=28992
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-3723'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=6273,SubmissionCount=6273
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-41033'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3513,SubmissionCount=3513
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2017-11826'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3070,SubmissionCount=3070
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-37969'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2310,SubmissionCount=2310
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-34713'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2021,SubmissionCount=2021
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-22047'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1867,SubmissionCount=1867
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-30190'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1682,SubmissionCount=1682
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-26925'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1678,SubmissionCount=1678
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-26923'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1185,SubmissionCount=1185
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2020-1147'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1173,SubmissionCount=1173
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2022-3075'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1059,SubmissionCount=1059
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS' 
    AND PK_CISA_CVE='CVE-2020-0646'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1248,SubmissionCount=1248
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOE' 
    AND PK_CISA_CVE='CVE-2013-3900'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=10606,SubmissionCount=10606
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-4135'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=7997,SubmissionCount=7997
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-41073'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=7996,SubmissionCount=7996
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-41125'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=7996,SubmissionCount=7996
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-41128'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=7612,SubmissionCount=7612
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-41049'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=7612,SubmissionCount=7612
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-41091'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3099,SubmissionCount=3099
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2013-3900'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2317,SubmissionCount=2317
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-3723'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2184,SubmissionCount=2184
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-41033'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2048,SubmissionCount=2048
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-37969'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1756,SubmissionCount=1756
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-3075'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1754,SubmissionCount=1754
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-34713'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1748,SubmissionCount=1748
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-22047'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1717,SubmissionCount=1717
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-26925'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1694,SubmissionCount=1694
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-26923'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1589,SubmissionCount=1589
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-30190'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1568,SubmissionCount=1568
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-24521'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1567,SubmissionCount=1567
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-26904'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1549,SubmissionCount=1549
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-21999'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1549,SubmissionCount=1549
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-22718'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1529,SubmissionCount=1529
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-21919'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1516,SubmissionCount=1516
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-2856'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1512,SubmissionCount=1512
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-1364'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1506,SubmissionCount=1506
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-41379'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1464,SubmissionCount=1464
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-2294'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1448,SubmissionCount=1448
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-1096'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1387,SubmissionCount=1387
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-34527'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1366,SubmissionCount=1366
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-40449'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1362,SubmissionCount=1362
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-4102'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1358,SubmissionCount=1358
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-38000'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1358,SubmissionCount=1358
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-38003'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1357,SubmissionCount=1357
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-40444'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1352,SubmissionCount=1352
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-34484'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1351,SubmissionCount=1351
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-34448'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1350,SubmissionCount=1350
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-31979'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1349,SubmissionCount=1349
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-37975'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1349,SubmissionCount=1349
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-37976'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1348,SubmissionCount=1348
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-30632'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1348,SubmissionCount=1348
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-30633'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1348,SubmissionCount=1348
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-33771'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1348,SubmissionCount=1348
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-37973'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1347,SubmissionCount=1347
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-1675'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1347,SubmissionCount=1347
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-31199'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1347,SubmissionCount=1347
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-31201'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1347,SubmissionCount=1347
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-33742'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1344,SubmissionCount=1344
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-30563'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1343,SubmissionCount=1343
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-30551'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1343,SubmissionCount=1343
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-30554'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1342,SubmissionCount=1342
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-21224'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1342,SubmissionCount=1342
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-30533'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1340,SubmissionCount=1340
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-21206'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1340,SubmissionCount=1340
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-21220'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1340,SubmissionCount=1340
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-36955'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1338,SubmissionCount=1338
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-21166'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1337,SubmissionCount=1337
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-21193'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1336,SubmissionCount=1336
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-21148'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1334,SubmissionCount=1334
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-31956'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1330,SubmissionCount=1330
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-21882'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1323,SubmissionCount=1323
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-0609'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1305,SubmissionCount=1305
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-42292'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1274,SubmissionCount=1274
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2022-21971'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1218,SubmissionCount=1218
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-28550'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1190,SubmissionCount=1190
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-26411'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1183,SubmissionCount=1183
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-21017'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1169,SubmissionCount=1169
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-40450'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1155,SubmissionCount=1155
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-34486'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1155,SubmissionCount=1155
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-36948'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1150,SubmissionCount=1150
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-31955'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1143,SubmissionCount=1143
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-38646'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1084,SubmissionCount=1084
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-33739'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1077,SubmissionCount=1077
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-41357'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1005,SubmissionCount=1005
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI' 
    AND PK_CISA_CVE='CVE-2021-28310'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=17159,SubmissionCount=17159
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOL' 
    AND PK_CISA_CVE='CVE-2013-3900'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=12691,SubmissionCount=12691
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOL' 
    AND PK_CISA_CVE='CVE-2022-41073'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=12691,SubmissionCount=12691
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOL' 
    AND PK_CISA_CVE='CVE-2022-41125'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=12691,SubmissionCount=12691
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOL' 
    AND PK_CISA_CVE='CVE-2022-41128'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=12641,SubmissionCount=12641
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOL' 
    AND PK_CISA_CVE='CVE-2022-41049'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=12641,SubmissionCount=12641
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOL' 
    AND PK_CISA_CVE='CVE-2022-41091'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=79815,SubmissionCount=79815
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='STATE' 
    AND PK_CISA_CVE='CVE-2022-4135'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2296,SubmissionCount=2296
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EDU' 
    AND PK_CISA_CVE='CVE-2022-4135'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=20688,SubmissionCount=20688
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA' 
    AND PK_CISA_CVE='CVE-2013-3900'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=7255,SubmissionCount=7255
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA' 
    AND PK_CISA_CVE='CVE-2022-4135'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3591,SubmissionCount=3591
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA' 
    AND PK_CISA_CVE='CVE-2022-41073'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3591,SubmissionCount=3591
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA' 
    AND PK_CISA_CVE='CVE-2022-41128'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3571,SubmissionCount=3571
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA' 
    AND PK_CISA_CVE='CVE-2022-41125'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3508,SubmissionCount=3508
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA' 
    AND PK_CISA_CVE='CVE-2022-41049'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3508,SubmissionCount=3508
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA' 
    AND PK_CISA_CVE='CVE-2022-41091'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=250217,SubmissionCount=250217
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2013-3900'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=234500,SubmissionCount=234500
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-3723'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=49097,SubmissionCount=49097
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-3075'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34826,SubmissionCount=34826
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-41073'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34826,SubmissionCount=34826
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-41128'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34710,SubmissionCount=34710
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-41125'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34558,SubmissionCount=34558
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-41049'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34558,SubmissionCount=34558
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-41091'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=16824,SubmissionCount=16824
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-37969'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=9914,SubmissionCount=9914
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-41033'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3996,SubmissionCount=3996
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-34713'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3506,SubmissionCount=3506
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-22047'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2961,SubmissionCount=2961
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-30190'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2881,SubmissionCount=2881
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-26925'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2654,SubmissionCount=2654
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-24521'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2654,SubmissionCount=2654
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-26904'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2519,SubmissionCount=2519
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2021-1647'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2212,SubmissionCount=2212
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-21999'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2212,SubmissionCount=2212
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-22718'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2076,SubmissionCount=2076
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-2856'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2010,SubmissionCount=2010
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-21919'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1687,SubmissionCount=1687
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2021-41379'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1675,SubmissionCount=1675
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2021-42278'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1675,SubmissionCount=1675
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2021-42287'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1428,SubmissionCount=1428
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-26923'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1307,SubmissionCount=1307
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2018-0167'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1307,SubmissionCount=1307
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2018-0175'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1138,SubmissionCount=1138
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-2294'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1100,SubmissionCount=1100
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2021-44228'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1012,SubmissionCount=1012
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2021-40449'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1,SubmissionCount=1
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA' 
    AND PK_CISA_CVE='CVE-2022-22960'
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
    