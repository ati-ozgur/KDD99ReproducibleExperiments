

DROP TABLE IF EXISTS TEST_CORRECTED;
CREATE TABLE if not exists  TEST_CORRECTED(
	duration REAL NOT NULL,
	protocol_type TEXT NULL,
	service TEXT NULL,
	flag TEXT NULL,
	src_bytes REAL NOT NULL,
	dst_bytes REAL NOT NULL,
	land TEXT NULL,
	wrong_fragment REAL NOT NULL,
	urgent REAL NOT NULL,
	hot REAL NOT NULL,
	num_failed_logins REAL NOT NULL,
	logged_in TEXT NULL,
	num_compromised REAL NOT NULL,
	root_shell REAL NOT NULL,
	su_attempted REAL NOT NULL,
	num_root REAL NOT NULL,
	num_file_creations REAL NOT NULL,
	num_shells REAL NOT NULL,
	num_access_files REAL NOT NULL,
	num_outbound_cmds REAL NOT NULL,
	is_host_login TEXT NULL,
	is_guest_login TEXT NULL,
	count REAL NOT NULL,
	srv_count REAL NOT NULL,
	serror_rate REAL NOT NULL,
	srv_serror_rate REAL NOT NULL,
	rerror_rate REAL NOT NULL,
	srv_rerror_rate REAL NOT NULL,
	same_srv_rate REAL NOT NULL,
	diff_srv_rate REAL NOT NULL,
	srv_diff_host_rate REAL NOT NULL,
	dst_host_count REAL NOT NULL,
	dst_host_srv_count REAL NOT NULL,
	dst_host_same_srv_rate REAL NOT NULL,
	dst_host_diff_srv_rate REAL NOT NULL,
	dst_host_same_src_port_rate REAL NOT NULL,
	dst_host_srv_diff_host_rate REAL NOT NULL,
	dst_host_serror_rate REAL NOT NULL,
	dst_host_srv_serror_rate REAL NOT NULL,
	dst_host_rerror_rate REAL NOT NULL,
	dst_host_srv_rerror_rate REAL NOT NULL,
	class_attribute TEXT NULL
);

DROP TABLE IF EXISTS KDD_TRAIN_DATA;
CREATE TABLE if not exists KDD_TRAIN_DATA(
	duration REAL NOT NULL,
	protocol_type TEXT NULL,
	service TEXT NULL,
	flag TEXT NULL,
	src_bytes REAL NOT NULL,
	dst_bytes REAL NOT NULL,
	land TEXT NULL,
	wrong_fragment REAL NOT NULL,
	urgent REAL NOT NULL,
	hot REAL NOT NULL,
	num_failed_logins REAL NOT NULL,
	logged_in TEXT NULL,
	num_compromised REAL NOT NULL,
	root_shell REAL NOT NULL,
	su_attempted REAL NOT NULL,
	num_root REAL NOT NULL,
	num_file_creations REAL NOT NULL,
	num_shells REAL NOT NULL,
	num_access_files REAL NOT NULL,
	num_outbound_cmds REAL NOT NULL,
	is_host_login TEXT NULL,
	is_guest_login TEXT NULL,
	count REAL NOT NULL,
	srv_count REAL NOT NULL,
	serror_rate REAL NOT NULL,
	srv_serror_rate REAL NOT NULL,
	rerror_rate REAL NOT NULL,
	srv_rerror_rate REAL NOT NULL,
	same_srv_rate REAL NOT NULL,
	diff_srv_rate REAL NOT NULL,
	srv_diff_host_rate REAL NOT NULL,
	dst_host_count REAL NOT NULL,
	dst_host_srv_count REAL NOT NULL,
	dst_host_same_srv_rate REAL NOT NULL,
	dst_host_diff_srv_rate REAL NOT NULL,
	dst_host_same_src_port_rate REAL NOT NULL,
	dst_host_srv_diff_host_rate REAL NOT NULL,
	dst_host_serror_rate REAL NOT NULL,
	dst_host_srv_serror_rate REAL NOT NULL,
	dst_host_rerror_rate REAL NOT NULL,
	dst_host_srv_rerror_rate REAL NOT NULL,
	class_attribute TEXT NOT NULL
);


DROP TABLE IF EXISTS KDD_TRAIN_DATA_TEMPLATE;
CREATE TABLE if not exists KDD_TRAIN_DATA_TEMPLATE(
	duration REAL NOT NULL,
	protocol_type TEXT NULL,
	service TEXT NULL,
	flag TEXT NULL,
	src_bytes REAL NOT NULL,
	dst_bytes REAL NOT NULL,
	land TEXT NULL,
	wrong_fragment REAL NOT NULL,
	urgent REAL NOT NULL,
	hot REAL NOT NULL,
	num_failed_logins REAL NOT NULL,
	logged_in TEXT NULL,
	num_compromised REAL NOT NULL,
	root_shell REAL NOT NULL,
	su_attempted REAL NOT NULL,
	num_root REAL NOT NULL,
	num_file_creations REAL NOT NULL,
	num_shells REAL NOT NULL,
	num_access_files REAL NOT NULL,
	num_outbound_cmds REAL NOT NULL,
	is_host_login TEXT NULL,
	is_guest_login TEXT NULL,
	count REAL NOT NULL,
	srv_count REAL NOT NULL,
	serror_rate REAL NOT NULL,
	srv_serror_rate REAL NOT NULL,
	rerror_rate REAL NOT NULL,
	srv_rerror_rate REAL NOT NULL,
	same_srv_rate REAL NOT NULL,
	diff_srv_rate REAL NOT NULL,
	srv_diff_host_rate REAL NOT NULL,
	dst_host_count REAL NOT NULL,
	dst_host_srv_count REAL NOT NULL,
	dst_host_same_srv_rate REAL NOT NULL,
	dst_host_diff_srv_rate REAL NOT NULL,
	dst_host_same_src_port_rate REAL NOT NULL,
	dst_host_srv_diff_host_rate REAL NOT NULL,
	dst_host_serror_rate REAL NOT NULL,
	dst_host_srv_serror_rate REAL NOT NULL,
	dst_host_rerror_rate REAL NOT NULL,
	dst_host_srv_rerror_rate REAL NOT NULL,
	class_attribute TEXT NULL,
	HashSha1WithoutClassAttribute varchar(45) NULL,
	HashSha1WithClassAttribute varchar(45) NULL
);


DROP TABLE IF EXISTS LT_CLASS_ATTRIBUTE;
CREATE TABLE if not exists LT_CLASS_ATTRIBUTE(
	class_attribute TEXT NOT NULL PRIMARY KEY,
	class_attribute_five TEXT NOT NULL,
	class_attribute_five_number int NOT NULL,
	class_attribute_binary TEXT NOT NULL,
	is_only_test_dataset bit NULL

);


DROP TABLE IF EXISTS LT_FLAG;
CREATE TABLE if not exists LT_FLAG(
	flag TEXT NOT NULL PRIMARY KEY
);

DROP TABLE IF EXISTS LT_IS_GUEST_LOGIN;
CREATE TABLE if not exists LT_IS_GUEST_LOGIN(
	is_guest_login TEXT NOT NULL PRIMARY KEY
 
);


DROP TABLE IF EXISTS LT_IS_HOST_LOGIN;
CREATE TABLE if not exists LT_IS_HOST_LOGIN(
	is_host_login bit NOT NULL  PRIMARY KEY
);


DROP TABLE IF EXISTS LT_LAND;
CREATE TABLE if not exists LT_LAND(
	land TEXT NOT NULL  PRIMARY KEY
); 

DROP TABLE IF EXISTS LT_LOGGED_IN;
CREATE TABLE if not exists LT_LOGGED_IN(
	logged_in TEXT NOT NULL  PRIMARY KEY
);


DROP TABLE IF EXISTS LT_PROTOCOL_TYPE;
CREATE TABLE if not exists LT_PROTOCOL_TYPE(
	protocol_type TEXT NOT NULL   PRIMARY KEY
);


DROP TABLE IF EXISTS LT_SERVICE_TYPE;
CREATE TABLE if not exists LT_SERVICE_TYPE(
	service TEXT NOT NULL   PRIMARY KEY
);

DROP TABLE IF EXISTS ML_TRAIN_RESULTS;
CREATE TABLE ML_TRAIN_RESULTS ( 
    id                INTEGER  PRIMARY KEY AUTOINCREMENT,
    datasetName       TEXT,
    classifierName       TEXT,
    options       TEXT,
    trainingStartTime DATETIME ,
    trainingFinishTime DATETIME ,
    trainingDuration INTEGER ,
    freeMemory LONG ,
    totalMemory LONG ,
    maxMemory LONG ,
    usedMemory LONG,
    LocalMachineHostName TEXT,
    JavaVersion TEXT,
    OsArchitecture TEXT,
    UserName TEXT,
    JavaVmName TEXT,
    OsName TEXT,
    OsVersion TEXT,
    AvailableProcessors INTEGER,
    ModelSize LONG ,
    ModelName TEXT,
    NumberOfInstances INTEGER
);

DROP TABLE IF EXISTS ML_TEST_RESULTS;
CREATE TABLE ML_TEST_RESULTS (
	id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE
	, classifierName TEXT
	, datasetType TEXT
	, datasetName TEXT
	, numberOfInstances INTEGER
	, classifierModelFileName TEXT
	, TruePositive DOUBLE
	, FalsePositive DOUBLE
	, TrueNegative DOUBLE
	, FalseNegative DOUBLE
    , testStartTime DATETIME 
    , testFinishTime DATETIME 
    , testDuration INTEGER 
    , freeMemory LONG 
    , totalMemory LONG 
    , maxMemory LONG 
    , usedMemory LONG
    , LocalMachineHostName TEXT
    , JavaVersion TEXT
    , OsArchitecture TEXT
    , UserName TEXT
    , JavaVmName TEXT
    , OsName TEXT
    , OsVersion TEXT
    , AvailableProcessors INTEGER
	);


DROP VIEW IF EXISTS ML_TRAIN_RESULTS_SUMMARY;

CREATE VIEW ML_TRAIN_RESULTS_SUMMARY AS
SELECT M.datasetName,
      M.classifierName,
      M.options,
      M.trainingStartTime,
      M.trainingFinishTime,
      M.trainingDuration  AS trainingDurationSeconds,
      M.trainingDuration / 60  AS trainingDurationMinutes,
      M.trainingDuration / (60*60)  AS trainingDurationHours,
      M.freeMemory,
      M.totalMemory,
      M.maxMemory,
      M.usedMemory  AS usedMemory,
      M.usedMemory  / 1024 AS usedMemoryKb,
      round(M.usedMemory *1.0 /( 1024 * 1024 ),2)  AS usedMemoryMb,
      round(M.usedMemory*1.0/( 1024 * 1024 * 1024 ),2)  AS usedMemoryGb,
      M.ModelSize,
      round(M.ModelSize *1.0 /( 1024  ),2)  AS ModelSizeKb,
      round(M.ModelSize *1.0 /( 1024 * 1024 ),2)  AS ModelSizeMb,
      round(M.ModelSize*1.0/( 1024 * 1024 * 1024 ),2)  AS ModelSizeGb
 FROM ML_TRAIN_RESULTS M;


DROP VIEW IF EXISTS ML_TEST_RESULTS_SUMMARY;


CREATE VIEW ML_TEST_RESULTS_SUMMARY AS
SELECT 
 T.*
, T.TruePositive  / ( T.TruePositive  + T.FalseNegative ) AS "tprate"
, T.TrueNegative  / (T.TrueNegative + T.FalsePositive ) AS "tnrate"
, T.FalsePositive / ( T.FalsePositive + T.TrueNegative  ) AS "fprate"
, T.TruePositive  / ( T.TruePositive  + T.FalsePositive ) AS "positive_predictive_value"
, T.TrueNegative  / ( T.TrueNegative  + T.FalseNegative ) AS "negative_predictive_value"
, T.FalsePositive / (  T.TruePositive + T.FalsePositive ) AS "false_discovery_rate "
, (T.TruePositive + T.TrueNegative) / NumberOfInstances   AS "accuracy"
, 2 * T.TruePositive / ( 2 * T.TruePositive  + T.FalsePositive + T.FalseNegative ) AS "F1_score",

FROM ML_TEST_RESULTS T

DROP VIEW IF EXISTS ML_TEST_RESULTS_SUMMARY_FULL_NAMES;

CREATE VIEW ML_TEST_RESULTS_SUMMARY_FULL_NAMES AS

SELECT 
 T.*
, T.tprate AS "tprate hitrate recall sensitivity"
, T.tnrate AS "tnrate specificity"
, T.fprate AS "fprate fall-out  false_positive_rate false_alarm_rate"
, T.positive_predictive_value AS "precision  positive_predictive_value"
FROM ML_TEST_RESULTS_SUMMARY T;


DROP TABLE IF EXISTS LT_CLASSIFIER_NAMES;
CREATE TABLE LT_CLASSIFIER_NAMES (ClassifierFullName TEXT (100) PRIMARY KEY UNIQUE, classifierShortName TEXT (50));
