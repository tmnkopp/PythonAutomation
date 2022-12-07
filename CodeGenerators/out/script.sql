
UPDATE CVEUnremediated 
SET CDMCountSubmitted=250129,SubmissionCount=250129
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=234426,SubmissionCount=234426
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3723'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=175052,SubmissionCount=175052
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=91997,SubmissionCount=91997
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=91996,SubmissionCount=91996
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=91990,SubmissionCount=91990
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=90257,SubmissionCount=90257
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=90256,SubmissionCount=90256
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=52338,SubmissionCount=52338
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3075'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34823,SubmissionCount=34823
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34823,SubmissionCount=34823
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34707,SubmissionCount=34707
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34556,SubmissionCount=34556
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=34556,SubmissionCount=34556
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=30689,SubmissionCount=30689
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3723'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=20556,SubmissionCount=20556
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=17646,SubmissionCount=17646
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-37969'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=15039,SubmissionCount=15039
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='GSA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=14268,SubmissionCount=14268
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='TVA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=13336,SubmissionCount=13336
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-30190'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=13320,SubmissionCount=13320
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3075'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=13293,SubmissionCount=13293
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-37969'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=12428,SubmissionCount=12428
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USAID'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=11877,SubmissionCount=11877
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41033'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=11589,SubmissionCount=11589
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USAID'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=11589,SubmissionCount=11589
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USAID'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=11589,SubmissionCount=11589
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USAID'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=11459,SubmissionCount=11459
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41033'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=11449,SubmissionCount=11449
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USAID'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=11449,SubmissionCount=11449
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USAID'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=9915,SubmissionCount=9915
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41033'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=9475,SubmissionCount=9475
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-2856'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=8858,SubmissionCount=8858
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='GSA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=8858,SubmissionCount=8858
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='GSA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=8858,SubmissionCount=8858
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='GSA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=8719,SubmissionCount=8719
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='GSA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=8719,SubmissionCount=8719
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='GSA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=7115,SubmissionCount=7115
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-34713'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=6968,SubmissionCount=6968
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=5343,SubmissionCount=5343
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOL'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=5163,SubmissionCount=5163
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-22047'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4981,SubmissionCount=4981
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4981,SubmissionCount=4981
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4964,SubmissionCount=4964
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4933,SubmissionCount=4933
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-2294'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4890,SubmissionCount=4890
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4890,SubmissionCount=4890
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='EPA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4832,SubmissionCount=4832
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='NASA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3723'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4631,SubmissionCount=4631
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-26925'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4608,SubmissionCount=4608
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='NARA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3723'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4579,SubmissionCount=4579
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='TVA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2020-3433'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4577,SubmissionCount=4577
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='NRC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4315,SubmissionCount=4315
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FRB'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4107,SubmissionCount=4107
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-34713'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4045,SubmissionCount=4045
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FRB'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4045,SubmissionCount=4045
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FRB'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4045,SubmissionCount=4045
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FRB'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3854,SubmissionCount=3854
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-26923'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3834,SubmissionCount=3834
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FRB'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3834,SubmissionCount=3834
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FRB'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3819,SubmissionCount=3819
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-26904'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3815,SubmissionCount=3815
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-24521'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3682,SubmissionCount=3682
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USAID'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3723'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3602,SubmissionCount=3602
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-22047'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3512,SubmissionCount=3512
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2017-11826'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3338,SubmissionCount=3338
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-37969'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3308,SubmissionCount=3308
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='TVA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3308,SubmissionCount=3308
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='TVA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3235,SubmissionCount=3235
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='TVA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3093,SubmissionCount=3093
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='TVA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2020-3153'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3020,SubmissionCount=3020
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-30190'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2938,SubmissionCount=2938
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-26925'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2916,SubmissionCount=2916
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USDA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2770,SubmissionCount=2770
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='OPM'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2713,SubmissionCount=2713
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='TVA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2713,SubmissionCount=2713
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='TVA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2675,SubmissionCount=2675
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-24521'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2675,SubmissionCount=2675
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-26904'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2560,SubmissionCount=2560
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-1647'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2402,SubmissionCount=2402
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-34713'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2364,SubmissionCount=2364
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FRB'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3723'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2241,SubmissionCount=2241
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FDIC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2241,SubmissionCount=2241
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FDIC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2241,SubmissionCount=2241
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FDIC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2230,SubmissionCount=2230
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FDIC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2230,SubmissionCount=2230
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FDIC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2229,SubmissionCount=2229
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-21999'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2229,SubmissionCount=2229
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-22718'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2219,SubmissionCount=2219
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='NARA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2019-11634'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2173,SubmissionCount=2173
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-2856'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2129,SubmissionCount=2129
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='SBA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2068,SubmissionCount=2068
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-21999'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2067,SubmissionCount=2067
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-22718'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2039,SubmissionCount=2039
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-22047'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2021,SubmissionCount=2021
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-21919'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1857,SubmissionCount=1857
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-30190'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1765,SubmissionCount=1765
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FERC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1698,SubmissionCount=1698
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-41379'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1686,SubmissionCount=1686
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-42278'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1686,SubmissionCount=1686
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-42287'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1667,SubmissionCount=1667
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-26925'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1663,SubmissionCount=1663
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-26923'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1599,SubmissionCount=1599
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-21919'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1574,SubmissionCount=1574
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-21882'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1566,SubmissionCount=1566
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='SBA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1566,SubmissionCount=1566
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='SBA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1562,SubmissionCount=1562
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='SBA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1517,SubmissionCount=1517
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FDIC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3723'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1483,SubmissionCount=1483
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='SBA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1483,SubmissionCount=1483
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='SBA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1473,SubmissionCount=1473
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-26923'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1368,SubmissionCount=1368
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1351,SubmissionCount=1351
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='OPM'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1351,SubmissionCount=1351
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='OPM'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1351,SubmissionCount=1351
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='OPM'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1340,SubmissionCount=1340
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-1364'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1327,SubmissionCount=1327
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='NASA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-37969'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1325,SubmissionCount=1325
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2018-0167'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1325,SubmissionCount=1325
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2018-0175'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1317,SubmissionCount=1317
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='NASA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-2856'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1283,SubmissionCount=1283
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='OPM'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1283,SubmissionCount=1283
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='OPM'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1273,SubmissionCount=1273
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-41379'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1246,SubmissionCount=1246
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='HUD'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2013-3900'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1228,SubmissionCount=1228
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1227,SubmissionCount=1227
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41049'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1227,SubmissionCount=1227
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1227,SubmissionCount=1227
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1226,SubmissionCount=1226
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41091'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1212,SubmissionCount=1212
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-2294'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1210,SubmissionCount=1210
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3075'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1181,SubmissionCount=1181
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2020-1147'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1131,SubmissionCount=1131
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FDIC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2015-1642'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1131,SubmissionCount=1131
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='FDIC'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2016-3235'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1113,SubmissionCount=1113
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-44228'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1065,SubmissionCount=1065
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-42292'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1059,SubmissionCount=1059
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DHS'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2020-0646'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1059,SubmissionCount=1059
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USDA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41073'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1059,SubmissionCount=1059
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USDA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41128'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1058,SubmissionCount=1058
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='DOI'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2019-0903'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1050,SubmissionCount=1050
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='USDA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41125'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1016,SubmissionCount=1016
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='VA'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-40449'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=46,SubmissionCount=46
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3723'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=18,SubmissionCount=18
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41033'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=17,SubmissionCount=17
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-37969'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=11,SubmissionCount=11
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-34713'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=7,SubmissionCount=7
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-3075'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=6,SubmissionCount=6
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2021-44228'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=5,SubmissionCount=5
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2015-1642'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=4,SubmissionCount=4
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-2856'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3,SubmissionCount=3
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41040'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=3,SubmissionCount=3
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-41082'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=2,SubmissionCount=2
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2017-11882'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1,SubmissionCount=1
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-22047'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1,SubmissionCount=1
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-2294'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=1,SubmissionCount=1
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2022-30190'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=0,SubmissionCount=0
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2019-0211'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=0,SubmissionCount=0
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2018-4344'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=0,SubmissionCount=0
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2019-13720'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=0,SubmissionCount=0
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2019-8605'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=0,SubmissionCount=0
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2014-0160'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=0,SubmissionCount=0
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2020-28949'
    
UPDATE CVEUnremediated 
SET CDMCountSubmitted=0,SubmissionCount=0
WHERE PK_OrgSubmission = (
    SELECT MAX(PK_OrgSubmission) FROM vwOrgSubToComponent
    WHERE Acronym='ED'  
    AND PK_ReportingCycle=108
    AND OrgSub_Description = 'ACTIVE'
) 
AND PK_CISA_CVE='CVE-2020-36193'
    