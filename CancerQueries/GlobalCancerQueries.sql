--View data on the GlobalCancerDeaths table
--Data entails 29 different types of cancers for locations classified into Countries, WHO regions, WB Economic zones
SELECT*
FROM GlobalCancerDeaths


--View annual regional cancer data 
--There are 6 regions as classified by the WHO 
SELECT*
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'


--View cancer deaths per year by country
SELECT*
FROM GlobalCancerDeaths
WHERE [Country_and_Region] NOT LIKE '%Region%' AND [Country_and_Region] NOT LIKE '%World%' AND [Country_and_Region] NOT LIKE '%G20%' AND [Country_and_Region] NOT LIKE '%(WB)%' AND [Country_and_Region] NOT LIKE '%Countries%' 


--Total annual deaths per country economic class 
--Showing cancer mortality is more prone in upper middle income countries 
SELECT
       [Country_and_Region]
      ,SUM([Total_Annual_Deaths]) AS Total_Annual_Deaths
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Income%'
GROUP BY [Country_and_Region]
ORDER BY  Total_Annual_Deaths DESC 

--Total cancer deaths by cancer types over the years (Countries, Regions and World Bank Economic classification)
SELECT
       [Country_and_Region]
      ,SUM([Liver_cancer]) AS Liver_cancer
      ,SUM([Kidney_cancer]) AS Kidney_cancer
      ,SUM([Lip_and_oral_cavity_cancer]) AS Lip_and_oral_cavity_cancer
      ,SUM([Tracheal_bronchus_and_lung_cancer]) AS Tracheal_bronchus_and_lung_cancer
      ,SUM([Larynx_cancer]) AS Larynx_cancer
      ,SUM([Gallbladder_and_biliary_tract_cancer]) AS Gallbladder_and_biliary_tract_cancer
      ,SUM([Malignant_skin_melanoma]) AS Malignant_skin_melanoma
      ,SUM([Leukemia]) AS Leukemia
      ,SUM([Hodgkin_lymphoma]) AS Hodgkin_lymphoma
      ,SUM([Multiple_myeloma]) AS Multiple_myeloma
      ,SUM([Other_neoplasms]) AS Other_neoplasms
      ,SUM([Breast_cancer]) AS Breast_cancer
      ,SUM([Prostate_cancer]) As Prostate_cancer
      ,SUM([Thyroid_cancer]) AS Thyroid_cancer
      ,SUM([Stomach_cancer]) AS Stomach_cancer
      ,SUM([Bladder_cancer]) AS Bladder_cancer
      ,SUM([Uterine_cancer]) AS Uterine_cancer
      ,SUM([Ovarian_cancer]) AS Ovarian_cancer
      ,SUM([Cervical_cancer]) AS Cervical_cancer
      ,SUM([Brain_and_central_nervous_system_cancer]) AS Brain_and_central_nervous_system_cancer
      ,SUM([Non_Hodgkin_lymphoma]) AS Non_Hodgkin_lymphoma
      ,SUM([Pancreatic_cancer]) AS Pancreatic_cancer
      ,SUM([Esophageal_cancer]) AS Esophageal_cancer
      ,SUM([Testicular_cancer]) AS Testicular_cancer
      ,SUM([Nasopharynx_cance]) AS Nasopharynx_cancer
      ,SUM([Other_pharynx_cancer]) AS Other_pharynx_cancer
      ,SUM([Colon_and_rectum_cancer]) AS Colon_and_rectum_cancer
      ,SUM([Non_melanoma_skin_cancer]) AS Non_melanoma_skin_cancer
      ,SUM([Mesothelioma]) AS Mesothelioma
      ,SUM([Total_Annual_Deaths]) AS Total_Annual_Deaths
FROM GlobalCancerDeaths
GROUP BY [Country_and_Region]
ORDER BY [Country_and_Region] ASC  

--Top 3 leading regions (1990-2019)
--Over the years, The Western Pacific Region has had the highest number of cancer deaths and the trend continues in 2019
SELECT TOP (3)
    [Country_and_Region]
    ,SUM([Total_Annual_Deaths]) AS RegionalCancerDeaths
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%' --AND [Year] =2019
GROUP BY [Country_and_Region]--, [Year]
ORDER BY SUM([Total_Annual_Deaths]) DESC 


--Top 10 leading countries
--China ranks 1st in total cancer deaths 
SELECT TOP (10)
    [Country_and_Region]
    ,SUM([Total_Annual_Deaths]) AS TotalCancerDeaths
FROM GlobalCancerDeaths
WHERE [Country_and_Region] NOT LIKE '%Region%' AND [Country_and_Region] NOT LIKE '%World%' AND [Country_and_Region] NOT LIKE '%G20%' AND [Country_and_Region] NOT LIKE '%(WB)%' AND [Country_and_Region] NOT LIKE '%Countries%'  --AND [Year]= 2019
GROUP BY [Country_and_Region]
ORDER BY SUM([Total_Annual_Deaths]) DESC 


--Total annual deaths per country economic class 
--Showing cancer mortality is more prone in upper middle income coiuntries 
SELECT
       [Country_and_Region]
      ,SUM([Total_Annual_Deaths]) AS Total_Annual_Deaths
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Income%'
GROUP BY [Country_and_Region]
ORDER BY  Total_Annual_Deaths DESC 


SELECT TOP(5) 
       SUM([Liver_cancer]) AS Liver_cancer
      ,SUM([Kidney_cancer]) AS Kidney_cancer
      ,SUM([Lip_and_oral_cavity_cancer]) AS Lip_and_oral_cavity_cancer
      ,SUM([Tracheal_bronchus_and_lung_cancer]) AS Tracheal_bronchus_and_lung_cancer
      ,SUM([Larynx_cancer]) AS Larynx_cancer
      ,SUM([Gallbladder_and_biliary_tract_cancer]) AS Gallbladder_and_biliary_tract_cancer
      ,SUM([Malignant_skin_melanoma]) AS Malignant_skin_melanoma
      ,SUM([Leukemia]) AS Leukemia
      ,SUM([Hodgkin_lymphoma]) AS Hodgkin_lymphoma
      ,SUM([Multiple_myeloma]) AS Multiple_myeloma
      ,SUM([Other_neoplasms]) AS Other_neoplasms
      ,SUM([Breast_cancer]) AS Breast_cancer
      ,SUM([Prostate_cancer]) As Prostate_cancer
      ,SUM([Thyroid_cancer]) AS Thyroid_cancer
      ,SUM([Stomach_cancer]) AS Stomach_cancer
      ,SUM([Bladder_cancer]) AS Bladder_cancer
      ,SUM([Uterine_cancer]) AS Uterine_cancer
      ,SUM([Ovarian_cancer]) AS Ovarian_cancer
      ,SUM([Cervical_cancer]) AS Cervical_cancer
      ,SUM([Brain_and_central_nervous_system_cancer]) AS Brain_and_central_nervous_system_cancer
      ,SUM([Non_Hodgkin_lymphoma]) AS Non_Hodgkin_lymphoma
      ,SUM([Pancreatic_cancer]) AS Pancreatic_cancer
      ,SUM([Esophageal_cancer]) AS Esophageal_cancer
      ,SUM([Testicular_cancer]) AS Testicular_cancer
      ,SUM([Nasopharynx_cance]) AS Nasopharynx_cancer
      ,SUM([Other_pharynx_cancer]) AS Other_pharynx_cancer
      ,SUM([Colon_and_rectum_cancer]) AS Colon_and_rectum_cancer
      ,SUM([Non_melanoma_skin_cancer]) AS Non_melanoma_skin_cancer
      ,SUM([Mesothelioma]) AS Mesothelioma
FROM GlobalCancerDeaths


--RENAL CANCERS 
--*subject to editing*
--Regional mortality rates attributed to renal cancers 
SELECT
[Country_and_Region]
--,SUM(Total_Annual_Deaths) AS TotalDeaths
,SUM(Kidney_cancer) AS Kidney_cancer
,SUM(Kidney_cancer)/ SUM(Total_Annual_Deaths) AS KidneyCancerRate
,SUM(Bladder_cancer) AS Bladder_cancer
,SUM(Bladder_cancer)/ SUM(Total_Annual_Deaths) AS BladderCancerRate
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'
GROUP BY [Country_and_Region]


--REPRODUCTIVE CANCERS
--*subject to editting*
--Regional mortality rates attributed to reproductive system cancers
SELECT
[Country_and_Region]
--,SUM(Total_Annual_Deaths) AS TotalDeaths
--Excluisvely male cancers
    ,SUM(Testicular_cancer) AS Testicular_cancer
    ,SUM(Testicular_cancer)/ SUM(Total_Annual_Deaths) AS TesticularCancerRate
    ,SUM(Prostate_cancer) AS Prostate_cancer
    ,SUM(Prostate_cancer)/ SUM(Total_Annual_Deaths) AS ProstateCancerRate
 --Excluisvely female cancers
    ,SUM(Cervical_cancer) AS Cervical_cancer
    ,SUM(Cervical_cancer)/ SUM(Total_Annual_Deaths) AS CervicalCancerRate
    ,SUM(Ovarian_cancer) AS Ovarian_cancer
    ,SUM(Ovarian_cancer)/ SUM(Total_Annual_Deaths) AS OvarianCancerRate
    ,SUM(Uterine_cancer) AS Uterine_cancer
    ,SUM(Uterine_cancer)/ SUM(Total_Annual_Deaths) AS UterineCancerRate
--Breast cancer
    ,SUM(Breast_cancer) AS Breast_cancer
    ,SUM(Breast_cancer)/ SUM(Total_Annual_Deaths) AS BreastCancerRate
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'
GROUP BY [Country_and_Region]


--DIGESTIVE TRACT CANCERS
--*subject to editting*
-- Regional mortality rates attributed to digestive tract cancers
SELECT
[Country_and_Region]
--,SUM(Total_Annual_Deaths) AS TotalDeaths
    ,SUM(Esophageal_cancer) AS Esophageal_cancer
    ,SUM(Esophageal_cancer)/ SUM(Total_Annual_Deaths) AS EsophagealCancerRate
    ,SUM(Stomach_cancer) AS Stomach_cancer
    ,SUM(Stomach_cancer)/ SUM(Total_Annual_Deaths) AS StomachCancerRate
    ,SUM(Lip_and_oral_cavity_cancer) AS Lip_and_oral_cavity_cancer
    ,SUM(Lip_and_oral_cavity_cancer)/ SUM(Total_Annual_Deaths) AS LipandOralCavityCancerRate
    ,SUM(Gallbladder_and_biliary_tract_cancer) AS Gallbladder_and_biliary_tract_cancer
    ,SUM(Gallbladder_and_biliary_tract_cancer)/ SUM(Total_Annual_Deaths) AS GallbladderandBiliaryTractCancerRate
    ,SUM(Liver_cancer) AS Liver_cancer
    ,SUM(Liver_cancer)/ SUM(Total_Annual_Deaths) AS LiverCancerRate
    ,SUM(Pancreatic_cancer) AS Pancreatic_cancer
    ,SUM(Pancreatic_cancer)/ SUM(Total_Annual_Deaths) AS PancreaticCancerRate
    ,SUM(Colon_and_rectum_cancer) AS Colon_and_rectum_cancer
    ,SUM(Colon_and_rectum_cancer)/ SUM(Total_Annual_Deaths) AS ColonandRectumCancerRate
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'
GROUP BY [Country_and_Region]


--BLOOD CANCERS
--*subject to editting*
-- Regional mortality rates attributed to circulatory system cancers
SELECT
[Country_and_Region]
--,SUM(Total_Annual_Deaths) AS TotalDeaths
    ,SUM(Leukemia) AS Leukemia
    ,SUM(Leukemia)/ SUM(Total_Annual_Deaths) AS LeukemiaCancerRate
    ,SUM(Multiple_myeloma) AS Multiple_myeloma
    ,SUM(Multiple_myeloma)/ SUM(Total_Annual_Deaths) AS MultipleMyelomaCancerRate
    ,SUM(Other_neoplasms) AS Other_neoplasms
    ,SUM(Other_neoplasms)/ SUM(Total_Annual_Deaths) AS OtherNeoplasmsCancerRate
    ,SUM(Hodgkin_lymphoma) AS Hodgkin_lymphoma
    ,SUM(Hodgkin_lymphoma)/ SUM(Total_Annual_Deaths) AS HodgkinLymphomaTractCancerRate
    ,SUM(Non_Hodgkin_lymphoma) AS Non_Hodgkin_lymphoma
    ,SUM(Non_Hodgkin_lymphoma)/ SUM(Total_Annual_Deaths) AS NonHodgkinLymphomaCancerRate
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'
GROUP BY [Country_and_Region]


--UPPER RESPIRATORY TRACT (URT) CANCERS
--*subject to editting*
-- Regional mortality rates attributed to URT cancers
SELECT
[Country_and_Region]
--,SUM(Total_Annual_Deaths) AS TotalDeaths
    ,SUM(Tracheal_bronchus_and_lung_cancer) AS Tracheal_bronchus_and_lung_cancer
    ,SUM(Tracheal_bronchus_and_lung_cancer)/ SUM(Total_Annual_Deaths) AS TrachealBronchusandLungCancerRate
    ,SUM(Larynx_cancer) AS Larynx_cancer
    ,SUM(Larynx_cancer)/ SUM(Total_Annual_Deaths) AS LarynxCancerRate
    ,SUM(Nasopharynx_cance) AS Nasopharynx_cancer
    ,SUM(Nasopharynx_cance)/ SUM(Total_Annual_Deaths) AS NasopharynxCancerRate
    ,SUM(Other_pharynx_cancer) AS Other_pharynx_cancer
    ,SUM(Other_pharynx_cancer)/ SUM(Total_Annual_Deaths) AS OtherPharynxCancerRate
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'
GROUP BY [Country_and_Region]


--SKIN CANCERS
--*subject to editting*
-- Regional mortality rates attributed to skin cancers
SELECT
[Country_and_Region]
--,SUM(Total_Annual_Deaths) AS TotalDeaths
    ,SUM(Malignant_skin_melanoma) AS Malignant_skin_melanoma
    ,SUM(Malignant_skin_melanoma)/ SUM(Total_Annual_Deaths) AS MalignantSkinMelanomaCancerRate
    ,SUM(Non_melanoma_skin_cancer) AS Non_melanoma_skin_cancer
    ,SUM(Non_melanoma_skin_cancer)/ SUM(Total_Annual_Deaths) AS NonMelanomaSkinCancerRate
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'
GROUP BY [Country_and_Region]


--NEURONAL CANCERS
--*subject to editting*
-- Regional mortality rates attributed to neural system cancers
SELECT
[Country_and_Region]
--,SUM(Total_Annual_Deaths) AS TotalDeaths
    ,SUM(Brain_and_central_nervous_system_cancer) AS Brain_and_central_nervous_system_cancer
    ,SUM(Brain_and_central_nervous_system_cancer)/ SUM(Total_Annual_Deaths) AS BrainandCentralNervousSystemCancerRate
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'
GROUP BY [Country_and_Region]


--ENDOCRINE CANCERS
--*subject to editting*
-- Regional mortality rates attributed to endocrine system cancers
SELECT
[Country_and_Region]
--,SUM(Total_Annual_Deaths) AS TotalDeaths
    ,SUM(Thyroid_cancer) AS Thyroid_cancer
    ,SUM(Thyroid_cancer)/ SUM(Total_Annual_Deaths) AS ThyroidCancerRate
FROM GlobalCancerDeaths
WHERE [Country_and_Region] LIKE '%Region%'
GROUP BY [Country_and_Region]


