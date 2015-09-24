-- File to create the TAPR database and fill with default values --

-- Create Database and Use it --
CREATE DATABASE IF NOT EXISTS `taprdb`
    CHARACTER SET = 'utf8';

USE taprdb;

-- Create all parent tables that are not children themselves --
CREATE TABLE IF NOT EXISTS `Gender` (
    `GenderId` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Gender` VARCHAR(10)
);

INSERT INTO `Gender` (`Gender`) VALUES
    ('M'),
    ('F');

CREATE TABLE IF NOT EXISTS `Diagnoses` (
    `DiagnosisCode` VARCHAR(20) NOT NULL PRIMARY KEY COMMENT "Currently in ICD9 Codes",
    `Diagnosis` TEXT
);

INSERT INTO `Diagnoses` (`DiagnosisCode`, `Diagnosis`) VALUES 
    ('T86.00', 'Unspecified complication of bone marrow transplant'),
    ('T86.01', 'Bone marrow transplant rejection'),
    ('T86.02', 'Bone marrow transplant failure'),
    ('T86.09', 'Other complications of bone marrow transplant'),
    ('G70.00', 'Myasthenia gravis without (acute) exacerbation'),
    ('G70.01', 'Myasthenia gravis with (acute) exacerbation'),
    ('D57.1', 'Sickle cell disease without crisis'),
    ('M31.1', 'Thrombotic microangiopathy'),
    ('D75.82', 'Heparin induced thrombocytopenia'),
    ('G61.81', 'Chronic inflammatory demyelinating polyneuritis'),
    ('D59.3', 'Hemolytic uremic syndrome'),
    ('C90.00', 'Multiple myeloma not having achieved remission'),
    ('C90.01', 'Multiple myeloma in remission'),
    ('C90.02', 'Multiple myeloma in relapse'),
    ('G35', 'Multiple sclerosis'),
    ('C92.00', 'Acute myeloblastic leukemia, not having achieved remission'),
    ('C92.40', 'Acute promyelocytic leukemia, not having achieved remission'),
    ('C92.50', 'Acute myelomonocytic leukemia, not having achieved remission'),
    ('M31.0', 'Hypersensitivity angiitis'),
    ('M31.30', 'Wegener’s granulomatosis without renal involvement'),
    ('D64.9', 'Anemia, unspecified'),
    ('D59.0', 'Drug-induced autoimmune hemolytic anemia'),
    ('D59.6', 'Paroxysmal'),
    ('I42.7', 'Cardiomyopathy due to drug or external agent'),
    ('D59.1', 'Other autoimmune hemolytic anemias'),
    ('D89.1', 'Cryoglobulinemia'),
    ('G36.0', 'Devics / NMO'),
    ('G04.81', 'Encephalitis – Paraneoplastic/other'),
    ('G93.40', 'Encephalopathy, unspecified'),
    ('D47.3', 'Essential (hemorrhagic) thrombocythemia'),
    ('N03.3', 'Chronic nephritic syndrome with diffuse mesangial proliferative glomerulonephritis'),
    ('G61.0', 'Guillain-Barre syndrome'),
    ('D75.1', 'Hyperviscosity of serum, polycythemic'),
    ('D58.8', 'Hyperviscosity of serum, sclerothymic'),
    ('J84.112', 'Idiopathic pulmonary fibrosis'),
    ('D59.4', 'Other nonautoimmune hemolytic anemias'),
    ('M62.81', 'Muscle weakness (generalized)'),
    ('C90.0', 'Multiple myeloma and malignant plasma cell neopalsms'),
    ('C84.00', 'Mycosis fungoides, unspecified site'),
    ('C84.09', 'Mycosis fungoides, extranodal and solid organ sites'),
    ('H46.8', 'Other optic neuritis'),
    ('L10.0', 'Pemphigus vulgaris'),
    ('M30.0', 'Polyarteritis nodosa'),
    ('Z33.1', 'Pregnant state, incidental'),
    ('O09.511', 'Supervision of elderly primigravida, first trimester'),
    ('O09.521', 'Supervision of elderly multigravida, first trimester'),
    ('O09.611', 'Supervision of young primigravida, first trimester'),
    ('O09.621', 'Supervision of young multigravida, first trimester'),
    ('O09.819', 'Supervision of pregnancy resulting from assisted reproductive technology, unspecified trimester'),
    ('O80', 'Encounter for full term uncomplicated delivery'),
    ('Z38.1', 'Single liveborn infant, born outside hospital'),
    ('E80.0', 'Hereditary erythropoietic porphyria'),
    ('E80.20', 'Unspecified porphyria'),
    ('E80.29', 'Other porphyria'),
    ('L29.9', 'Pruritis, unspecified'),
    ('R06.02', 'Shortness of breath'),
    ('D57.00', 'Hb-SS disease with crisis, unspecified'),
    ('D57.20', 'SS/Hb-C disease without crisis'),
    ('D57.219', 'SS/Hb-C disease w/ crisis, unspecified'),
    ('D57.8', 'Other sickle cell disorders without crisis'),
    ('D57.819', 'Other sickle-cell disorders w/ crisis, unspecified'),
    ('Z94.84', 'Stem cells transplant status'),
    ('G25.82', 'Stiff-man syndrome'),
    ('T14.90', 'Injury, unspecified'),
    ('G37.3', 'Acute transverse myelitis in demyelinating disease of central nervous system'),
    ('T80.89XA', 'Other complications following infusion, transfusion and therapeutic injection, initial encounter'),
    ('I63.50', 'Cerebral infarction due to unspecified occlusion or stenosis of unspecified cerebral artery'),
    ('I21.3', 'STEMI unspecified site'),
    ('I82.409', 'DVT - Acute embolism and thrombosis of unspecified deep veins of unspecified lower extremity'),
    ('I82.419', 'DVT - Acute embolism and thrombosis of unspecified femoral vein'),
    ('I82.429', 'DVT - Acute embolism and thrombosis of unspecified iliac vein'),
    ('I82.439', 'DVT - Acute embolism and thrombosis of unspecified popliteal vein'),
    ('I82.4Y9', 'DVT - Acute embolism and thrombosis of unspecified deep veins of unspecified proximal lower extremity'),
    ('I82.449', 'DVT - Acute embolism and thrombosis of unspecified tibial vein'),
    ('I82.499', 'DVT - Acute embolism and thrombosis of other specified deep vein of unspecified lower extremity'),
    ('182.4Z9', 'DVT - Acute embolism and thrombosis of unspecified deep veins of unspecified distal lower extremity'),
    ('Z86.73', 'Personal history of transient ischemic attack and cerebral infarction without residual deficits'),
    ('T80.0XXA', 'Air embolism following infusion, transfusion and therapeutic injection, initial encounter'),
    ('T81.718A', 'Complication of other artery following a procedure, not elsewhere classified, initial encounter'),
    ('T81.72XA', 'Complication of vein following a procedure, not elsewhere classified, initial encounter'),
    ('T82.817A', 'Embolism of cardiac prosthetic devices, implants and grafts, initial encounter'),
    ('T82.818A', 'Embolism of vascular prosthetic devices, implants and grafts, initial encounter'),
    ('I26.99', 'Other pulmonary embolism without acute cor pulmonale'),
    ('I26.90', 'Septic pulmonary embolism without acute cor pulmonale'),
    ('I26.92', 'Saddle embolus of pulmonary artery without acute cor pulmonale'),
    ('M32.10', 'Systemic lupus erythematosus, organ or system involvement unspecified'),
    ('D68.8', 'Other specified coagulation defects'),
    ('D68.9', 'Coagulation defect, unspecified'),
    ('D69.9', 'Hemorrhagic condition, unspecified'),
    ('Z95.811', 'Presence of heart assist device'),
    ('D69.49', 'Other primary thrombocytopenia'),
    ('D69.41', 'Evans syndrome'),
    ('D69.42', 'Congenital and hereditary thrombocytopenia purpura'),
    ('D69.3', 'Immune thrombocytopenic purpura'),
    ('Z79.02', 'Long term (current) use of antithrombotics/antiplatelets'),
    ('D69.59', 'Other secondary thrombocytopenia'),
    ('D69.6', 'Thrombocytopenia, unspecified'),
    ('R79.1', 'Abnormal coagulation profile'),
    ('T86.10', 'Unspecified complication of kidney transplant'),
    ('T86.11', 'Kidney transplant rejection'),
    ('T86.12', 'Kidney transplant failure'),
    ('T86.20', 'Unspecified complication of heart transplant'),
    ('T86.21', 'Heart transplant rejection'),
    ('T86.22', 'Heart transplant failure'),
    ('T86.40', 'Unspecified complication of liver transplant'),
    ('T86.41', 'Liver transplant rejection'),
    ('T86.42', 'Liver transplant failure'),
    ('T86.819', 'Unspecified complication of lung transplant'),
    ('T86.810', 'Lung transplant rejection'),
    ('T86.811', 'Lung transplant failure');

CREATE TABLE IF NOT EXISTS `Procedures` (
    `ProcedureId` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Procedure` VARCHAR(50)
);

-- Create children tables --
CREATE TABLE IF NOT EXISTS `Patients` (
    `PatientId` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Mrn` INT UNSIGNED,
    `FirstName` VARCHAR(50),
    `LastName` VARCHAR(50),
    `GenderId` BIGINT UNSIGNED NOT NULL,
    CONSTRAINT `Gender.GenderId_Patients.GenderId` FOREIGN KEY (`GenderId`) REFERENCES `Gender` (`GenderId`),
    `Dob` DATE
);

CREATE TABLE IF NOT EXISTS `MedicalInformation` (
    `MedicalInformationId` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `PatientId` BIGINT UNSIGNED NOT NULL,
    CONSTRAINT `Patients.PatientId_MedicalInformation.PatientId` FOREIGN KEY (`PatientId`) REFERENCES `Patients` (`PatientId`),
    `DiagnosisCode` VARCHAR(20) NOT NULL COMMENT "Currently in ICD9 Codes",
    CONSTRAINT `Diagnoses.DiagnosisCode_MedicalInformation.PatientId` FOREIGN KEY (`DiagnosisCode`) REFERENCES `Diagnoses` (`DiagnosisCode`),
    `History` TEXT COMMENT "This is de-normalized data"
);

CREATE TABLE IF NOT EXISTS `PatientVisits` (
    `PatientVisitId` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `PatientId` BIGINT UNSIGNED NOT NULL,
    CONSTRAINT `Patients.PatientId_PatientVisits.PatientId` FOREIGN KEY (`PatientId`) REFERENCES `Patients` (`PatientId`),
    `VisitDate` DATE,
    `Location` VARCHAR(50) COMMENT "De-normalized data",
    `ProcedureId` BIGINT UNSIGNED NOT NULL,
    CONSTRAINT `Procedures.ProcedureId_PatientVisits.ProcedureId` FOREIGN KEY (`ProcedureId`) REFERENCES `Procedures` (`ProcedureId`),
    `Weight` DOUBLE(4, 2) UNSIGNED
);

-- Table is no longer needed --

-- CREATE TABLE IF NOT EXISTS `PlasmaVolume` (
--     `PlasmaVolumeId` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
--     `PatientVisitId` BIGINT UNSIGNED NOT NULL,
--     CONSTRAINT `PatientVisits.PatientVisitId_PlasmaVolume.PlasmaVolumeId` FOREIGN KEY (`PatientVisitId`) REFERENCES `PatientVisits` (`PatientVisitId`),
--     `PlasmaVolume` DOUBLE UNSIGNED
-- );

