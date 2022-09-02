-- SCRIVERE UN'ISTRUZIONE SQL PER CREARE UNA SEMPLICE TABELLA "COUNTRIES" CHE INCLUDA LE COLONNE country_id, country_name, region_id
CREATE TABLE `countries`(
    `country_id` varchar(2),
    `contry_name` varchar(40),
    `region_id` decimal(10,0)
);

-- Scrivere un'istruzione SQL per creare una semplice tabella "countries" che includa le colonne country_id, country_name e region_id che è già esistente.
CREATE TABLE IF NOT EXISTS countries ( 
    `COUNTRY_ID` varchar(2),
    `COUNTRY_NAME` varchar(40),
    `REGION_ID` decimal(10,0)
);

--  Scrivere un'istruzione SQL per creare la struttura di una tabella "dup_countries" simile a "countries"
CREATE TABLE IF NOT EXISTS `dup_countries`
LIKE `countries`;

--  Scrivere un'istruzione SQL per creare una copia duplicata della tabella dei "countries" che includa struttura e dati per nome "dup_countries".
CREATE TABLE IF NOT EXISTS `dup_countries`
AS LIKE * FROM `countreis`

-- Scrivere un'istruzione SQL per creare una tabella "countries" imposta un vincolo NULL.
CREATE TABLE `countries`(
    `country_id` varchar(2) NOT NULL,
    `contry_name` varchar(40) NOT NULL,
    `region_id` decimal(10,0) NOT NULL
);

-- Scrivere un'istruzione SQL per creare una tabella denominata job che includa le colonne job_id, job_title, min_salary, max_salary
--  e verificare se l'importo max_salary supera il limite superiore 25000.
CREATE TABLE `job`(
    `job_id` varchar(2) NOT NULL,
    `job_title` varchar(40) NOT NULL,
    `min_salary` decimal(6,0),
    `max_salary` decimal(6,0),
    CHECK(`max_salary` <= 25000) -- Il CHECK vincolo viene utilizzato per limitare l'intervallo di valori che può essere inserito in una colonna.
);

-- Scrivere un'istruzione SQL per creare una tabella denominata "countries" che includa le colonne country_id, country_name e region_id 
-- e assicurarsi che nessun paese tranne Francia, India e Cina venga inserito nella tabella.
CREATE TABLE `countries`(
    `country_id` varchar(2),
    `country_name` varchar(40)
    CHECK(`country_name` IN('France','India','China')),
    `region_id` decimal(10,0)
);

--  Scrivi un'istruzione SQL per creare una tabella denominata job_histry che includa le colonne employee_id, start_date, end_date, job_id e department_id
--  e assicurati che il valore rispetto alla colonna end_date venga inserito al momento dell'inserimento nel formato come '--/-- /----'.
CREATE TABLE `job_history`(
    `employee_id` decimal(10,0),
    `start_date` date NOT NULL,
    `end_date` date NOT NULL
    CHECK(`end_date` LIKE '--/--/----'),
    `job_id` varchar(10)
    `department_id` decimal(4,0) NOT NULL
);

--  Scrivere un'istruzione SQL per creare una tabella denominata "countries" che includa le colonne country_id, country_name e region_id 
-- e assicurarsi che non siano consentiti dati duplicati rispetto alla colonna country_id al momento dell'inserimento.
CREATE TABLE `countries`(
    `country_id` varchar(2) NOT NULL,
    `country_name` varchar(40) NOT NULL,
    `region_id` decimal(10,0) NOT NULL,
    UNIQUE(`country_id`)
);