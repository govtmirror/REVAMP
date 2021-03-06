SPISNONIP                х±  х±   МЉ/     Header           8      CMS_MENU_ITEMS
      MENU_ID   NUMBER
   MENU_TITLE   VARCHAR2	   PARENT_ID   NUMBER   PAGE_ID   NUMBER   ACTIVE   NUMBER   STATUS   NUMBER   USER_RIGHTS   NUMBER   TARGET_PORTAL_ID   NUMBER
   SORT_ORDER   NUMBER   IS_EDUCATION   NUMBER.  create table CMS_MENU_ITEMS
(
  menu_id          NUMBER,
  menu_title       VARCHAR2(255),
  parent_id        NUMBER default 0,
  page_id          NUMBER,
  active           NUMBER default 1,
  status           NUMBER default 1,
  user_rights      NUMBER default 0,
  target_portal_id NUMBER default 1,
  sort_order       NUMBER,
  is_education     NUMBER default 0
)
;
comment on column CMS_MENU_ITEMS.status
  is '0: Un-Published; 1: Published';
comment on column CMS_MENU_ITEMS.target_portal_id
  is '1: Patient; 2: VA_Facing; 3: Both';
	   CMS_PAGES      PAGE_ID   NUMBER   TITLE   VARCHAR2	   AUTHOR_ID   NUMBER   CONTENTS   CLOB   STATUS   NUMBER   ACTIVE   NUMBER   CREATED   DATE
   CREATED_BY   NUMBER   LAST_MODIFIED   DATE   LAST_MODIFIED_BY   NUMBER   IS_TEMPLATE   NUMBER∞  create table CMS_PAGES
(
  page_id          NUMBER,
  title            VARCHAR2(4000),
  author_id        NUMBER,
  contents         CLOB,
  status           NUMBER(2),
  active           NUMBER(1),
  created          DATE,
  created_by       NUMBER,
  last_modified    DATE,
  last_modified_by NUMBER,
  is_template      NUMBER default 0
)
;
comment on column CMS_PAGES.status
  is '0:un-published; 1: published';
   FX_PAGE_ACCESS   	   PAGE_NAME   VARCHAR2	   USER_TYPE   NUMBER   USER_RIGHTS   NUMBER   ACTIVE   NUMBER   COMMENTS   VARCHAR2   IS_LOGGED_IN   NUMBERЏ   create table FX_PAGE_ACCESS
(
  page_name    VARCHAR2(255),
  user_type    NUMBER,
  user_rights  NUMBER,
  active       NUMBER default 1,
  comments     VARCHAR2(255),
  is_logged_in NUMBER(2) default 1
)
;
   FX_RESTRICTED_NAME      RESTRICTED_NAME   VARCHAR2†   create table FX_RESTRICTED_NAME
(
  restricted_name VARCHAR2(50) not null
)
;
create index RESTRICTED_NAME_NDX01 on FX_RESTRICTED_NAME (RESTRICTED_NAME);
   FX_RIGHTS_TEMPLATE      USER_RIGHTS   NUMBER	   READ_ONLY   NUMBER	   USER_TYPE   NUMBERn   create table FX_RIGHTS_TEMPLATE
(
  user_rights NUMBER,
  read_only   NUMBER,
  user_type   NUMBER
)
;
   FX_SEC_QUESTIONS	   
   FX_USER_ID   NUMBER   QUESTION_ID_1   NUMBER   ANSWER_1   VARCHAR2   QUESTION_ID_2   NUMBER   ANSWER_2   VARCHAR2   QUESTION_ID_3   NUMBER   ANSWER_3   VARCHAR2   ANSWER_ATTEMPTS   NUMBER   LAST_UPDATED   DATE7  create table FX_SEC_QUESTIONS
(
  fx_user_id      NUMBER,
  question_id_1   NUMBER,
  answer_1        VARCHAR2(255),
  question_id_2   NUMBER,
  answer_2        VARCHAR2(255),
  question_id_3   NUMBER,
  answer_3        VARCHAR2(255),
  answer_attempts NUMBER default 0,
  last_updated    DATE
)
;
   FX_SETTINGS      MAIL_SMTP_HOST   VARCHAR2   MAIL_SMTP_SENDER   VARCHAR2   MAIL_SMTP_PORT   NUMBER   SITE_URL   VARCHAR2   NOTIFY_EMAIL   VARCHAR2   HAS_MILITARY_DETAIL   NUMBER   HAS_PATIENT_SUPERVISOR_INPUT   NUMBER   HAS_PATIENT_INSURANCE   NUMBER   BRANCH_OF_SERVICE   NUMBER   TEXTING_HOST   VARCHAR2   TEXTING_PORT   NUMBER   TEXTING_USER   VARCHAR2   TEXTING_PSWD   VARCHAR2   ORA_WIN_DIR   VARCHAR2	  create table FX_SETTINGS
(
  mail_smtp_host               VARCHAR2(4000),
  mail_smtp_sender             VARCHAR2(4000),
  mail_smtp_port               NUMBER,
  site_url                     VARCHAR2(4000),
  notify_email                 VARCHAR2(4000),
  has_military_detail          NUMBER(1) default 0,
  has_patient_supervisor_input NUMBER(1) default 0,
  has_patient_insurance        NUMBER(1) default 0,
  branch_of_service            NUMBER(1) default 0,
  texting_host                 VARCHAR2(4000),
  texting_port                 NUMBER,
  texting_user                 VARCHAR2(4000),
  texting_pswd                 VARCHAR2(4000),
  ora_win_dir                  VARCHAR2(4000)
)
;
comment on column FX_SETTINGS.mail_smtp_host
  is 'SMTP Mail Server IP Address';
comment on column FX_SETTINGS.mail_smtp_sender
  is 'Sender Email Address To Be Used In the Email To Field on Notification Emails';
comment on column FX_SETTINGS.mail_smtp_port
  is 'SMTP Mail Server Port ID';
comment on column FX_SETTINGS.site_url
  is 'Website URL';
comment on column FX_SETTINGS.notify_email
  is 'Email Address of Sys Admin Receiving Email Notifications';
comment on column FX_SETTINGS.has_military_detail
  is 'Flag Indicating Whether The Military Detail Tab Should be Shown';
comment on column FX_SETTINGS.has_patient_supervisor_input
  is 'Flag Indicating Whether The Supervisor Input Tab should be Shown';
comment on column FX_SETTINGS.has_patient_insurance
  is 'Flag Indicating Whether Patient Insurance Tab should be Shown';
comment on column FX_SETTINGS.branch_of_service
  is 'Field Identifying Patient''s Branch of Service - AirForce  = 1,
  Army = 2,
  Marines = 3,
  Navy = 4,
  Commercial = 5';
comment on column FX_SETTINGS.texting_host
  is 'Text Message Server IP Address';
comment on column FX_SETTINGS.texting_port
  is 'Text Message Server Port ID';
comment on column FX_SETTINGS.texting_user
  is 'Text Message Username';
comment on column FX_SETTINGS.texting_pswd
  is 'Text Message Password';
   FX_USER'   
   FX_USER_ID   NUMBER	   USER_NAME   VARCHAR2   CERTIFICATE   VARCHAR2	   IS_LOCKED   NUMBER   IS_INACTIVE   NUMBER   DATE_CREATED   DATE   DATE_MODIFIED   DATE
   UPDATED_BY   NUMBER   RESET_PASSWORD   NUMBER   DATE_PASSWORD_CHANGED   DATE   DATE_LAST_LOGIN   DATE   SESSION_TIMEOUT   NUMBER   LOGIN_ATTEMPTS   NUMBER   PASSWORD   VARCHAR2   LAST_UPDATED   DATE   LAST_UPDATED_BY   NUMBER   IV   VARCHAR2   IV_PRE   VARCHAR2	   PREV_PWD1   VARCHAR2	   PREV_PWD2   VARCHAR2	   PREV_PWD3   VARCHAR2	   PREV_PWD4   VARCHAR2	   PREV_PWD5   VARCHAR2	   PREV_PWD6   VARCHAR2	   PREV_PWD7   VARCHAR2	   PREV_PWD8   VARCHAR2	   PREV_PWD9   VARCHAR2
   PREV_PWD10   VARCHAR2   LAST_FLOGIN_DATE   DATE   LAST_FLOGIN_IP   VARCHAR2   LAST_LOGIN_IP   VARCHAR2   FLOGIN_ATTEMPTS   NUMBER   MDWS_USER_NAME   VARCHAR2   MDWS_PWD   VARCHAR2   MDWS_REGION_ID   NUMBER   MDWS_SITE_ID   NUMBER   MDWS_USER_ID   NUMBER   MDWS_NOTE_TITLE_LABEL   VARCHAR2   MDWS_NOTE_CLINIC_ID   NUMBERќ  create table FX_USER
(
  fx_user_id            NUMBER not null,
  user_name             VARCHAR2(500),
  certificate           VARCHAR2(4000),
  is_locked             NUMBER,
  is_inactive           NUMBER,
  date_created          DATE,
  date_modified         DATE,
  updated_by            NUMBER,
  reset_password        NUMBER,
  date_password_changed DATE,
  date_last_login       DATE,
  session_timeout       NUMBER,
  login_attempts        NUMBER,
  password              VARCHAR2(1500),
  last_updated          DATE,
  last_updated_by       NUMBER,
  iv                    VARCHAR2(255),
  iv_pre                VARCHAR2(255),
  prev_pwd1             VARCHAR2(1500),
  prev_pwd2             VARCHAR2(1500),
  prev_pwd3             VARCHAR2(1500),
  prev_pwd4             VARCHAR2(1500),
  prev_pwd5             VARCHAR2(1500),
  prev_pwd6             VARCHAR2(1500),
  prev_pwd7             VARCHAR2(1500),
  prev_pwd8             VARCHAR2(1500),
  prev_pwd9             VARCHAR2(1500),
  prev_pwd10            VARCHAR2(1500),
  last_flogin_date      DATE,
  last_flogin_ip        VARCHAR2(25),
  last_login_ip         VARCHAR2(25),
  flogin_attempts       NUMBER,
  mdws_user_name        VARCHAR2(255),
  mdws_pwd              VARCHAR2(255),
  mdws_region_id        NUMBER,
  mdws_site_id          NUMBER,
  mdws_user_id          NUMBER,
  mdws_note_title_label VARCHAR2(200),
  mdws_note_clinic_id   NUMBER
)
;
comment on column FX_USER.fx_user_id
  is 'Unique User ID Tied To SUAT_USER Table';
comment on column FX_USER.user_name
  is 'User Name - Encrypted';
comment on column FX_USER.certificate
  is 'CAC Certificate - Encrypted';
comment on column FX_USER.is_locked
  is 'Flag Indicating Whether Account Is Locked';
comment on column FX_USER.is_inactive
  is 'Flag Indicating Whether Account Is Inactive';
comment on column FX_USER.date_created
  is 'Account Creation Date';
comment on column FX_USER.date_modified
  is 'Last Modified Date';
comment on column FX_USER.updated_by
  is 'FX User ID Of Last User To Modify Record ';
comment on column FX_USER.reset_password
  is 'Flag Indicating Whether User Needs To Reset Password';
comment on column FX_USER.date_password_changed
  is 'Date Of Last Password Change';
comment on column FX_USER.date_last_login
  is 'Date The Last Time The User Logged In';
comment on column FX_USER.session_timeout
  is 'Session Timeout IN Minutes';
comment on column FX_USER.login_attempts
  is 'Number of Unsuccessful Login Attempts';
comment on column FX_USER.password
  is 'Password - Encrypted';
comment on column FX_USER.last_updated
  is 'Date Last Updated';
comment on column FX_USER.last_updated_by
  is 'FX User ID Of Last User To Update';
comment on column FX_USER.prev_pwd1
  is 'Previous Password 1 of Last 10 Passwords';
comment on column FX_USER.prev_pwd2
  is 'Previous Password 2 of Last 10 Passwords';
comment on column FX_USER.prev_pwd3
  is 'Previous Password 3 of Last 10 Passwords';
comment on column FX_USER.prev_pwd4
  is 'Previous Password 4 of Last 10 Passwords';
comment on column FX_USER.prev_pwd5
  is 'Previous Password 5 of Last 10 Passwords';
comment on column FX_USER.prev_pwd6
  is 'Previous Password 5 of Last 10 Passwords';
comment on column FX_USER.prev_pwd7
  is 'Previous Password 6 of Last 10 Passwords';
comment on column FX_USER.prev_pwd8
  is 'Previous Password 8 of Last 10 Passwords';
comment on column FX_USER.prev_pwd9
  is 'Previous Password 9 of Last 10 Passwords';
comment on column FX_USER.prev_pwd10
  is 'Previous Password 10 of Last 10 Passwords';
comment on column FX_USER.last_flogin_date
  is 'Last Failed Login Date';
comment on column FX_USER.last_flogin_ip
  is 'Last Failed Login IP Address';
comment on column FX_USER.last_login_ip
  is 'Last Successful Login IP Address';
comment on column FX_USER.flogin_attempts
  is 'Number Of Failed Login Attempts';
alter table FX_USER
  add constraint FX_USER_KEY_PK primary key (FX_USER_ID);
   FX_USER_RIGHTS   
   FX_USER_ID   NUMBER   USER_RIGHTS   NUMBER	   READ_ONLY   NUMBER	   USER_TYPE   NUMBERС   create table FX_USER_RIGHTS
(
  fx_user_id  NUMBER(11),
  user_rights NUMBER(32),
  read_only   NUMBER(32),
  user_type   NUMBER(32)
)
;
   INTAKE_FLAGS      FLAG_ID   NUMBER   MID   NUMBER   SESSION_FLAG_TX   VARCHAR2   VISIBLE   NUMBER   SESSION_FLAG_ED   VARCHAR2	   CALC_TYPE   VARCHAR2   CALC_VAR   VARCHAR2
   CALCULATED   NUMBER   SEVERITY_CODE   NUMBER   FLAG_TYPE_ID   NUMBER
   IDENTIFIER   VARCHAR2   SESSION_FLAG_LIST   VARCHAR2   PRIORITY   NUMBER   FLAG_TARGET_ID   NUMBER   RISK_FACTOR_ID   NUMBER   TID   NUMBER   REPORT_TYPE_ID   NUMBER
   FLAG_GROUP   NUMBER   ALTERNATE_LANGUAGE   VARCHAR2   FLAG_SERIES   NUMBER   ALT_LANG_CALC_VAR   VARCHAR2Ђ  create table INTAKE_FLAGS
(
  flag_id            NUMBER(11) default 0 not null,
  mid                NUMBER(5) default 0 not null,
  session_flag_tx    VARCHAR2(4000) not null,
  visible            NUMBER(3),
  session_flag_ed    VARCHAR2(4000),
  calc_type          VARCHAR2(10),
  calc_var           VARCHAR2(4000),
  calculated         NUMBER(11) default 0,
  severity_code      NUMBER(11) default 0,
  flag_type_id       NUMBER default 0 not null,
  identifier         VARCHAR2(50),
  session_flag_list  VARCHAR2(4000),
  priority           NUMBER(2),
  flag_target_id     NUMBER(3),
  risk_factor_id     NUMBER(4),
  tid                NUMBER(2),
  report_type_id     NUMBER(2),
  flag_group         NUMBER(2),
  alternate_language VARCHAR2(4000),
  flag_series        NUMBER(10),
  alt_lang_calc_var  VARCHAR2(4000)
)
;
comment on column INTAKE_FLAGS.flag_type_id
  is '99 is assessment completed';
comment on column INTAKE_FLAGS.identifier
  is 'added to support patient portal';
comment on column INTAKE_FLAGS.session_flag_list
  is 'added to support patient portal';
comment on column INTAKE_FLAGS.priority
  is 'added to support patient portal priority within a flag group';
comment on column INTAKE_FLAGS.flag_target_id
  is 'added to support patient portal ';
comment on column INTAKE_FLAGS.risk_factor_id
  is 'added to support patient portal NOT USED - mental health, behavioral health, chronic disease, family hist, etc, ';
comment on column INTAKE_FLAGS.tid
  is 'added to support patient portal ';
comment on column INTAKE_FLAGS.report_type_id
  is 'added to support patient portal 1 = patient, 2 = provider bullet, 3 = provider full';
comment on column INTAKE_FLAGS.flag_group
  is 'added to support patient portal Associates related flags';
comment on column INTAKE_FLAGS.alternate_language
  is 'added to support patient portal not used right now';
comment on column INTAKE_FLAGS.flag_series
  is 'added to support patient portal';
comment on column INTAKE_FLAGS.alt_lang_calc_var
  is 'added to support patient portal';
create index MID00005 on INTAKE_FLAGS (MID);
alter table INTAKE_FLAGS
  add constraint PRIMARYKEY00018 primary key (FLAG_ID);
   INTAKE_MODULE      MID   NUMBER   MODULE   VARCHAR2   ACTIVE   NUMBER   DESCRIPTION   VARCHAR2
   SORT_ORDER   NUMBER   RENDER_GRAPH   NUMBERќ  create table INTAKE_MODULE
(
  mid          NUMBER(5) default 0 not null,
  module       VARCHAR2(80) not null,
  active       NUMBER(5) not null,
  description  VARCHAR2(4000),
  sort_order   NUMBER(6) default 0 not null,
  render_graph NUMBER(2) default 0
)
;
comment on column INTAKE_MODULE.render_graph
  is '0: do not render this module scores in the graphic hub';
alter table INTAKE_MODULE
  add constraint PRIMARYKEY00022 primary key (MID);
   INTAKE_MODULE_GROUP      MODULE_GROUP_ID   NUMBER   MODULE_GROUP_DESCR   VARCHAR2
   SORT_ORDER   NUMBER   DESCRIPTION   VARCHAR2   EVENT_ID   NUMBER   ACTIVE   NUMBER   STAT_MODALITY_ID   NUMBER  create table INTAKE_MODULE_GROUP
(
  module_group_id    NUMBER,
  module_group_descr VARCHAR2(255),
  sort_order         NUMBER,
  description        VARCHAR2(4000),
  event_id           NUMBER(4),
  active             NUMBER(2) default 1,
  stat_modality_id   NUMBER(4)
)
;
   INTAKE_MODULE_GROUP_MID      MODULE_GROUP_ID   NUMBER   MID   NUMBER
   SORT_ORDER   NUMBER   create table INTAKE_MODULE_GROUP_MID
(
  module_group_id NUMBER,
  mid             NUMBER,
  sort_order      NUMBER
)
;
   INTAKE_PROBLEM_CRITERIA      INTAKE_PROBLEM_ID   NUMBER   CRITERIA_ID   NUMBER   CRITERIA   VARCHAR2   ACTIVE   NUMBER   RID   VARCHAR2   MID   NUMBER  create table INTAKE_PROBLEM_CRITERIA
(
  intake_problem_id NUMBER(11) default 0,
  criteria_id       NUMBER(11) default 0,
  criteria          VARCHAR2(255) default 0,
  active            NUMBER,
  rid               VARCHAR2(255),
  mid               NUMBER
)
;
   INTAKE_PROBLEM_CRITERIA_DEF      INTAKE_PROBLEM_ID   NUMBER   CRITERIA_ID   NUMBER   DEFINITION_ID   NUMBER
   DEFINITION   VARCHAR2   ACTIVE   NUMBER   RID   VARCHAR2   MID   NUMBER4  create table INTAKE_PROBLEM_CRITERIA_DEF
(
  intake_problem_id NUMBER(11) default 0,
  criteria_id       NUMBER(11) default 0,
  definition_id     NUMBER(11) default 0,
  definition        VARCHAR2(255),
  active            NUMBER,
  rid               VARCHAR2(64),
  mid               NUMBER
)
;
   INTAKE_PROBLEM_LIST      INTAKE_PROBLEM_ID   NUMBER   FLAG_ID   NUMBER   MID   NUMBER   PROBLEM   VARCHAR2   ACTIVE   NUMBER   DIAGNOSIS_ID   NUMBER   MH_AXIS   NUMBERБ  create table INTAKE_PROBLEM_LIST
(
  intake_problem_id NUMBER(11) default 0,
  flag_id           NUMBER(11) default 0,
  mid               NUMBER(11) default 0,
  problem           VARCHAR2(80),
  active            NUMBER(11) default 0,
  diagnosis_id      NUMBER(11),
  mh_axis           NUMBER
)
;
comment on column INTAKE_PROBLEM_LIST.diagnosis_id
  is 'diagnosis id';
   INTAKE_TOPIC      MID   NUMBER   TID   NUMBER   TOPIC   VARCHAR2   DEL_TACTION   VARCHAR2   ACTIVE   NUMBER   DEL_ALTERNATE_LANGUAGE   VARCHAR2   DEL_TOPIC_IMAGE   VARCHAR2Ј  create table INTAKE_TOPIC
(
  mid                    NUMBER(5) default 0 not null,
  tid                    NUMBER(5) not null,
  topic                  VARCHAR2(1024) not null,
  del_taction            VARCHAR2(10),
  active                 NUMBER(5) not null,
  del_alternate_language VARCHAR2(1024),
  del_topic_image        VARCHAR2(255)
)
;
comment on column INTAKE_TOPIC.del_topic_image
  is 'added to support patient portal';
create index INTAKE_MODULEINTAKE_TOPIC00000 on INTAKE_TOPIC (MID);
alter table INTAKE_TOPIC
  add constraint PRIMARYKEY00106 primary key (MID, TID);
alter table INTAKE_TOPIC
  add foreign key (MID)
  references INTAKE_MODULE (MID)
  disable;
   INTAKE_QUESTION      MID   NUMBER   TID   NUMBER   QID   NUMBER   QUESTION   VARCHAR2   ACTIVE   NUMBERB  create table INTAKE_QUESTION
(
  mid      NUMBER(5) default 0 not null,
  tid      NUMBER(5) not null,
  qid      NUMBER(5) default 0 not null,
  question VARCHAR2(4000),
  active   NUMBER
)
;
comment on column INTAKE_QUESTION.mid
  is 'Module identifier';
comment on column INTAKE_QUESTION.tid
  is 'Topic Identifier';
comment on column INTAKE_QUESTION.qid
  is 'Question Identifier';
comment on column INTAKE_QUESTION.question
  is 'Question Text in english';
comment on column INTAKE_QUESTION.active
  is '0 to decomission a question';
create index INTAKE_TOPICINTAKE_QUEST00000 on INTAKE_QUESTION (MID, TID);
alter table INTAKE_QUESTION
  add constraint PRIMARYKEY00104 primary key (MID, TID, QID);
alter table INTAKE_QUESTION
  add foreign key (MID, TID)
  references INTAKE_TOPIC (MID, TID)
  disable;
   INTAKE_RESPONSE	      RID   NUMBER   MID   NUMBER   TID   NUMBER   QID   NUMBER   RESPONSE   VARCHAR2   DISPLAY_TYPE   NUMBER   RESPONSE_TYPE   NUMBER   ACTIVE   NUMBER   UNIT   VARCHAR2c  create table INTAKE_RESPONSE
(
  rid           NUMBER(5) not null,
  mid           NUMBER(5) default 0 not null,
  tid           NUMBER(5) not null,
  qid           NUMBER(5) not null,
  response      VARCHAR2(255) not null,
  display_type  NUMBER(5) default 0,
  response_type NUMBER(5) default 0,
  active        NUMBER,
  unit          VARCHAR2(80)
)
;
comment on column INTAKE_RESPONSE.rid
  is 'Response Identifier. Unique by Module';
comment on column INTAKE_RESPONSE.mid
  is 'Module Identifier';
comment on column INTAKE_RESPONSE.tid
  is 'Topic Identifier';
comment on column INTAKE_RESPONSE.qid
  is 'Question Identifier';
comment on column INTAKE_RESPONSE.response
  is 'Response text';
comment on column INTAKE_RESPONSE.display_type
  is 'Type of object that will be displayed for the response: RADIO		= 1;
CHECK		= 2;
TEXT		= 3;
COMBO BOX	= 4;
DATE		= 5;
HEIGHT		= 6;
WEIGHT		= 7;
LIST		= 8;
DATETIME	= 9;
BMI		= 10;
TITLE		= 11;
MONTHYEAR	= 12;
DUALCHOICE	= 13;
TRICHOICE	= 14;
TRICHOICETITLE = 15;
MEDBAR		= 16;
PROVENTRYBAR	= 17;
ALLERGYBAR	= 18;
FAMILYHXBAR	= 19;
COMBOHEIGHT	= 20;
DATEPICKER   	= 21;
NONEOFABOVE	= 99;';
comment on column INTAKE_RESPONSE.response_type
  is 'BOOL	= 1;
INTEGER = 2;
TEXT	= 3;
DATE	= 4;
PARSED	= 5;';
comment on column INTAKE_RESPONSE.unit
  is 'describes the unit of the response e.g. Pounds, inches, etc.';
create index INTAKE_QUESTIONINTAKE_RE00000 on INTAKE_RESPONSE (MID, TID, QID);
create index MID00012 on INTAKE_RESPONSE (MID);
create index QID00002 on INTAKE_RESPONSE (QID);
create index TID00002 on INTAKE_RESPONSE (TID);
alter table INTAKE_RESPONSE
  add constraint INTAKE_RESPONSE_KEY_PK primary key (RID, MID);
alter table INTAKE_RESPONSE
  add constraint INTAKE_RESPONSE_KEY_FK01 foreign key (MID, TID, QID)
  references INTAKE_QUESTION (MID, TID, QID)
  disable;
   SITE      SITE_ID   VARCHAR2	   SITE_NAME   VARCHAR2   SITE_ADDRESS_1   VARCHAR2   SITE_ADDRESS_2   VARCHAR2	   SITE_CITY   VARCHAR2
   SITE_STATE   VARCHAR2   SITE_POSTAL_CODE   VARCHAR2m  create table SITE
(
  site_id          VARCHAR2(50),
  site_name        VARCHAR2(50),
  site_address_1   VARCHAR2(50),
  site_address_2   VARCHAR2(50),
  site_city        VARCHAR2(50),
  site_state       VARCHAR2(50),
  site_postal_code VARCHAR2(50)
)
;
create index SITE_ID on SITE (SITE_ID);
create index SITE_POSTAL_CODE on SITE (SITE_POSTAL_CODE);
   STAT_DIAGNOSIS      DIAGNOSIS_ID   NUMBER   DIAGNOSIS_TITLE   VARCHAR2   ACTIVE   NUMBER   MENU_PARENT_ID   NUMBER   MENU_HAS_PARENT   NUMBER   MENU_HAS_CHILD   NUMBER   DIAGNOSIS_GROUP   NUMBER   DIAGNOSIS_AXIS   NUMBER   DIAGNOSIS_DETAILS   VARCHAR2   SELECTIVE_FILTER   NUMBER
   FITFORDUTY   NUMBER	   SUBSTANCE   VARCHAR2   ABUDEPN   INTEGER
   SORT_ORDER   NUMBER	   DIAG_CODE   VARCHAR2   MID   NUMBER   REGISTRY   NUMBER   DESCRIPTION   VARCHAR2}  create table STAT_DIAGNOSIS
(
  diagnosis_id      NUMBER(11) not null,
  diagnosis_title   VARCHAR2(4000),
  active            NUMBER(5) default 0 not null,
  menu_parent_id    NUMBER(11) default 0,
  menu_has_parent   NUMBER(5) default 0,
  menu_has_child    NUMBER(5) default 0,
  diagnosis_group   NUMBER(11) default 0,
  diagnosis_axis    NUMBER(11) default 0,
  diagnosis_details VARCHAR2(4000),
  selective_filter  NUMBER(11) default 0,
  fitforduty        NUMBER(5) default 0,
  substance         VARCHAR2(80),
  abudepn           INTEGER,
  sort_order        NUMBER(5),
  diag_code         VARCHAR2(10),
  mid               NUMBER(11),
  registry          NUMBER(1),
  description       VARCHAR2(4000)
)
;
create index MENU_PARENT_ID on STAT_DIAGNOSIS (MENU_PARENT_ID);
alter table STAT_DIAGNOSIS
  add constraint PK_STAT_DIAGNOSIS primary key (DIAGNOSIS_ID);
   STAT_DIAGNOSIS_SPECIFIER      STAT_DIAGNOSIS_ID   NUMBER   STAT_SPECIFIER_ID   NUMBERi   create table STAT_DIAGNOSIS_SPECIFIER
(
  stat_diagnosis_id NUMBER,
  stat_specifier_id NUMBER
)
;
   STAT_DIAGNOSIS_SYMPTOMS      DIAGNOSIS_ID   NUMBER
   SYMPTOM_ID   NUMBER   ACTIVE   NUMBER   SYMPTOM   VARCHAR2)  create table STAT_DIAGNOSIS_SYMPTOMS
(
  diagnosis_id NUMBER(11) not null,
  symptom_id   NUMBER(11) not null,
  active       NUMBER(5) default 0,
  symptom      VARCHAR2(4000)
)
;
alter table STAT_DIAGNOSIS_SYMPTOMS
  add constraint PK_STAT_DIAGNOSIS_SYMPTOMS primary key (SYMPTOM_ID);
   STAT_DIMS_BASE      DIMS_ID   VARCHAR2
   SHORT_NAME   VARCHAR2   BASE   VARCHAR2   ACTIVE   NUMBER   SUAT_KEY   VARCHAR2   SUAT_REQUEST_KEY   VARCHAR2	   MAJCOM_ID   NUMBER
   SORT_ORDER   NUMBERQ  create table STAT_DIMS_BASE
(
  dims_id          VARCHAR2(5) not null,
  short_name       VARCHAR2(4),
  base             VARCHAR2(80),
  active           NUMBER(5) default 0,
  suat_key         VARCHAR2(128),
  suat_request_key VARCHAR2(128),
  majcom_id        NUMBER(5) default 0,
  sort_order       NUMBER(3)
)
;
create index MAJCOM_ID on STAT_DIMS_BASE (MAJCOM_ID);
create index SUAT_KEY on STAT_DIMS_BASE (SUAT_KEY);
create index SUAT_REQUEST_KET on STAT_DIMS_BASE (SUAT_REQUEST_KEY);
alter table STAT_DIMS_BASE
  add constraint PK_STAT_DIMS_BASE primary key (DIMS_ID);
   STAT_ENCOUNTER_TYPE      ENCOUNTER_TYPE_ID   NUMBER   ENC_TYPE_DESC   VARCHAR2   ACTIVE   NUMBER  create table STAT_ENCOUNTER_TYPE
(
  encounter_type_id NUMBER(5) default 0 not null,
  enc_type_desc     VARCHAR2(80),
  active            NUMBER(5) default 0
)
;
alter table STAT_ENCOUNTER_TYPE
  add constraint PK_STAT_ENCOUNTER_TYPE primary key (ENCOUNTER_TYPE_ID);
   STAT_ETHNICITY      ETHNICITY_ID   NUMBER   ETHNICITY_NAME   VARCHAR2
   SORT_ORDER   NUMBERџ  create table STAT_ETHNICITY
(
  ethnicity_id   NUMBER(2) not null,
  ethnicity_name VARCHAR2(128) not null,
  sort_order     NUMBER(2) not null
)
;
comment on column STAT_ETHNICITY.ethnicity_id
  is 'unique numeric identifier for an ethnicity';
comment on column STAT_ETHNICITY.ethnicity_name
  is 'unique text identifier for an ethnicity';
comment on column STAT_ETHNICITY.sort_order
  is 'used to sort the ethnicity when displayed';
alter table STAT_ETHNICITY
  add constraint STAT_ETHNICITY_KEY_PK primary key (ETHNICITY_ID);
alter table STAT_ETHNICITY
  add constraint STAT_ETHNICITY_KEY_UK unique (ETHNICITY_NAME);
alter table STAT_ETHNICITY
  add constraint STAT_ETHNICITY_CHK
  check (ethnicity_id > 0);
   STAT_ETH_RACE_SOURCE      ETH_RACE_SOURCE_ID   NUMBER   ETH_RACE_SOURCE_NAME   VARCHAR2   create table STAT_ETH_RACE_SOURCE
(
  eth_race_source_id   NUMBER(2) not null,
  eth_race_source_name VARCHAR2(50) not null
)
;
comment on column STAT_ETH_RACE_SOURCE.eth_race_source_id
  is 'unique numeric identifier for a ethnicity race source';
comment on column STAT_ETH_RACE_SOURCE.eth_race_source_name
  is 'unique text identifier for a ethnicity race source';
alter table STAT_ETH_RACE_SOURCE
  add constraint STAT_ETH_RACE_SOURCE_KEY_PK primary key (ETH_RACE_SOURCE_ID);
alter table STAT_ETH_RACE_SOURCE
  add constraint STAT_ETH_RACE_SOURCE_KEY_UK unique (ETH_RACE_SOURCE_NAME);
alter table STAT_ETH_RACE_SOURCE
  add constraint STAT_ETH_RACE_SOURCE_CHK
  check (ETH_RACE_SOURCE_ID > 0);

   STAT_EVENT
      EVENT_ID   NUMBER   EVENT_GROUP   NUMBER   EVENT   VARCHAR2   ACTIVE   NUMBER   INTERNAL_MESSAGE   VARCHAR2   EXTERNAL_MESSAGE   VARCHAR2   TRIGGERED_BY   NUMBER   TRIGGER_EVENT_ID   NUMBER   REMINDER_MESSAGE   VARCHAR2   HEADER_LABEL   VARCHAR2E  create table STAT_EVENT
(
  event_id         NUMBER(5) not null,
  event_group      NUMBER(5),
  event            VARCHAR2(80),
  active           NUMBER(1),
  internal_message VARCHAR2(4000),
  external_message VARCHAR2(255),
  triggered_by     NUMBER default 0,
  trigger_event_id NUMBER,
  reminder_message VARCHAR2(4000),
  header_label     VARCHAR2(80)
)
;
comment on column STAT_EVENT.triggered_by
  is '0 - Manually, 1 - Previous Event, 2 - nurse/provider, 3 - Date Calculation';
alter table STAT_EVENT
  add constraint PK_EVENT_ID primary key (EVENT_ID);
   STAT_GENDER   	   GENDER_ID   NUMBER   GENDER_DESC   VARCHAR2   ACTIVE   NUMBERц   create table STAT_GENDER
(
  gender_id   NUMBER(5) default 0 not null,
  gender_desc VARCHAR2(100) not null,
  active      NUMBER(5) default 0 not null
)
;
alter table STAT_GENDER
  add constraint PK_STAT_GENDER primary key (GENDER_ID);
   STAT_MEASURE_UNIT      UNIT_ID   NUMBER   UNIT_DESCRIPTION   VARCHAR2
   MEASURE_ID   NUMBER   ACTIVE   NUMBERj  create table STAT_MEASURE_UNIT
(
  unit_id          NUMBER(11) default 0 not null,
  unit_description VARCHAR2(50),
  measure_id       NUMBER(11) default 0,
  active           NUMBER(11) default 0
)
;
create index MEASURE_ID on STAT_MEASURE_UNIT (MEASURE_ID);
alter table STAT_MEASURE_UNIT
  add constraint PK_STAT_MEASURE_UNIT primary key (UNIT_ID);
   STAT_MENU_ITEMS      MENU_ITEM_ID   NUMBER	   MENU_ITEM   VARCHAR2   HAS_CHILDREN   NUMBER
   HAS_PARENT   NUMBER	   PARENT_ID   NUMBER   HREF   VARCHAR2   HTML_PROPERTY   VARCHAR2   JS_PROPERTY   VARCHAR2	   USER_TYPE   NUMBER
   USER_RIGHT   NUMBER   IS_LOGGED_IN   NUMBER   SELECTED_PATIENT   NUMBER   SELECTED_ENCOUNTER   NUMBER   ACTIVE   NUMBER	   ITEM_TYPE   NUMBER   TITLE   VARCHAR2   WIDTH   NUMBER   HEIGHT   NUMBER   IMG_SRC   VARCHAR2   HAS_OPEN_CASE   NUMBER   TOOLBAR_SORT_ORDER   NUMBER   ICON_PROPERTY   VARCHAR2   REQ_READWRITE_RIGHT   NUMBER   CHECK_PAT_LOCK   NUMBER   MENU_SORT_ORDER   NUMBER   CLOSES_PATIENT   NUMBER   IGNORE_ON_TIU   NUMBERв  create table STAT_MENU_ITEMS
(
  menu_item_id        NUMBER(11),
  menu_item           VARCHAR2(255),
  has_children        NUMBER(2) default 0,
  has_parent          NUMBER(2) default 0,
  parent_id           NUMBER(11) default 0,
  href                VARCHAR2(255),
  html_property       VARCHAR2(255),
  js_property         VARCHAR2(255),
  user_type           NUMBER(12),
  user_right          NUMBER(12) default 0,
  is_logged_in        NUMBER(2) default 1,
  selected_patient    NUMBER(2) default 0,
  selected_encounter  NUMBER(2) default 0,
  active              NUMBER(2) default 1,
  item_type           NUMBER(2) default 1,
  title               VARCHAR2(255),
  width               NUMBER default 32,
  height              NUMBER default 32,
  img_src             VARCHAR2(255),
  has_open_case       NUMBER(2) default 0,
  toolbar_sort_order  NUMBER,
  icon_property       VARCHAR2(255),
  req_readwrite_right NUMBER(12) default 0,
  check_pat_lock      NUMBER(1) default 0,
  menu_sort_order     NUMBER,
  closes_patient      NUMBER default 0,
  ignore_on_tiu       NUMBER default 0
)
;
comment on column STAT_MENU_ITEMS.check_pat_lock
  is '0 do not check for patient record lock status, 1 check...';
   STAT_MILITARY_SERVICE      MILITARY_SERVICE_ID   NUMBER   MILITARY_SERVICE_TITLE   VARCHAR2   ACTIVE   NUMBER,  create table STAT_MILITARY_SERVICE
(
  military_service_id    NUMBER(5) default 0 not null,
  military_service_title VARCHAR2(50),
  active                 NUMBER(5) default 0
)
;
alter table STAT_MILITARY_SERVICE
  add constraint PK_STAT_MILITARY_SERVICE primary key (MILITARY_SERVICE_ID);
   STAT_MODALITY	      STAT_MODALITY_ID   NUMBER   MODALITY_GROUP_ID   NUMBER   MODALITY   VARCHAR2   CPT   VARCHAR2   DURATION   VARCHAR2	   IS_ACTIVE   NUMBER   IS_MEDICAL_CHECK   NUMBER   STAT_MOD_TYPE_ID   NUMBER   DIAGNOSIS_ID   NUMBERF  create table STAT_MODALITY
(
  stat_modality_id  NUMBER(11) not null,
  modality_group_id NUMBER(11) not null,
  modality          VARCHAR2(256) not null,
  cpt               VARCHAR2(10),
  duration          VARCHAR2(20) not null,
  is_active         NUMBER(1) not null,
  is_medical_check  NUMBER(1) not null,
  stat_mod_type_id  NUMBER(4) not null,
  diagnosis_id      NUMBER(11) not null
)
;
comment on column STAT_MODALITY.modality_group_id
  is 'FK to stat_modality_group';
comment on column STAT_MODALITY.is_active
  is '0 = inactive; 1 = active';
comment on column STAT_MODALITY.is_medical_check
  is '0 = no; 1 = yes';
comment on column STAT_MODALITY.stat_mod_type_id
  is 'FK to stat_modality_type table';
comment on column STAT_MODALITY.diagnosis_id
  is 'FK to stat_diagnosis table';
alter table STAT_MODALITY
  add constraint PK_MODALITY_ID primary key (STAT_MODALITY_ID);
alter table STAT_MODALITY
  add constraint STAT_MODALITY_UK1 unique (MODALITY);
alter table STAT_MODALITY
  add constraint STAT_MODALITY_STAT_DIAGNO_FK1 foreign key (DIAGNOSIS_ID)
  references STAT_DIAGNOSIS (DIAGNOSIS_ID)
  disable;
alter table STAT_MODALITY
  add constraint STAT_MODALITY_CHK1
  check (IS_ACTIVE IN (0, 1));
alter table STAT_MODALITY
  add constraint STAT_MODALITY_CHK2
  check (IS_MEDICAL_CHECK IN (0, 1));
   STAT_OUTCOME_MEASURE      STAT_OUTCOME_ID   NUMBER   STAT_OUTCOME_DESC   VARCHAR2   STAT_OUTCOME_COMMENT   VARCHAR2∞   create table STAT_OUTCOME_MEASURE
(
  stat_outcome_id      NUMBER(11) default 0 not null,
  stat_outcome_desc    VARCHAR2(255),
  stat_outcome_comment VARCHAR2(255)
)
;
   STAT_PROBLEM      STAT_PROBLEM_ID   NUMBER   STAT_PROBLEM_DESC   VARCHAR2   STAT_PROBLEM_TEXT   VARCHAR2
   SORT_ORDER   NUMBER   ACTIVE   NUMBERƒ   create table STAT_PROBLEM
(
  stat_problem_id   NUMBER,
  stat_problem_desc VARCHAR2(4000),
  stat_problem_text VARCHAR2(4000),
  sort_order        NUMBER,
  active            NUMBER
)
;
	   STAT_RACE      RACE_ID   NUMBER
   RACE_TITLE   VARCHAR2
   SORT_ORDER   NUMBERu  create table STAT_RACE
(
  race_id    NUMBER(2) not null,
  race_title VARCHAR2(128) not null,
  sort_order NUMBER(2) not null
)
;
comment on column STAT_RACE.race_id
  is 'unique numeric identifier for a race';
comment on column STAT_RACE.race_title
  is 'unique text identifier for a race';
comment on column STAT_RACE.sort_order
  is 'used to sort the race when displayed';
alter table STAT_RACE
  add constraint STAT_RACE_KEY_PK primary key (RACE_ID);
alter table STAT_RACE
  add constraint STAT_RACE_KEY_UK unique (RACE_TITLE);
alter table STAT_RACE
  add constraint STAT_RACE_CHK
  check (race_id > 0);
   STAT_REFERRAL      STAT_REFERRAL_ID   NUMBER   STAT_REFERRAL_DESC   VARCHAR2   STAT_REFERRAL_TEXT   VARCHAR2   PERSON_CONTACTED   VARCHAR2   PROVIDER_NAME   VARCHAR2   STREET_ADDRESS   VARCHAR2   CITY   VARCHAR2   STATE   VARCHAR2   POSTAL_CODE   VARCHAR2   PHONE   VARCHAR2   FAX   VARCHAR2   RELEASE_SIGNED   NUMBER   ACTIVE   NUMBERљ  create table STAT_REFERRAL
(
  stat_referral_id   NUMBER(11) default 0 not null,
  stat_referral_desc VARCHAR2(4000),
  stat_referral_text VARCHAR2(4000),
  person_contacted   VARCHAR2(255),
  provider_name      VARCHAR2(255),
  street_address     VARCHAR2(500),
  city               VARCHAR2(255),
  state              VARCHAR2(100),
  postal_code        VARCHAR2(20),
  phone              VARCHAR2(50),
  fax                VARCHAR2(20),
  release_signed     NUMBER,
  active             NUMBER default 1
)
;
comment on column STAT_REFERRAL.active
  is '// 0: inactive, 1: active';
alter table STAT_REFERRAL
  add constraint STAT_REFERRAL_KEY_PK primary key (STAT_REFERRAL_ID);
   STAT_RELATIONSHIP      RELATIONSHIP_ID   NUMBER   DESCRIPTION   VARCHAR2   ACTIVE   NUMBER  create table STAT_RELATIONSHIP
(
  relationship_id NUMBER(11) default 0 not null,
  description     VARCHAR2(50) not null,
  active          NUMBER(5) default 0 not null
)
;
alter table STAT_RELATIONSHIP
  add constraint PK_STAT_RELATIONSHIP primary key (RELATIONSHIP_ID);
   STAT_REVAMP_REPORT_QUERY      VAR_ID   NUMBER   FULL_DESCRIPTION   VARCHAR2   QUERY   VARCHAR2   STATUS   VARCHAR2   IS_DISTRIBUTION   NUMBER   S1   NUMBER   S2   NUMBER   S3   NUMBER   ACTIVE   NUMBER   VISIBLE   NUMBER
   DATA_ENTRY   VARCHAR2®  create table STAT_REVAMP_REPORT_QUERY
(
  var_id           NUMBER,
  full_description VARCHAR2(4000),
  query            VARCHAR2(4000),
  status           VARCHAR2(128) default 1,
  is_distribution  NUMBER default 0,
  s1               NUMBER,
  s2               NUMBER,
  s3               NUMBER,
  active           NUMBER default 1,
  visible          NUMBER default 1,
  data_entry       VARCHAR2(64)
)
;
   STAT_SEC_QUESTIONS      QUESTION_ID   NUMBER   QUESTION   VARCHAR2   QUESTION_GROUP   NUMBER   ACTIVE   NUMBERҐ   create table STAT_SEC_QUESTIONS
(
  question_id    NUMBER,
  question       VARCHAR2(255),
  question_group NUMBER,
  active         NUMBER default 1
)
;
   STAT_SPECIFIER      STAT_SPECIFIER_ID   NUMBER   STAT_SPECIFIER_TEXT   VARCHAR2
   SORT_ORDER   NUMBERК   create table STAT_SPECIFIER
(
  stat_specifier_id   NUMBER,
  stat_specifier_text VARCHAR2(1000),
  sort_order          NUMBER
)
;
   STAT_STATES      STATE_ID   NUMBER   STATE_TITLE   VARCHAR2   ABBREBIATION   VARCHAR2   ACTIVE   NUMBER  create table STAT_STATES
(
  state_id     NUMBER(11) default 0 not null,
  state_title  VARCHAR2(50),
  abbrebiation VARCHAR2(4),
  active       NUMBER(11) default 0
)
;
alter table STAT_STATES
  add constraint PK_STAT_STATES primary key (STATE_ID);
   STAT_USER_RIGHTS
      STAT_RIGHT_ID   NUMBER
   RIGHT_DESC   VARCHAR2	   RIGHT_BIN   VARCHAR2	   RIGHT_HEX   VARCHAR2	   RIGHT_DEC   NUMBER   ACTIVE   NUMBER   VISIBLE   NUMBER   COMMENTS   VARCHAR2
   SORT_ORDER   NUMBER   HAS_MODE   NUMBER_  create table STAT_USER_RIGHTS
(
  stat_right_id NUMBER(5) default 0 not null,
  right_desc    VARCHAR2(255),
  right_bin     VARCHAR2(32),
  right_hex     VARCHAR2(32),
  right_dec     NUMBER(12),
  active        NUMBER(2) default 1,
  visible       NUMBER(2) default 1,
  comments      VARCHAR2(255),
  sort_order    NUMBER,
  has_mode      NUMBER(2) default 1
)
;
comment on column STAT_USER_RIGHTS.has_mode
  is '1: If the rights use Read Only modes; 0: Modes does not apply to this right';
alter table STAT_USER_RIGHTS
  add constraint PK_STAT_USER_RIGHTS primary key (STAT_RIGHT_ID);
   STAT_USER_TYPES      STAT_USERTYPE_ID   NUMBER   USERTYPE_DESC   VARCHAR2   ACTIVE   NUMBER   VISIBLE   NUMBER   COMMENTS   VARCHAR2р   create table STAT_USER_TYPES
(
  stat_usertype_id NUMBER(11) not null,
  usertype_desc    VARCHAR2(255) not null,
  active           NUMBER(2) default 1,
  visible          NUMBER(2) default 1,
  comments         VARCHAR2(255)
)
;
	   SUAT_USER      EMAIL   VARCHAR2   UIDPWD   VARCHAR2   RANK   VARCHAR2   NAME   VARCHAR2   PROVIDER_ID   VARCHAR2   MILITARY_SERVICE_ID   NUMBER   CORPS   VARCHAR2   TITLE   VARCHAR2   UNIT   VARCHAR2   SQUADRON   VARCHAR2   PHONE   VARCHAR2   DIMS_ID   VARCHAR2
   ENTRY_DATE   DATE   LOCKED   NUMBER   MUST_CHANGE_PASSWORD   NUMBER
   FX_USER_ID   NUMBER   SUPERVISOR_ID   VARCHAR2
   GRAPH_PREF   NUMBERб  create table SUAT_USER
(
  email                VARCHAR2(50) not null,
  uidpwd               VARCHAR2(200) not null,
  rank                 VARCHAR2(10) not null,
  name                 VARCHAR2(50) not null,
  provider_id          VARCHAR2(50) not null,
  military_service_id  NUMBER(5) default 0 not null,
  corps                VARCHAR2(50),
  title                VARCHAR2(50),
  unit                 VARCHAR2(50),
  squadron             VARCHAR2(50),
  phone                VARCHAR2(50),
  dims_id              VARCHAR2(5) not null,
  entry_date           DATE,
  locked               NUMBER(1) default 0,
  must_change_password NUMBER(1) default 0,
  fx_user_id           NUMBER,
  supervisor_id        VARCHAR2(50),
  graph_pref           NUMBER default 0
)
;
comment on column SUAT_USER.email
  is 'User Email Address';
comment on column SUAT_USER.uidpwd
  is 'User ID and Password';
comment on column SUAT_USER.rank
  is 'User Rank';
comment on column SUAT_USER.name
  is 'User First and Last Name';
comment on column SUAT_USER.provider_id
  is 'Provider Id';
comment on column SUAT_USER.military_service_id
  is 'Military Service ID';
comment on column SUAT_USER.corps
  is 'Corps';
comment on column SUAT_USER.title
  is 'Job Title';
comment on column SUAT_USER.unit
  is 'User Unit';
comment on column SUAT_USER.squadron
  is 'User Squadron';
comment on column SUAT_USER.phone
  is 'User Contact Phone Number';
comment on column SUAT_USER.dims_id
  is 'DMIS/Base ID';
comment on column SUAT_USER.entry_date
  is 'Record Entry Date';
comment on column SUAT_USER.locked
  is 'Flag Indicating Whether Or Not Account Is Locked';
comment on column SUAT_USER.must_change_password
  is 'Flag Indicating That The User Must Change Password On Next Login';
comment on column SUAT_USER.fx_user_id
  is 'User ID Linked To The FX_USER_TABLE';
comment on column SUAT_USER.supervisor_id
  is 'Provider ID of the Intern''s Supervisor';
comment on column SUAT_USER.graph_pref
  is '0: single graph, 1: multiple graphs';
create index DIMS_ID_1 on SUAT_USER (DIMS_ID);
create unique index PROVIDER_ID on SUAT_USER (PROVIDER_ID);
alter table SUAT_USER
  add constraint PK_SUAT_USER primary key (PROVIDER_ID, DIMS_ID);
   TEMPLATE	      TEMPLATE_ID   INTEGER   TYPE_ID   INTEGER   DESCRIPTION   VARCHAR2
   CREATOR_ID   VARCHAR2   CREATED_DATE   DATE   ACTIVE   INTEGER   TEMPLATE_GROUP_ID   NUMBER   TEMPLATE   CLOB	   READ_ONLY   NUMBERФ  create table TEMPLATE
(
  template_id       INTEGER not null,
  type_id           INTEGER,
  description       VARCHAR2(80),
  creator_id        VARCHAR2(50),
  created_date      DATE,
  active            INTEGER,
  template_group_id NUMBER,
  template          CLOB,
  read_only         NUMBER default 0
)
;
alter table TEMPLATE
  add constraint PK_TEMPLATE_ID primary key (TEMPLATE_ID);
   TEMPLATE_GROUP      TEMPLATE_GROUP_ID   NUMBER
   GROUP_NAME   VARCHAR2   COMMENTS   VARCHAR2   ACTIVE   NUMBER
   CREATED_BY   NUMBER   LAST_UPDATED   DATE   LAST_UPDATED_BY   NUMBER	   READ_ONLY   NUMBER-  create table TEMPLATE_GROUP
(
  template_group_id NUMBER,
  group_name        VARCHAR2(255),
  comments          VARCHAR2(255),
  active            NUMBER default 1,
  created_by        NUMBER,
  last_updated      DATE,
  last_updated_by   NUMBER,
  read_only         NUMBER default 0
)
;
   TEMPLATE_ITEM      DESCRIPTION   VARCHAR2   ITEM_GROUP_ID   INTEGER   ITEM_SQL   VARCHAR2	   HELP_TEXT   VARCHAR2   ACTIVE   INTEGER   ITEM_ID   NUMBER   TEMPLATE_GROUP_ID   NUMBERq  create table TEMPLATE_ITEM
(
  description       VARCHAR2(50) not null,
  item_group_id     INTEGER,
  item_sql          VARCHAR2(4000),
  help_text         VARCHAR2(4000),
  active            INTEGER default 1,
  item_id           NUMBER,
  template_group_id NUMBER
)
;
alter table TEMPLATE_ITEM
  add constraint PK_DESCRIPTION primary key (DESCRIPTION);
   TEMPLATE_ITEM_GROUP      GROUP_ID   INTEGER   DESCRIPTION   VARCHAR2   ACTIVE   INTEGER„   create table TEMPLATE_ITEM_GROUP
(
  group_id    INTEGER not null,
  description VARCHAR2(50),
  active      INTEGER
)
;
alter table TEMPLATE_ITEM_GROUP
  add constraint PK_GROUP_ID primary key (GROUP_ID);
   TEMPLATE_TYPE      TYPE_ID   INTEGER   DESCRIPTION   VARCHAR2   ACTIVE   INTEGER…   create table TEMPLATE_TYPE
(
  type_id     INTEGER not null,
  description VARCHAR2(80),
  active      INTEGER
)
;
alter table TEMPLATE_TYPE
  add constraint PK_TYPE_ID primary key (TYPE_ID);
   TIU_STAT_SEX      SEX_ID   NUMBER	   SEX_LABEL   VARCHAR2   SEX_ABBREVIATION   VARCHAR2Я  create table TIU_STAT_SEX
(
  sex_id           NUMBER(1),
  sex_label        VARCHAR2(255),
  sex_abbreviation VARCHAR2(1)
)
;
comment on column TIU_STAT_SEX.sex_id
  is 'numeric value uniquely identifying a sex';
comment on column TIU_STAT_SEX.sex_label
  is 'text value uniquely identifying a sex';
comment on column TIU_STAT_SEX.sex_abbreviation
  is 'text value stating the abbreviation of a sex';
   TIU_UTL_CLINIC   	   CLINIC_ID   NUMBER   CLINIC_LABEL   VARCHAR2   XFER_SYSTEM_ID   NUMBER	   XFER_DATE   DATE	   REGION_ID   NUMBER   SITE_ID   NUMBERн  create table TIU_UTL_CLINIC
(
  clinic_id      NUMBER,
  clinic_label   VARCHAR2(4000),
  xfer_system_id NUMBER,
  xfer_date      DATE,
  region_id      NUMBER,
  site_id        NUMBER
)
;
comment on column TIU_UTL_CLINIC.clinic_id
  is 'unique id for the clinic';
comment on column TIU_UTL_CLINIC.clinic_label
  is 'clinic label';
comment on column TIU_UTL_CLINIC.xfer_system_id
  is 'transfer system id';
comment on column TIU_UTL_CLINIC.xfer_date
  is 'date transferred';
   TIU_UTL_NOTE_TITLE      NOTE_TITLE_TAG   NUMBER   NOTE_TITLE_LABEL   VARCHAR2   NOTE_TITLE_DETAILS   VARCHAR2   XFER_SYSTEM_ID   NUMBER	   XFER_DATE   DATE	   REGION_ID   NUMBER   SITE_ID   NUMBERЧ  create table TIU_UTL_NOTE_TITLE
(
  note_title_tag     NUMBER,
  note_title_label   VARCHAR2(4000),
  note_title_details VARCHAR2(4000),
  xfer_system_id     NUMBER,
  xfer_date          DATE,
  region_id          NUMBER,
  site_id            NUMBER
)
;
comment on column TIU_UTL_NOTE_TITLE.note_title_tag
  is 'note title tag';
comment on column TIU_UTL_NOTE_TITLE.note_title_label
  is 'note title label';
comment on column TIU_UTL_NOTE_TITLE.note_title_details
  is 'note title details';
comment on column TIU_UTL_NOTE_TITLE.xfer_system_id
  is 'transfer system id';
comment on column TIU_UTL_NOTE_TITLE.xfer_date
  is 'date of transfer';
   TIU_UTL_REGION   	   REGION_ID   NUMBER   REGION_NAME   VARCHAR2   XFER_SYSTEM_ID   NUMBER	   XFER_DATE   DATEТ   create table TIU_UTL_REGION
(
  region_id      NUMBER,
  region_name    VARCHAR2(500),
  xfer_system_id NUMBER,
  xfer_date      DATE
)
;
   TIU_UTL_SITE   	   REGION_ID   NUMBER   SITE_ID   NUMBER	   SITE_NAME   VARCHAR2   XFER_SYSTEM_ID   NUMBER	   XFER_DATE   DATE™   create table TIU_UTL_SITE
(
  region_id      NUMBER,
  site_id        NUMBER,
  site_name      VARCHAR2(500),
  xfer_system_id NUMBER,
  xfer_date      DATE
)
;
   UTL_PARAMETER      PARAMETER_NAME   VARCHAR2   PARAMETER_VALUE   VARCHAR2„  create table UTL_PARAMETER
(
  parameter_name  VARCHAR2(128) not null,
  parameter_value VARCHAR2(4000) not null
)
;
comment on table UTL_PARAMETER
  is 'to store parameter values for database application';
comment on column UTL_PARAMETER.parameter_name
  is 'name of the parameter';
comment on column UTL_PARAMETER.parameter_value
  is 'value of the parameter';
alter table UTL_PARAMETER
  add constraint UTL_PARAMETER_KEY_PK primary key (PARAMETER_NAME);
       $  $   cч      0.0   54	   Tutorials   13   0   1   1   0   3   1   0   55   Log On   54   48   1   1   0   2   1   0   56   Change your password   54   49   1   1   0   2   2   0   57   Add a New Patient   54   50   1   1   0   2   3   0   70   User Manual   13   61   1   1   0   2   2   0   107   Analytic Tool Guide   13   141   1   1   0   2€€€€   0   108   Patient Portal Tutorial   54   142   1   1   0   3   1   0   87
   CMS Manual   13   121   1   1   0   2   3   0   84   CMS Training   54   118   1   1   0   2   4   0   67   Setting up your account   54   56   1   1   0   1   2   0   69   Education Tab   54   58   1   1   0   1   3   0   68   Message Center   54   57   1   1   0   1   2   0   93   Taking Care of Your PAP Unit   12   126   1   1   0   3   3   0   88(   Solving Problems with Your PAP Treatment   12   122   1   1   0   3   4   0   106&   Auto-population of Notes and TUI Notes   54   140   1   1   0   2€€€€   0   96&   Things to Know During Your Sleep Study   12   128   1   1   0   3   2   0   16   Sleep Study Setup   11   1   1   1   0   3   2   0   17   What is Sleep Apnea?   11   2   1   1   0   3   1   0   95   Training Overall Application   54   127   1   1   0   2   5   0   126   Nox T3 Tutorial Video   11   160   1   1   0   3   3   0   12   Articles   10   0   1   1   0   3   2   0   10	   Education   0   0   1   1   0   3   1   1   11   Videos   10   0   1   1   0   3   1   0   13   Help   0   0   1   1   0   3   2   0   89   Introduction to Sleep Apnea   12   123   1   1   0   3   1   0   59   User Manual   13   51   1   1   0   1   2   0       C6 C6  pРj     1.0   48   Log On   1020§   <p>
  <video width="800" height="450" id="revamp_video" controls="controls" autoplay>
     <source id="mp4" src="videos/LogOn.mp4" type="video/mp4">
  </video>
</p>   1   1   12-03-2013 16:04:34   1020€€€€€€€€   0   49   Change your password   1020±   <p>
  <video width="800" height="450" id="revamp_video" controls="controls" autoplay>
     <source id="mp4" src="videos/ChangeYourPassword.mp4" type="video/mp4">
  </video>
</p>   1   1   12-03-2013 16:04:49   1020€€€€€€€€   0   50   Add a New Patient   1020≠   <p>
  <video width="800" height="450" id="revamp_video" controls="controls" autoplay>
     <source id="mp4" src="videos/AddaNewPatient.mp4" type="video/mp4">
  </video>
</p>   1   1   12-03-2013 16:05:13   1020€€€€€€€€   0   141   Analytic Tool Guide   970Y  <p><iframe id="frmManual" src="documents/REVAMPAnalyticToolGuide.pdf" width="99%" height="800"></iframe></p>
<script type="text/javascript">// <![CDATA[
var resizeFrm = function(){
  $(document).ready(function(){
     var pos = $('#frmManual').position();
     $('#frmManual').height($(window).height() - pos.top - 100);
  });
};
// ]]></script>   1   1   29-05-2013 08:27:39   1020€€€€€€€€   0   142   Patient Portal Tutorial   970<  <p><video id="revamp_video" width="800" height="450" controls="controls" autoplay="autoplay"><source src="videos/REVAMP_patient_portal.mp4" type="video/mp4" /><object id="revamp_video" width="800" height="450" data="js/tiny_mce/plugins/media/moxieplayer.swf" type="application/x-shockwave-flash"><param name="src" value="js/tiny_mce/plugins/media/moxieplayer.swf" /><param name="flashvars" value="url=/va/videos/REVAMP_patient_portal.mp4&amp;poster=/va/" /><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="true" /></object>  </video></p>   1   1   10-07-2013 14:04:46   1020€€€€€€€€   0   66   Template 2 - Article Sample   1020ґ  <div>
<p style="text-align: center;"><img src="http://www.philadelphia.va.gov/images/rotate1_VISN04_Philadelphia.jpg" alt="image 1" /></p>
<span style="font-size: 2.5em; float: left; margin-right: 10px; color: maroon;">L</span>
<p>orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<div style="width: 200px; float: right; margin: 10px; text-align: right;">
<p style="color: blue; font-size: 1.2em;"><em>This is a callout. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</em></p>
</div>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<h2>New article section</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<table style="margin: 0 auto; border-collapse: collapse; width: 80%;" border="1">
<thead>
<tr><th style="width: 55%;">Key</th><th style="width: 15%;">Value 1</th><th style="width: 15%;">Value 2</th><th style="width: 15%;">Value 3</th></tr>
</thead>
<tbody>
<tr>
<td>Excepteur sint occaecat</td>
<td>3</td>
<td>4</td>
<td>5</td>
</tr>
<tr>
<td>Excepteur sint occaecat</td>
<td>3</td>
<td>4</td>
<td>5</td>
</tr>
<tr>
<td>Excepteur sint occaecat</td>
<td>3</td>
<td>4</td>
<td>5</td>
</tr>
</tbody>
</table>
<div style="margin: 10px auto; text-align: center; color: blue;"><span style="font-weight: bold;">Table 1.</span> Lorem ipsum dolor sit amet</div>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
</div>   1   1   28-03-2013 00:00:00   1020   28-03-2013 12:57:17   1020   1   67   Template 3 - Article Sample   1020D  <div>
<div id="tableContents" style="float: left; margin: 10px; padding: 10px; border: 1px solid #808080; background-color: #eee;">
<h4>Table of Contents</h4>
<ul>
<li><a href="#_cms_s1">i Section</a>
<ul>
<li><a href="#_cms_p1">Picture 1</a></li>
</ul>
</li>
<li><a href="#_cms_s2">ii Section</a></li>
<li><a href="#_cms_s3">iii Section</a>
<ul>
<li><a href="#_cms_t1">Table 1</a></li>
</ul>
</li>
</ul>
</div>
<p id="_cms_s0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p style="text-align: right; margin-right: 20px;"><a href="#_cms_s0">TOP</a></p>
<h3 id="_cms_s1">i Section</h3>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p id="_cms_p1" style="text-align: center;"><img src="http://www.philadelphia.va.gov/images/rotate1_VISN04_Philadelphia.jpg" alt="image 1" /><br /> <strong>Picture 1. </strong> This is picture 1</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p style="text-align: right; margin-right: 20px;"><a href="#_cms_s0">TOP</a></p>
<h3 id="_cms_s2">ii Section</h3>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<div style="width: 200px; float: right; margin: 10px; text-align: right;">
<p style="color: blue; font-size: 1.2em;"><em>This is a callout. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</em></p>
</div>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p style="text-align: right; margin-right: 20px;"><a href="#_cms_s0">TOP</a></p>
<h3 id="_cms_s3">iii Section</h3>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<table id="_cms_t1" style="margin: 0 auto; border-collapse: collapse; width: 80%;" border="1">
<thead>
<tr><th style="width: 55%;">Key</th><th style="width: 15%;">Value 1</th><th style="width: 15%;">Value 2</th><th style="width: 15%;">Value 3</th></tr>
</thead>
<tbody>
<tr>
<td>Excepteur sint occaecat</td>
<td>3</td>
<td>4</td>
<td>5</td>
</tr>
<tr>
<td>Excepteur sint occaecat</td>
<td>3</td>
<td>4</td>
<td>5</td>
</tr>
<tr>
<td>Excepteur sint occaecat</td>
<td>3</td>
<td>4</td>
<td>5</td>
</tr>
</tbody>
</table>
<div style="margin: 10px auto; text-align: center; color: blue;"><span style="font-weight: bold;">Table 1.</span> Lorem ipsum dolor sit amet</div>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
<p style="text-align: right; margin-right: 20px;"><a href="#_cms_s0">TOP</a></p>
</div>   1   1   28-03-2013 00:00:00   1020   28-03-2013 12:56:21   1020   1   112
   Icon Usage   970ы  <h2><strong>Toolbar 1</strong></h2>
<p><strong>Bold</strong> - Bolds selected font&nbsp;&nbsp; Sample</p>
<p><strong>Italics</strong> - Italicizes selected font&nbsp;&nbsp; Sample</p>
<p><strong>Underline</strong> - Underlines selected font&nbsp;&nbsp; &nbsp;Sample</p>
<p><strong>Strikethrough</strong> - A horizontal line is drawn through the text&nbsp; Sample</p>
<p><strong>Align left</strong> - Text is aligned along the left margin.</p>
<p><strong>Align center</strong> - Text is aligned to neither the left nor right margin; _there is an even gap on each side of each line.</p>
<p><strong>Align right</strong> - Text is aligned along the right margin.</p>
<p><strong>Align full</strong> - Text is aligned along both margins.</p>
<p><strong><strong>Page format</strong> - </strong>Change the arrangement of text, images, and other objects on a page.</p>
<p><strong>Font&nbsp;Family</strong>&nbsp;- Change the font face.</p>
<p><strong>Font size</strong> - Change the font size.</p>
<p>&nbsp;</p>
<h2>Toolbar 2</h2>
<p><strong>Cut</strong> - Cut the selection to clipboard.</p>
<p><strong>Copy</strong> - Copy the selection to clipboard.</p>
<p><strong>Paste</strong> - Paste the contents of the clipboard.</p>
<p><strong>Paste as plain text</strong> - Paste the contents of the clipboard as plain text, removing formatting.</p>
<p><strong>Paste from Word</strong> - Paste the contents of the clipboard copied from Word.</p>
<p><strong>Find</strong> - Find text and other content in the page.</p>
<p><strong>Find/Replace</strong> - Find and replace text in this page.&nbsp; The cursor must be at the top of document to find and replace a particular word throughout the complete document, if not, it will only replace the word from that point down.</p>
<p><strong>Insert/Remove numbered list</strong> - Start or remove a numbered list.</p>
<p><strong>Increase Indent</strong> - Increase the indent level of the paragraph.</p>
<p><strong>Block quote</strong> - Insert a block quote.</p>
<p><span style="line-height: 115%; font-family: 'Arial','sans-serif'; font-size: 11pt; mso-bidi-font-weight: bold; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">If </span><span style="line-height: 115%; font-family: 'Arial','sans-serif'; font-size: 11pt; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">you are using an automatically adjusting PAP unit (APAP), your unit will automatically adjust the pressure during sleep to control your breathing problem. If you are using continuous (CPAP) or bi-level (BiPAP) therapy, the pressure will remain set at levels that suit your requirements. Sometimes, there is a need to adjustment the pressure settings, for example if you lose or gain weight. </span></p>
<p><strong>Undo</strong> - Undo typing.</p>
<p><strong>Redo</strong> - Redo typing.</p>
<p><strong>Insert/Edit link</strong> - Create a link to a webpage</p>
<p><strong>Unlink</strong> - Unlink a created link.</p>
<p><strong>Insert/edit image</strong> - Insert and/or edit images.</p>
<p><strong>Cleanup messy code</strong> - When pasting from word, remove unnecessary HTML from selected text.</p>
<p>&nbsp;revamp</p>
<p align="center">&nbsp;</p>
<h2><strong>Toolbar 3</strong></h2>
<p><strong>Insert/Edit table</strong> &ndash; Insert table into window.</p>
<p><strong>Table row properties</strong> &ndash; Change row properties.</p>
<p><strong>Table cell properties</strong> &ndash; Change cell properties.</p>
<p><strong>Insert row before</strong> &ndash; Insert row before selected row.</p>
<p><strong>Insert row after</strong> &ndash; Insert row after selected row.</p>
<p><strong>Delete row</strong> &ndash; Delete selected row.</p>
<p><strong>Insert column before</strong> &ndash; Insert row before selected column.</p>
<p><strong>Insert column after</strong> - Insert row before selected row.</p>
<p><strong>Delete column</strong> &ndash; Delete selected column.</p>
<p><strong>Split merged table cells</strong> &ndash; Split the selected cells into multiple cells.</p>
<p><strong>Merge table cells</strong> &ndash; Merge the selected cells into one cell.</p>
<p><strong>Insert horizontal line</strong> &ndash; Insert a horizontal line or page divider</p>
<p><strong>Remove formatting</strong> &ndash; Removes all formatting from selected text.</p>
<p><strong>Subscript</strong> &ndash; To write with any character, number, or symbol written next to and slightly above another.</p>
<p><strong>Superscript</strong> &ndash; To write with any character, number, or symbol written next to and slightly below another.</p>
<p><strong>Insert special character</strong> &ndash; Insert a special character that is not found on the keyboard.</p>
<p><strong>Emotions</strong> &ndash; Insert smiley icons.</p>
<p><strong>Insert/Edit embedded media</strong> &ndash; Insert various media into document (i.e. photo, video, or audio files).&nbsp;</p>
<p><strong>Insert horizontal line</strong> - Insert a horizontal line or page divided.</p>
<p><strong>Print</strong> &ndash; Print current document.</p>
<p dir="ltr"><strong>Direction left to right</strong> &ndash; To change orientation of text from left to right.</p>
<p><strong>Direction right to left</strong> &ndash; Changes orientation of text from right to left.</p>
<p><strong>Toggle Full-Screen mode</strong> &ndash; Change current document view into full-screen mode.</p>
<p>&nbsp;revamp</p>
<h2><strong>Toolbar 4</strong></h2>
<p><strong>Edit CSS style</strong> &ndash; Edit Cascading Style Sheets (CSS) style.&nbsp; User can modify a variety of fields in the dialog that appears when clicking on this tool icon.</p>
<p><strong>Citation </strong>- Can be used to add a citation to selected text.&nbsp; The citation will be seen when User places cursor on text.</p>
<p><strong>Abbreviation</strong> - Can be used to expand abbreviation of selected text.&nbsp; The explanation will be seen when User places cursor on abbreviation.</p>
<p><strong>Acronym</strong> &ndash; Can be used to expand acronym of selected text.&nbsp; The explanation will be seen when User places cursor on acronym.</p>
<p><strong>Deletion</strong> &ndash; Can be used to add strikethrough and explanation of deletion to selected text.&nbsp; The explanation will be seen when the User places cursor on text.</p>
<p><strong>Insertion</strong> - Can be used to add explanation of insertion to selected text.&nbsp; The explanation will be seen when the User places cursor on text.</p>
<p><strong>Insert/Edit attributes</strong> &ndash; Useful for adding HTML properties (does not necessarily having an effect on the layout). Can be used to program selected text.&nbsp;</p>
<p><strong>Show/Hide visual control characters</strong> - When toggled on it shows any hidden characters, extra paragraphs and word spacing.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p><strong>Insert non-breaking space character</strong> &ndash; Used to force the browser to not break the line between certain words or web page elements.</p>
<p><strong>Insert predefined template content</strong> &ndash; If templates available, User can select one to insert</p>
<p><strong>Insert page break for printing</strong> - A division is inserted that will start a new page when printing the web page.</p>
<p>&nbsp;</p>   0   1   28-03-2013 14:25:10   970   28-03-2013 14:52:34   970   0   126   Taking Care of Your PAP Unit   10503  <p>&nbsp;</p>
<p align="center"><span style="font-size: medium;"><em>Your personalized self-management program</em></span></p>
<p><span style="font-family: Times New Roman;">&nbsp;</span></p>
<p><span style="font-size: small;">The following websites have information about sleep apnea:</span></p>
<p><span style="font-family: Times New Roman; font-size: small;">&nbsp;</span></p>
<p><span style="font-size: small;">American Sleep Apnea Association&nbsp;&nbsp;&nbsp; </span></p>
<p><span style="font-size: small;"><a href="http://yoursleep.aasmnet.org/Disorder.aspx?id=7" target="_blank"><span style="color: #0000ff;">http://yoursleep.aasmnet.org/Disorder.aspx?id=7</span></a></span></p>
<p><span style="font-family: Times New Roman; font-size: small;">&nbsp;</span></p>
<p><span style="font-size: small;">American Academy of Sleep Medicine</span></p>
<p><span style="font-size: small;"><a href="http://www.sleepeducation.com/sleep-disorders/sleep-apnea/overview-facts" target="_blank"><span style="color: #0000ff;">http://www.sleepeducation.com/sleep-disorders/sleep-apnea/overview-facts</span></a></span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">You can find additional information at the following PAP manufacturer websites:</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DeVilbiss Healthcare&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.devlbisshealthcare.com/" target="_blank"><span style="color: #0000ff;">http://www.devlbisshealthcare.com/</span></a></span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fisher &amp; Paykel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://fphcare.com/ose/html" target="_blank"><span style="color: #0000ff;">http://fphcare.com/ose/html</span></a></span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Philips Respironics&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.sleepapnea.com/" target="_blank"><span style="color: #0000ff;">http://www.sleepapnea.com/</span></a>&nbsp;</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ResMed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.resmed.com" target="_blank"><span style="color: #0000ff;">http://www.resmed.com/</span></a></span></p>
<p>&nbsp;</p>
<p><span style="color: #ff0000; font-size: medium;"><strong>HOW TO TAKE CARE OF YOUR PAP UNIT</strong></span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;"><a href="#CARE1">How do I clean my mask, headgear, and tubing?</a>&nbsp; </span></li>
<li><a href="#CARE2"><span style="font-size: small;">How often should I replace my mask, tubing and filters? </span></a></li>
<li><a href="#CARE3"><span style="font-size: small;">How do I clean my water chamber? </span></a></li>
<li><a href="#CARE4"><span style="font-size: small;">Can I use my treatment if I have a cold? </span></a></li>
<li><a href="#CARE5"><span style="font-size: small;">Will the pressure settings on my device ever need changing?</span></a></li>
</ul>
<p>&nbsp;</p>
<p><span id="CARE1" style="font-size: small;"><span style="text-decoration: underline;">How do I clean my mask, headgear, and tubing</span>? &nbsp;</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">Clean your <span style="text-decoration: underline;">mask</span> every other day in a solution of mild liquid dish soap and water that is not too sudsy. Rinse it thoroughly, and allow the mask to air dry.</span></li>
<li><span style="font-size: small;">Clean your <span style="text-decoration: underline;">hoses and tubing</span> every week in a mild liquid dish soap and distilled water solution. Rinse them thoroughly, and allow them to air dry.</span></li>
<li><span style="font-size: small;">Hand wash your <span style="text-decoration: underline;">headgear</span> in laundry detergent once a month or as needed. Rinse it well, and allow it to line dry.</span></li>
</ul>
<p><span style="font-family: Times New Roman; font-size: small;">&nbsp;</span></p>
<p><span id="CARE2" style="font-size: small;"><span style="text-decoration: underline;">How often should I replace my mask, tubing and filters</span>? &ndash; You should replace your mask, tubing and filters on a regular basis. This will help ensure that your PAP therapy remains safe and effective. These are some general guidelines on what to replace and how often:</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">Tubing: every 6 months </span></li>
<li><span style="font-size: small;">Mask with head straps: every 6 months</span></li>
<li><span style="font-size: small;">Disposable filters: every month </span></li>
<li><span style="font-size: small;">The foam filter can be cleaned in water and left to air dry.</span></li>
<li><span style="font-size: small;">The paper filter should be thrown out and replaced with a new one. Do not try to clean and reuse a paper filter.</span></li>
</ul>
<p>&nbsp;</p>
<p><span style="font-size: small;">To order these supplies, contact your sleep specialist either by sending a message by Secure Messaging on the MyHealth<em>e</em>Vet website or by Messaging on the REVAMP website.</span></p>
<p>&nbsp;</p>
<p><span id="CARE3" style="font-size: small;"><span style="text-decoration: underline;">How do I clean my water chamber</span>?</span></p>
<ul>
<li><span style="font-size: small;">To prevent the growth of bacteria, empty the water chamber every morning. Do not leave standing water in the chamber when the machine is not in use.</span></li>
<li>
<p><span style="font-size: small;">The water chamber should be cleaned weekly. If you are using distilled waterin the chamber, you can clean it with a mild detergent, rinse and air dry. If you are using tap water or bottled water, you may want to use a vinegar:water solution in the 1:10 mixture and let this stand for several hours to clean the salt residue that can build up on the walls of the chamber. <span>Rinse the chamber thoroughly with water before reuse. </span></span></p>
</li>
</ul>
<p class="even2"><span>&nbsp;</span></p>
<p class="even2"><span id="CARE4" style="font-size: small;"><span style="text-decoration: underline;">Can I use my&nbsp;PAP unit even&nbsp;if I have a cold</span>? &ndash; If you experience an infection of the upper respiratory tract, middle ear, or sinus, you should consult your physician before continuing PAP treatment. You may be advised to discontinue using PAP until the infection has cleared. If you continue with treatment during the infection, it is advisable to wash your mask and tubing more often. A full face mask may be good alternative at this time as it covers both your nose and mouth so you continue to receive effective therapy.</span></p>
<p class="even2"><span style="font-size: small;">&nbsp;</span></p>
<p><span id="CARE5" style="font-size: small;"><span style="text-decoration: underline;">Will the pressure settings on my device ever need changing</span>? &ndash; If you are using an automatically adjusting PAP unit (APAP), your unit will automatically adjust the pressure during sleep to control your breathing problem. If you are using continuous (CPAP) or bi-level (BiPAP) therapy, the pressure will remain set at levels that suit your requirements. Sometimes, there is a need to adjustment the pressure settings, for example if you lose or gain weight.</span></p>
<p><span style="font-size: small;"><strong><span style="font-family: Times New Roman;">&nbsp;</span></strong></span></p>   1   1   12-04-2013 16:13:21   1050   14-04-2013 06:38:54   1050   0   56   Setting up your account   1020Ѓ   <p>
  <video id="revamp_video" width="800" height="450" controls="controls" autoplay>
    <source src="videos/Setting_up_Your_Account.mp4" type="video/mp4" />
  </video>
</p>   1   1   20-03-2013 13:31:46   1020€€€€€€€€   0   57   Message Center   1020•   <p>
  <video id="revamp_video" width="800" height="450" controls="controls" autoplay>
    <source src="videos/Message_Center.mp4" type="video/mp4" />
  </video>
</p>   1   1   20-03-2013 13:32:20   1020€€€€€€€€   0   58   Education Tab   1020•   <p>
  <video id="revamp_video" width="800" height="450" controls="controls" autoplay>
    <source src="videos/Education_Tab.mp4" type="video/mp4" /> 
  </video>
</p>   1   1   20-03-2013 13:32:58   1020€€€€€€€€   0   65   Template 1 - Article Sample   1020  <div>
      <p style="text-weight: bold; color:#777; line-height: 133%; font-size: 18px;">
      <em>Aliquam pulvinar gravida ipsum, vehicula suscipit neque aliquet id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a velit tortor, in faucibus ante. Donec viverra varius hendrerit. Integer ut erat nulla. Integer eget arcu in arcu scelerisque pharetra id quis nulla. Sed elementum egestas nisl sit amet bibendum.</em>
    </p>
    <img alt="image 1" src="http://www.philadelphia.va.gov/images/rotate1_VISN04_Philadelphia.jpg" style="float: right; margin: 12px 0 12px 12px;" />
    <p>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec pulvinar mi. Pellentesque et erat risus. Cras eget ante mauris. Mauris mattis aliquet nulla et varius. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur pulvinar augue ac dolor vestibulum congue. Aenean vulputate, sem quis iaculis dignissim, justo diam tempor ipsum, nec venenatis arcu libero eget velit. Sed non metus eu velit suscipit porttitor id ac nisi. Fusce et porta sapien. In in quam nisi, id tristique ante. Nunc vitae turpis pellentesque justo mollis congue sit amet lacinia dui. Ut consectetur neque at justo pretium semper. Morbi erat leo, molestie id interdum id, mattis nec enim. Morbi adipiscing venenatis libero, vitae dignissim urna dignissim at. Pellentesque porta varius nisi, in consectetur neque semper sed.
    </p>
    <h2>Duis sed dui at tortor congue porttitor</h2>
    <p>
      Pellentesque quis lacus non felis euismod luctus ac eu arcu. Nullam mollis mi ut dui scelerisque tincidunt. Aliquam erat volutpat. Nam elementum posuere metus id volutpat. Maecenas in risus id ligula laoreet rutrum et id risus. Nam pellentesque urna a felis elementum consectetur. Mauris non diam in velit ullamcorper sodales. Maecenas dictum tincidunt nulla eu consequat. Sed sapien erat, aliquam at imperdiet id, vestibulum vel ipsum. Donec non felis lorem. Quisque eget commodo urna. In nec tortor sed nulla ultricies tempus at quis lacus.
    </p>
    
    <div style="float: left; width: 40%; margin: 12px 12px 12px 0; padding: 10px; background-color: #FFC;">
    <h4>Aliquam erat volutpat</h4>
    <ul>
      <li>Maecenas dictum tincidunt nulla eu consequat.</li>
        <li>Duis sed dui at tortor congue porttitor.</li>
        <li>Nunc vitae turpis pellentesque justo mollis.</li>
        <li>Mauris mattis aliquet nulla et varius.</li>
        <li>In nec tortor sed nulla ultricies tempus.</li>
    </ul>
    
    </div>
    
    <p>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec pulvinar mi. Pellentesque et erat risus. Cras eget ante mauris. Mauris mattis aliquet nulla et varius. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur pulvinar augue ac dolor vestibulum congue. Aenean vulputate, sem quis iaculis dignissim, justo diam tempor ipsum, nec venenatis arcu libero eget velit. Sed non metus eu velit suscipit porttitor id ac nisi. Fusce et porta sapien. In in quam nisi, id tristique ante. Nunc vitae turpis pellentesque justo mollis congue sit amet lacinia dui. Ut consectetur neque at justo pretium semper. Morbi erat leo, molestie id interdum id, mattis nec enim. Morbi adipiscing venenatis libero, vitae dignissim urna dignissim at. Pellentesque porta varius nisi, in consectetur neque semper sed.</p>
    <p>
      Duis sed dui at tortor congue porttitor. Pellentesque quis lacus non felis euismod luctus ac eu arcu. Nullam mollis mi ut dui scelerisque tincidunt. Aliquam erat volutpat. Nam elementum posuere metus id volutpat. Maecenas in risus id ligula laoreet rutrum et id risus. Nam pellentesque urna a felis elementum consectetur. Mauris non diam in velit ullamcorper sodales. Maecenas dictum tincidunt nulla eu consequat. Sed sapien erat, aliquam at imperdiet id, vestibulum vel ipsum. Donec non felis lorem. Quisque eget commodo urna. In nec tortor sed nulla ultricies tempus at quis lacus.
    </p>
    <hr/>
    </div>   1   1   26-03-2013 00:00:00   1020   26-03-2013 00:00:00   1020   1   123   Introduction to Sleep Apnea   1050ђR  <h1 align="center"><em style="font-size: medium;">Your personalized self-management program</em></h1>
<p>&nbsp;</p>
<p><span style="font-size: small;">The following websites have information about sleep apnea:</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">&nbsp;</span><span style="font-size: small;">American Sleep Apnea Association:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>
<p><a style="font-size: small;" href="http://yoursleep.aasmnet.org/Disorder.aspx?id=7" target="_blank">http://yoursleep.aasmnet.org/Disorder.aspx?id=7</a></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">&nbsp;</span><span style="font-size: small;">American Academy of Sleep Medicine: &nbsp;&nbsp;</span></p>
<p><a style="font-size: small;" href="http://www.sleepeducation.com/sleep-disorders/sleep-apnea/overview-facts" target="_blank">http://www.sleepeducation.com/sleep-disorders/sleep-apnea/overview-facts</a></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">You can find additional information at the following PAP manufacturer websites:</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DeVilbiss Healthcare &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #0000ff;"><a title="http://www.devilbisshealthcare.com/" href="http://www.devilbisshealthcare.com/" target="_blank"><span style="color: #0000ff;">http://www.devilbisshealthcare.com/</span></a></span></span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fisher &amp; Paykel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a title="http://fphcare.com/osa/html" href="http://fphcare.com/osa/html" target="_blank">http://fphcare.com/osa/html</a></span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Philips Respironics &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<a href="http://www.sleepapnea.com/" target="_blank">http://www.sleepapnea.com/</a>&nbsp;&nbsp;</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ResMed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.resmed.com/" target="_blank">http://www.resmed.com/</a></span></p>
<p>&nbsp;</p>
<p><span style="font-size: medium; color: #ff0000;"><strong>INTRODUCTION TO SLEEP APNEA TOPICS</strong></span></p>
<p>&nbsp;</p>
<ul>
<li><a href="#INTRO1"><span style="font-size: small;">What is Obstructive Sleep Apnea?</span></a></li>
<li><a href="#INTRO2"><span style="font-size: small;">Who gets OSA?</span></a></li>
<li><a href="#INTRO3"><span style="font-size: small;">How do I know if I have OSA?</span></a></li>
<li><a href="#INTRO4"><span style="font-size: small;">Do I need to be evaluated in a sleep center?</span></a></li>
<li><a href="#INTRO5"><span style="font-size: small;">How is OSA treated?</span></a></li>
<li><a href="#INTRO6"><span style="font-size: small;">What is positive airway pressure (PAP) treatment?</span></a></li>
<li><a href="#INTRO7"><span style="font-size: small;">What are the benefits of positive airway pressure (PAP) treatment?</span></a></li>
<li><a href="#INTRO8"><span style="font-size: small;">How long will it take to get used to my PAP treatment?</span></a></li>
<li><a href="#INTRO9"><span style="font-size: small;">How soon after starting treatment will it be before I notice an improvement?</span></a></li>
<li><a href="#INTRO10"><span style="font-size: small;">How often should I use my PAP treatment?</span></a></li>
<li><a href="#INTRO11"><span style="font-size: small;">Will I ever be able to stop PAP treatment?</span></a></li>
<li><a href="#INTRO12"><span style="font-size: small;">Why do I feel that it is hard to breathe out when using PAP?</span></a></li>
<li><a href="#INTRO13"><span style="font-size: small;">What are the possible side effects of PAP treatment?</span></a></li>
</ul>
<p>&nbsp;</p>
<p id="INTRO1"><span style="font-size: small;"><span style="text-decoration: underline;">What is Obstructive Sleep Apnea</span>?</span><br /><span style="font-size: small;"> Obstructive sleep apnea, or OSA, is a breathing disorder that occurs during sleep and is related to snoring. OSA occurs when the tissue in the back of the throat collapses and blocks the airway. This keeps air from getting into the lungs. Blockage of the airway can happen a few times a night or several hundred times per night. Although OSA is a very common problem, people with OSA are usually not aware that they have a breathing problem during sleep. <em><br /> </em></span></p>
<p><br /><span id="INTRO2" style="font-size: small;"> <span style="text-decoration: underline;">Who gets OSA</span>?<span style="text-decoration: underline;"><br /> </span>OSA can occur in men and women of any age, but it is most common in overweight and obese middle-aged men. As people gain weight, the amount of fat increases in the back of the throat. This narrows the airway and makes it more likely the throat will be blocked during sleep, People with an overbite are also more likely to have OSA.</span></p>
<p>&nbsp;</p>
<p id="INTRO3"><span style="font-size: small;"><span style="text-decoration: underline;">How do I know if I have OSA</span>?</span><br /><span style="font-size: small;"> Almost all people with OSA snore loudly, and about half of the people who snore loudly have OSA. Snoring is a sign that your airway is being partially blocked. People are rarely aware of their own snoring. A bed partner would have to tell you how often you snore.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">Many people with OSA are sleepy during the day. They find that they are still tired soon after getting up in the morning. When you stop breathing, your body wakes up. It happens so quickly, you aren&rsquo;t even aware of it. This prevents you from getting a restful sleep and can make you feel tired in the daytime.</span></p>
<p>&nbsp;</p>
<p><span id="INTRO4" style="font-size: small;"><span style="text-decoration: underline;">Do I need to be evaluated in a sleep center</span>?</span><br /><span style="font-size: small;">REVAMP will allow you to be evaluated for OSA without visiting a sleep center. You can be evaluated for OSA in your own home by answering questions on this website about your history and symptoms.&nbsp; Your responses will be reviewed by your sleep specialist and, if needed, you will be scheduled for an overnight sleep study that you will perform in your home. The home sleep test will help your sleep specialist evaluate your problem. Then the sleep specialist can put together an individual treatment plan just for you.</span></p>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="INTRO5" style="font-size: small;"><span style="text-decoration: underline;">How is OSA treated</span>?</span></p>
<p><span style="font-size: small;">1. </span><em><span style="font-size: small;"><span style="text-decoration: underline;">Positive airway pressure (PAP)</span></span></em><span style="font-size: small;"> is the treatment most often used to treat OSA. It is delivered through a mask worn over the nose or face. The air gently blows into the back of the throat. This keeps the airway open so you are able to keep breathing as you sleep. The amount of air pressure needed is different for each person. The PAP unit will automatically adjust the pressure throughout the night to correct your breathing problem.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">2. </span><em><span style="font-size: small; text-decoration: underline;">Weight loss</span></em><span style="font-size: small;"> is very important as this decreases the amount of obstruction in the throat. Often a significant amount of weight loss is enough to stop the symptoms.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">3. </span><em><span style="font-size: small; text-decoration: underline;">Positional therapy</span></em><span style="font-size: small;"> may work for patients who just have OSA when sleeping on their back. Positional back cushions that attach around the chest can help people sleep on their side.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">4. </span><em><span style="font-size: small; text-decoration: underline;">Oral appliances</span></em><span style="font-size: small;"> are also used to treat OSA. These devices are custom-made by a dentist. They are similar to a sports mouth guard and are worn during sleep. They move the jaw forward and thereby help the airway to stay open.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">5. </span><em><span style="color: #000000;"><span style="font-size: small; text-decoration: underline;">Throat </span><a style="font-size: small;" href="http://yoursleep.aasmnet.org/Treatment.aspx?id=3"><span style="color: #000000;">surgery</span></a></span></em><span style="font-size: small;"> is another treatment for OSA. Tissues in the back of the throat are removed to increase the size of the throat.&nbsp; This helps prevents collapse of the airway and make breathing easier.</span></p>
<p>&nbsp;</p>
<p><span id="INTRO6" style="font-size: small;"><span style="text-decoration: underline;">What is positive airway pressure (PAP) treatment</span>?</span></p>
<p><span style="font-size: small;">PAP stands for positive airway pressure. It keeps your airway open as you sleep by providing you with a steady stream of air. To power the unit, you simply plug it into the wall. The box has a fan that pushes air through a tube. The tube is connected to a mask that you wear as you sleep. The mask allows the air to gently blow into the back of your throat. This keeps the airway open and prevents pauses in breathing as you sleep.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">The mask must fit and make a seal in order to keep your throat open and correct the apnea problem. A good mask seal will prevent air leaks and maintain the proper level of air pressure. The amount of air pressure needed is different for each person. Your PAP unit will automatically adjust the pressure to keep your breathing normal during sleep. Your PAP unit has a humidifier that provides moisture to the air coming from the PAP unit. This can reduce side effects and make it easier for you to breathe through your mask.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">Sensors in your PAP unit will track your hourly use of the treatment and will also keep track of mask leaks and snoring. Your PAP unit will send this information daily by wireless modem to the manufacturer. You will be able to view this information on your personalized REVAMP webpage. This information can help you and your sleep specialist to monitor your treatment progress without requiring you to make an office visit.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">No matter what type of mask you use, it is most important that it fits you well. The mask must make a seal and be comfortable. The mask should fit snugly enough to prevent leaks without causing discomfort. You may need to make small adjustments to the mask, tubing, straps and headgear until you get the right fit.</span></p>
<p>&nbsp;</p>
<p><span id="INTRO7" style="font-size: small;"><span style="text-decoration: underline;">What are the benefits of positive airway pressure (PAP) treatment</span>?</span></p>
<p><span style="font-size: small;">Positive airway pressure, or PAP, is the most common and effective treatment for OSA. &nbsp;The steady flow of air from a PAP machine keeps your airway open and restores normal oxygen levels as you sleep. This helps maintain a steady, healthy level of breathing through the night.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">For many people, the first night of using PAP may feel like the first good night of sleep they have had in years. Some people may not notice improvements right away. It may take time for them to adjust to this new way of sleeping. Some of the benefits that you may note soon after starting treatment include:</span><span style="font-size: small;">&nbsp;</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp; - Absence of snoring observed by bedpartner</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp; -&nbsp;Decrease in number of awakenings at night</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp; - Decrease in number of times going to the bathroom at night</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp; - Feeling more resting in the morning when you wake up</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp; - More alert during the day and not as likely to fall asleep when not active</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">PAP treatment also has long term benefits. It helps <strong>protect</strong> you from the severe health risks that are related to OSA. These risks include the following:</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;"><em>1. <span style="text-decoration: underline;">Heart</span><span style="text-decoration: underline;"> Disease</span></em> &ndash; The blockage of the throat during sleep can prevent air from reaching the lungs. This can lead to a decrease in oxygen levels in your blood. This puts a strain on your heart and can lead to an increase in your heart rate.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">Research shows that people with untreated OSA have a higher rate of death due to heart disease. The link is strongest between OSA and high blood pressure. Studies also show that PAP may reduce these high blood pressure levels in people with sleep apnea. The use of PAP over an extended period of time may help protect you from heart problems and reduce your chance of dying from them.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;"><em>2. &nbsp;<span style="text-decoration: underline;">Weight</span><span style="text-decoration: underline;">&nbsp;gain</span> </em>&ndash; It may be easier to lose weight once you are on PAP treatment. You should find that your energy levels increase and you are likely to feel motivated to take part in activities that your previous sleepiness has prevented you from doing. However, permanent weight loss requires long-term lifestyle changes to diet and exercise.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;"><em>3. &nbsp;<span style="text-decoration: underline;">Stroke</span></em> &ndash; Untreated sleep apnea increases your risk of stroke. A stroke is a sudden loss of brain function. It occurs when there is a blockage or rupture of one of the blood vessels leading to the brain. Stroke is one of the leading causes of death and long-term disability in the U.S. Studies show that people with untreated OSA are two to four times more likely to have a stroke than people who do not have sleep apnea. The consistent use of PAP can reduce this risk of stroke for a person with OSA.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;"><em>4. &nbsp;<span style="text-decoration: underline;">Motor Vehicle Accidents</span></em> &ndash; Having untreated sleep apnea makes you more likely to be involved in a deadly motor vehicle accident. The daytime sleepiness caused by OSA can make it hard for you to stay awake while driving. Treating sleep apnea with PAP reduces your risk of being in an accident.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">In addition to reducing the health risks related to sleep apnea, PAP provides other benefits that contribute to your overall health and well-being. It helps you in the following areas:</span></p>
<p>&nbsp;</p>
<p><em><span style="font-size: small;">5. &nbsp;</span><span style="font-size: small; text-decoration: underline;">Sleepiness</span></em><span style="font-size: small;"> &ndash; PAP can reduce the sleepiness and daytime fatigue that are common symptoms of sleep apnea. By preventing pauses in breathing as you sleep, PAP restores a normal sleep pattern and increases your total sleep time. This helps you to wake up in the morning feeling more refreshed.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;"><em>6. &nbsp;<span style="text-decoration: underline;">Lack of Concentration</span></em> &ndash; Using PAP may enable you to think, concentrate and make decisions better during the day. This can reduce your chance of injury at work and improve your productivity.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;"><em>7. &nbsp;<span style="text-decoration: underline;">Emotional upset</span></em>&nbsp;&ndash; People who use PAP often show reduced levels of depression and higher ratings of their quality of life.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">The key to using PAP is to remember that it is not a quick fix for sleep apnea. It involves a long-term commitment to improve your sleep and your health. Your PAP will only work as long as you put it to work for you. Use your PAP all night, every night and during every nap.</span></p>
<p>&nbsp;</p>
<p><span id="INTRO8" style="font-size: small;"><span style="text-decoration: underline;">How long will it take to get used to my PAP treatment</span>? &ndash; Most people adjust to PAP in one to two weeks. Occasionally it may take a little longer if, for example, you are very sensitive to noise or the feel of the mask on your face.</span></p>
<p>&nbsp;</p>
<p><span id="INTRO9" style="font-size: small;"><span style="text-decoration: underline;">How soon after starting treatment will it be before I notice an improvement</span>? &ndash; Some people notice an immediate improvement when starting treatment though some people may take a little longer.</span></p>
<p>&nbsp;</p>
<p><span id="INTRO10" style="font-size: small;"><span style="text-decoration: underline;">How often should I use my PAP treatment</span>? &ndash; You should use your PAP treatment whenever you sleep. Studies show that even one night without PAP treatment results in a return of snoring, sleep apnea, and daytime tiredness.</span></p>
<p class="even2">&nbsp;</p>
<p class="even2"><span style="font-size: small;" title="INTRO11"><span style="text-decoration: underline;">Will I ever be able to stop PAP treatment</span>? &ndash;&nbsp;OSA is a long-term condition for which there is presently no known cure. The good news, however, is that positive airway pressure therapy will effectively control your sleep apnea as long as you continue to use it.</span></p>
<p class="even2">&nbsp;</p>
<p id="INTRO12" class="even2"><span style="text-decoration: underline; font-size: small;">Why do I feel that it is hard to breathe out when using PAP</span><span style="font-size: small;">? &ndash; When awake, most people experience a need to push against the airflow when they breathe out. It takes a little time to get used to breathing out against the pressure. Breathing out against the flow of air will happen automatically when you are asleep. PAP devices delivering a continuous fixed pressure have a ramp function. Activating the ramp function allows you to fall asleep at a lower pressure while your device ramps up to your full treatment pressure over a period of time. Automatically adjusting PAP units (APAP) and bilevel PAP units (BiPAP) make it easier to breathe out while awake.</span></p>
<p class="even2">&nbsp;</p>
<p><span id="INTRO13" style="font-size: small;"><span style="text-decoration: underline;">What are the possible side effects of PAP treatment</span>? &ndash; The most common problem with PAP is when the mask does not fit well. If the mask is too big, the straps holding it to your face will need to be pulled too tight. This can cause skin irritation or sores as the straps rub against your face. A mask that is too small will not seal properly and air will leak out through the edges. This can cause air leaks that blow into your eyes. Your therapist can help you make sure that your mask is a good fit.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">PAP may cause some people to have nasal congestion. This can often be relieved with a saline nasal spray or increasing the temperature setting of a PAP unit&rsquo;s heated humidifier.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">Using PAP may also make your throat dry or sore. A heated humidifier that fits your PAP unit can ease this symptom. Adding a chin strap may also help. Some people with this problem may need to change to a full face mask. Other side effects from PAP therapy are rare.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">If you are having any of the above problems using your PAP unit, more details on how to manage these problems can be found in the Problem Solving section.</span></p>
<p><span style="font-size: small;"><strong>&nbsp;</strong></span></p>   1   1   10-04-2013 19:57:45   1050   12-04-2013 15:55:01   1050   0   128&   Things to Know During Your Sleep Study   970Z  <p><iframe id="frmManual" src="documents/EmblettaGoldMonitorGuide.pdf" width="99%" height="800"></iframe></p>
<script type="text/javascript">// <![CDATA[
var resizeFrm = function(){
  $(document).ready(function(){
     var pos = $('#frmManual').position();
     $('#frmManual').height($(window).height() - pos.top - 100);
  });
};
// ]]></script>   1   1   18-04-2013 11:13:50   1020   18-04-2013 11:22:50   1020   0   118   CMS Training   970=  <p><video id="revamp_video" width="800" height="450" controls="controls" autoplay="autoplay"><source src="videos/CMSTrainingAddingaPage.mp4" type="video/mp4" /><object id="revamp_video" width="800" height="450" data="js/tiny_mce/plugins/media/moxieplayer.swf" type="application/x-shockwave-flash"><param name="src" value="js/tiny_mce/plugins/media/moxieplayer.swf" /><param name="flashvars" value="url=/va/videos/CMSTrainingAddingaPage.mp4&amp;poster=/va/" /><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="true" /></object> </video></p>   1   1   29-03-2013 16:58:11   1020   29-03-2013 17:31:36   1020   0   121
   CMS Manual   1020K  <p><iframe id="frmManual" src="documents/CMSManual.pdf" width="99%" height="800"></iframe></p>
<script type="text/javascript">// <![CDATA[
var resizeFrm = function(){
  $(document).ready(function(){
     var pos = $('#frmManual').position();
     $('#frmManual').height($(window).height() - pos.top - 100);
  });
};
// ]]></script>   1   1   05-04-2013 17:21:21   1020€€€€€€€€   0   140&   Auto-population of Notes and TUI Notes   970$  <p><video id="revamp_video" width="800" height="450" controls="controls" autoplay="autoplay"><source src="videos/Notes_TIU.mp4" type="video/mp4" /><object id="revamp_video" width="800" height="450" data="js/tiny_mce/plugins/media/moxieplayer.swf" type="application/x-shockwave-flash"><param name="src" value="js/tiny_mce/plugins/media/moxieplayer.swf" /><param name="flashvars" value="url=/va/videos/Notes_TIU.mp4&amp;poster=/va/" /><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="true" /></object>  </video></p>   1   1   16-05-2013 09:23:12   1020€€€€€€€€   0   1   Sleep Study Setup   1020∞   <p>
  <video width="480" height="360" id="revamp_video" controls="controls" autoplay>
     <source id="mp4" src="videos/sleep_study_setup.mp4" type="video/mp4">
  </video>
</p>   1   1   30-10-2012 21:03:04   1020   30-10-2012 22:34:41   1020   0   2   What is Sleep Apnea?   1020≤   <p>
  <video width="480" height="360" id="revamp_video" controls="controls" autoplay>
     <source id="mp4" src="videos/what_is_sleep_apnea.mp4" type="video/mp4">
  </video>
</p>   1   1   30-10-2012 21:15:00   1020   31-10-2012 15:28:52   1100   0   127   Training Overall Application   970≤   <p><video id="revamp_video" width="800" height="450" controls="controls" autoplay="autoplay"><source src="videos/TrainingOverallApplication.m4v" type="video/mp4" />  </video></p>   1   1   15-04-2013 15:42:41   1020   15-04-2013 15:48:35   1020   0   160   Nox T3 Tutorial Video   1054≥   <p><video id="revamp_video" width="480" height="360" controls="controls" autoplay="autoplay"><source src="videos/Nox_T3_Tutorial_video_by_CS.m4v" type="video/mp4" />  </video></p>   1   1   11-12-2013 05:57:15   1020€€€€€€€€   0   61   User Manual   1020H  <p><iframe id="frmManual" src="documents/REVAMP.pdf" width="99%" height="800"></iframe></p>
<script type="text/javascript">// <![CDATA[
var resizeFrm = function(){
  $(document).ready(function(){
     var pos = $('#frmManual').position();
     $('#frmManual').height($(window).height() - pos.top - 100);
  });
};
// ]]></script>   1   1   08-01-2013 16:35:44   1020   05-04-2013 17:20:18   1020   0   51   User Manual - Patient   1020O  <p><iframe id="frmManual" src="documents/REVAMP_manual.pdf" width="99%" height="800"></iframe></p>
<script type="text/javascript">// <![CDATA[
var resizeFrm = function(){
  $(document).ready(function(){
     var pos = $('#frmManual').position();
     $('#frmManual').height($(window).height() - pos.top - 100);
  });
};
// ]]></script>   1   1   15-03-2013 14:35:02   1020   05-04-2013 17:20:46   1020   0   122(   Solving Problems with Your PAP Treatment   1050<3  <h1 align="center"><em style="font-size: medium;">Your personalized self-management program</em></h1>
<p>&nbsp;</p>
<p><span style="font-size: small;">The following websites have information about sleep apnea:</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">American Sleep Apnea Association:</span></p>
<p><span style="font-size: small;"><a href="http://yoursleep.aasmnet.org/Disorder.aspx?id=7">http://yoursleep.aasmnet.org/Disorder.aspx?id=7</a></span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">American Academy of Sleep Medicine&nbsp;&nbsp; </span></p>
<p><span style="font-size: small;"><a href="http://www.sleepeducation.com/sleep-disorders/sleep-apnea/overview-facts">http://www.sleepeducation.com/sleep-disorders/sleep-apnea/overview-facts</a></span></p>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span style="font-size: small;">You can find additional information at the following PAP manufacturer websites:</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DeVilbiss Healthcare &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <a href="http://www.devilbisshealthcare.com/" target="_blank">http://www.devilbisshealthcare.com/</a></span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fisher &amp; Paykel &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="http://fphcare.com/osa/html" target="_blank">http://fphcare.com/osa/html</a></span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Philips Respironics&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a href="http://www.sleepapnea.com/" target="_blank">http://www.sleepapnea.com/</a>&nbsp;&nbsp;</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ResMed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.resmed.com/" target="_blank">http://www.resmed.com/</a></span></p>
<p>&nbsp;</p>
<p><strong style="font-size: medium;"><span style="color: #ff0000;">SOME MEASURES YOU CAN TRY AT HOME TO HELP YOU USE YOUR PAP UNIT</span></strong></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">The following tips will help you solve some common problems that PAP users may experience. These simple solutions will help you maintain a long-term commitment to improve your sleep and your health with PAP. Contact your sleep specialist if you have ongoing problems. He or she can help make PAP an effective and comfortable treatment for your OSA.</span></p>
<p>&nbsp;</p>
<ul>
<li><a href="#PROB1"><span style="font-size: small;">I have trouble breathing with so much air coming in through the mask</span></a></li>
<li><a href="#PROB2"><span style="font-size: small;">Why is the air delivered through the mask too cold?</span></a></li>
<li><a href="#PROB3"><span style="font-size: small;">Why do I have nasal congestion using PAP?</span></a></li>
<li><a href="#PROB4"><span style="font-size: small;">Why do I wake up with a dry mouth?</span></a></li>
<li><a href="#PROB5"><span style="font-size: small;">Why do I wake up with dry and red eyes?</span></a></li>
<li><a href="#PROB6"><span style="font-size: small;">Why is air leaking from my mask?</span></a></li>
<li><a href="#PROB7"><span style="font-size: small;">Why am I still snoring and having breathing pauses on my PAP unit?</span></a></li>
<li><a href="#PROB8"><span style="font-size: small;">Why is the mask causing a sore on the bridge of my nose or face?</span></a></li>
<li><a href="#PROB9"><span style="font-size: small;">Why is the mask is causing a rash on my face?</span></a></li>
</ul>
<p>&nbsp;</p>
<p><span id="PROB1" style="font-size: small;"><span style="text-decoration: underline;">I have trouble breathing with so much air coming in through the mask</span> &ndash; This&nbsp;is a common problem when people first start PAP treatment. &nbsp;Try these tips:</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">Begin using PAP for short periods of time during the day. </span></li>
<li><span style="font-size: small;">Use it while you are watching TV or reading. This can help your body begin to adjust to the air pressure. </span></li>
<li><span style="font-size: small;">You may need to start by using it for only a few minutes at a time. Gradually increase the length of your sessions. </span></li>
<li><span style="font-size: small;">Focus on breathing at a nice, slow pace.</span></li>
</ul>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="PROB2" style="font-size: small;"><span style="text-decoration: underline;">Why is the air delivered through the mask too cold</span>? &ndash; If the air delivered through the mask is too cold, try placing the tubing under the bedclothes (as body heat will increase the temperature of the air passing through the tubing). Alternatively, increase the temperature of the PAP humidifier. This will add warmth and humidity to the air you breathe.</span></p>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="PROB3" style="font-size: small;"><span style="text-decoration: underline;">Why do I have nasal congestion using PAP</span>? &ndash; Nasal stuffiness is the most common side effect of CPAP therapy. You may also have a runny, itchy or dry nose, or nosebleeds. Nasal congestion is more common in the winter and during allergy season. It is not always a result of PAP. Talk to your doctor if your congestion is severe, or if you have nasal, sinus or ear pain. Try the following to reduce your nasal problems:</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">Use the PAP humidifier. The moisture that it adds to the forced air will reduce your nasal symptoms. You will need to make sure that you keep your&nbsp;humidifier clean to prevent infections. As the temperature setting of the humidifier is increased, more moisture will be added to the air.</span></li>
<li><span style="font-size: small;">Try&nbsp;using a saline nasal spray. This solution is simply a mixture of salt and water. You can find it on the shelf at your local drugstore. Apply a few&nbsp;sprays in each nostril before using your PAP.</span></li>
<li><span style="font-size: small;">Try&nbsp;a nasal medication. This can be either a spray or a tablet that you take&nbsp;by mouth. Some types require that you have a prescription from your&nbsp;doctor. Never use a spray that you buy without a prescription (over the&nbsp;counter) for more than a few days. Ask your doctor to recommend the right medication for you.</span></li>
</ul>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="PROB4" style="font-size: small;"><span style="text-decoration: underline;">Why do I wake up with a dry mouth</span>? &ndash; Dry mouth&nbsp;may be due to&nbsp;your mouth opening while you sleep. If you use a nasal mask, air can rush out of your mouth if it opens during sleep. Breathing through your mouth bypasses any humidification you may be using. Some medications can cause dry mouth but in this case the symptom is usually present throughout the day.</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">First, be sure the mask is not leaking. If it is six to nine months old and leaking, it needs to be replaced. If it is new and leaking, we can help you get a better size mask.</span></li>
<li><span style="font-size: small;">Try using a heated humidifier to moisten and warm the air blowing into your throat.</span></li>
<li><span style="font-size: small;">Try using a full face mask that covers your nose and mouth.</span></li>
<li><span style="font-size: small;">Use a chin strap with your&nbsp;nasal mask to keep your mouth closed while you sleep.</span></li>
</ul>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="PROB5" style="font-size: small;"><span style="text-decoration: underline;">Why do I wake up with dry and red eyes</span>? &ndash; Air leaking from the mask at the bridge of the nose and over the eyes during sleep will cause the eyes to dry out and become red. The most common reason for air leaking at the nose bridge is that the mask is either too big or too long for the nose.</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">Adjust the straps and headgear&nbsp;on your mask to obtain a better fit. A&nbsp;mask that has a forehead adjustment may help in getting a good fit.</span></li>
<li><span style="font-size: small;">Do not&nbsp;tighten the headgear too much to eliminate the air leak. Pressure from a&nbsp;mask that is too tight will cause bruises and even open sores if applied long enough.</span></li>
<li><span style="font-size: small;">If you have had your mask for a&nbsp;while, check to make sure that it is not worn or torn.</span></li>
<li><span style="font-size: small;">You may need to try a different&nbsp;size of your current mask or a different type of mask.</span></li>
<li><span style="font-size: small;">Contact your sleep specialist&nbsp;about trying another mask.</span></li>
</ul>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="PROB6" style="font-size: small;"><span style="text-decoration: underline;">Why is air leaking from my mask</span>? &ndash; Air leaks are usually caused by masks that are too big or too old or just the wrong style. &nbsp;As the mask cushion ages, it deteriorates and becomes too soft to hold a seal. Leaks around the mask may also occur due to facial hair. The mask cushion is unable to make a good seal when it rests over a beard or mustache.&nbsp;</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">Adjust the straps and headgear on your mask to obtain a better fit.</span></li>
<li><span style="font-size: small;">Do not tighten the headgear too much to eliminate the air leak. Pressure from a mask that is too tight will cause bruises and even open sores if applied long enough.</span></li>
</ul>
<ul>
<li><span style="font-size: small;">If you have had your mask for a&nbsp;while, check to make sure that it is not worn or torn.</span></li>
<li><span style="font-size: small;">You may need to try a different&nbsp;size of your current mask or a different type of mask. Nasal pillow masks&nbsp;can sometimes be used to avoid facial hair.</span></li>
<li><span style="font-size: small;">Contact&nbsp;your sleep specialist about trying another mask.</span></li>
</ul>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="PROB7" style="font-size: small;"><span style="text-decoration: underline;">Why am I still snoring and having breathing pauses on my PAP unit</span>? &ndash; These problems are signs that your PAP unit&rsquo;s settings are not correct.&nbsp; You should contact your sleep specialist.</span></p>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="PROB8" style="font-size: small;"><span style="text-decoration: underline;">Why is the mask causing a sore on the bridge of my nose or face</span>? &ndash; Sores at the bridge of the nose or face are usually due to tightening the headgear straps too much. The pressure will create soreness, then a bruise, and may eventually create an open sore if left untreated.&nbsp;</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">If you have an open sore, you should stop wearing the mask until the sore heals. Contact your sleep specialist to see if there is another mask you can use.</span></li>
<li><span style="font-size: small;">Check to see if the mask is in good condition. If it is more than six months old, try replacing it.</span></li>
<li><span style="font-size: small;">Adjust the straps and headgear so you mask does not put so much pressure on the bridge of your nose.</span></li>
<li><span style="font-size: small;">Contact your sleep specialist if your mask continues to irritate your skin or cause soreness. If your mask is cause soreness of the bridge of your nose, consider switching to a nasal pillow mask.</span></li>
</ul>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="PROB9" style="font-size: small;"><span style="text-decoration: underline;">Why is the mask is causing a rash on my face</span>? &ndash; Most masks now have improved cushioning for a more comfortable fit. If your mask does cause soreness, try these tips:&nbsp;</span></p>
<p>&nbsp;</p>
<ul>
<li><span style="font-size: small;">Loosen your straps slightly so that they are not too tight. Make sure that your mask is still snug enough to prevent air leaks, but not so tight that it hurts your skin.</span></li>
<li><span style="font-size: small;">Contact your sleep specialist about switching to another type of mask</span></li>
<li><span style="font-size: small;">Contact your sleep specialist if your mask continues to irritate your skin or cause soreness.</span></li>
</ul>   1   1   05-04-2013 20:36:04   1050   12-04-2013 15:56:57   1050   0   120   How to Take Care of PAP Unit   970е  <h2 align="center"><strong>REVAMP &ndash; Remote Veteran Apnea Management Portal</strong></h2>
<p style="text-align: center;"><em>&nbsp;</em><em style="font-size: small;">Your personalized self-management program</em></p>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span style="font-size: small;">The following websites have information about sleep apnea:</span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">American Sleep Apnea Association &nbsp;&nbsp;</span></p>
<p><span style="font-size: small;"><a href="http://yoursleep.aasmnet.org/Disorder.aspx?id=7" target="_blank">http://yoursleep.aasmnet.org/Disorder.aspx?id=7</a></span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">American Academy of Sleep Medicine</span></p>
<p><span style="font-size: small;"><a href="http://www.sleepeducation.com/sleep-disorders/sleep-apnea/overview-facts" target="_blank">http://www.sleepeducation.com/sleep-disorders/sleep-apnea/overview-facts</a></span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;">You can find additional information at the following PAP manufacturer websites:</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DeVilbiss Healthcare&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.devlbisshealthcare.com/" target="_blank">http://www.devilbisshealthcare.com/</a></span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fisher &amp; Paykel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://fphcare.com/ose/html" target="_blank">http://fphcare.com/ose/html</a></span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Philips Respironics&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.sleepapnea.com/">http://www.sleepapnea.com/</a>&nbsp;</span></p>
<p><span style="font-size: small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ResMed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.myresmed.come/MyResMedUS/pag" target="_blank">http://www.myresmed.come/MyResMedUS/pag</a></span></p>
<p>&nbsp;</p>
<p><span style="font-size: small;"><strong>HOW TO TAKE CARE OF YOUR PAP UNIT</strong></span></p>
<ul>
<li><a href="#CarePAP1"><span style="font-size: small;">How do I clean my mask, headgear, and tubing?&nbsp;</span></a></li>
<li><a href="#CarePAP2"><span style="font-size: small;">How often should I replace my mask, tubing and filters?</span></a></li>
<li><a href="#CarePAP3"><span style="font-size: small;">How do I clean my water chamber?</span></a></li>
<li><a href="#CarePAP4"><span style="font-size: small;">Can I use my treatment if I have a cold?</span></a></li>
<li><a href="#CarePAP5"><span style="font-size: small;">Will the pressure settings on my device ever need changing?</span></a></li>
</ul>
<p>&nbsp;</p>
<p><span id="CarePAP1" style="font-size: small;"><span style="text-decoration: underline;">How do I clean my mask, headgear, and tubing</span>? &nbsp;</span></p>
<ul>
<li><span style="font-size: small;">Clean your <span style="text-decoration: underline;">mask</span> every other day in a solution of mild liquid dish soap and water that is not too sudsy. Rinse it thoroughly, and allow the mask to air dry.</span></li>
<li><span style="font-size: small;">Clean your <span style="text-decoration: underline;">hoses and tubing</span> every week in a mild liquid dish soap and distilled water solution. Rinse them thoroughly, and allow them to air dry.</span></li>
<li><span style="font-size: small;">Hand wash your <span style="text-decoration: underline;">headgear</span> in laundry detergent once a month or as needed. Rinse it well, and allow it to line dry.</span></li>
</ul>
<p><span style="font-size: small;">&nbsp;</span></p>
<p><span id="CarePAP2" style="font-size: small;"><span style="text-decoration: underline;">How often should I replace my mask, tubing and filters</span>? </span></p>
<p><span id="CarePAP2" style="font-size: small;">You should replace your mask, tubing and filters on a regular basis. This will help ensure that your PAP therapy remains safe and effective. These are some general guidelines on what to replace and how often:</span></p>
<ul>
<li><span style="font-size: small;">Tubing: every 6 months</span></li>
<li><span style="font-size: small;">Mask with head straps: every 6 months</span></li>
<li><span style="font-size: small;">Disposable filters: every month</span></li>
</ul>
<ul>
<li><span style="font-size: small;">The foam filter can be cleaned in water and left to air dry.</span></li>
<li><span style="font-size: small;">The paper filter should be thrown out and replaced with a new one. Do not try to clean and reuse a paper filter.</span></li>
</ul>
<p><span style="font-size: small;">To order these supplies, contact your sleep specialist either by sending a message by Secure Messaging on the MyHealth<em>e</em>Vet website or by Messaging on the REVAMP website.</span></p>
<p>&nbsp;</p>
<p><span id="CarePAP3" style="font-size: small;"><span style="text-decoration: underline;">How do I clean my water chamber</span>?</span></p>
<ul>
<li><span style="font-size: small;">To prevent the growth of bacteria, empty the water chamber every morning. Do not leave standing water in the chamber when the machine is not in use.</span></li>
<li><span style="font-size: small;">The water chamber should be cleaned weekly. If you are using distilled waterin the chamber, you can clean it with a mild detergent, rinse and air dry. If you are using tap water or bottled water, you may want to use a vinegar:water solution in the 1:10 mixture and let this stand for several hours to clean the salt residue that can build up on the walls of the chamber. Rinse the chamber thoroughly with water before reuse.</span></li>
</ul>
<p class="even2">&nbsp;</p>
<p class="even2"><span id="CarePAP4" style="font-size: small;"><span style="text-decoration: underline;">Can I use my treatment if I have a cold</span>? </span></p>
<p class="even2"><span style="font-size: small;" title="CarePAP4">If you experience an infection of the upper respiratory tract, middle ear, or sinus, you should consult your physician before continuing PAP treatment. You may be advised to discontinue using PAP until the infection has cleared. If you continue with treatment during the infection, it is advisable to wash your mask and tubing more often. A full face mask may be good alternative at this time as it covers both your nose and mouth so you continue to receive effective therapy.</span></p>
<p>&nbsp;</p>
<p><span id="CarePAP5" style="font-size: small;"><span style="text-decoration: underline;">Will the pressure settings on my device ever need changing</span>? </span></p>
<p><span id="CarePAP5" style="font-size: small;">If you are using an automatically adjusting PAP unit (APAP), your unit will automatically adjust the pressure during sleep to control your breathing problem. If you are using continuous (CPAP) or bi-level (BiPAP) therapy, the pressure will remain set at levels that suit your requirements. Sometimes, there is a need to adjustment the pressure settings, for example if you lose or gain weight.</span></p>
<p><span style="font-size: small;"><strong>&nbsp;</strong></span></p>   1   1   05-04-2013 10:54:09   970   05-04-2013 14:00:31   970   0       Т  Т   ЈK     2.0   mid3019.aspx   32768   0   1   Hardcoded Patient Intakes   1   portal_start.aspx   32768   0   1€€€€   1   case_management_ajax.aspx€€€€   0   1€€€€   1   portal_revamp.aspx   32768   0   1€€€€   1   revamp_report.xsl€€€€   0   1€€€€   1   pat_profile.aspx   32768   0   1€€€€   1   reset_password.aspx€€€€   0   1€€€€   0   portal_lookup.aspx€€€€   131072   1€€€€   1   message_center.aspx€€€€   0   1€€€€   1   education.aspx   32768   0   1€€€€   1   pat_demographics.aspx€€€€   4096   1€€€€   1   pat_encounter.aspx€€€€   47   1€€€€   1   pat_module_assignment.aspx€€€€   4143   1€€€€   1   pat_new_encounter.aspx€€€€   4143   1€€€€   1   pat_portal_account.aspx€€€€   131072   1€€€€   1   pat_summary.aspx€€€€   47   1€€€€   1   referral_clinic_management.aspx€€€€   32768   1€€€€   1   rpt_assessments.aspx€€€€   47   1€€€€   1   system_settings.aspx€€€€   131072   1€€€€   1   template_mgmt.aspx€€€€   32768   1€€€€   1   user_admin.aspx€€€€   131072   1€€€€   1   logoff.aspx€€€€   0   1€€€€   0   revamp_report.aspx€€€€   33554432   1   Revamp_Report   1   patient_assessment.aspx€€€€   0   1€€€€   1   patient_home.aspx€€€€   0   1€€€€   1   fx_logoff.aspx€€€€   0   1€€€€   0   error_database.aspx€€€€   0   1€€€€   0   default.aspx€€€€   0   1€€€€   0   event_management.aspx   0   0   1€€€€   1   search.aspx€€€€   0   1€€€€   1   mid1000.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid2000.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid2004.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3002.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3004.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3008.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3010.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3014.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3016.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3018.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3020.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3024.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3026.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3028.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3030.aspx   32768   0   1   Hardcoded Patient Intakes   1   mid3012.aspx   32768   0   1   Hardcoded Patient Intakes   1   revamp.aspx€€€€   0   1€€€€   1   change_password.aspx€€€€   0   1€€€€   1   cms_page_edit.aspx€€€€   14680064   1€€€€   1   cms_menu_edit.aspx€€€€   16777216   1€€€€   1   cms_contents.aspx€€€€   0   1€€€€   1   template1.htm€€€€   0   1   Template for CMS   1	   blank.htm€€€€   0   1   CMS support   1   template.htm€€€€   0   1   CMS support   1       О   О    z      3.0   123456   ABCDEF   CHANGE_ON_INSTALL   DATABASE	   FORGOTTEN   LETMEIN   MANAGER   ORACLE   PASSWORD   PENTEST   QWERTY   WELCOME       c   c    ы      4.0   456191   0   1   4096   0   8   274943   0   2   131072   0   16   49152   0   32       ш   ш    Д8      6.0   192.168.1.130   drmonitoring@intellicacorp.com   25   https://192.168.1.40/   craig.rebo@intellicacorp.com   1   1   1   2   192.168.1.245   81    0A4E8362EA06FD0DF59C3E3CC1DFE30A    0A4E8362EA06FD0DF59C3E3CC1DFE30A   C:\Windows\Temp       3  3   зя     7.0   983H   130211195077097026168189108209076195248040192197040225160190090171024228
  FRONT.DESK136096198228179118189014240108148223068209177130233128171013234184206077248078218168008009250163034145175109071219000084015189023213155132097220085129063159115198225148209029244072207022183227214042031118137133055221078096159030141231222149112081032081156204077044222005058221019020201067048110179019012048177046243072194139064206093251051140058151085182080176168048094034004102175009163198144218107132159197120093018014092181018140082211183163230156210216133162194091233103172189000031188200105012121125052233031013000219029023154106000158101013186151027000150243033069018012254209111160095077128060012032078089151249217007137032186045212122207081008019034180108173077246078122021214156016090228121149130082204100158208107108091178098068106090003112153222074079060146   0   0   23-11-2012 13:03:40   23-11-2012 13:03:40   1020   0   20-12-2012 00:00:00   23-11-2012 13:05:41   15   0`   150016239218081153165181182142188240132120156086087047112123169216019157008026143118200112074094€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   192.168.1.143   0€€€€€€€€€€€€€€€€€€€€€€€€€€€€   977`   150191229052195134135206074083078067243152071123205016110237157154230073122158050106203038108004€€€€   0   0   20-11-2012 07:52:37   12-03-2014 17:27:49   0   0   12-03-2014 17:27:49   12-03-2014 17:27:49   15   0H   090251036099241232094051105125116247156121145089082152154089092154144126€€€€€€€€€€€€€€€€H   177152053054078144197210003198155102115117197049174098124221150031014197x   248002142087253164106254115246021108077040177032088073237254132184026192106140067117055159098068044167155065096223139098€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   29-11-2012 08:20:11   ::1   192.168.1.143   0€€€€€€€€€€€€€€€€€€€€€€€€€€€€       7   7    ∆      8.0   977   131072   0   16   983   192639   0   1       XЎ  XЎ   g°M     9.0   16809   2180±  Finding time for physical activity can be a challenge.  Make taking care of yourself a priority.  See these links <a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Barriers to Physical Activity</a>, <a href="education/P11_LackOfTimeForExercise.pdf" target="_blank">Lack of Time for Exercise</a>, and <a href="education/B30_NotEnoughTime.pdf" target="_blank">Not Enough Time</a> for tips on how to make it happen.   1Р  Barriers to Physical Activity
<a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Lack of Time for Exercise
<a href="education/P11_LackOfTimeForExercise.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Not Enough Time
<a href="education/B30_NotEnoughTime.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaTimePat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   21879   2180M   Patient may be overweight.  Their BMI is %.1f.  Recommend further assessment.   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMIOverweightFull€€€€   0€€€€€€€€   1€€€€   3M   Patient may be overweight.  Their BMI is %.2f.  Recommend further assessment.€€€€   vHasHeight,vHeight,rid3,rid2   21861   2180   BMI= %.1f, overweight   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMIOverweightDoc€€€€   0€€€€€€€€   1€€€€   2   BMI= %.2f, overweight€€€€   vHasHeight,vHeight,rid3,rid2   14609   2180   You are used to eating a certain way.  These eating habits may be preventing you from managing your weight.  However, habits can be changed! You†CAN†do it! See this link: <a href="education/B01_OldHabitsDieHard.pdf" target="_blank">Old Habits Die Hard</a>.   1|   Old Habits Die Hard
<a href="education/B01_OldHabitsDieHard.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrFoodHabitPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   14809   2180)  Being with others who are overeating may be difficult when you are trying to eat in a healthy way.  See these links <a href="education/B24_ControlYourself.pdf" target="_blank">Control Yourself!</a> and <a href="education/B34_EatingWithOthers.pdf" target="_blank">Eating With Others</a> for ideas.
   1ц   Control Yourself!
<a href="education/B24_ControlYourself.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Eating With Others
<a href="education/B34_EatingWithOthers.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrOvereatPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   14909   2180…  Sometimes it difficult to know where to start when considering making changes to your eating habits.  We can help you to separate fact from fiction about nutrition and to make reasonable changes to your eating.  These links <a href="education/S04_ChangingMyEatingHabits.pdf" target="_blank">Changing my Eating Habits</a> and <a href="education/S06_MakingHealthyFoodChoices.pdf" target="_blank">Making Healthy Food Choices</a> can help you start on your way.   1  Changing my Eating Habits
<a href="education/S04_ChangingMyEatingHabits.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Making Healthy Food Choices
<a href="education/S06_MakingHealthyFoodChoices.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrDKPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15009   2180-  It would be better for you to eat more frequently.  A healthy eating pattern for weight loss is to eat 5 - 6†small†healthy meals or snacks each day, avoiding high calorie foods.  See this link <a href="education/N22_BeAFrequentFeeder.pdf" target="_blank">Be A Frequent Feeder</a> for more information.   1~   Be A Frequent Feeder
<a href="education/N22_BeAFrequentFeeder.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgEatFreq2Pat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15109   2180К   You eat relatively frequently, and that is good as long as you eat†small†healthy meals or snacks.  Be careful to limit high calorie foods.   1€€€€€€€€€€€€   0   0   0   flgEatFreq4Pat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15209   2180   You eat frequently, and that is good as long as you eat†small†healthy meals or snacks.  Be careful to limit high calorie foods.   1€€€€€€€€€€€€   0   0   0   flgEatFreq5Pat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   14709   2180  You said that stress or depression are keeping you from changing your eating habits.  You may be eating in response to your emotions.  Eating is an extremely common way to deal with unpleasant emotions.  Many people try to Уfeed their feelingsФ for comfort.  Treatment for strong emotions that are bothering you is available at the VA, and you are urged to seek treatment should you desire to do so.  These links <a href="education/B12_EmotionsAndYourWeight.pdf" target="_blank">Emotions and Your Weight</a>, <a href="education/B28_DealingWithStressAnxietyAndDepression.pdf" target="_blank">Stress, Anxiety, and Depression</a> and <a href="education/B29_TakeControlOfYourThoughtsFeelingsAndBehavior.pdf" target="_blank">Take Control of Your Thoughts, Feelings and Behavior</a> may help.
   1а  Emotions and Your Weight
<a href="education/B12_EmotionsAndYourWeight.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Stress, Anxiety, and Depression
<a href="education/B28_DealingWithStressAnxietyAndDepression.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Take Control of Your Thoughts, Feelings and Behavior
<a href="education/B29_TakeControlOfYourThoughtsFeelingsAndBehavior.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrFoodStressPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15309   2180Ѕ  Eating restaurant or take-out food can make controlling weight hard due to the large portions of high calorie food.  People will often eat the entire amount they buy.  Healthy eating is possible with careful attention to food choices and smaller portions.  See these links: <a href="education/N25_RestaurantTips.pdf" target="_blank">Restaurant Tips</a> and <a href="education/N07_FastFoodAlternatives.pdf" target="_blank">Fast Food Alternatives</a>.   1ы   Restaurant Tips
<a href="education/N25_RestaurantTips.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Fast Food Alternatives
<a href="education/N07_FastFoodAlternatives.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgEatOutFreqPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15409   2180\  You may be taking in extra calories by drinking sugar-sweetened soda, tea, juice, or other sugary drinks.  Try switching to water or other sugar-free drinks.  Sugar-free drinks may taste slightly different at first, but you will get used to the new taste quickly.  Click on these handouts  Liquid Calories and  Water-Drink Up for more information.
   1л   Liquid Calories
<a href="education/N17_LiquidCalories.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Water Drink Up
<a href="education/N31_WaterDrinkUp.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0	   flgSSBPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15509   2180  Eating too quickly may result in eating too much.  Everyone can benefit from eating slowly and truly tasting and enjoying what they eat.  If you eat too quickly, this link <a href="education/B26_SlowDownYouEatTooFast.pdf" target="_blank">Slow Down...You Eat Too Fast</a> may help.
   1К   Slow Down...You Eat Too Fast
<a href="education/B26_SlowDownYouEatTooFast.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgEatFastPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15709   2180g  You indicated that money may get in your way of being more physically active.  Do not despair! You donТt need to belong to a gym or have expensive clothes or equipment.  There are plenty of activities that you can do in and around your home.  See this link <a href="education/P07_ExerciseOnABudget.pdf" target="_blank">Exercise on a Budget</a> for some ideas.   1~   Exercise on a Budget
<a href="education/P07_ExerciseOnABudget.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaPoorPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15809   2180ќ   Safety is a common concern for people trying to become more active.  This link <a href="education/P14_PhysicalActivityAndYourSafety.pdf" target="_blank">Click here for the booklet.</a> has some suggestions.   1Ч   Physical Activity and Your Safety
<a href="education/P14_PhysicalActivityAndYourSafety.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaSafePat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15909   2180l  If you donТt have a convenient place to walk or exercise that doesnТt mean you canТt be active.  You can! See these links <a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Barriers to Physical Activity</a> and <a href="education/P05_IndoorActivities.pdf" target="_blank">Indoor Activities</a> for ideas.  Where there is a will, there is a way!   1  Barriers to Physical Activity
<a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Indoor Activities
<a href="education/P05_IndoorActivities.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaConvPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   16009   2180э   Lack of transportation does not have to be a barrier to being active.  Consider walking in the neighborhood, using an exercise video tape indoors, doing chair exercises or blazing your own walking trail.  Seek additional ideas from your healthcare team.   1€€€€€€€€€€€€   0   0   0   flgBarrPaTransPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   16109   2180!  You indicated that lack of support from others may get in the way of being physically active.  See this link <a href="education/B27_InvolvingOthersInYourWeightControlProgram.pdf" target="_blank">Involving Others in Your Weight Control Program</a> for ideas on getting the support you need.   1±   Involving Others in Your Weight Control Program
<a href="education/B27_InvolvingOthersInYourWeightControlProgram.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaEncPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   16309   2180-  You donТt appear to like exercise...thatТs okay.  There are plenty of ways to be more physically active without doing what most people consider Уworking-outФ or УexercisingФ.  You can move more with simple changes to your daily activities.  See these links <a href="education/P23_ActivitiesToFitYourLifestyle.pdf" target="_blank">Activities to Fit Your Lifestyle</a>, <a href="education/P06_ExerciseCanBeFun.pdf" target="_blank">Exercise Can Be Fun!</a>, and <a href="education/P26_PhysicalActivityPyramid.pdf" target="_blank">Types of Physical Activity</a>   1†  Activities to Fit Your Lifestyle
<a href="education/P23_ActivitiesToFitYourLifestyle.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Exercise Can Be Fun!
<a href="education/P06_ExerciseCanBeFun.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Types of Physical Activity
<a href="education/P26_PhysicalActivityPyramid.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaExPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   16509   2180  If pain limits your ability to exercise, you may want to discuss this with your primary care provider or†MOVE!†healthcare team.  Regular physical activity will reduce some types of pain.  This link <a href="education/B10_CopingWithPain.pdf" target="_blank">Coping with Pain</a> may help.   1w   Coping with Pain
<a href="education/B10_CopingWithPain.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaPainPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12509   2180h  Problems of an emotional nature often lead to weight gain.  There are better ways of dealing with negative thoughts and feelings.  If you are stressed most of the time, ask your medical provider about available treatments.  These links <a href="education/B28_DealingWithStressAnxietyAndDepression.pdf" target="_blank">Stress, Anxiety, and Depression</a>, <a href="education/B12_EmotionsAndYourWeight.pdf" target="_blank">Emotions and Your Weight</a> and <a href="education/B29_TakeControlOfYourThoughtsFeelingsAndBehavior.pdf" target="_blank">Take Control of Your Thoughts, Feelings and Behavior</a> may be helpful.
   1а  Stress, Anxiety, and Depression
<a href="education/B28_DealingWithStressAnxietyAndDepression.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Emotions and Your Weight
<a href="education/B12_EmotionsAndYourWeight.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Take Control of Your Thoughts, Feelings and Behavior
<a href="education/B29_TakeControlOfYourThoughtsFeelingsAndBehavior.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwEmotionPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   15609   2180≤  Finding time for physical activity can be a challenge.  Make taking care of yourself a priority.  See these links <a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Barriers to Physical Activity</a>, <a href="education/P11_LackOfTimeForExercise.pdf" target="_blank">Lack of Time for Exercise</a>, and <a href="education/B30_NotEnoughTime.pdf" target="_blank">Not Enough Time</a> for tips on how to make it happen.
   1Р  Barriers to Physical Activity
<a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Lack of Time for Exercise
<a href="education/P11_LackOfTimeForExercise.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Not Enough Time
<a href="education/B30_NotEnoughTime.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaTimePat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   16209   2180Й  For some people, stress and depression can get in the way of being more physically active.  But, physical activity can help you better cope with stress and depression.  You may find some good suggestions in these links <a href="education/B28_DealingWithStressAnxietyAndDepression.pdf" target="_blank">Stress, Anxiety, and Depression</a>, <a href="education/B12_EmotionsAndYourWeight.pdf" target="_blank">Emotions and Your Weight</a> and <a href="education/B29_TakeControlOfYourThoughtsFeelingsAndBehavior.pdf" target="_blank">Take Control of Your Thoughts, Feelings and Behavior</a>.  Please know that help for stress and depression is available.


   1а  Stress, Anxiety, and Depression
<a href="education/B28_DealingWithStressAnxietyAndDepression.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Emotions and Your Weight
<a href="education/B12_EmotionsAndYourWeight.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Take Control of Your Thoughts, Feelings and Behavior
<a href="education/B29_TakeControlOfYourThoughtsFeelingsAndBehavior.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaStressPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   21860   2180|  A Body Mass Index (BMI) was calculated using your reported height and weight.  Your BMI is %.1f and indicates you are overweight, but check with your healthcare team who can assess you further and provide assistance.  Your weight places you at risk for cardiovascular disease, diabetes, cancer, high blood pressure, and osteoarthritis.  You may want to set a goal to lose weight.    1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMIObesePat€€€€   0€€€€€€€€   1€€€€   1ъ  Un нndice de masa corporal (IMC) o Body Mass Index (BMI), por sus siglas en inglйs,  fue calculado usando datos que usted proveyу acerca de su peso y altura.  Su BMI es %.2f  que indica que usted tiene sobrepeso, pero consulte con su equipo de cuidado de la salud para revisar  este dato y obtener ayuda adecuada.  Su peso lo coloca en una situacion de riesgo de enfermedad cardiaca, diabetes, cбncer, presiуn arterial elevada y artritis.  Serнa beneficioso para usted el establecer metas para perder peso.€€€€   vHasHeight,vHeight,rid3,rid2   14509   2180ф   Being hungry all the time is an issue for you.  It is hard not to eat when you are feeling hungry.  There are ways to deal with this.  See this link <a href="education/B15_HungryAllTheTime.pdf" target="_blank">Hungry All the Time?</a> for tips.   1|   Hungry All the Time?
<a href="education/B15_HungryAllTheTime.pdf" target="_blank">Click here for the booklet.</a>
<br/><br/>€€€€€€€€   0   0   0   flgBarrHungryPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   10409   2180O  You indicated that you have been overweight since you were a child.  It is possible that you may have inherited a tendency to gain weight easily or perhaps you may have been encouraged to overeat, and/or be physically inactive.  Either way, donТt be discouraged.  There is a great deal you can do to reach and maintain a healthy weight   1€€€€€€€€€€€€   0   0   0   flgOwKidPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   21862   2180®  A Body Mass Index (BMI) was calculated using your reported height and weight.  Your BMI is %.1f and indicates you may be overweight, but check with your healthcare team who can assess your status and provide assistance.  Your weight may place you at risk for or worsen cardiovascular disease, diabetes, cancer, high blood pressure, and osteoarthritis.  You may want to set a goal to lose weight or gain no additional weight.   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMIOverweightPat€€€€   0€€€€€€€€   1€€€€   1э  Usted puede estar con sobrepeso pero consulte con su equipo de cuidado de la salud para revisar este dato y obtener ayuda adecuada.  Su peso puede ponerlo en riesgo de / o empeorar las enfermedades del corazуn, diabetes, cбncer, presiуn arterial elevada y artritis.  Seria beneficioso para usted el establecer metas para perder peso.  Un нndice de masa corporal (IMC) o Body Mass Index (BMI), por sus siglas en inglйs,  fue calculado usando datos que usted proveyу acerca de su peso y altura.  Su BMI es %.2f.€€€€   vHasHeight,vHeight,rid3,rid2   10509   21807  Most people gain weight as they age, because they are less physically active and eat more.  Gradual changes in physical activity and eating habits can change this pattern.  Click on this link <a href="education/S01_TheBasicsOfWeightControl.pdf" target="_blank">Basics of Weight Control</a> for more information.   1Й   Basics of Weight Control
<a href="education/S01_TheBasicsOfWeightControl.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwAgingPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   10609   2180∞  You indicated that you have gained much of your excess weight in the last few years.  This could happen for a number of reasons.  A stressful event (quitting smoking, job change, retirement, injury, loss of someone close to you, etc.) sometimes causes people to eat unhealthy or be less active.  Finding better ways to deal with these stressful situations would be helpful.  Talk to your†healthcare team if you would like some help.   1€€€€€€€€€€€€   0   0   0   flgOwRecentPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   10709   2180  You indicated that you have gained and lost weight over and over again.  We encourage you to make changes in your eating and physical activity that you can maintain.  This link <a href="education/M01_SkipTheFadDiet.pdf" target="_blank">Skip The Fad Diet</a> can help.   1x   Skip The Fad Diet
<a href="education/M01_SkipTheFadDiet.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwYoyoPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   10809   2180І   Genetics and family habits may have played a role with your weight.  We can give you tools and support to help you reach and maintain a healthy weight.  You can do it!   1€€€€€€€€€€€€   0   0   0   flgFamOwPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   21853   2180N   Patient may be underweight.  Their BMI is %.1f.  Recommend further evaluation.   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMILoFull€€€€   0€€€€€€€€   1€€€€   3N   Patient may be underweight.  Their BMI is %.2f.  Recommend further evaluation.€€€€   vHasHeight,vHeight,rid3,rid2   21854   2180ь   A Body Mass Index (BMI) was calculated using your reported height and weight.  Your BMI is %.1f and indicates you may be underweight, but check with your healthcare team who can assess your status and provide assistance in helping you with your weight.   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMILoPat€€€€   0€€€€€€€€   1€€€€   1o  Su нndice de masa corporal (IMC) o Body Mass Index (BMI), por sus siglas en inglйs,  fue calculado usando datos que usted proveyу acerca de su peso y altura.   Su BMI es de  %.2f e indica que usted estб, aparentemente, por debajo de su peso ideal.  Consulte con su equipo de cuidado de la salud quienes le proporcionaran la ayuda adecuada para el cuidado de su peso. €€€€   vHasHeight,vHeight,rid3,rid2   21863   2180   BMI= %.1f, underweight   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMILoDoc€€€€   0€€€€€€€€   1€€€€   2   BMI= %.2f, underweight€€€€   vHasHeight,vHeight,rid3,rid2   20   2000   flg2000Complete   0€€€€€€€€€€€€   0   0   99   flg2000Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   30   2002   flg2002Complete   0€€€€€€€€€€€€   0   0   99   flg2002Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   40   2004   flg2004Complete   0€€€€€€€€€€€€   0   0   99   flg2004Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   50   3002   flg3002Complete   0€€€€€€€€€€€€   0   0   99   flg3002Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   60   3004   flg3004Complete   0€€€€€€€€€€€€   0   0   99   flg3004Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   70   3006   flg3006Complete   0€€€€€€€€€€€€   0   0   99   flg3006Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   80   3008   flg3008Complete   0€€€€€€€€€€€€   0   0   99   flg3008Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   90   3010   flg3010Complete   0€€€€€€€€€€€€   0   0   99   flg3010Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   100   3012   flg3012Complete   0€€€€€€€€€€€€   0   0   99   flg3012Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   110   3014   flg3014Complete   0€€€€€€€€€€€€   0   0   99   flg3014Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   120   3016   flg3016Complete   0€€€€€€€€€€€€   0   0   99   flg3016Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   130   3018   flg3018Complete   0€€€€€€€€€€€€   0   0   99   flg3018Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   140   3020   flg3020Complete   0€€€€€€€€€€€€   0   0   99   flg3020Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   150   3024   flg3024Complete   0€€€€€€€€€€€€   0   0   99   flg3024Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   10   1000   flg1000Complete   0€€€€€€€€€€€€   0   0   99   flg1000Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   160   3026   flg3026Complete   0€€€€€€€€€€€€   0   0   99   flg3026Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   170   3028   flg3028Complete   0€€€€€€€€€€€€   0   0   99   flg3028Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   180   3030   flg3030Complete   0€€€€€€€€€€€€   0   0   99   flg3030Complete€€€€   1   0   0   1   1   0€€€€€€€€€€€€   11609   2180÷   It appears that you are ready to begin working on controlling your weight.  Super! This link <a href="education/B04_GettingReadyToLoseSomeWeight.pdf" target="_blank">Getting Ready to Lose Some Weight?</a> may help.   1Ч   Getting Ready to Lose Some Weight?
<a href="education/B04_GettingReadyToLoseSomeWeight.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgWtPrepPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11809   2180  You have been successfully working on controlling your weight for some time now.  Excellent! Keep it up! See this link <a href="education/B06_YesYouCanKeepThatWeightOff.pdf" target="_blank">Yes! You Can Keep That Weight Off!</a> We can provide support if you need it.   1Х   Yes! You Can Keep That Weight Off!
<a href="education/B06_YesYouCanKeepThatWeightOff.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgWtMaintPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12309   2180	  You indicated that you are moderately dissatisfied with the appearance of your body.  Many people focus more on their flaws than on their good features.  Focus on the positive! This link <a href="education/B08_BodyImage.pdf" target="_blank">Body Image</a> may help.   1l   Body Image
<a href="education/B08_BodyImage.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgImageMDissPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12709   2180≥   You indicated that boredom contributes to your being overweight.  This link <a href="education/B19_DealingWithBoredom.pdf" target="_blank">Dealing with Boredom</a> may be helpful.   1   Dealing with Boredom
<a href="education/B19_DealingWithBoredom.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwBorePat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12909   21808  You indicated that you eat too much.  Some people get into this habit, and it takes on a life of its own.  Good news! Habits†can†be changed.  These links <a href="education/B24_ControlYourself.pdf" target="_blank">Control Yourself</a> and <a href="education/B16_Tempted.pdf" target="_blank">Tempted</a> may help.   1б   Control Yourself
<a href="education/B24_ControlYourself.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Tempted
<a href="education/B16_Tempted.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwOvereatPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13109   2180л  You indicated that not getting enough physical activity contributes to your being overweight.  You are not alone.  Most Americans donТt get enough physical activity.  Increasing physical activity will make you feel better and can lead to weight loss.  These links <a href="education/P02_BenefitsOfRegularExercise.pdf" target="_blank">Benefits of Regular Exercise</a> and <a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Barriers to Physical Activity</a> may be helpful.   1   Benefits of Regular Exercise
<a href="education/P02_BenefitsOfRegularExercise.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Barriers to Physical Activity
<a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0
   flgOwPaPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12409   2180  You indicated that you are very dissatisfied with the appearance of your body.  Many people focus more on their flaws than on their good features.  Focus on the positive! This link <a href="education/B08_BodyImage.pdf" target="_blank">Body Image</a> may help.   1l   Body Image
<a href="education/B08_BodyImage.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgImageVDissPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13509   2180  You indicated that a love of eating contributes to your being overweight.  This is understandable as eating is pleasurable.  However, going overboard with eating is not healthy.  See this link <a href="education/B21_Pleasure.pdf" target="_blank">Pleasure</a> for advice.   1i   Pleasure
<a href="education/B21_Pleasure.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwLovefoodPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13809   2180  Experiencing an illness or injury often results in being less active, and this can lead to weight gain.  Physical activity almost always helps improve your health.  Refer to this link <a href="education/B09_CopingWithMedicalProblems.pdf" target="_blank">Coping with Medical Problems</a>.   1О   Coping with Medical Problems
<a href="education/B09_CopingWithMedicalProblems.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwIllPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   14009   2180  Eating food too often from restaurants, fast food places, convenience stores, and vending machines makes managing weight difficult.  This link <a href="education/N25_RestaurantTips.pdf" target="_blank">Restaurant Tips</a> can help with making healthy food choices when eating out.   1v   Restaurant Tips
<a href="education/N25_RestaurantTips.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrOutPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   14209   21808  Junk food is everywhere and is tempting for you.  Plan ahead and have healthy foods available.  These links <a href="education/S06_MakingHealthyFoodChoices.pdf" target="_blank">Making Healthy Food Choices</a> and <a href="education/B20_LoseWeightByPlanningAhead.pdf" target="_blank">Planning Ahead</a> may help.
   1  Making Healthy Food Choices
<a href="education/S06_MakingHealthyFoodChoices.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Planning Ahead
<a href="education/B20_LoseWeightByPlanningAhead.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrJunkPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   14409   2180Ы   Money is an issue for you.  This link <a href="education/N06_EatingWellOnABudget.pdf" target="_blank">Eating Well on a Budget</a> can give you some advice.   1Г   Eating Well on a Budget
<a href="education/N06_EatingWellOnABudget.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPoorPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11409   2180  You answered that you are not considering trying to control your weight at this time.  ThatТs OK.  You need to feel ready before making such a major effort.  This link <a href="education/B02_SoYouAreNotReadyYet.pdf" target="_blank">So, YouТre Not Ready Yet?</a> may be helpful.   1Е   So, YouТre Not Ready Yet?
<a href="education/B02_SoYouAreNotReadyYet.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgWtPrePat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13209   2180-  You indicated that difficulty with self-control may contribute to your being overweight.  You†can learn to control these urges! These†handouts <a href="education/B24_ControlYourself.pdf" target="_blank">Control Yourself</a> and <a href="education/B16_Tempted.pdf" target="_blank">Tempted</a> may help.   1б   Control Yourself
<a href="education/B24_ControlYourself.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Tempted
<a href="education/B16_Tempted.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwControlPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13309   2180х   Being hungry all the time is an issue for you.  It is hard not to eat when you are feeling hungry.  There are ways to deal with this.  This link <a href="education/B15_HungryAllTheTime.pdf" target="_blank">Hungry All the Time?</a> has some tips.   1|   Hungry All the Time?
<a href="education/B15_HungryAllTheTime.pdf" target="_blank">Click here for the booklet.</a>
<br/><br/>€€€€€€€€   0   0   0   flgOwHungryPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13409   2180ё   You indicated that feeling bad about yourself contributes to your being overweight.  We can offer you support.  You may want to also look at this link <a href="education/B25_SelfEsteem.pdf" target="_blank">Self-Esteem</a>.   1n   Self-Esteem
<a href="education/B25_SelfEsteem.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwFeelbadPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13609   2180≥   People often gain weight when they stop using tobacco.  This link <a href="education/B23_QuitSmokingGainWeight.pdf" target="_blank">Quit Smoking - Gain Weight?</a> may be helpful.   1Й   Quit Smoking - Gain Weight?
<a href="education/B23_QuitSmokingGainWeight.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwTobquitPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13709   2180Е   Women naturally gain weight during pregnancy and may have trouble returning to their pre-pregnancy weight after their child is born.    1€€€€€€€€€€€€   0   0   0   flgOwPregPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13909   2180`  There are some medications that can lead to weight gain or make weight loss more difficult.  However, you can lose weight in spite of taking these medications.  Talk with your primary care provider to get more information and see this link <a href="education/M03_MedicationsCanCauseWeightGain.pdf" target="_blank">Medications Can Cause Weight Gain</a>.   1Ч   Medications Can Cause Weight Gain
<a href="education/M03_MedicationsCanCauseWeightGain.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwMedPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   14109   2180в  You indicated that your family or partner isnТt very supportive of your weight control efforts, but do not despair.  This is†your†health, and you must focus on doing it for†yourself! These links <a href="education/B31_WhatIfMyPartnerOrSpouseIsNotHelpful.pdf" target="_blank">What if My Partner or Spouse IsnТt Helpful?</a>, and <a href="education/N19_MakingAMealPlanWorkInAFamily.pdf" target="_blank">Making a Meal Plan Work in the Family</a> can help you deal with this situation.
   1C  What if My Partner or Spouse IsnТt Helpful?
<a href="education/B31_WhatIfMyPartnerOrSpouseIsNotHelpful.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Making a Meal Plan Work in the Family
<a href="education/N19_MakingAMealPlanWorkInAFamily.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPartnerPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   14309   2180C  You said you lack time to prepare healthy food.  When cooking, healthy food usually doesnТt have to take more time to prepare than unhealthy food.  See these links: <a href="education/N18_MakeItQuick.pdf" target="_blank">Make it QUICK!</a> and <a href="education/B30_NotEnoughTime.pdf" target="_blank">Not Enough Time</a>.
   1к   Make it QUICK!
<a href="education/N18_MakeItQuick.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Not Enought Time
<a href="education/B30_NotEnoughTime.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrFoodTimePat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11009   2180¶  You indicated that you can rely on family or friends for support somewhat.  It may be helpful for you to find others who will also give you support and encouragement as you work on weight control.  We can also offer you support.  This link <a href="education/B27_InvolvingOthersInYourWeightControlProgram.pdf" target="_blank">Involving Others in Your Weight Control Program</a> offers tips on getting the support you need.   1±   Involving Others in Your Weight Control Program
<a href="education/B27_InvolvingOthersInYourWeightControlProgram.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgSupportSomePat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11909   2180в   You indicated that you think you can lose 10 lbs or less in one year.  Your expectations for losing weight are very realistic.  In general, people can safely lose љ -2 pounds a week, on average, if they work at it.  Go for it!   1€€€€€€€€€€€€   0   0   0   flgLose10Pat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   16609   2180  You indicated the following may get in the way of you being able to change your physical activity habits: %_SQL_TEXT.  Your†healthcare team can provide help.  These links <a href="education/B09_CopingWithMedicalProblems.pdf" target="_blank">Coping with Medical Problems</a>, <a href="education/P21_ActivityLimitationsForCertainMedicalConditions.pdf" target="_blank">Activity Limitations for Certain Medical Conditions</a>, and <a href="education/P22_IncreasingPhysicalActivityForVeteransWithPhysicalOrMedicalLimitations.pdf" target="_blank">Increasing Physical Activity with Physical and Medical Limitations</a> also have some information.   1,  Coping with Medical Problems
<a href="education/B09_CopingWithMedicalProblems.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Activity Limitations for Certain Medical Conditions
<a href="education/P21_ActivityLimitationsForCertainMedicalConditions.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Increasing Physical Activity with Physical and Medical Limitations
<a href="education/P22_IncreasingPhysicalActivityForVeteransWithPhysicalOrMedicalLimitations.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />	   _SQL_RS_M-  SELECT IR.RESPONSE AS RESPONSE
  FROM ENCOUNTER_INTAKE_RESPONSES ER, INTAKE_RESPONSE IR
 WHERE ER.ENCOUNTER_ID = '_ENCOUNTER_ID'
   AND ER.ENCOUNTER_INTAKE_ID = _ENCOUNTER_INTAKE_ID
   AND ER.MID = 2180
   AND ER.MID = IR.MID
   AND ER.RID = IR.RID
   AND ER.RID IN (775, 780, 785, 790, 795, 800, 805)   1   0   0   flgBarrPaMedPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   16709   2180Ј   You indicated that being Уtoo tiredФ may get in the way of being more physically active.  Physical activity can often energize you.  Consult your†healthcare team for more information.   1€€€€€€€€€€€€   0   0   0   flgBarrPaTiredPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   16409   2180ъ  Everyone falls into daily routines.  Your current schedule may not include time for any physical activity.  Your daily routine is just a habit, and it can be changed to include physical activity.  Ten minute blocks of physical activity spread throughout the day can make a difference.  For tips see theses links <a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Barriers to Physical Activity</a> and <a href="education/B01_OldHabitsDieHard.pdf" target="_blank">Old Habits Die Hard</a>.   1  Barriers to Physical Activity
<a href="education/P01_BarriersToPhysicalActivity.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />

Old Habits Die Hard
<a href="education/B01_OldHabitsDieHard.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgBarrPaHabitPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11109   2180®  You indicated you canТt rely on family and friends for support and encouragement.  It may be helpful for you to find others who will give you support and encouragement as you work on weight control.  We†can also offer you support.  This link <a href="education/B27_InvolvingOthersInYourWeightControlProgram.pdf" target="_blank">Involving Others in Your Weight Control Program</a> offers tips on getting the support you need.   1±   Involving Others in Your Weight Control Program
<a href="education/B27_InvolvingOthersInYourWeightControlProgram.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgSupportNonePat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11209   2180R  If you rated УimportanceФ in the middle or low range, donТt feel bad.  Many people who are starting with weight management often feel the same way.  The more important weight management becomes to you and the more confidence you gain, the more likely you will be successful.  Talk with your†healthcare team about what help you might need.   1€€€€€€€€€€€€   0   0   0   flgRulerLoImpPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11309   2180S  If you rated УconfidenceФ in the middle or low range, donТt feel bad.  Many people who are starting with weight management often feel the same way.  The more important weight management becomes to you and the more confidence you gain, the more likely you will be successful.  Talk with your†healthcare team about what help you might need.
   1€€€€€€€€€€€€   0   0   0   flgRulerLoConfPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11509   2180  You answered that you are considering working on weight control sometime within the next six months.  Great! We will help when you are ready.  You may be interested in this link <a href="education/B03_SoYouAreThinkingAboutIt.pdf" target="_blank">So...YouТre Thinking About It!</a>   1О   So...YouТre Thinking About It!
<a href="education/B03_SoYouAreThinkingAboutIt.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgWtContPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   11709   2180  You answered that you are already working on controlling your weight at this time.  Excellent! Keep it up! We will help you continue to do that.  This link <a href="education/B05_YesNowYouAreDoingIt.pdf" target="_blank">Yes! Now YouТre doing it!</a> may help.   1Е   Yes! Now YouТre doing it!
<a href="education/B05_YesNowYouAreDoingIt.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgWtActionPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12009   2180Ў   You indicated that you think you can lose 11-25 lbs in one year.  Your expectations for losing weight are realistic.  In general, people can safely lose љ -2 pounds a week, on average, if they work at it.  Go for it!   1€€€€€€€€€€€€   0   0   0   flgLose20Pat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12109   2180б   You indicated that you think you can lose 26-50 lbs in one year.  Your expectations for losing weight appear to be realistic.  In general, people can safely lose љ -2 pounds a week, on average, if they work at it.  Go for it!   1€€€€€€€€€€€€   0   0   0   flgLose30Pat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12209   2180Ґ  You indicated that you think you can lose 51-100 lbs in one year.  While realistically a loss of љ -2 pounds a week can be safely accomplished, this rate of weight loss is hard to maintain over a long period of time.  Smaller weight loss goals over a shorter time period may be more easily achieved.  This link <a href="education/S02_SetYourWeightLossGoals.pdf" target="_blank">Set Your Weight Loss Goals</a> may help.   1Й   Set Your Weight Loss Goals
<a href="education/S02_SetYourWeightLossGoals.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgLose60Pat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12609   2180Ј   You indicated that family or relationship problems contribute to your being overweight.  Counseling or other resources to help you deal with these problems may be available at the VA.   1€€€€€€€€€€€€   0   0   0   flgOwRelationPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   10909   2180w   You indicated that you can rely on family or friends for support and encouragement a lot.  Great! Use them for support.   1€€€€€€€€€€€€   0   0   0   flgSupportAlotPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   12809   2180я  You have indicated that loneliness or loss of a loved one contributes to your being overweight.  Well, you are not alone! Many people try to Уfeed their feelingsФ for comfort or become less active.  Getting encouragement and support from others is extremely helpful in weight control.  This link <a href="education/B27_InvolvingOthersInYourWeightControlProgram.pdf" target="_blank">Involving Others in Your Weight Control Program</a> has ideas about getting the support you need.   1±   Involving Others in Your Weight Control Program
<a href="education/B27_InvolvingOthersInYourWeightControlProgram.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwLonelyPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   13009   2180ї   Making poor food choices too often just becomes habit.  Habits can be changed.  This link <a href="education/N01_AllFoodsCanFit.pdf" target="_blank">All Foods Can Fit</a> has suggestions.   1x   All Foods Can Fit
<a href="education/N01_AllFoodsCanFit.pdf" target="_blank">Click here for the booklet.</a>
<br/><br />€€€€€€€€   0   0   0   flgOwHabitPat€€€€€€€€€€€€€€€€   2€€€€   1€€€€€€€€€€€€   21855   2180   BMI= %.1f, normal   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMInormalDoc€€€€   0€€€€€€€€   1€€€€   2   BMI= %.2f, normal€€€€   vHasHeight,vHeight,rid3,rid2   21856   2180+   Patient has a BMI of %.1f, which is normal.   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMInormalFull€€€€   0€€€€€€€€   1€€€€   3+   Patient has a BMI of %.2f, which is normal.€€€€   vHasHeight,vHeight,rid3,rid2   21857   2180  A Body Mass Index (BMI) was calculated using your reported height and weight.  Your BMI is %.1f and is within the normal range.  Keeping your BMI < 25 decreases your risk for cardiovascular disease, diabetes, cancer, high blood pressure, and osteoarthritis.  Good work!   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   1   flgBMInormalPat€€€€€€€€   1€€€€   1€€€€   1j  Su нndice de masa corporal (IMC) o Body Mass Index (BMI), por sus siglas en inglйs,  fue calculado usando datos que usted proveyу acerca de su peso y altura.  Su BMI es de %.2f y estб en un rango saludable / normal.  Mantener su BMI < 25 disminuye su riesgo de enfermedades del corazуn, diabetes, cбncer, presiуn arterial alta y osteoartritis. °Felicitaciones!  €€€€   vHasHeight,vHeight,rid3,rid2   21858   2180   BMI= %.1f, obese   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMIObeseDoc€€€€   0€€€€€€€€   1€€€€   2   BMI= %.2f, obese€€€€   vHasHeight,vHeight,rid3,rid2   21859   2180K   Patient is obese by BMI.  Their BMI is %.1f.  Recommend further assessment.   1€€€€   _ENC_BMI   vHasHeight,vHeight,rid3,rid2   1   0   0   flgBMIObeseFull€€€€   0€€€€€€€€   1€€€€   3K   Patient is obese by BMI.  Their BMI is %.2f.  Recommend further assessment.€€€€   vHasHeight,vHeight,rid3,rid2   2000   2000A   Patient reported that the current quality of sleep is %_SQL_TEXT:   1€€€€   _SQL_RSо   select ir.response from encounter_intake_responses t, intake_response ir where t.mid=2010 and t.tid = 1 and t.qid = 1 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;   1   0   0   flg2002SleepQual€€€€   1   0   0   1   1   0€€€€€€€€€€€€   2001   20029   [HeShe] reported having surgeries and/or hospitalizations   1€€€€€€€€€€€€   0   0   0   flg2002Surgeries€€€€   1   0   0   1   1   0€€€€€€€€€€€€   2002   2002=   [HeShe] reported having changes in [HisHers] medical problems   1€€€€€€€€€€€€   0   0   0   flg2002MedProblemsChanges€€€€   1   0   0   1   1   0€€€€€€€€€€€€   2003   2002?   [HeShe] reported changes in work times or home responsibilities   1€€€€€€€€€€€€   0   0   0   flg2002HomeChanges€€€€   1   0   0   1   1   0€€€€€€€€€€€€   2006   2002E   [HeShe] reported having accidents due to falling asleep while driving   1€€€€€€€€€€€€   0   0   0   flg2002Accident€€€€   1   0   0   1   1   0€€€€€€€€€€€€   3002   3012∞  Epworth Sleepiness Scale:

%_SQL_TEXT if sitting and reading.
%_SQL_TEXT if watching TV.
%_SQL_TEXT if sitting inactive in a public place(i.e. a theater or a meeting).
%_SQL_TEXT as a passenger in a car for an hour without break.
%_SQL_TEXT if lying down to rest in the afternoon when circumstances permit.
%_SQL_TEXT sitting and talking to someone.
%_SQL_TEXT if sitting quietly after lunch without alcohol.
Patient does not drive.   1€€€€
   _SQL_RS_MS-  
select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 1 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 2 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 3 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 4 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 5 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 6 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 7 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;   1   0   0   flgEpWorthNoDrive€€€€   1   0   0   1   1   0€€€€€€€€€€€€   3004   3012R  Epworth Sleepiness Scale:
                                                                                                                         
%_SQL_TEXT if sitting and reading.
%_SQL_TEXT if watching TV.
%_SQL_TEXT if sitting inactive in a public place(i.e. a theater or a meeting).
%_SQL_TEXT as a passenger in a car for an hour without break.
%_SQL_TEXT if lying down to rest in the afternoon when circumstances permit.
%_SQL_TEXT sitting and talking to someone.
%_SQL_TEXT if sitting quietly after lunch without alcohol.
%_SQL_TEXT in a car, while stopped for a few minutes in traffic.   1€€€€
   _SQL_RS_MS  select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 1 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 2 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 3 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 4 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 5 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 6 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 7 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;

select ir.response from encounter_intake_responses t, intake_response ir where t.mid=3012 and t.qid = 8 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;   1   0   0   flgEpWorthDrive€€€€   1   0   0   1   1   0€€€€€€€€€€€€   2004   2004к  PAP TREATMENTThe patient states that on PAP treatment, the patientТs sleep problem is: %_SQL_TEXTThe patient indicates that he/she uses PAP treatment: %_SQL_TEXTThe patient endorses the following: %_SQL_TEXTThe patient estimates that he/she uses PAP treatment on average for %_SQL_TEXT hours/24 hrs (including naps). In the past week, the patient estimates that he/she did not use the treatment on %_SQL_TEXT nights per week. Does the patient use extra oxygen with the PAP unit? %_SQL_TEXT    1€€€€
   _SQL_RS_MSФ  select ir.response from encounter_intake_responses t, intake_response ir where t.mid=2004 and t.tid = 1 and t.qid = 1 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;select ir.response from encounter_intake_responses t, intake_response ir where t.mid=2004 and t.tid = 1 and t.qid = 2 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;select ir.response from encounter_intake_responses t, intake_response ir where t.mid=2004 and t.tid = 1 and t.qid = 3 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;select ir.response from encounter_intake_responses t, intake_response ir where t.mid=2004 and t.tid = 1 and t.qid = 4 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;select ir.response from encounter_intake_responses t, intake_response ir where t.mid=2004 and t.tid = 1 and t.qid = 5 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;select ir.response from encounter_intake_responses t, intake_response ir where t.mid=2004 and t.tid = 1 and t.qid = 6 and t.mid=ir.mid and t.rid=ir.rid and t.encounter_id = '_ENCOUNTER_ID' and t.encounter_intake_id = _ENCOUNTER_INTAKE_ID;   1   0   0   flg2004T1Q1€€€€   1   0   0   1   1   0€€€€€€€€€€€€   3000   3012   Potential OSA   0€€€€€€€€€€€€   0   0   0   flgPotentialOSA€€€€   1   0   0   1   1   0€€€€€€€€€€€€       Ц
  Ц
   Њ	     10.0   3030)   PSYCHOTHERAPIES FOR PANIC DISORDER (PPD)    1c  Instructions: The following sentences describe some of the different ways a person might think or feel about his or her therapist/doctor.  As you read the sentences, mentally insert the name of your therapist/doctor in place of _____________in the text.  Below each statement, please indicate the extent to which the statement describes your experience.     1   0   2000   Week Follow-up Questionnaire    1l   The purpose of this questionnaire is to see how you are doing on your APAP treatment for your sleep apnea.     1   0   2002   Month Follow-up Questionnaire    0!   Follow-up Clinical Questionnaire    1   0   2004   Follow-up Questionnaire    1!   Follow-up Clinical Questionnaire    1   0   3016+   Functional Outcomes of Sleep Questionnaire    1+   Functional Outcomes of Sleep Questionnaire    1   1   30249   Center for Epidemiologic Studies Depression Scale (CES-D)   19   Center for Epidemiologic Studies Depression Scale (CES-D)   1   1   3002)   MAP SLEEP SYMPTOM-FREQUENCY QUESTIONNAIRE   1)   MAP SLEEP SYMPTOM-FREQUENCY QUESTIONNAIRE   1   1   3014&   Pittsburgh Sleep Quality Index - PSQI    1&   Pittsburgh Sleep Quality Index - PSQI    1   1   3026   Self-efficacy questionnaire   1   Self-efficacy questionnaire   1   1   3020   SF-12 Health Survey    1   SF-12 Health Survey    1   1   500   Eligibility   0{   Please answer all of the following questions by yourself, in order to see if you are eligible to participate in this study.   1   0   3004   Insomnia Severity Index - ISI   1   Insomnia Severity Index - ISI   1   1   3008	   Circadian   1	   Circadian   1   0   3028)   Client Satisfaction Questionnaire (CSQ-8)   1=  Please help us improve our program by answering some questions about the services you have received. We are interested in your honest opinion, whether they are positive or negative. Please answer all of the questions. We also welcome your comments and suggestions. Thank you very much, we really appreciate your help.   1   0   1000   Initial Information   1G   The following questionnaire is designed to gather information about ...   1   0   3012   Epworth Sleepiness Scale - ESS    1   Epworth Sleepiness Scale - ESS    2   1   3018   Sleep Apnea Symptoms   1   Sleep Quality of Life Index   1   0   2180   Weight Management   0   Weight Management   2180   0   3006   Restless Leg Syndrome - RLS   0   Restless Leg Syndrome - RLS   1   0   3010   Parasomnia Questions   1   Parasomnia Questions   1   0   3019   Follow-up Sleep Apnea Symptoms   1   Sleep Quality of Life Index   1   0       в  в   fs      11.0   1   Initial Evaluation    1€€€€   5   1   0   2   Post Initial Evaluation   2€€€€   9   1   2   3   1 Week Follow-up   3€€€€   11   1   2   4   After 1 Week Follow-up   4€€€€   13   1   3   5   1 Month Follow-up   5€€€€   14   1   3   6   After 1 month Follow-up   6€€€€   16   1   4   7   3 Month Follow-up   7€€€€   17   1   5   8   After 3 month Follow-up   8€€€€   19   1   6   9   Phone Call Follow-up   9€€€€€€€€   1   7            ¶4      12.0   1   1000   1   1   3002   2   1   3018   3   1   3012   4   1   3014   5   1   3016   6   1   3004   7   1   3020   8   1   3024   9   1   3008   10   1   3010   11   2   3028   1   3   2000   1   3   3012   3   3   3026   4   3   3019   5   4   3028   1   5   2004   1   5   3019   2   5   3012   3   5   3014   4   5   3016   5   5   3004   6   5   3020   7   5   3024   8   6   3028   1   7   2004   1   7   3019   2   7   3012   3   7   3014   4   7   3016   5   7   3004   6   7   3020   7   7   3024   8   8   3028   1   9   2004   1   9   3019   2   9   3012   3   9   3014   4   9   3016   5   9   3004   6   9   3020   7   9   3024   8       2  2   ЁD      13.0   3000   14   Obstructive sleep apnea, doing well on PAP treatment   1D   4,6,8,12,14,16,20,22,24,28,30,32,36,38,40,44,46,48,52,54,56,60,62,64   3012   3000   22   Obstructive sleep apnea, difficulty tolerating PAP   1D   4,6,8,12,14,16,20,22,24,28,30,32,36,38,40,44,46,48,52,54,56,60,62,64   3012       ÷  ÷   \н      14.0   3000   1   13   Reinforced importance of continued adherence to PAP   1€€€€€€€€   3000   1   2   Reviewed safe driving habits   1€€€€€€€€   3000   1   3+   Advised patient to avoid alcohol, sedatives   1€€€€€€€€   3000   1   4   Recommended weight loss   1€€€€€€€€   3000   2   17   Patient having difficulty adhering with therapy due to:   1€€€€€€€€   3000   2   2+   Refer to Otorhinolaryngology for evaluation   1€€€€€€€€   3000   2   31   Refer to Dental clinic for oral appliance fitting   1€€€€€€€€   3000   2   4   Recommended positional therapy   1€€€€€€€€   3000   2   5'   Recommended safe methods of weight loss   1€€€€€€€€   3000   2   6   Discontinue PAP   1€€€€€€€€       O   O    У      15.0   3000   3000   3012!   Potential obstructive sleep apnea   1   1036   1       ”  ”   /;
     16.0   3019   1   Topic 1€€€€   1€€€€€€€€   3019   2   Topic 1€€€€   1€€€€€€€€   3019   3   Topic 1€€€€   1€€€€€€€€   3014   1%   Pittsburgh Sleep Quality Index - PSQI€€€€   1&   Pittsburgh Ќndice de Calidad del Sueсo€€€€   3014   2M   During the past month, how often have you had trouble sleeping because you...€€€€   1€€€€€€€€   3024   19   Center for Epidemiologic Studies Depression Scale (CES-D)€€€€   1?   Centro de Estudios Epidemiolуgicos Escala de Depression (CES-D)€€€€   3016   1+   Functional Outcomes of Sleep Questionnaire €€€€   11   Cuestionario sobre el impacto funcional del sueсo€€€€   3020   15  Instructions:  This questionnaire asks for your views about your health.  This information will help keep track of how you feel and how well you are able to do your usual activities.  Please answer every question by marking one box.  If you are unsure about how to answer, please give the best answer you can.€€€€   1\  Instrucciones: Este cuestionario le pide su opiniуn acerca de su salud. Esta informaciуn le ayudarб a realizar un seguimiento de cуmo se siente y quй tan bien son capaces de hacer sus actividades habituales. Por favor, conteste cada pregunta marcando una casilla. Si no estб seguro acerca de cуmo responder, por favor dй la mejor respuesta posible.€€€€   3020   2Т   The following items are about activities you might do during a typical day.  Does your health now limit you in these activities?  If so, how much?€€€€   1≠   Los siguientes artнculos se refieren a actividades que usted podrнa hacer durante un dнa tнpico. њSu salud actual lo limita para hacer estas actividades? Si es asн, њcuбnto?€€€€   3020   3Щ   During the past 4 weeks, have you had any of the following problems with your work or other regular daily activities as a result of your physical health?€€€€   1Э   Durante las ъltimas 4 semanas, њha tenido alguno de los siguientes problemas con el trabajo u otras actividades diarias regulares a causa de su salud fнsica?€€€€   3020   4¬   During the past 4 weeks, have you had any of the following problems with your work or other regular daily activities as a result of any emotional problems (such as feeling depressed or anxious)?€€€€   1    Durante las ъltimas 4 semanas, њha tenido alguno de los siguientes problemas con el trabajo u otras actividades diarias regulares a causa de algъn problema emocional (como sentirse deprimido o ansioso)?€€€€   3020   5у   These questions are about how you feel and how things have been with you during the past 4 weeks.  For each question, please give the one answer that comes closest to the way you have been feeling.  How much of the time during the past 4 weeks€€€€   1  Estas preguntas se refieren a cуmo se siente y cуmo las cosas han estado con usted durante las ъltimas 4 semanas. Para cada pregunta, por favor dй la respuesta que mбs se acerca a la forma en que usted ha estado sintiendo. њQuй parte del tiempo durante las ъltimas 4 semanas€€€€   3030   1c  Instructions: The following sentences describe some of the different ways a person might think or feel about his or her therapist/doctor.  As you read the sentences, mentally insert the name of your therapist/doctor in place of _____________in the text.  Below each statement, please indicate the extent to which the statement describes your experience.  €€€€   1g  Instrucciones: Las oraciones siguientes se describen algunas de las maneras que una persona puede pensar o sentir sobre su terapeuta / mйdico. Al leer las frases, mentalmente insertar el nombre de su terapeuta / mйdico en lugar de _____________ en el texto. Debajo de cada declaraciуn, por favor indique el grado en que la declaraciуn describe su experiencia.€€€€   2000   1   follow-up Questionnaire€€€€   1   cuestionario de seguimiento€€€€   500   1{   Please answer all of the following questions by yourself, in order to see if you are eligible to participate in this study.€€€€   1И   Por favor, conteste todas las siguientes preguntas por si mismo, con el fin de ver si usted es elegible para participar en este estudio.€€€€   2180   1   Patient Demographics€€€€   1   Patient Demographics€€€€   2180   2   Weight Management€€€€   1   Weight Management€€€€   3002   1У   During the last month on how many nights or days per week have you had or been told you had the following (please check only one box per question)?€€€€   1®   Durante el ъltimo mes sobre el nъmero de noches o dнas de la semana ha tenido o le han dicho que tenнa los siguientes (por favor, marque sуlo una casilla por pregunta)?€€€€   3026   1w   SELF-EFFICACY Directions:  For each item below, please select the response that best describes you over the next month.€€€€   1v   Instrucciones: Para cada elemento de abajo, por favor seleccione la respuesta que mejor te describe en el prуximo mes.€€€€   3026   2   OUTCOME EXPECTATIONS Directions:  For each item below, please select the response that best describes your rating of each item.€€€€   1О   Expectativas de resultados Instrucciones: Para cada artнculo, por favor seleccione la respuesta que mejor describa tu нndice de cada elemento.€€€€   3026   3a   KNOWLEDGE Directions:  Please circle the 'T' if the answer is true, or УFФ if the answer is false€€€€   1t   Llegar CONOCIMIENTO: Por favor seleccione la opciуn 'T' si la respuesta es verdadera, o 'F' si la respuesta es falsa€€€€   3026   4Z   SOCIAL SUPPORT Directions:  Please indicate how much you agree or disagree with each item.€€€€   1a   Apoyo social: Por favor, indique quй tan de acuerdo o en desacuerdo esta usted con cada elemento.€€€€   3028   1)   Client Satisfaction Questionnaire (CSQ-8)€€€€   10   Cuestionario de Satisfacciуn del Cliente (CSQ-8)€€€€   1000   1   Demographic Questions€€€€   1   Preguntas Demogrбficas€€€€   1000   2   Health History Questions€€€€   1'   Preguntas sobre la historia de su salud€€€€   1000   3$   Napping, Exercise, Caffeine, Alcohol€€€€   1&   Siestas, Ejercicios, Cafeina y Alcohol€€€€   1000   4   Current or Past Tobacco Users€€€€   1.   Usuarios de Tabaco en el Presente o el Pasado1€€€€   2002   1?   <body style=text-align:left;> <u><b> SECTION 1:</b></u> </body>€€€€   1+   <body>    <u><b> SECCI”N 1:</b></u> </body>€€€€   3006   1   Restless Leg Syndrome -RLS€€€€   1'   Sнndrome de las Piernas Inquietas - SPI€€€€   3008   1	   Circadian€€€€   1	   Circadian€€€€   3012   1   Epworth Sleepiness Scale - ESS €€€€   1&   Escala de Somnolencia de Epworth - ESS€€€€   3018   1!   Sleep Apnea Quality of Life Index€€€€   12   Indice de Calidad de Vida para Pacientes de  Apnea€€€€   3004   1   Insomnia Severity Index - ISI€€€€   1   Indice de gravedad de Insomnia€€€€   3010   1   Parasomnia €€€€   1   Parasomnia €€€€   3019   4   Topic 1€€€€   1€€€€€€€€   3019   5   Topic 1€€€€   1€€€€€€€€   3019   6   Topic 1€€€€   1€€€€€€€€   2004   1	   Section 1€€€€   1€€€€€€€€   2004   2,   Section 2: Since your last sleep appointment€€€€   1€€€€€€€€   2004   3   Section 3:Treatment€€€€   1€€€€€€€€   2004   42   Section 4: CPAP/ BiPAP Use and Equipment Questions€€€€   1€€€€€€€€   2004   5   Section 5: HEATED HUMIDIFIER€€€€   1€€€€€€€€   2004   6   Section 6: MASK€€€€   1€€€€€€€€   2004   7   Section 7: IMPROVEMENTS ON PAP€€€€   1€€€€€€€€       Д  Д   Ж$%     17.0   3028   1   17   How would you rate the quality of service you received?   1   3028   1   2+   Did you get the kind of service you wanted?   1   3028   1   3.   To what extent has our program met your needs?   1   3028   1   4X   If a friend were in need of similar help, would you recommend our program to him or her?   1   3024   1   16   I was bothered by things that usually donТt bother me.   1   3024   1   22   I had trouble keeping my mind on what I was doing.   1   3024   1   3   I felt depressed.   1   3024   1   4+   I felt that everything I did was an effort.   1   3024   1   5    I felt hopeful about the future.   1   3024   1   6   I felt fearful.   1   3024   1   7   My sleep was restless.   1   3024   1   8   I was happy.   1   3024   1   9   I felt lonely.   1   3024   1   10   I could not get 'going.'   1   3016   1   1V   Do you have difficulty concentrating on things you do because you are sleepy or tired?   1   3016   1   2T   Do you generally have difficulty remembering things because you are sleepy or tired?   1   3016   1   3~   Do you have difficulty operating a motor vehicle for short distances (less than 100 miles) because you become sleepy or tired?   1   3016   1   4А   Do you have difficulty operating a motor vehicle for long distances (greater than 100 miles) because you become sleepy or tired?   1   3016   1   5n   Do you have difficulty visiting with your family or friends in their homes because you become sleepy or tired?   1   3016   1   6l   Has your relationship with family, friends or work colleagues been affected because you are sleepy or tired?   1   3016   1   7X   Do you have difficulty watching a movie or videotape because you become sleepy or tired?   1   3016   1   8h   Do you have difficulty being as active as you want to be in the evening because you are sleepy or tired?   1   3016   1   9h   Do you have difficulty being as active as you want to be in the morning because you are sleepy or tired?   1   3016   1   10R   Has your desire for intimacy or sex been affected because you are sleepy or tired?   1   3004   1   1X   Please rate the current (i.e., last 2 weeks) SEVERITY of your difficulty falling asleep.   1   3004   1   2X   Please rate the current (i.e., last 2 weeks) SEVERITY of your difficulty staying asleep.   1   3004   1   3Z   Please rate the current (i.e., last 2 weeks) SEVERITY of your problem waking up too early.   1   3004   1   4C   How SATISFIED/dissatisfied are you with your current sleep pattern?   1   3004   1   5њ   To what extent do you consider your sleep problem to INTERFERE with your daily functioning (e.g. daytime fatigue, ability to function at work/daily chores, concentration, memory, mood, etc.).   1   3006   1   1D   Overall, how would you rate the RLS discomfort in your legs or arms?   1   3006   1   2R   Overall, how would you rate the need to move around because of your RLS symptoms?    1   3006   1   3[   Overall, how much relief of your RLS arm or leg discomfort did you get from moving around?    1   3006   1   4@   How severe was your sleep disturbance due to your RLS symptoms?    1   3006   1   5U   How severe was your tiredness or sleepiness during the day due to your RLS symptoms?    1   3006   1   6$   How severe was your RLS as a whole?    1   3006   1   7$   How often did you get RLS symptoms?    1   3006   1   8=   When you had RLS symptoms, how severe were they on average ?    1   3006   1   9Ј   Overall, how severe was the impact of your RLS symptoms on your ability to carry out your daily affairs, for example carrying out a satisfactory family, home, social, school or work.    1   3006   1   10y   How severe was your mood disturbance due to your RLS symptoms - for example angry, depressed, sad, anxious or irritable?    1   3008   1   1,   Do you routinely travel to other time zones?   1   3008   1   2Б   Considering only your own 'feeling best' rhythm, at what time of day would you get up if you were entirely free to plan your day?   1   3008   1   3X   During the first half hour after having awakened in the morning, how tired do you feel?    1   3008   1   4Q   At what time in the evening do you feel tired and, as a result, in need of sleep?   1   3008   1   5M   At what time of the day do you think that you reach your 'feeling best' peak?   1   3008   1   6r   One hears about 'morning' and 'evening' types of people.  Which ONE of these types do you consider yourself to be?   1   3018   1   1`   From the following list of symptoms, select the 5 symptoms that are a very large problem to you.   1   3018   1   2>   About your decreased energy, how large is this problem to you.   1   3018   1   3?   About your excessive fatigue, how large is this problem to you.   1   3018   1   4~   About your feeling that ordinary activities required an extra effort to perform or complete, how large is this problem to you.   1   3018   1   5]   About your falling asleep at inappropriate times or places, how large is this problem to you.   1   3018   1   6X   About your falling asleep if not stimulated or active, how large is this problem to you.   1   3018   1   7g   About your difficulty with a dry or sore mouth/throat upon awakening, how large is this problem to you.   1   3018   1   8O   About your waking up often  during the night, how large is this problem to you.   1   3018   1   9g   About your difficulty returning to sleep if you wake up in the night, how large is this problem to you.   1   3018   1   10a   About your concern about the times you stop breathing at night, how large is this problem to you.   1   3018   1   11^   About your waking up at night feeling like you were choking, how large is this problem to you.   1   3018   1   12V   About your waking up in the morning with a headache, how large is this problem to you.   1   3018   1   13g   About your waking up in the morning feeling unrefreshed and/or tired, how large is this problem to you.   1   3018   1   14h   About your waking up more than once per night (on average) to urinate, how large is this problem to you.   1   3018   1   15R   About your  feeling that your sleep is restless, how large is this problem to you.   1   3018   1   16T   About your difficulty staying awake while reading, how large is this problem to you.   1   3014   1   1B   During the past month, when have you usually gone to bed at night?   1   3014   1   2S   During the past month, how long has it usually taken you to fall asleep each night?   1   3014   1   3F   During the past month, when have you usually gotten up in the morning?   1   3014   1   4K   During the past month, how many hours of actual sleep did you get at night?   1   3014   2   1%   Cannot get to sleep within 30 minutes   1   3014   2   23   Wake up in the middle of the night or early morning   1   3014   2   3   Have to go to the bathroom   1   3014   2   4   Cannot breathe comfortably   1   3014   2   5   Cough or snore loudly   1   3014   2   6   Feel too cold   1   3014   2   7   Feel too hot   1   3014   2   8   Had bad dreams   1   3014   2   9	   Have pain   1   3014   2   10!   Other reason(s), please describe:   1   3014   3   1E   During the past month, how would you rate your sleep quality overall?   1   3014   3   2n   During the past month, how often have you taken medicine (prescribed or Уover the counterФ) to help you sleep?   1   3014   3   3А   During the past month, how often have you had trouble staying awake while driving, eating meals, or engaging in social activity?   1   3014   3   4q   During the past month, how much of a problem has it been for you to keep up enough enthusiasm to get things done?   1   3014   3   5&   Do you have a bed partner or roommate?   1   3014   4   1W   Ask him/her how often, in the past month, you have had (please check one per question):   1   3014   4   2W   Ask him/her how often, in the past month, you have had (please check one per question):   1   3014   4   3W   Ask him/her how often, in the past month, you have had (please check one per question):   1   3014   4   4W   Ask him/her how often, in the past month, you have had (please check one per question):   1   3014   4   54   Other restlessness while you sleep, please describe:   1   3010   1   15   How often do your legs twitch or kick when you sleep?   1   3010   1   2$   How often do you walk in your sleep?   1   3010   1   3*   How old were you when this first happened?   1   3010   1   4Ґ   How often do you awaken during the night and are unable to return to sleep without having something to eat or drink (other than water for thirst or a dry mouth)?    1   3010   1   5(   Do you grind your teeth while you sleep?   1   3010   1   6o   During sleep, how often do you (or have been told that you) shout, scream, punch or flail your arms in the air?   1   3010   1   7*   How old were you when this first happened?   1   3010   1   8A   How often do you have violent or injurious behavior during sleep?   1   3010   1   9*   How old were you when this first happened?   1   3010   1   106   How often do you have nightmares (frightening dreams)?   1   3010   1   11*   How old were you when this first happened?   1   2004   1   14   Please rate the usual quality of your current sleep:   1   2004   2   1/   Have you had any surgeries or hospitalizations?   1   2004   2   2*   You had surgeries or hospitalizations for?   1   2004   2   32   Have you had any changes in your medical problems?   1   2004   2   4   Please elaborate   1   2004   2   56   Have your work times or home responsibilities changed?   1   2004   2   6   Please elaborate   1   2004   2   7C   Have you had any accidents due to you falling asleep while driving?   1   2004   2   8   Please elaborate   1   2004   3   1u   With my PAP treatment, my sleep problem is: (Choose &#8220;4= the same&#8221; if you have not started treatment yet).   1   2004   4   1   I use my PAP:   1   2004   4   2@   I have problems using my PAP all night long and/or with any naps   1   2004   4   3,   I may fall asleep before my mask/ PAP is on.   1   2004   4   40   I may remove my mask unknowingly while sleeping.   1   2004   4   5E   I may forget to put my mask/ PAP back on after going to the bathroom.   1   2004   4   6%   I may forget to use my PAP with naps.   1   2004   4   7+   I may forget to take my PAP when I travel.    1   2004   4   8   I think that I use my PAP for    1   2004   4   9.   In the past month, I think that I have missed    1   2004   5   1   I use my heated humidifier:   1   2004   5   2    The heated humidifier is set on:   1   2004   5   3"   I have nasal congestion/runny nose   1   2004   5   4   I have a dry mouth/throat   1   2004   5   5   I have a dry mouth/throat   1   2004   6   1   My current mask type is:   1   3026   1   1S   I am confident I can use automatic positive airway pressure device (APAP) regularly   1   3026   1   2(   I have the ability to use APAP regularly   1   3026   1   3F   I am confident I will use APAP regularly even if I do not feel like it   1   3026   1   4X   I am confident I will use APAP regularly even if I experience uncomfortable side effects   1   3026   1   5B   I can operate the APAP machine to make it  more comfortable for me   1   3026   1   6O   How effective do you believe regular use of APAP is: managing your sleep apnea?   1   3026   1   7Y   How effective do you believe regular use of APAP is: in reducing your daytime sleepiness?   1   2004   6   2   My current mask size is:   1   2004   6   3   Check all that apply:   1   2004   6   4=   I do not like my current mask because: (check all that apply)   1   2004   6   57   I do not like my current mask because: (please explain)   1   2004   7   1   Check all that apply   1   2004   7   2$   Other improvements: (please explain)   1   3002   1   1   Loud snoring   1   3002   1   2   Snorting or gasping   1   3002   1   38   Your breathing stops or you choke or struggle for breath   1   3002   1   4   Morning headaches   1   3002   1   5   Falling asleep while driving   1   3026   1   8^   How effective do you believe regular use of APAP is: in improving your ability to concentrate?   1   3026   1   9U   How important do you believe regular use of APAP is for controlling your sleep apnea?   1   3026   1   10H   One of the main symptoms of sleep apnea is excessive daytime sleepiness.   1   3026   1   11I   If APAP is not comfortable to use, it should be permanently discontinued.   1   3026   1   12,   Being overweight can make sleep apnea worse.   1   3026   1   13(   Only one type of APAP mask is available.   1   3026   1   14b   Sleep apnea may contribute to thinking problems, such as memory loss and difficulty concentrating.   1   3026   1   15'    APAP results in a cure of sleep apnea.   1   3026   1   16E   Sleep apnea may contribute to heart problems and high blood pressure.   1   3026   1   170   For best results, APAP must be used every night.   1   3026   1   182   APAP pressure cannot be adjusted to reduce apneas.   1   3026   1   19^   After 2 years of regular use, APAP cures the sleep apnea and does not need to be used anymore.   1   3026   1   20j   Sleep apnea is best managed with the help of healthcare professionals trained in sleep disorders medicine.   1   3026   1   21A   It is OK to use APAP for only the first three hours of the night.   1   3026   1   22@   I have people in my life who support me in using APAP regularly.   1   3026   1   23`   I have people in my life who will encourage me to keep using APAP even when it is uncomfortable.   1   3026   1   24Q   I have people in my life who will encourage me to use APAP even when it is noisy.   1   3026   1   25Q   I have people in my life who will give me ideas for making APAP more comfortable.   1   3026   1   26?   I have people in my life who will help me adjust to using APAP.   1   3026   1   27C   I have people in my life who will be upset if I stopped using APAP.   1   3026   1   28C   I have people in my life who will support me in using APAP nightly.   1   3026   1   29/   I will get the help I need to use APAP nightly.   1   3026   1   30G   The healthcare staff will be helpful in helping me to use APAP nightly.   1   3020   1   1)   In general, would you say your health is:   1   3020   1   2`   Moderate activities, such as moving a table, pushing a vacuum cleaner, bowling, or playing golf?   1   3020   1   3#   Climbing several flights of stairs?   1   3020   1   4&   Accomplished less than you would like?   1   3020   1   56   Were limited in the kind of work or other activities?    1   3020   1   6&   Accomplished less than you would like?   1   3020   1   79   DidnТt do work or other activities as carefully as usual?   1   3020   1   8А   During the past 4 weeks, how much did pain interfere with your normal work (including both work outside the home and housework)?   1   3020   1   9    Have you felt calm and peaceful?   1   3020   1   10   Did you have a lot of energy?   1   3020   1   11#   Have you felt downhearted and blue?   1   3020   1   12≠   During the past 4 weeks, how much of the time has your physical health or emotional problems interfered with your social activities (like visiting friends, relatives, etc.)?   1   500   1   1   Please enter your age   1   500   1   2[   Do you have access at home to a telephone, e-mail and the internet on all days of the week?   1   500   1   3!   Do you have a DVD player at home?   1   500   1   4q   Have you been previously diagnosed with a breathing problem during sleep (including sleep apnea), or narcolepsy?    1   500   1   5Т   Have you been previously treated with a positive airway pressure device, oxygen at home, or had surgery (other than nose surgery) for sleep apnea?   1   3019   2   1ќ   Please think of the questions in the previous sections. Having been treated for your breathing problem during sleep, how much of an impact has it had on the quality of your life since you started treatment?   1   3019   3   1с   We want to know if you are having any difficulty using your PAP device. Below is a list of symptoms that some people have with this treatment.  Select the symptoms that are most bothersome to you. You can select as many symptoms as you like.   1   3019   4   1ђ   This is the list of symptoms you just selected. Now select the 5 symptoms that are the most important to you. If your list only has 5 or fewer symptoms, select all of them.   1   3019   1   1>   About your decreased energy, how large is this problem to you?   1   3019   1   2?   About your excessive fatigue, how large is this problem to you?   1   3019   1   3~   About your feeling that ordinary activities required an extra effort to perform or complete, how large is this problem to you?   1   3019   1   4]   About your falling asleep at inappropriate times or places, how large is this problem to you?   1   3019   1   5X   About your falling asleep if not stimulated or active, how large is this problem to you?   1   3019   1   6g   About your difficulty with a dry or sore mouth/throat upon awakening, how large is this problem to you?   1   3019   1   7C   Waking up often during the night, how large is this problem to you?   1   3019   1   8g   About your difficulty returning to sleep if you wake up in the night, how large is this problem to you?   1   3019   1   9V   Concern about the times you stop breathing at night, how large is this problem to you?   1   3019   1   10^   About your waking up at night feeling like you were choking, how large is this problem to you?   1   3019   1   11V   About your waking up in the morning with a headache, how large is this problem to you?   1   3019   1   12g   About your waking up in the morning feeling unrefreshed and/or tired, how large is this problem to you?   1   3019   1   13h   About your waking up more than once per night (on average) to urinate, how large is this problem to you?   1   3019   1   14R   About your  feeling that your sleep is restless, how large is this problem to you?   1   3019   1   15T   About your aifficulty staying awake while reading, how large is this problem to you?   1   3019   1   16n   About your difficulty staying awake while trying to carry on a conversation, how large is this problem to you?   1   3019   1   17g   About your difficulty staying awake while trying to watch something , how large is this problem to you?   1   3019   1   18\   About your fighting the urge to fall asleep while driving, how large is this problem to you?   1   3019   1   19c   About your reluctance or inability to drive for more than 1 hour, how large is this problem to you?   1   3019   1   20Ч   About your concern regarding close calls while driving caused partially or totally by your inability to remain alert, how large is this problem to you?   1   3019   1   21П   About your concern regarding yours or otherТs safety when you are operating a motor vehicle and/or machinery, how large is this problem to you?   1   3019   5   18   About your runny nose, how large is this problem to you?   1   3019   5   2O   About your a change in how your voice sounds, how large is this problem to you?   1   3019   5   3R   About your stuffed or congested or blocked nose, how large is this problem to you?   1   3019   5   4l   About your pain in the throat when swallowing that lasts at least an hour, how large is this problem to you?   1   3019   5   5^   About your excessive dryness of the nose or throat passages, how large is this problem to you?   1   500   1   6≥   Are you unable to perform tests due to inability to communicate verbally, inability to read and write; less than a 5th grade reading level; visual, hearing, reasoning impairment?    1   500   1   7   Thank you for your time.   1   3028   1   5@   How satisfied are you with the amount of help you have received?   1   3028   1   6V   Have the services you received helped you to deal more effectively with your problems?   1   3028   1   7W   In an overall, general sense, how satisfied are you with the service you have received?   1   3028   1   8C   If you were to seek help again, would you come back to our program?   1   3030   1   1d   __________ and I agree about the things I will need to do in treatment to help improve my situation.   1   3030   1   2H   What I am doing in treatment gives me new ways of looking at my problem.   1   3030   1   3#   I believe _______________ likes me.   1   3030   1   4P   _______________ does not understand what I am trying to accomplish in treatment.   1   3030   1   58   I am confident in _______________ 's ability to help me.   1   3030   1   6E   _______________ and I are working towards mutually agreed upon goals.   1   3030   1   7+   I feel that _______________ appreciates me.   1   3030   1   80   We agree on what is important for me to work on.   1   3030   1   9(   _______________ and I trust one another.   1   3030   1   10C   _______________ and I have different ideas on what my problems are.   1   3030   1   11Z   We have established a good understanding of the kind of changes that would be good for me.   1   3030   1   12<   I believe the way we are working with my problem is correct.   1   3019   5   6w   About your pain or aching in your jaw joint or jaw muscles especially upon awakening, how large is this problem to you?   1   3019   5   7D   About your feeling self conscious, how large is this problem to you?   1   3019   5   8b   About your aching in your teeth that lasts for at least an hour, how large is this problem to you?   1   3019   5   9\   About your discomfort, aching, or tenderness of your gums, how large is this problem to you?   1   3019   5   10]   About your hardship in being able to pay for the treatment, how large is this problem to you?   1   3019   5   11D   About your a sense of suffocation, how large is this problem to you?   1   3019   5   12B   About your excessive salivation, how large is this problem to you?   1   3019   5   13O   About your difficulty chewing in the morning, how large is this problem to you?   1   3019   5   14{   About your difficulty chewing with your back teeth that persists through most of the day, how large is this problem to you?   1   3019   5   15L   About your discomfort from the nasal mask, how large is this problem to you?   1   3019   5   16H   About your marks or rash on your face, how large is this problem to you?   1   3019   5   17Ж   About your movement of your teeth so that the upper and lower teeth do not meet properly any longer, how large is this problem to you?   1   3019   5   18n   About your complaints from your partner about the noise of the CPAP machine, how large is this problem to you?   1   3019   5   19d   About your having fluid/food pass into your nose when you swallow, how large is this problem to you?   1   3019   5   20U   About your soreness in the nose or throat passages, how large is this problem to you?   1   3019   5   217   About your headaches, how large is this problem to you?   1   3019   5   22<   About your eye irritation, how large is this problem to you?   1   3019   5   236   About your ear Pain, how large is this problem to you?   1   3019   5   24S   About your Waking up frequently during the night, how large is this problem to you?   1   3019   5   25Y   About your difficulty returning to sleep if you awaken, how large is this problem to you?   1   3019   5   26M   About your Air leakage from the nasal mask, how large is this problem to you?   1   3019   6   1ќ   Please think of the questions in the previous sections. Having been treated for your breathing problem during sleep, how much of an impact has it had on the quality of your life since you started treatment?   1   3018   0   1u   Select the sleep related symptoms below that are most bothersome to you. You can select as many symptoms as you like.   1   3018   1   17n   About your difficulty staying awake while trying to carry on a conversation, how large is this problem to you.   1   3018   1   18g   About your difficulty staying awake while trying to watch something , how large is this problem to you.   1   3018   1   19\   About your fighting the urge to fall asleep while driving, how large is this problem to you.   1   3018   1   20c   About your reluctance or inability to drive for more than 1 hour, how large is this problem to you.   1   3018   1   21Ч   About your concern regarding close calls while driving caused partially or totally by your inability to remain alert, how large is this problem to you.   1   3018   1   22П   About your concern regarding yours or otherТs safety when you are operating a motor vehicle and/or machinery, how large is this problem to you.   1   3018   1   23'   How much have you had decreased energy?   1   3018   1   240   How much of a problem have you had with fatigue?   1   3018   1   25A   How much of a problem have you had waking up feeling unrefreshed?   1   2002   1   13   Please rate the usual quality of your current sleep   1   2002   1   2@   Since your last sleep appointment (please check all that apply):   1   2180   1   19   You are about to begin your weight management assessment.   1   2180   1   2*   About how much do you weigh without shoes?   1   2180   1   3%   About how tall are you without shoes?   1   2180   2   1$   I consider myself to be (check one):   1   2180   2   2*   Have you tried to lose weight in the past?   1   2180   2   3]   What of the following options have you tried in order to lose weight? (Check all that apply.)   1   2180   2   4"   Are you trying to lose weight now?   1   2180   2   5G   What does your current weight loss plan include (Check all that apply)?   1   2180   2   6M   Select the answer that best describes your rate of weight gain over the years   1   2180   2   72   Select the answer that best describes your family:   1   2180   2   8W   How much can you rely on family or friends for support and encouragement? (Check one.)    1   2180   2   9;   How important is controlling your weight to you personally?   1   2180   2   10p   How confident are you that you can successfully change your eating and physical activity to control your weight?   1   2180   2   115   Check the statement that most closely applies to you:   1   2180   2   12S   How much weight do you think you realistically could lose in one year? (Check one.)   1   2180   2   13F    How satisfied are you with the appearance of your body?  (Check one.)   1   2180   2   14G   Do any of the following have anything to do with your being overweight?   1   3010   1   12P   In the past 6 months, have you had seizures, convulsions or СfitsТ during sleep?   1   3004   1   6n   How NOTICEABLE to others do you think your sleeping problem is in terms of impairing the quality of your life?   1   3004   1   7@   How WORRIED/distressed are you about your current sleep problem?   1   2180   2   15D   What do you think may get in the way of changing your eating habits?   1   2180   2   16=    How many times a day do you typically eat, including snacks?   1   2180   2   17G   How many times per week do you eat at restaurants or buy take out food?   1   2180   2   18G   When you eat out, how often do you overeat or eat higher calorie foods?   1   2180   2   19o   How much juice (including juice-drinks) or sugar-sweetened soda, tea or other beverages do you drink most days?   1   2180   2   20h   Do you drink alcoholic beverages (such as beer, malt liquor, wine, wine coolers, hard/distilled liquor)?   1   2180   2   21   How fast do you usually eat?   1   2180   2   22Л   On average, how often have you eaten extremely large amounts of food at one time and felt that your eating was out of control at that time?   1   2180   2   23O   What do you think may get in the way of†changing†your†physical activity†habits?   1   2180   2   245   You have completed your weight management assessment.   1   3012   1   3A   Sitting, inactive in a public place (e.g. a theater or a meeting)   1   3012   1   43   As a passenger in a car for an hour without a break   1   3012   1   5=   Lying down to rest in the afternoon when circumstances permit   1   3012   1   6   Sitting and talking to someone   1   3012   1   7-   Sitting quietly after a lunch without alcohol   1   3012   1   84   In a car, while stopped for a few minutes in traffic   1   3012   1   1   Sitting and reading   1   3012   1   2   Watching TV   1   2000   1   1-   Is the mask comfortable and fitting properly?   1   2000   1   2,   Is the mask causing a skin rash or soreness?   1   2000   1   3E   Does APAP make your nose stuffy or block breathing through your nose?   1   2000   1   4.   Are you using the humidifier in the APAP unit?   1   2000   1   5<   Does the APAP cause dryness of your throat or nasal passage?   1   2000   1   6/   Are you adding water to the humidifier chamber?   1   2000   1   77   Do you know how to adjust the humidifierТs temperature?   1   2000   1   8!   Are you changing the water daily?   1   2000   1   9H   Do people tell you that you are snoring when you are sleeping with APAP?   1   2000   1   109   Has the quality of your sleep improved when you use APAP?   1   2000   1   117   Has your daytime sleepiness improved on APAP treatment?   1   2000   1   12V   Overall, to what extent are you satisfied with APAP as treatment for your sleep apnea?   1   2000   1   13d   Overall, to what extent is your bed partner satisfied with APAP as a treatment for your sleep apnea?   1   2000   1   14`   Have you had any other problems with your APAP device? If yes please explain in the comment box.   1   1000   1   1!   Are you enrolled in MyHealtheVet?   1   1000   1   2>   Indicate the highest level of education that youТve completed:   1   1000   1   3   Sex:   1   1000   2   1[   Please indicate whether you have any of the following sleep problems.  Check all that apply   1   1000   2   2V   Have you ever seen a sleep specialist, either for a daytime or overnight appointment?    1   1000   2   3   Are you currently pregnant?    1   1000   2   4   What is your menopausal status?   1   1000   2   5*   Have you had both of your ovaries removed?   1   1000   2   6(   Do you have a bed partner or roommate?     1   1000   2   7\   Please indicate if any of the following regularly disrupt your sleep.  Check all that apply.   1   1000   2   8\   Please indicate if any of the following regularly disrupt your sleep.  Check all that apply.   1   1000   2   9   Are you currently unemployed?   1   1000   2   10В   Please indicate what work or school schedule(s) best represents your current situation.  Check all that apply.  Are you currently:   1   1000   2   11В   Please indicate what work or school schedule(s) best represents your current situation.  Check all that apply.  Are you currently:   1   1000   3   1   How often do you nap?    1   1000   3   2&   What is the usual length of your naps?   1   1000   3   38   After a nap, do you feel refreshed (not sleepy anymore)?   1   1000   3   4G   How often do you exercise?  (Enter '0' if you rarely or never exercise)   1   1000   3   5   Do you drink alcohol?   1   1000   3   6И   How many alcohol drinks do you typically have in one day?(one drink equals one can of beer, or one glass of wine, or one shot of liquor)   1   1000   3   7/   Do you consume alcohol to help you fall asleep?   1   1000   3   8H   Do you drink beverages with caffeine (for example, coffee, tea or cola?)€€€€   1000   3   9У   How many caffeinated drinks do you typically have in one day?<br/>(one drink equals one cup of coffee. or one cup of tea, or one cola/energy drink)€€€€   1000   4   1C   Which of the following best describes your use of tobacco products?   1   1000   4   25   How old were you when you started smoking cigarettes?   1   1000   4   35   How old were you when you started smoking cigarettes?   1   1000   4   4@   How many packs of cigarettes per day did/do you typically smoke?   1   1000   4   5@   How many packs of cigarettes per day did/do you typically smoke?€€€€   1000   4   65   How old were you when you stopped smoking cigarettes?€€€€   1000   4   7C   How old were you when you started using smokeless or other tobacco?€€€€   1000   4   8C   How old were you when you started using smokeless or other tobacco?€€€€   1000   4   9C   How old were you when you stopped using smokeless or other tobacco?€€€€       ґZ ґZ  q™H     18.0   20   3012   1   3   Slight chance of dozing   1   1   1€€€€   22   3012   1   3   Moderate chance of dozing   1   1   1€€€€   24   3012   1   3   High chance of dozing   1   1   1€€€€   26   3012   1   4   Would never doze   1   1   1€€€€   28   3012   1   4   Slight chance of dozing   1   1   1€€€€   30   3012   1   4   Moderate chance of dozing   1   1   1€€€€   32   3012   1   4   High chance of dozing   1   1   1€€€€   34   3012   1   5   Would never doze   1   1   1€€€€   36   3012   1   5   Slight chance of dozing   1   1   1€€€€   38   3012   1   5   Moderate chance of dozing   1   1   1€€€€   40   3012   1   5   High chance of dozing   1   1   1€€€€   42   3012   1   6   Would never doze   1   1   1€€€€   44   3012   1   6   Slight chance of dozing   1   1   1€€€€   46   3012   1   6   Moderate chance of dozing   1   1   1€€€€   48   3012   1   6   High chance of dozing   1   1   1€€€€   50   3012   1   7   Would never doze   1   1   1€€€€   52   3012   1   7   Slight chance of dozing   1   1   1€€€€   54   3012   1   7   Moderate chance of dozing   1   1   1€€€€   56   3012   1   7   High chance of dozing   1   1   1€€€€   58   3012   1   8   Would never doze   1   1   1€€€€   60   3012   1   8   Slight chance of dozing   1   1   1€€€€   62   3012   1   8   Moderate chance of dozing   1   1   1€€€€   64   3012   1   8   High chance of dozing   1   1   1€€€€   66   3012   1   8   I do not drive   1   1   1€€€€   2   500   1   1       3   3   1€€€€   4   500   1   2   yes   1   1   1€€€€   6   500   1   2   no   1   1   1€€€€   8   500   1   3   yes   1   1   1€€€€   10   500   1   3   no   1   1   1€€€€   12   500   1   4   yes   1   1   1€€€€   14   500   1   4   no   1   1   1€€€€   16   500   1   5   yes   1   1   1€€€€   18   500   1   5   no   1   1   1€€€€   20   500   1   6   yes   1   1   1€€€€   22   500   1   6   no   1   1   1€€€€   2   3014   1   1B   During the past month, when have you usually gone to bed at night?   3   0   1€€€€   4   3014   1   2S   During the past month, how long has it usually taken you to fall asleep each night?   3   0   1€€€€   6   3014   1   3F   During the past month, when have you usually gotten up in the morning?   3   0   1€€€€   8   3014   1   4K   During the past month, how many hours of actual sleep did you get at night?   3   0   1€€€€   10   3014   2   1%   Cannot get to sleep within 30 minutes   3   0   1€€€€   12   3014   2   23   Wake up in the middle of the night or early morning   3   0   1€€€€   14   3014   2   3   Have to go to the bathroom   3   0   1€€€€   16   3014   2   4   Cannot breathe comfortably   3   0   1€€€€   18   3014   2   5   Cough or snore loudly   3   0   1€€€€   20   3014   2   6   Feel too cold   3   0   1€€€€   22   3014   2   7   Feel too hot   3   0   1€€€€   24   3014   2   8   Had bad dreams   3   0   1€€€€   26   3014   2   9	   Have pain   3   0   1€€€€   28   3014   2   10   Other reason(s):    3   0   1€€€€   30   3014   3   1	   Very Good   3   0   1€€€€   32   3014   3   1   Fairly Good   3   0   1€€€€   34   3014   3   1
   Fairly Bad   3   0   1€€€€   2   3016   1   1*   I donТt do this activity for other reasons   1   1   1€€€€   4   3016   1   1   Yes, extreme difficulty   1   1   1€€€€   6   3016   1   1   Yes, moderate difficulty   1   1   1€€€€   8   3016   1   1   Yes, a little difficulty   1   1   1€€€€   10   3016   1   1   No difficulty   1   1   1€€€€   36   3014   3   1   Very Bad   3   0   1€€€€   6   2000   1   1   Yes   1   1   1€€€€   8   2000   1   1   No   1   1   1€€€€   10   2000   1   2   Yes   1   1   1€€€€   12   2000   1   2   No   1   1   1€€€€   14   2000   1   3   Yes   1   1   1€€€€   16   2000   1   3   No   1   1   1€€€€   22   2000   1   4   Yes   1   1   1€€€€   24   2000   1   4   No   1   1   1€€€€   26   2000   1   5   Yes   1   1   1€€€€   28   2000   1   5   No   1   1   1€€€€   30   2000   1   6   Yes   1   1   1€€€€   32   2000   1   6   No   1   1   1€€€€   34   2000   1   7   Yes   1   1   1€€€€   36   2000   1   7   No   1   1   1€€€€   38   2000   1   8   Yes   1   1   1€€€€   40   2000   1   8   No   1   1   1€€€€   42   2000   1   9   Yes   1   1   1€€€€   44   2000   1   9   No   1   1   1€€€€   46   2000   1   9   Do not know   1   1   1€€€€   48   2000   1   10   Yes   1   1   1€€€€   50   2000   1   10   No   1   1   1€€€€   52   2000   1   10   Do not know   1   1   1€€€€   54   2000   1   11   Yes   1   1   1€€€€   56   2000   1   11   No   1   1   1€€€€   58   2000   1   11   Do not know   1   1   1€€€€   60   2000   1   12   Very unsatisfied   1   1   1€€€€   62   2000   1   12   Unsatisfied   1   1   1€€€€   64   2000   1   12	   Satisfied   1   1   1€€€€   66   2000   1   12   Very satisfied   1   1   1€€€€   68   2000   1   13   Very unsatisfied   1   1   1€€€€   70   2000   1   13   Unsatisfied   1   1   1€€€€   72   2000   1   13	   Satisfied   1   1   1€€€€   74   2000   1   13   Very satisfied   1   1   1€€€€   76   2000   1   13   Not applicable (no bed partner)   1   1   1€€€€   78   2000   1   14   Yes   1   1   1€€€€   80   2000   1   14   No   1   1   1€€€€   82   2000   1   14   Comment:   3   3   1€€€€   38   3014   3   2   Not during the past month   3   0   1€€€€   40   3014   3   2   Less than once a week   3   0   1€€€€   42   3014   3   2   Once or twice a week   3   0   1€€€€   44   3014   3   2   Three or more times a week   3   0   1€€€€   46   3014   3   3   Not during the past month   3   0   1€€€€   48   3014   3   3   Less than once a week   3   0   1€€€€   50   3014   3   3   Once or twice a week   3   0   1€€€€   52   3014   3   3   Three or more times a week   3   0   1€€€€   54   3014   3   4   No problem at all   3   0   1€€€€   56   3014   3   4   Only a slight problem   3   0   1€€€€   58   3014   3   4   Somewhat of a problem   3   0   1€€€€   60   3014   3   4   A very big problem   3   0   1€€€€   62   3014   3   5   No bed partner or roommate   3   0   1€€€€   64   3014   3   5   Partner/roommate in other room   3   0   1€€€€   66   3014   3   52   Partner/roommate in same room, but not in same bed   3   0   1€€€€   68   3014   3   5   Partner/roommate in same bed   3   0   1€€€€   70   3014   4   1   Loud snoring   3   0   1€€€€   72   3014   4   1   Loud snoring   3   0   1€€€€   74   3014   4   1   Loud snoring   3   0   1€€€€   76   3014   4   1   Loud snoring   3   0   1€€€€   78   3014   4   1(   Long pauses between breaths while asleep   3   0   1€€€€   80   3014   4   1(   Long pauses between breaths while asleep   3   0   1€€€€   82   3014   4   1(   Long pauses between breaths while asleep   3   0   1€€€€   84   3014   4   1(   Long pauses between breaths while asleep   3   0   1€€€€   86   3014   4   1   Legs twitching or jerking   3   0   1€€€€   88   3014   4   1   Legs twitching or jerking   3   0   1€€€€   90   3014   4   1   Legs twitching or jerking   3   0   1€€€€   92   3014   4   1   Legs twitching or jerking   3   0   1€€€€   94   3014   4   14   Episodes of disorientation or confusion during sleep   3   0   1€€€€   96   3014   4   14   Episodes of disorientation or confusion during sleep   3   0   1€€€€   98   3014   4   14   Episodes of disorientation or confusion during sleep   3   0   1€€€€   100   3014   4   14   Episodes of disorientation or confusion during sleep   3   0   1€€€€   102   3014   4   1   Other restlessness   3   0   1€€€€   12   3016   1   2*   I donТt do this activity for other reasons   1   1   1€€€€   14   3016   1   2   Yes, extreme difficulty   1   1   1€€€€   16   3016   1   2   Yes, moderate difficulty   1   1   1€€€€   18   3016   1   2   Yes, a little difficulty   1   1   1€€€€   20   3016   1   2   No difficulty   1   1   1€€€€   22   3016   1   3*   I donТt do this activity for other reasons   1   1   1€€€€   24   3016   1   3   Yes, extreme difficulty   1   1   1€€€€   26   3016   1   3   Yes, moderate difficulty   1   1   1€€€€   28   3016   1   3   Yes, a little difficulty   1   1   1€€€€   30   3016   1   3   No difficulty   1   1   1€€€€   32   3016   1   4*   I donТt do this activity for other reasons   1   1   1€€€€   34   3016   1   4   Yes, extreme difficulty   1   1   1€€€€   36   3016   1   4   Yes, moderate difficulty   1   1   1€€€€   38   3016   1   4   Yes, a little difficulty   1   1   1€€€€   40   3016   1   4   No difficulty   1   1   1€€€€   42   3016   1   5*   I donТt do this activity for other reasons   1   1   1€€€€   44   3016   1   5   Yes, extreme difficulty   1   1   1€€€€   46   3016   1   5   Yes, moderate difficulty   1   1   1€€€€   48   3016   1   5   Yes, a little difficulty   1   1   1€€€€   50   3016   1   5   No difficulty   1   1   1€€€€   52   3016   1   6*   I donТt do this activity for other reasons   1   1   1€€€€   54   3016   1   6   Yes, extremely  affected   1   1   1€€€€   56   3016   1   6   Yes, moderate affected   1   1   1€€€€   58   3016   1   6   Yes, a little affected   1   1   1€€€€   60   3016   1   6   Not affected   1   1   1€€€€   62   3016   1   7*   I donТt do this activity for other reasons   1   1   1€€€€   64   3016   1   7   Yes, extreme difficulty   1   1   1€€€€   66   3016   1   7   Yes, moderate difficulty   1   1   1€€€€   68   3016   1   7   Yes, a little difficulty   1   1   1€€€€   70   3016   1   7   No difficulty   1   1   1€€€€   72   3016   1   8*   I donТt do this activity for other reasons   1   1   1€€€€   74   3016   1   8   Yes, extreme difficulty   1   1   1€€€€   76   3016   1   8   Yes, moderate difficulty   1   1   1€€€€   78   3016   1   8   Yes, a little difficulty   1   1   1€€€€   80   3016   1   8   No difficulty   1   1   1€€€€   82   3016   1   9*   I donТt do this activity for other reasons   1   1   1€€€€   84   3016   1   9   Yes, extreme difficulty   1   1   1€€€€   86   3016   1   9   Yes, moderate difficulty   1   1   1€€€€   88   3016   1   9   Yes, a little difficulty   1   1   1€€€€   90   3016   1   9   No difficulty   1   1   1€€€€   92   3016   1   10*   I donТt do this activity for other reasons   1   1   1€€€€   94   3016   1   10   Yes, extreme affected   1   1   1€€€€   96   3016   1   10   Yes, moderate affected   1   1   1€€€€   98   3016   1   10   Yes, a little affected   1   1   1€€€€   100   3016   1   10   Not affected   1   1   1€€€€   102   3016   1   114   I donТt  engage in sexual activity for other reasons   1   1   1€€€€   104   3016   1   11   Yes, extreme   1   1   1€€€€   106   3016   1   11   Yes, moderate   1   1   1€€€€   108   3016   1   11   Yes, a little   1   1   1€€€€   110   3016   1   11   No   1   1   1€€€€   2   2004   1   1	   very good   1   1   1€€€€   4   2004   1   1   good   1   1   1€€€€   6   2004   1   1   fair   1   1   1€€€€   8   2004   1   1   poor   1   1   1€€€€   10   2004   1   1	   very poor   1   1   1€€€€   12   2004   2   1   Yes   1   1   1€€€€   14   2004   2   1   No   1   1   1€€€€   16   2004   2   2        3   3   1€€€€   18   2004   2   3   Yes   1   1   1€€€€   20   2004   2   3   No   1   1   1€€€€   22   2004   2   4        3   3   1€€€€   26   2004   2   5   Yes   1   1   1€€€€   28   2004   2   5   No   1   1   1€€€€   30   2004   2   6        3   3   1€€€€   32   2004   2   7   Yes   1   1   1€€€€   34   2004   2   7   No   1   1   1€€€€   36   2004   2   8        3   3   1€€€€   38   2004   3   1   excellent improvement   1   1   1€€€€   40   2004   3   1   Much better   1   1   1€€€€   42   2004   3   1   A bit better   1   1   1€€€€   44   2004   3   1   the same   1   1   1€€€€   46   2004   3   1   worse   1   1   1€€€€   48   2004   4   1   nightly   1   1   1€€€€   50   2004   4   1   most nights   1   1   1€€€€   52   2004   4   1   inconsistently   1   1   1€€€€   54   2004   4   2   Yes   1   1   1€€€€   56   2004   4   2   No   1   1   1€€€€   58   2004   4   3   Yes   1   1   1€€€€   60   2004   4   3   No   1   1   1€€€€   62   2004   4   4   Yes   1   1   1€€€€   64   2004   4   4   No   1   1   1€€€€   66   2004   4   5   Yes   1   1   1€€€€   68   2004   4   5   No   1   1   1€€€€   70   2004   4   6   Yes   1   1   1€€€€   72   2004   4   6   No   1   1   1€€€€   74   2004   4   7   Yes   1   1   1€€€€   76   2004   4   7   No   1   1   1€€€€   78   2004   4   8        3   3   1€€€€   80   2004   4   9       3   3   1€€€€   82   2004   5   1   nightly   1   1   1€€€€   84   2004   5   1   most nights   1   1   1€€€€   86   2004   5   1   inconsistently   1   1   1€€€€   88   2004   5   1   rarely or never   1   1   1€€€€   90   2004   5   2   1   1   1   1€€€€   92   2004   5   2   2   1   1   1€€€€   94   2004   5   2   3   1   1   1€€€€   96   2004   5   2   4   1   1   1€€€€   98   2004   5   2   5   1   1   1€€€€   100   2004   5   2   Not sure   1   1   1€€€€   102   2004   5   2   Off   1   1   1€€€€   104   2004   5   3   Never/rarely   1   1   1€€€€   106   2004   5   3   Occasionally   1   1   1€€€€   108   2004   5   3
   Frequently   1   1   1€€€€   110   2004   5   4   Never/rarely   1   1   1€€€€   112   2004   5   4   Occasionally   1   1   1€€€€   114   2004   5   4
   Frequently   1   1   1€€€€   116   2004   5   5   Never/rarely   1   1   1€€€€   118   2004   5   5   Occasionally   1   1   1€€€€   120   2004   5   5
   Frequently   1   1   1€€€€   122   2004   6   1   Nasal pillows/prongs   1   1   1€€€€   124   2004   6   1
   Nasal mask   1   1   1€€€€   126   2004   6   1   Full face mask   1   1   1€€€€   128   2004   6   1   Not sure   1   1   1€€€€   130   2004   6   2   petite   1   1   1€€€€   132   2004   6   2   XS   1   1   1€€€€   134   2004   6   2   Small   1   1   1€€€€   136   2004   6   2   Wide   1   1   1€€€€   138   2004   6   2   Medium   1   1   1€€€€   140   2004   6   2   Large   1   1   1€€€€   142   2004   6   2
   Large wide   1   1   1€€€€   144   2004   6   2   Standard   1   1   1€€€€   146   2004   6   3:   I like my current mask and want to stay with the same mask   1   1   1€€€€   148   2004   6   3F   I like my current mask and but am interested in looking at other masks   1   1   1€€€€   150   2004   6   3   I do not like my current mask   1   1   1€€€€   152   2004   6   4   Infrequent mask air leakage   2   1   1€€€€   154   2004   6   4   Occasional mask air leakage   2   1   1€€€€   156   2004   6   4   Frequent mask air leakage   2   1   1€€€€   158   2004   6   4/   Frequently have to adjust or fuss with the mask   2   1   1€€€€   160   2004   6   4   Trouble with the air pressure   2   1   1€€€€   162   2004   6   4   Skin irritation   2   1   1€€€€   164   2004   6   4   Uncomfortable   2   1   1€€€€   166   2004   6   4   Eye irritation   2   1   1€€€€   168   2004   6   4'   Difficult for me to put on and take off   2   1   1€€€€   170   2004   6   4   Nose bleeds   2   1   1€€€€   172   2004   6   4   Frequently wakes me up   2   1   1€€€€   174   2004   6   4   Noisy   2   1   1€€€€   176   2004   6   4$   Pressure on nasal bridge or nostrils   2   1   1€€€€   178   2004   6   4   Water condensation in the mask   2   1   1€€€€   180   2004   6   4#   I wish I could wear glasses with it   2   1   1€€€€   182   2004   6   4!   My bed partner complains about it   2   1   1€€€€   184   2004   6   4   I need a different size   2   1   1€€€€   186   2004   6   4   Other   2   1   1€€€€   188   2004   6   5   Please explain:   3   3   1€€€€   190   2004   7   1   I snore less or not at all   2   1   1€€€€   192   2004   7   1)   My nasal congestion/ allergies are better   2   1   1€€€€   2   3020   1   1	   Excellent   1   1   1€€€€   4   3020   1   1	   Very good   1   1   1€€€€   6   3020   1   1   Good   1   1   1€€€€   8   3020   1   1   Fair     1   1   1€€€€   10   3020   1   1   Poor   1   1   1€€€€   12   3020   1   2   Yes, Limited A Lot   1   1   1€€€€   14   3020   1   2   Yes, Limited A Little   1   1   1€€€€   16   3020   1   2   No, Not Limited At All   1   1   1€€€€   18   3020   1   3   Yes, Limited A Lot   1   1   1€€€€   20   3020   1   3   Yes, Limited A Little   1   1   1€€€€   22   3020   1   3   No, Not Limited At All   1   1   1€€€€   24   3020   1   4   Yes   1   1   1€€€€   26   3020   1   4   No   1   1   1€€€€   28   3020   1   5   Yes   1   1   1€€€€   30   3020   1   5   No   1   1   1€€€€   32   3020   1   6   Yes   1   1   1€€€€   34   3020   1   6   No   1   1   1€€€€   36   3020   1   7   Yes   1   1   1€€€€   38   3020   1   7   No   1   1   1€€€€   40   3020   1   8
   Not at all   1   1   1€€€€   42   3020   1   8   A little bit   1   1   1€€€€   44   3020   1   8
   Moderately   1   1   1€€€€   46   3020   1   8   Quite a bit   1   1   1€€€€   48   3020   1   8	   Extremely   1   1   1€€€€   50   3020   1   9   All of the time   1   1   1€€€€   52   3020   1   9   Most of the time   1   1   1€€€€   54   3020   1   9   A Good bit of time   1   1   1€€€€   56   3020   1   9   Some of the time   1   1   1€€€€   58   3020   1   9   A Little of the time   1   1   1€€€€   60   3020   1   9   None of the time   1   1   1€€€€   62   3020   1   9   All of the time   1   1   1€€€€   64   3020   1   9   Most of the time   1   1   1€€€€   66   3020   1   9   A Good bit of time   1   1   1€€€€   68   3020   1   9   Some of the time   1   1   1€€€€   70   3020   1   9   A Little of the time   1   1   1€€€€   72   3020   1   9   None of the time   1   1   1€€€€   74   3020   1   10   All of the time   1   1   1€€€€   76   3020   1   10   Most of the time   1   1   1€€€€   78   3020   1   10   A Good bit of time   1   1   1€€€€   80   3020   1   10   Some of the time   1   1   1€€€€   82   3020   1   10   A Little of the time   1   1   1€€€€   84   3020   1   10   None of the time   1   1   1€€€€   86   3020   1   11   All of the Time   1   1   1€€€€   88   3020   1   11   Most of the Time   1   1   1€€€€   90   3020   1   11   Some of the Time   1   1   1€€€€   92   3020   1   11   A little of the Time   1   1   1€€€€   94   3020   1   11   None of the Time   1   1   1€€€€   2   3024   1   1,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   4   3024   1   1'   Some or a little of the time (1-2 days)   1   1   1€€€€   6   3024   1   14   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   8   3024   1   1"   Most or all of the time (5-7 days)   1   1   1€€€€   10   3024   1   2,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   12   3024   1   2'   Some or a little of the time (1-2 days)   1   1   1€€€€   14   3024   1   24   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   16   3024   1   2"   Most or all of the time (5-7 days)   1   1   1€€€€   18   3024   1   3,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   20   3024   1   3'   Some or a little of the time (1-2 days)   1   1   1€€€€   22   3024   1   34   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   24   3024   1   3"   Most or all of the time (5-7 days)   1   1   1€€€€   26   3024   1   4,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   74   3024   1   10,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   76   3024   1   10'   Some or a little of the time (1-2 days)   1   1   1€€€€   78   3024   1   104   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   80   3024   1   10"   Most or all of the time (5-7 days)   1   1   1€€€€   28   3024   1   4'   Some or a little of the time (1-2 days)   1   1   1€€€€   30   3024   1   44   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   194   2004   7   1&   My memory and concentration are better   2   1   1€€€€   196   2004   7   1%   I have fewer headaches when I wake up   2   1   1€€€€   198   2004   7   1   My blood pressure is better   2   1   1€€€€   200   2004   7   1%   My GERD (reflux/ heartburn) is better   2   1   1€€€€   202   2004   7   1$   I feel more refreshed when I wake up   2   1   1€€€€   204   2004   7   1   I am less sleepy during the day   2   1   1€€€€   206   2004   7   1'   I have less choking/gasping in my sleep   2   1   1€€€€   208   2004   7   1.   I have to use the bathroom less often at night   2   1   1€€€€   210   2004   7   1   My sleep quality is better   2   1   1€€€€   212   2004   7   1'   I am not napping or dozing off as often   2   1   1€€€€   214   2004   7   1   I wake up less often   2   1   1€€€€   216   2004   7   1   I have more energy   2   1   1€€€€   218   2004   7   1-   I do not toss & turn/move in my sleep as much   2   1   1€€€€   220   2004   7   1   I am more alert during the day   2   1   1€€€€   222   2004   7   1    My go to the bathroom less often   2   1   1€€€€   224   2004   7   1   My mood is better   2   1   1€€€€   226   2004   7   1   Other   2   1   1€€€€   228   2004   7   2   Other improvements:   3   3   1€€€€   2   3002   1   1   never   1   1   1€€€€   4   3002   1   1    rarely (less than once per week)   1   1   1€€€€   6   3002   1   1   sometimes (1-2 times per week)   1   1   1€€€€   8   3002   1   1   frequently (3-4 times per week)   1   1   1€€€€   10   3002   1   1   always (5-7 times per week)   1   1   1€€€€   12   3002   1   1   do not know   1   1   1€€€€   22   3002   1   2   never   1   1   1€€€€   24   3002   1   2    rarely (less than once per week)   1   1   1€€€€   26   3002   1   2   sometimes (1-2 times per week)   1   1   1€€€€   28   3002   1   2   frequently (3-4 times per week)   1   1   1€€€€   210   3002   1   2   always (5-7 times per week)   1   1   1€€€€   212   3002   1   2   do not know   1   1   1€€€€   32   3002   1   3   never   1   1   1€€€€   34   3002   1   3    rarely (less than once per week)   1   1   1€€€€   36   3002   1   3   sometimes (1-2 times per week)   1   1   1€€€€   38   3002   1   3   frequently (3-4 times per week)   1   1   1€€€€   310   3002   1   3   always (5-7 times per week)   1   1   1€€€€   312   3002   1   3   do not know   1   1   1€€€€   42   3002   1   4   never   1   1   1€€€€   44   3002   1   4    rarely (less than once per week)   1   1   1€€€€   46   3002   1   4   sometimes (1-2 times per week)   1   1   1€€€€   48   3002   1   4   frequently (3-4 times per week)   1   1   1€€€€   410   3002   1   4   always (5-7 times per week)   1   1   1€€€€   412   3002   1   4   do not know   1   1   1€€€€   52   3002   1   5   never   1   1   1€€€€   54   3002   1   5    rarely (less than once per week)   1   1   1€€€€   56   3002   1   5   sometimes (1-2 times per week)   1   1   1€€€€   58   3002   1   5   frequently (3-4 times per week)   1   1   1€€€€   60   3002   1   5   always (5-7 times per week)   1   1   1€€€€   510   3002   1   5   do not know   1   1   1€€€€   512   3002   1   5   never   1   1   1€€€€   32   3024   1   4"   Most or all of the time (5-7 days)   1   1   1€€€€   34   3024   1   5,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   36   3024   1   5'   Some or a little of the time (1-2 days)   1   1   1€€€€   38   3024   1   54   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   40   3024   1   5"   Most or all of the time (5-7 days)   1   1   1€€€€   42   3024   1   6,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   44   3024   1   6'   Some or a little of the time (1-2 days)   1   1   1€€€€   46   3024   1   64   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   48   3024   1   6"   Most or all of the time (5-7 days)   1   1   1€€€€   50   3024   1   7,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   52   3024   1   7'   Some or a little of the time (1-2 days)   1   1   1€€€€   54   3024   1   74   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   56   3024   1   7"   Most or all of the time (5-7 days)   1   1   1€€€€   58   3024   1   8,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   60   3024   1   8'   Some or a little of the time (1-2 days)   1   1   1€€€€   62   3024   1   84   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   64   3024   1   8"   Most or all of the time (5-7 days)   1   1   1€€€€   66   3024   1   9,   Rarely or none ofthe time (less than 1 day )   1   1   1€€€€   68   3024   1   9'   Some or a little of the time (1-2 days)   1   1   1€€€€   70   3024   1   94   Occasionally or a moderate amount of time (3-4 days)   1   1   1€€€€   72   3024   1   9"   Most or all of the time (5-7 days)   1   1   1€€€€   2   3028   1   1	   Excellent   1   1   1€€€€   4   3028   1   1   Good   1   1   1€€€€   6   3028   1   1   Fair   1   1   1€€€€   8   3028   1   1   Poor   1   1   1€€€€   10   3028   1   2   No, definitively not   1   1   1€€€€   12   3028   1   2   No, not really   1   1   1€€€€   14   3028   1   2   Yes, generally   1   1   1€€€€   16   3028   1   2   Yes, definitively   1   1   1€€€€   18   3028   1   3$   Almost all of my needs have been met   1   1   1€€€€   20   3028   1   3   Most of my needs have been met   1   1   1€€€€   22   3028   1   3$   Only a few of my needs have been met   1   1   1€€€€   24   3028   1   3   None of my needs have been met    1   1   1€€€€   26   3028   1   4   No, definitively not   1   1   1€€€€   28   3028   1   4   No, not really   1   1   1€€€€   30   3028   1   4   Yes, generally   1   1   1€€€€   32   3028   1   4   Yes, definitively   1   1   1€€€€   34   3028   1   5   Quite dissatisfied   1   1   1€€€€   36   3028   1   5"   Indifferent or mildly dissatisfied   1   1   1€€€€   38   3028   1   5   Mostly satisfied   1   1   1€€€€   40   3028   1   5   Very satisfied   1   1   1€€€€   42   3028   1   6   Yes, they helped a great deal   1   1   1€€€€   44   3028   1   6   Yes, they helped somewhat   1   1   1€€€€   46   3028   1   6   No, they really didnТt help   1   1   1€€€€   48   3028   1   6%   No, they seemed to make things worse    1   1   1€€€€   50   3028   1   7   Very satisfied   1   1   1€€€€   52   3028   1   7   Mostly satisfied   1   1   1€€€€   54   3028   1   7"   Indifferent or mildly dissatisfied   1   1   1€€€€   56   3028   1   7   Quite dissatisfied   1   1   1€€€€   58   3028   1   8   No, definitively not   1   1   1€€€€   60   3028   1   8   No, not really   1   1   1€€€€   62   3028   1   8   Yes, generally   1   1   1€€€€   64   3028   1   8   Yes, definitively    1   1   1€€€€   2   3030   1   1   Never   1   1   1€€€€   4   3030   1   1   Rarely   1   1   1€€€€   6   3030   1   1   Occasionally   1   1   1€€€€   8   3030   1   1	   Sometimes   1   1   1€€€€   10   3030   1   1   Often   1   1   1€€€€   12   3030   1   1
   Very Often   1   1   1€€€€   14   3030   1   1   Always   1   1   1€€€€   16   3030   1   2   Never   1   1   1€€€€   18   3030   1   2   Rarely   1   1   1€€€€   20   3030   1   2   Occasionally   1   1   1€€€€   22   3030   1   2	   Sometimes   1   1   1€€€€   24   3030   1   2   Often   1   1   1€€€€   26   3030   1   2
   Very Often   1   1   1€€€€   28   3030   1   2   Always   1   1   1€€€€   30   3030   1   3   Never   1   1   1€€€€   32   3030   1   3   Rarely   1   1   1€€€€   34   3030   1   3   Occasionally   1   1   1€€€€   36   3030   1   3	   Sometimes   1   1   1€€€€   38   3030   1   3   Often   1   1   1€€€€   40   3030   1   3
   Very Often   1   1   1€€€€   42   3030   1   3   Always   1   1   1€€€€   44   3030   1   4   Never   1   1   1€€€€   46   3030   1   4   Rarely   1   1   1€€€€   48   3030   1   4   Occasionally   1   1   1€€€€   50   3030   1   4	   Sometimes   1   1   1€€€€   52   3030   1   4   Often   1   1   1€€€€   54   3030   1   4
   Very Often   1   1   1€€€€   56   3030   1   4   Always   1   1   1€€€€   58   3030   1   5   Never   1   1   1€€€€   60   3030   1   5   Rarely   1   1   1€€€€   62   3030   1   5   Occasionally   1   1   1€€€€   64   3030   1   5	   Sometimes   1   1   1€€€€   66   3030   1   5   Often   1   1   1€€€€   68   3030   1   5
   Very Often   1   1   1€€€€   70   3030   1   5   Always   1   1   1€€€€   72   3030   1   6   Never   1   1   1€€€€   74   3030   1   6   Rarely   1   1   1€€€€   76   3030   1   6   Occasionally   1   1   1€€€€   78   3030   1   6	   Sometimes   1   1   1€€€€   80   3030   1   6   Often   1   1   1€€€€   82   3030   1   6
   Very Often   1   1   1€€€€   84   3030   1   6   Always   1   1   1€€€€   86   3030   1   7   Never   1   1   1€€€€   88   3030   1   7   Rarely   1   1   1€€€€   90   3030   1   7   Occasionally   1   1   1€€€€   92   3030   1   7	   Sometimes   1   1   1€€€€   94   3030   1   7   Often   1   1   1€€€€   96   3030   1   7
   Very Often   1   1   1€€€€   98   3030   1   7   Always   1   1   1€€€€   100   3030   1   8   Never   1   1   1€€€€   102   3030   1   8   Rarely   1   1   1€€€€   104   3030   1   8   Occasionally   1   1   1€€€€   106   3030   1   8	   Sometimes   1   1   1€€€€   108   3030   1   8   Often   1   1   1€€€€   110   3030   1   8
   Very Often   1   1   1€€€€   112   3030   1   8   Always   1   1   1€€€€   114   3030   1   9   Never   1   1   1€€€€   116   3030   1   9   Rarely   1   1   1€€€€   118   3030   1   9   Occasionally   1   1   1€€€€   120   3030   1   9	   Sometimes   1   1   1€€€€   122   3030   1   9   Often   1   1   1€€€€   124   3030   1   9
   Very Often   1   1   1€€€€   126   3030   1   9   Always   1   1   1€€€€   128   3030   1   10   Never   1   1   1€€€€   130   3030   1   10   Rarely   1   1   1€€€€   132   3030   1   10   Occasionally   1   1   1€€€€   134   3030   1   10	   Sometimes   1   1   1€€€€   136   3030   1   10   Often   1   1   1€€€€   138   3030   1   10
   Very Often   1   1   1€€€€   140   3030   1   10   Always   1   1   1€€€€   142   3030   1   11   Never   1   1   1€€€€   144   3030   1   11   Rarely   1   1   1€€€€   146   3030   1   11   Occasionally   1   1   1€€€€   148   3030   1   11	   Sometimes   1   1   1€€€€   150   3030   1   11   Often   1   1   1€€€€   152   3030   1   11
   Very Often   1   1   1€€€€   154   3030   1   11   Always   1   1   1€€€€   156   3030   1   12   Never   1   1   1€€€€   158   3030   1   12   Rarely   1   1   1€€€€   160   3030   1   12   Occasionally   1   1   1€€€€   162   3030   1   12	   Sometimes   1   1   1€€€€   164   3030   1   12   Often   1   1   1€€€€   166   3030   1   12
   Very Often   1   1   1€€€€   168   3030   1   12   Always   1   1   1€€€€   24   500   1   7   Done   1   1   1€€€€   2   3012   1   1   Would never doze   1   1   1€€€€   4   3012   1   1   Slight chance of dozing   1   1   1€€€€   6   3012   1   1   Moderate chance of dozing   1   1   1€€€€   8   3012   1   1   High chance of dozing   1   1   1€€€€   10   3012   1   2   Would never doze   1   1   1€€€€   12   3012   1   2   Slight chance of dozing   1   1   1€€€€   14   3012   1   2   Moderate chance of dozing   1   1   1€€€€   16   3012   1   2   High chance of dozing   1   1   1€€€€   18   3012   1   3   Would never doze   1   1   1€€€€   3002   3019   2   1   Impact   3   0   1€€€€   4002   3019   3   1
   Runny nose   3   0   1€€€€   4004   3019   3   1!   A change in how your voice sounds   3   0   1€€€€   4006   3019   3   1$   Stuffed or congested or blocked nose   3   0   1€€€€   4008   3019   3   1>   Pain in the throat when swallowing that lasts at least an hour   3   0   1€€€€   4010   3019   3   10   Excessive dryness of the nose or throat passages   3   0   1€€€€   4012   3019   3   1I   Pain or aching in your jaw joint or jaw muscles especially upon awakening   3   0   1€€€€   4014   3019   3   1>   Feeling self conscious Soreness in the nose or throat passages   3   0   1€€€€   4016   3019   3   1>   Aching in your teeth that lasts for at least an hour Headaches   3   0   1€€€€   4018   3019   3   1=   Discomfort, aching, or tenderness of your gums Eye irritation   3   0   1€€€€   4020   3019   3   18   Hardship in being able to pay for the treatment Ear Pain   3   0   1€€€€   4022   3019   3   1<   A sense of suffocation Waking up frequently during the night   3   0   1€€€€   4024   3019   3   1@   Excessive salivation difficulty returning to sleep if you awaken   3   0   1€€€€   4026   3019   3   1A   Difficulty chewing in the morning Air leakage from the nasal mask   3   0   1€€€€   4028   3019   3   1M   Difficulty chewing with your back teeth that persists through most of the day   3   0   1€€€€   4030   3019   3   1   Discomfort from the nasal mask   3   0   1€€€€   4032   3019   3   1   Marks or rash on your face   3   0   1€€€€   4034   3019   3   1Y   Movement  of your teeth so that the upper and lower teeth do not meet properly any longer   3   0   1€€€€   4036   3019   3   1@   Complaints from your partner about the noise of the CPAP machine   3   0   1€€€€   4038   3019   3   16   Having fluid/food pass into your nose when you swallow   3   0   1€€€€   4040   3019   3   1'   Soreness in the nose or throat passages   3   0   1€€€€   4042   3019   3   1	   Headaches   3   0   1€€€€   4044   3019   3   1   Eye irritation   3   0   1€€€€   4046   3019   3   1   Ear Pain   3   0   1€€€€   4048   3019   3   1%   Waking up frequently during the night   3   0   1€€€€   4050   3019   3   1+   Difficulty returning to sleep if you awaken   3   0   1€€€€   4052   3019   3   1   Air leakage from the nasal mask   3   0   1€€€€   5002   3019   4   1
   Runny nose   3   0   1€€€€   5004   3019   4   1!   A change in how your voice sounds   3   0   1€€€€   5006   3019   4   1$   Stuffed or congested or blocked nose   3   0   1€€€€   5008   3019   4   1>   Pain in the throat when swallowing that lasts at least an hour   3   0   1€€€€   5010   3019   4   10   Excessive dryness of the nose or throat passages   3   0   1€€€€   5012   3019   4   1I   Pain or aching in your jaw joint or jaw muscles especially upon awakening   3   0   1€€€€   5014   3019   4   1>   Feeling self conscious Soreness in the nose or throat passages   3   0   1€€€€   5016   3019   4   1>   Aching in your teeth that lasts for at least an hour Headaches   3   0   1€€€€   5018   3019   4   1=   Discomfort, aching, or tenderness of your gums Eye irritation   3   0   1€€€€   5020   3019   4   18   Hardship in being able to pay for the treatment Ear Pain   3   0   1€€€€   5022   3019   4   1<   A sense of suffocation Waking up frequently during the night   3   0   1€€€€   5024   3019   4   1@   Excessive salivation difficulty returning to sleep if you awaken   3   0   1€€€€   5026   3019   4   1A   Difficulty chewing in the morning Air leakage from the nasal mask   3   0   1€€€€   5028   3019   4   1M   Difficulty chewing with your back teeth that persists through most of the day   3   0   1€€€€   5030   3019   4   1   Discomfort from the nasal mask   3   0   1€€€€   5032   3019   4   1   Marks or rash on your face   3   0   1€€€€   5034   3019   4   1Y   Movement  of your teeth so that the upper and lower teeth do not meet properly any longer   3   0   1€€€€   5036   3019   4   1@   Complaints from your partner about the noise of the CPAP machine   3   0   1€€€€   5038   3019   4   16   Having fluid/food pass into your nose when you swallow   3   0   1€€€€   5040   3019   4   1'   Soreness in the nose or throat passages   3   0   1€€€€   5042   3019   4   1	   Headaches   3   0   1€€€€   5044   3019   4   1   Eye irritation   3   0   1€€€€   5046   3019   4   1   Ear Pain   3   0   1€€€€   5048   3019   4   1%   Waking up frequently during the night   3   0   1€€€€   5050   3019   4   1+   Difficulty returning to sleep if you awaken   3   0   1€€€€   5052   3019   4   1   Air leakage from the nasal mask   3   0   1€€€€   6002   3019   5   1
   Runny nose   3   0   1€€€€   6004   3019   5   2!   A change in how your voice sounds   3   0   1€€€€   6008   3019   5   4>   Pain in the throat when swallowing that lasts at least an hour   3   0   1€€€€   6010   3019   5   50   Excessive dryness of the nose or throat passages   3   0   1€€€€   6012   3019   5   6I   Pain or aching in your jaw joint or jaw muscles especially upon awakening   3   0   1€€€€   6014   3019   5   7>   Feeling self conscious Soreness in the nose or throat passages   3   0   1€€€€   6016   3019   5   8>   Aching in your teeth that lasts for at least an hour Headaches   3   0   1€€€€   6018   3019   5   9=   Discomfort, aching, or tenderness of your gums Eye irritation   3   0   1€€€€   6020   3019   5   108   Hardship in being able to pay for the treatment Ear Pain   3   0   1€€€€   6022   3019   5   11<   A sense of suffocation Waking up frequently during the night   3   0   1€€€€   6024   3019   5   12@   Excessive salivation difficulty returning to sleep if you awaken   3   0   1€€€€   6026   3019   5   13A   Difficulty chewing in the morning Air leakage from the nasal mask   3   0   1€€€€   6028   3019   5   14M   Difficulty chewing with your back teeth that persists through most of the day   3   0   1€€€€   6030   3019   5   15   Discomfort from the nasal mask   3   0   1€€€€   6032   3019   5   16   Marks or rash on your face   3   0   1€€€€   6034   3019   5   17Y   Movement  of your teeth so that the upper and lower teeth do not meet properly any longer   3   0   1€€€€   6036   3019   5   18@   Complaints from your partner about the noise of the CPAP machine   3   0   1€€€€   6038   3019   5   196   Having fluid/food pass into your nose when you swallow   3   0   1€€€€   6040   3019   5   20'   Soreness in the nose or throat passages   3   0   1€€€€   6042   3019   5   21	   Headaches   3   0   1€€€€   6044   3019   5   22   Eye irritation   3   0   1€€€€   6046   3019   5   23   Ear Pain   3   0   1€€€€   6048   3019   5   24%   Waking up frequently during the night   3   0   1€€€€   6050   3019   5   25+   Difficulty returning to sleep if you awaken   3   0   1€€€€   6052   3019   5   26   Air leakage from the nasal mask   3   0   1€€€€   7002   3019   6   1   Impact   3   0   1€€€€   6006   3019   5   3$   Stuffed or congested or blocked nose   3   0   1€€€€   4   2002   1   1   good   1   1   1€€€€   6   2002   1   1   fair   1   1   1€€€€   8   2002   1   1   poor   1   1   1€€€€   10   2002   1   1
   very poor    1   1   1€€€€   12   2002   1   2/   Have you had any surgeries or hospitalizations?   2   1   1€€€€   14   2002   1   22   Have you had any changes in your medical problems?   2   1   1€€€€   16   2002   1   27   Have your work times or home responsibilities changed?    2   1   1€€€€   18   2002   1   2C   Have you had any accidents due to you falling asleep while driving?   2   1   1€€€€   145   2004   6   2   Not sure   1   1   1€€€€   2   3008   1   1   yes   1   1   1€€€€   4   3008   1   1   no   1   1   1€€€€   6   3008   1   2   5:00am-6:30am   1   1   1€€€€   8   3008   1   2   6:30am-7:45am   1   1   1€€€€   10   3008   1   2   7:45am-9:45am   1   1   1€€€€   12   3008   1   2   9:45am-11:00am   1   1   1€€€€   14   3008   1   2   11:00am-12:00 noon   1   1   1€€€€   16   3008   1   3
   Very tired   1   1   1€€€€   18   3008   1   3   Fairly tired   1   1   1€€€€   20   3008   1   3   Fairly refreshed   1   1   1€€€€   22   3008   1   3   Very refreshed   1   1   1€€€€   24   3008   1   4   8:00pm-9:00pm   1   1   1€€€€   26   3008   1   4   9:00pm-10:15pm   1   1   1€€€€   28   3008   1   4   10:15pm-12:30am   1   1   1€€€€   30   3008   1   4   12:30am-1:45am   1   1   1€€€€   32   3008   1   4   1:45am-3:00am   1   1   1€€€€   34   3008   1   5   12:00am-5:00am   1   1   1€€€€   36   3008   1   5   5:00am-8:00am   1   1   1€€€€   38   3008   1   5   8:00am-10:00am   1   1   1€€€€   40   3008   1   5   10:00am-5:00pm   1   1   1€€€€   42   3008   1   5   5:00pm-10:00pm   1   1   1€€€€   44   3008   1   5   10:00pm-12:00am   1   1   1€€€€   46   3008   1   6   Definitely a 'morning'   1   1   1€€€€   48   3008   1   6"   More a 'morning' than an 'evening'   1   1   1€€€€   94   3010   1   12   Yes   3   3   1€€€€   96   3010   1   12   No   3   3   1€€€€   98   3010   1   12
   Don't know   99   1   1€€€€   12   3004   1   2   none   11   1   1€€€€   14   3004   1   2   mild   1   1   1€€€€   16   3004   1   2   moderate   1   1   1€€€€   18   3004   1   2   severe   1   1   1€€€€   20   3004   1   2   very severe   1   1   1€€€€   2   3004   1   1   none   11   1   1€€€€   4   3004   1   1   mild   1   1   1€€€€   6   3004   1   1   moderate   1   1   1€€€€   8   3004   1   1   severe   1   1   1€€€€   10   3004   1   1   very severe   1   1   1€€€€   32   3004   1   4   0 = very satisfied   1   1   1€€€€   34   3004   1   4   1   1   1   1€€€€   36   3004   1   4   2   1   1   1€€€€   38   3004   1   4   3   1   1   1€€€€   40   3004   1   4   4 = very dissatisfied   1   1   1€€€€   52   3004   1   6   not at all noticeable   1   1   1€€€€   54   3004   1   6   barely   1   1   1€€€€   56   3004   1   6   somewhat   1   1   1€€€€   58   3004   1   6   much   1   1   1€€€€   60   3004   1   6   very much noticeable   1   1   1€€€€   62   3004   1   7
   not at all   1   1   1€€€€   64   3004   1   7   a little   1   1   1€€€€   66   3004   1   7   somewhat   1   1   1€€€€   68   3004   1   7   much   1   1   1€€€€   70   3004   1   7	   very much   1   1   1€€€€   300   3026   1   6   1 Not at all important   1   1   1€€€€   302   3026   1   6   2   1   1   1€€€€   304   3026   1   6   3   1   1   1€€€€   306   3026   1   6   4   1   1   1€€€€   308   3026   1   6   5 Extremely important   1   1   1€€€€   320   3026   1   21   TRUE   1   1   1€€€€   322   3026   1   21   FALSE   1   1   1€€€€   230   3026   1   30   1 Disagree completely   1   1   1€€€€   232   3026   1   30   2   1   1   1€€€€   234   3026   1   30   3   1   1   1€€€€   236   3026   1   30   4   1   1   1€€€€   238   3026   1   30   5 Agree completely   1   1   1€€€€   2   2002   1   1	   very good   1   1   1€€€€   510   3010   1   6J   When I sleepwalk, I donТt shout, scream, punch or flail my arms in the air   3   3   1€€€€   2   3018   0   1   Decreased energy   2   1   1€€€€   4   3018   0   1   Excessive fatigue   2   1   1€€€€   6   3018   0   1P   Feeling that ordinary activities required an extra effort to perform or complete   2   1   1€€€€   8   3018   0   1/   Falling asleep at inappropriate times or places   2   1   1€€€€   10   3018   0   1*   Falling asleep if not stimulated or active   2   1   1€€€€   12   3018   0   19   Difficulty with a dry or sore mouth/throat upon awakening   2   1   1€€€€   14   3018   0   12   Waking up often (more than twice) during the night   2   1   1€€€€   16   3018   0   19   Difficulty returning to sleep if you wake up in the night   2   1   1€€€€   18   3018   0   13   Concern about the times you stop breathing at night   2   1   1€€€€   20   3018   0   10   Waking up at night feeling like you were choking   2   1   1€€€€   22   3018   0   1(   Waking up in the morning with a headache   2   1   1€€€€   24   3018   0   19   Waking up in the morning feeling unrefreshed and/or tired   2   1   1€€€€   26   3018   0   1:   Waking up more than once per night (on average) to urinate   2   1   1€€€€   28   3018   0   1%   A feeling that your sleep is restless   2   1   1€€€€   30   3018   0   1&   Difficulty staying awake while reading   2   1   1€€€€   32   3018   0   1@   Difficulty staying awake while trying to carry on a conversation   2   1   1€€€€   34   3018   0   1v   Difficulty staying awake while trying to watch something (eg.  concert,  theatre production,  movie,  planned TV show)   2   1   1€€€€   36   3018   0   1.   Fighting the urge to fall asleep while driving   2   1   1€€€€   38   3018   0   17   A reluctance or inability to drive for more than 1 hour   2   1   1€€€€   40   3018   0   1i   Concern regarding close calls while driving caused partially or totally by your inability to remain alert   2   1   1€€€€   42   3018   0   1a   Concern regarding yours or otherТs safety when you are operating a motor vehicle and/or machinery   2   1   1€€€€   1002   3018   1   1   Decreased energy   2   1   1€€€€   1004   3018   1   1   Excessive fatigue   2   1   1€€€€   1006   3018   1   1P   Feeling that ordinary activities required an extra effort to perform or complete   2   1   1€€€€   1008   3018   1   1/   Falling asleep at inappropriate times or places   2   1   1€€€€   1010   3018   1   1*   Falling asleep if not stimulated or active   2   1   1€€€€   1012   3018   1   19   Difficulty with a dry or sore mouth/throat upon awakening   2   1   1€€€€   1014   3018   1   12   Waking up often (more than twice) during the night   2   1   1€€€€   1016   3018   1   19   Difficulty returning to sleep if you wake up in the night   2   1   1€€€€   1018   3018   1   13   Concern about the times you stop breathing at night   2   1   1€€€€   89   3020   1   11   A good bit of the time   1   1   1€€€€   96   3020   1   12   All of the Time   1   1   1€€€€   98   3020   1   12   Most of the Time   1   1   1€€€€   100   3020   1   12   Some of the Time   1   1   1€€€€   102   3020   1   12   A little of the Time   1   1   1€€€€   104   3020   1   12   None of the Time   1   1   1€€€€   1020   3018   1   10   Waking up at night feeling like you were choking   2   1   1€€€€   1022   3018   1   1(   Waking up in the morning with a headache   2   1   1€€€€   1024   3018   1   19   Waking up in the morning feeling unrefreshed and/or tired   2   1   1€€€€   1026   3018   1   1:   Waking up more than once per night (on average) to urinate   2   1   1€€€€   1028   3018   1   1%   A feeling that your sleep is restless   2   1   1€€€€   1030   3018   1   1&   Difficulty staying awake while reading   2   1   1€€€€   1032   3018   1   1@   Difficulty staying awake while trying to carry on a conversation   2   1   1€€€€   1034   3018   1   1v   Difficulty staying awake while trying to watch something (eg.  concert,  theatre production,  movie,  planned TV show)   2   1   1€€€€   1036   3018   1   1.   Fighting the urge to fall asleep while driving   2   1   1€€€€   1038   3018   1   17   A reluctance or inability to drive for more than 1 hour   2   1   1€€€€   1040   3018   1   1i   Concern regarding close calls while driving caused partially or totally by your inability to remain alert   2   1   1€€€€   1042   3018   1   1a   Concern regarding yours or otherТs safety when you are operating a motor vehicle and/or machinery   2   1   1€€€€   765   2180   2   235   Daily habits or routines that do not include exercise   2   3   1€€€€   770   2180   2   23   Pain   2   3   1€€€€   775   2180   2   23
   Amputation   2   3   1€€€€   780   2180   2   23   Back problems   2   3   1€€€€   785   2180   2   23	   Arthritis   2   3   1€€€€   790   2180   2   23   Muscular problems   2   3   1€€€€   795   2180   2   23   Heart or lung disease   2   3   1€€€€   800   2180   2   23   Joint problems   2   3   1€€€€   805   2180   2   23   Spinal cord injury   2   3   1€€€€   810   2180   2   23	   Too tired   2   3   1€€€€   815   2180   2   23   Job or work schedule   2   3   1€€€€   820   2180   2   23   Other   2   3   1€€€€   825   2180   2   23   Nothing should get in the way   99   3   1€€€€   830   2180   2   24   Next   0   0   0€€€€   1   2180   1   1   Next   0   0   0€€€€   2   2180   1   2   Weight   3   3   1€€€€   3   2180   1   3   Height   20   3   1€€€€   100   2180   2   1!   Underweight for my height and age   1   3   1€€€€   105   2180   2   1#   Normal weight for my height and age   1   3   1€€€€   110   2180   2   1    Overweight for my height and age   1   3   1€€€€   115   2180   2   2   Yes   1   3   1€€€€   120   2180   2   2   No   1   3   1€€€€   125   2180   2   3k   Some form of dieting, that is eating differently from the way you usually eat for the sake of losing weight   2   3   1€€€€   130   2180   2   3(   Avoiding particular foods or food groups   2   3   1€€€€   135   2180   2   3<   Physical exercise, such as walking, swimming or calisthenics   2   3   1€€€€   140   2180   2   3   Prepackaged meals   2   3   1€€€€   145   2180   2   3>   Meal replacements in bar, powder, liquid, tablet or water form   2   3   1€€€€   150   2180   2   3   Fasting for 24 hours or longer   2   3   1€€€€   155   2180   2   3   Skipping meals   2   3   1€€€€   160   2180   2   3   Hypnosis   2   3   1€€€€   165   2180   2   3d   Comprehensive weight loss program with dietary changes, physical activity, and behavioral counseling   2   3   1€€€€   170   2180   2   3У   Any other kind of weight loss program that does†NOT†provide comprehensive treatment (dietary changes, physical activity, and behavioral counseling)   2   3   1€€€€   175   2180   2   3/   Keeping a log or journal for eating or exercise   2   3   1€€€€   180   2180   2   3'   Causing yourself to vomit after you eat   2   3   1€€€€   185   2180   2   3/   Cosmetic procedure such as liposuction or other   2   3   1€€€€   190   2180   2   3b   Weight loss medical procedure such as gastric bypass, gastric banding, wiring of your jaw or other   2   3   1€€€€   195   2180   2   3/   Taking a prescription medication to lose weight   2   3   1€€€€   200   2180   2   3Ј   Taking an over the counter (OTC) medication; vitamin, mineral, or nutrient supplement; herbal supplement; naturopathic or alternative medicine preparation or supplement to lose weight   2   3   1€€€€   205   2180   2   3   Smoking to control weight   2   3   1€€€€   210   2180   2   3   Other   2   3   1€€€€   895   2180   2   3   None of the above   99   3   1€€€€   215   2180   2   4   Yes   1   3   1€€€€   220   2180   2   4   No   1   3   1€€€€   225   2180   2   5k   Some form of dieting, that is eating differently from the way you usually eat for the sake of losing weight   2   3   1€€€€   230   2180   2   5(   Avoiding particular foods or food groups   2   3   1€€€€   235   2180   2   5<   Physical exercise, such as walking, swimming or calisthenics   2   3   1€€€€   240   2180   2   5   Prepackaged meals   2   3   1€€€€   245   2180   2   5>   Meal replacements in bar, powder, liquid, tablet or water form   2   3   1€€€€   250   2180   2   5   Fasting for 24 hours or longer   2   3   1€€€€   255   2180   2   5   Skipping meals   2   3   1€€€€   260   2180   2   5   Hypnosis   2   3   1€€€€   265   2180   2   5d   Comprehensive weight loss program with dietary changes, physical activity, and behavioral counseling   2   3   1€€€€   270   2180   2   5У   Any other kind of weight loss program that does†NOT†provide comprehensive treatment (dietary changes, physical activity, and behavioral counseling)   2   3   1€€€€   275   2180   2   5/   Keeping a log or journal for eating or exercise   2   3   1€€€€   280   2180   2   5'   Causing yourself to vomit after you eat   2   3   1€€€€   285   2180   2   5/   Cosmetic procedure such as liposuction or other   2   3   1€€€€   290   2180   2   5b   Weight loss medical procedure such as gastric bypass, gastric banding, wiring of your jaw or other   2   3   1€€€€   295   2180   2   5/   Taking a prescription medication to lose weight   2   3   1€€€€   300   2180   2   5Ј   Taking an over the counter (OTC) medication; vitamin, mineral, or nutrient supplement; herbal supplement; naturopathic or alternative medicine preparation or supplement to lose weight   2   3   1€€€€   305   2180   2   5   Smoking to control weight   2   3   1€€€€   310   2180   2   5   Other   2   3   1€€€€   896   2180   2   5   None of the above   99   3   1€€€€   315   2180   2   66   I have been overweight since childhood (before age 18)   1   3   1€€€€   320   2180   2   6-   I have gained weight gradually as an adult.     1   3   1€€€€   325   2180   2   6@   I have gained most of my excess weight in a short period of time   1   3   1€€€€   330   2180   2   6@   I have gained and lost weight many times over the years (yo-yo).   1   3   1€€€€   335   2180   2   70   As a group, my family is not overweight or obese   1   3   1€€€€   340   2180   2   7>   As a group, some members of my family are overweight or obese.   1   3   1€€€€   345   2180   2   7?   As a group, most members of my family are overweight or obese.    1   3   1€€€€   350   2180   2   8   A lot   1   3   1€€€€   355   2180   2   8   Somewhat   1   3   1€€€€   360   2180   2   8
   Not at all   1   3   1€€€€   365   2180   2   9   0 - Not important at all   1   3   1€€€€   366   2180   2   9   1   1   3   1€€€€   367   2180   2   9   2   1   3   1€€€€   368   2180   2   9   3   1   3   1€€€€   369   2180   2   9   4   1   3   1€€€€   370   2180   2   9   5   1   3   1€€€€   371   2180   2   9   6   1   3   1€€€€   372   2180   2   9   7   1   3   1€€€€   373   2180   2   9   8   1   3   1€€€€   374   2180   2   9   9   1   3   1€€€€   375   2180   2   9   10 - Very important   1   3   1€€€€   376   2180   2   10   0 - Not confident at all   1   3   1€€€€   377   2180   2   10   1   1   3   1€€€€   378   2180   2   10   2   1   3   1€€€€   380   2180   2   10   4   1   3   1€€€€   381   2180   2   10   5   1   3   1€€€€   382   2180   2   10   6   1   3   1€€€€   383   2180   2   10   7   1   3   1€€€€   384   2180   2   10   8   1   3   1€€€€   385   2180   2   10   9   1   3   1€€€€   386   2180   2   10   10 - Very confident   1   3   1€€€€   390   2180   2   11>   I am not considering trying to control my weight at this time.   1   3   1€€€€   395   2180   2   11R   I am considering trying to control my weight sometime within the next  six months.   1   3   1€€€€   400   2180   2   115   I am ready to make some changes to control my weight.   1   3   1€€€€   405   2180   2   11<   I am actively working on controlling my weight at this time.   1   3   1€€€€   410   2180   2   11p   I have been continuously and successfully doing things to control my   weight for more than the last six months.   1   3   1€€€€   415   2180   2   12   10 pounds or less   1   3   1€€€€   420   2180   2   12   11-25 pounds   1   3   1€€€€   425   2180   2   12   26-50 pounds   1   3   1€€€€   430   2180   2   12   51-100 pounds   1   3   1€€€€   435   2180   2   12   more than 100 pounds   1   3   1€€€€   440   2180   2   13   Very satisfied   1   3   1€€€€   445   2180   2   13   Moderately satisfied   1   3   1€€€€   450   2180   2   13"   Neither satisfied nor dissatisfied   1   3   1€€€€   455   2180   2   13   Moderately dissatisfied   1   3   1€€€€   460   2180   2   13   Very dissatisfied   1   3   1€€€€   465   2180   2   14%   Eating because of emotions or stress    2   3   1€€€€   470   2180   2   14    Family or relationship problems    2   3   1€€€€   475   2180   2   14   Boredom    2   3   1€€€€   480   2180   2   14   Loneliness or Loss of loved one   2   3   1€€€€   485   2180   2   14   Eating too much   2   3   1€€€€   490   2180   2   14   Poor food choices or habits    2   3   1€€€€   495   2180   2   14$   Not getting enough physical activity   2   3   1€€€€   500   2180   2   14   Difficulty with self control    2   3   1€€€€   505   2180   2   14   Hungry all the time    2   3   1€€€€   510   2180   2   14   Feeling bad about myself   2   3   1€€€€   515   2180   2   14   Love to eat    2   3   1€€€€   520   2180   2   14   Quitting tobacco use   2   3   1€€€€   525   2180   2   14   Pregnancy/Childbirth    2   3   1€€€€   530   2180   2   14   Illness or injury   2   3   1€€€€   535   2180   2   14   Medications led to weight gain   2   3   1€€€€   540   2180   2   14   Other   2   3   1€€€€   545   2180   2   14   None of the above    99   3   1€€€€   550   2180   2   15T   Eating food from restaurants, fast food places, convenience stores, vending machines   2   3   1€€€€   555   2180   2   15=   Person who prepares my food is uncooperative or unsupportive    2   3   1€€€€   560   2180   2   155   Too much high calorie food available at home or work    2   3   1€€€€   565   2180   2   15/   Too little time to prepare and eat healthy food   2   3   1€€€€   570   2180   2   15$   Too little money to buy healthy food   2   3   1€€€€   575   2180   2   15    Feeling hungry much of the time    2   3   1€€€€   580   2180   2   15   Used to eating a certain way   2   3   1€€€€   585   2180   2   15)   Difficulties such as stress or depression   2   3   1€€€€   590   2180   2   15   Being with others who overeat   2   3   1€€€€   595   2180   2   15   Dont know how   2   3   1€€€€   600   2180   2   15   Other   2   3   1€€€€   605   2180   2   15   Nothing should get in the way   99   3   1€€€€   610   2180   2   16   Less than 1 time a day   1   3   1€€€€   615   2180   2   16   1 to 2 times a day   1   3   1€€€€   620   2180   2   16   3 times a day   1   3   1€€€€   625   2180   2   16   4 times a day   1   3   1€€€€   630   2180   2   16   5 times a day   1   3   1€€€€   635   2180   2   17   Times per week:   3   3   1€€€€   640   2180   2   18   Always   1   3   1€€€€   645   2180   2   18   Nearly always   1   3   1€€€€   650   2180   2   18	   Sometimes   1   3   1€€€€   655   2180   2   18   Seldom   1   3   1€€€€   660   2180   2   18   Never   1   3   1€€€€   665   2180   2   19T   I  don't drink juice; juice-drinks; or sugar-sweetened soda, tea or other beverages.   1   3   1€€€€   670   2180   2   197   1 to 2 cups, cans, small bottles or drink boxes per day   1   3   1€€€€   675   2180   2   19:   3 or more cups, cans, small bottles or drink boxes per day   1   3   1€€€€   680   2180   2   20   Yes   1   3   1€€€€   685   2180   2   20   No   1   3   1€€€€   379   2180   2   10   3   1   3   1€€€€   690   2180   2   21   I eat more slowly than others.   1   3   1€€€€   695   2180   2   21   I eat about the same as others   1   3   1€€€€   700   2180   2   21   I eat more quickly than others   1   3   1€€€€   705   2180   2   22   Never   1   3   1€€€€   710   2180   2   22   Less than 1 time per week    1   3   1€€€€   715   2180   2   22   1 time per week   1   3   1€€€€   720   2180   2   22   2 to 4 times a week   1   3   1€€€€   725   2180   2   23   Too little time   2   3   1€€€€   730   2180   2   23   Too little money   2   3   1€€€€   735   2180   2   23   Safety concerns   2   3   1€€€€   740   2180   2   23   No place to walk or be active   2   3   1€€€€   745   2180   2   23   No transportation   2   3   1€€€€   750   2180   2   23,   Lack of support or encouragement from others   2   3   1€€€€   755   2180   2   23-   Difficulties such as stress, depression, etc.   2   3   1€€€€   760   2180   2   23   Do not like to exercise   2   3   1€€€€   22   3004   1   3   none   11   1   1€€€€   24   3004   1   3   mild   1   1   1€€€€   26   3004   1   3   moderate   1   1   1€€€€   28   3004   1   3   severe   1   1   1€€€€   30   3004   1   3   very severe   1   1   1€€€€   2002   3019   1   1   Decreased energy   3   0   1€€€€   2004   3019   1   2   Excessive fatigue   3   0   1€€€€   2006   3019   1   3P   Feeling that ordinary activities required an extra effort to perform or complete   3   0   1€€€€   2008   3019   1   4/   Falling asleep at inappropriate times or places   3   0   1€€€€   2010   3019   1   5*   Falling asleep if not stimulated or active   3   0   1€€€€   2012   3019   1   69   Difficulty with a dry or sore mouth/throat upon awakening   3   0   1€€€€   2014   3019   1   72   Waking up often (more than twice) during the night   3   0   1€€€€   2016   3019   1   89   Difficulty returning to sleep if you wake up in the night   3   0   1€€€€   2018   3019   1   93   Concern about the times you stop breathing at night   3   0   1€€€€   2020   3019   1   100   Waking up at night feeling like you were choking   3   0   1€€€€   2022   3019   1   11(   Waking up in the morning with a headache   3   0   1€€€€   2024   3019   1   129   Waking up in the morning feeling unrefreshed and/or tired   3   0   1€€€€   2026   3019   1   13:   Waking up more than once per night (on average) to urinate   3   0   1€€€€   2028   3019   1   14%   A feeling that your sleep is restless   3   0   1€€€€   2030   3019   1   15&   Difficulty staying awake while reading   3   0   1€€€€   2032   3019   1   16@   Difficulty staying awake while trying to carry on a conversation   3   0   1€€€€   2034   3019   1   17v   Difficulty staying awake while trying to watch something (eg.  concert,  theatre production,  movie,  planned TV show)   3   0   1€€€€   2036   3019   1   18/   Fighting the urge to fall asleep while driving    3   0   1€€€€   2038   3019   1   197   A reluctance or inability to drive for more than 1 hour   3   0   1€€€€   2040   3019   1   20i   Concern regarding close calls while driving caused partially or totally by your inability to remain alert   3   0   1€€€€   2042   3019   1   21a   Concern regarding yours or otherТs safety when you are operating a motor vehicle and/or machinery   3   0   1€€€€   2002   3018   1   2   Decreased energy   3   1   1€€€€   2004   3018   1   3   Excessive fatigue   3   1   1€€€€   2006   3018   1   4P   Feeling that ordinary activities required an extra effort to perform or complete   3   1   1€€€€   2008   3018   1   5/   Falling asleep at inappropriate times or places   3   1   1€€€€   2010   3018   1   6*   Falling asleep if not stimulated or active   3   1   1€€€€   2012   3018   1   79   Difficulty with a dry or sore mouth/throat upon awakening   3   1   1€€€€   2014   3018   1   82   Waking up often (more than twice) during the night   3   1   1€€€€   2016   3018   1   99   Difficulty returning to sleep if you wake up in the night   3   1   1€€€€   2018   3018   1   103   Concern about the times you stop breathing at night   3   1   1€€€€   2020   3018   1   110   Waking up at night feeling like you were choking   3   1   1€€€€   2022   3018   1   12(   Waking up in the morning with a headache   3   1   1€€€€   2024   3018   1   139   Waking up in the morning feeling unrefreshed and/or tired   3   1   1€€€€   2026   3018   1   14:   Waking up more than once per night (on average) to urinate   3   1   1€€€€   2028   3018   1   15%   A feeling that your sleep is restless   3   1   1€€€€   2030   3018   1   16&   Difficulty staying awake while reading   3   1   1€€€€   2032   3018   1   17@   Difficulty staying awake while trying to carry on a conversation   3   1   1€€€€   2034   3018   1   18v   Difficulty staying awake while trying to watch something (eg.  concert,  theatre production,  movie,  planned TV show)   3   1   1€€€€   2036   3018   1   19.   Fighting the urge to fall asleep while driving   3   1   1€€€€   2038   3018   1   207   A reluctance or inability to drive for more than 1 hour   3   1   1€€€€   2040   3018   1   21i   Concern regarding close calls while driving caused partially or totally by your inability to remain alert   3   1   1€€€€   2042   3018   1   22a   Concern regarding yours or otherТs safety when you are operating a motor vehicle and/or machinery   3   1   1€€€€   42   3004   1   5   not at all interfering   1   1   1€€€€   44   3004   1   5   a little   1   1   1€€€€   46   3004   1   5   somewhat   1   1   1€€€€   48   3004   1   5   much   1   1   1€€€€   50   3004   1   5   very much interfering   1   1   1€€€€   2   3006   1   1   Very severe    1   1   1€€€€   4   3006   1   1   Severe    1   1   1€€€€   6   3006   1   1	   Moderate    1   1   1€€€€   8   3006   1   1   Mild    1   1   1€€€€   10   3006   1   1   None   1   1   1€€€€   12   3006   1   2   Very severe    1   1   1€€€€   14   3006   1   2   Severe    1   1   1€€€€   16   3006   1   2	   Moderate    1   1   1€€€€   18   3006   1   2   Mild    1   1   1€€€€   20   3006   1   2   None   1   1   1€€€€   22   3006   1   3
   No relief    1   1   1€€€€   24   3006   1   3   Mild relief    1   1   1€€€€   26   3006   1   3   Moderate relief    1   1   1€€€€   28   3006   1   3*   Either complete or almost complete relief    1   1   1€€€€   30   3006   1   3   No RLS symptoms to be relieved    1   1   1€€€€   32   3006   1   4   Very severe    1   1   1€€€€   34   3006   1   4   Severe    1   1   1€€€€   36   3006   1   4	   Moderate    1   1   1€€€€   38   3006   1   4   Mild    1   1   1€€€€   40   3006   1   4   None   1   1   1€€€€   42   3006   1   5   Very severe    1   1   1€€€€   44   3006   1   5   Severe    1   1   1€€€€   50   3008   1   6"   More an 'evening' than a 'morning'   1   1   1€€€€   52   3008   1   6   Definitely an 'evening'   1   1   1€€€€   46   3006   1   5	   Moderate    1   1   1€€€€   48   3006   1   5   Mild    1   1   1€€€€   50   3006   1   5   None   1   1   1€€€€   52   3006   1   6   Very severe    1   1   1€€€€   54   3006   1   6   Severe    1   1   1€€€€   56   3006   1   6	   Moderate    1   1   1€€€€   58   3006   1   6   Mild    1   1   1€€€€   60   3006   1   6   None   1   1   1€€€€   62   3006   1   7   From 6 to 7 days per week    1   1   1€€€€   64   3006   1   7   From 4 to 5 days per week    1   1   1€€€€   66   3006   1   7   From 2 to 3 days per week    1   1   1€€€€   68   3006   1   7   Only 1 day per week    1   1   1€€€€   70   3006   1   7   Not at all in the past week    1   1   1€€€€   72   3006   1   8*   Very severe (8 hours or more per 24 hour)    1   1   1€€€€   74   3006   1   8"   Severe (3 to 8 hours per 24 hour)    1   1   1€€€€   76   3006   1   8$   Moderate (1 to 3 hours per 24 hour)    1   1   1€€€€   78   3006   1   8$   Mild (less than 1 hour per 24 hour)    1   1   1€€€€   80   3006   1   8   None    1   1   1€€€€   82   3006   1   9   Very severe   1   1   1€€€€   84   3006   1   9   Severe   1   1   1€€€€   86   3006   1   9	   Moderate    1   1   1€€€€   88   3006   1   9   Mild   1   1   1€€€€   90   3006   1   9   None    1   1   1€€€€   2   3010   1   1"   Not during the past several months   3   3   1€€€€   4   3010   1   1   Less than once a week   3   3   1€€€€   6   3010   1   1   Once or twice a week   3   3   1€€€€   8   3010   1   1   Three or more times a week   3   3   1€€€€   10   3010   1   1   Never   99   1   1€€€€   12   3010   1   1
   donТt know   1   1   1€€€€   14   3010   1   2"   Not during the past several months   3   3   1€€€€   16   3010   1   2   Less than once a week   3   3   1€€€€   18   3010   1   2   Once or twice a week   3   3   1€€€€   20   3010   1   2   Three or more times a week   3   3   1€€€€   22   3010   1   2   I donТt sleepwalk   99   1   1€€€€   24   3010   1   2
   donТt know   1   1   1€€€€   26   3010   1   3	   years old   3   3   1€€€€   28   3010   1   3
   DonТt know   99   1   1€€€€   30   3010   1   4"   Not during the past several months   3   3   1€€€€   32   3010   1   4   Less than once a week   3   3   1€€€€   34   3010   1   4   Once or twice a week   3   3   1€€€€   36   3010   1   4   Three or more times a week   3   3   1€€€€   38   3010   1   4   Never   99   1   1€€€€   40   3010   1   5"   Not during the past several months   1   1   1€€€€   42   3010   1   5   Less than once a week   1   1   1€€€€   44   3010   1   5   Once or twice a week   1   1   1€€€€   46   3010   1   5   Three or more times a week   1   1   1€€€€   48   3010   1   5   donТt Know     1   1   1€€€€   50   3010   1   6"   Not during the past several months   3   3   1€€€€   52   3010   1   6   Less than once a week   3   3   1€€€€   54   3010   1   6   Once or twice a week   3   3   1€€€€   56   3010   1   6   Three or more times a week   3   3   1€€€€   58   3010   1   6
   DonТt know   99   1   1€€€€   60   3010   1   7	   years old   3   3   1€€€€   62   3010   1   7
   donТt know   99   1   1€€€€   64   3010   1   8   Less than once a month   3   3   1€€€€   66   3010   1   8   About once a month   3   3   1€€€€   68   3010   1   8   Several times per month   3   3   1€€€€   70   3010   1   8   More than once a week   3   3   1€€€€   72   3010   1   8   Never   99   1   1€€€€   74   3010   1   9	   years old   3   3   1€€€€   76   3010   1   9
   donТt know   99   1   1€€€€   78   3010   1   10   Less than once a week   3   3   1€€€€   80   3010   1   10   Once or twice a week   3   3   1€€€€   82   3010   1   10   Three or more times a week   3   3   1€€€€   84   3010   1   10
   DonТt know   3   3   1€€€€   86   3010   1   10   Not during the past month   99   1   1€€€€   88   3010   1   11	   years old   1   1   1€€€€   92   3010   1   11
   donТt know   1   1   1€€€€   2   3026   1   1   1 Disagree completely   1   1   1€€€€   2   1000   1   1   yes   1   1   1€€€€   4   1000   1   1   no   1   1   1€€€€   6   1000   1   2   elementary school   1   1   1€€€€   8   1000   1   2   high school or equivalent   1   1   1€€€€   10   1000   1   2   associateТs degree   1   1   1€€€€   12   1000   1   2   bachelorТs degree   1   1   1€€€€   14   1000   1   2   graduate degree(s)   1   1   1€€€€   16   1000   1   3   male   1   1   1€€€€   18   1000   1   3   female   1   1   1€€€€   20   1000   2   1   Snoring   2   1   1€€€€   22   1000   2   1   My breathing stops at night   2   1   1€€€€   24   1000   2   1   Sleepiness during the day   2   1   1€€€€   26   1000   2   1   Sleep not refreshing   2   1   1€€€€   28   1000   2   1   Difficulty falling asleep   2   1   1€€€€   30   1000   2   1   Difficulty staying asleep   2   1   1€€€€   32   1000   2   1*   Difficulty keeping a normal sleep schedule   2   1   1€€€€   34   1000   2   1-   Talk, walk, and/or other behavior in my sleep   2   1   1€€€€   36   1000   2   1   I do not have a sleep problem   99   1   1€€€€   38   1000   2   2   yes   1   1   1€€€€   40   1000   2   2   no   1   1   1€€€€   42   1000   2   3   yes   1   1   1€€€€   44   1000   2   3   no   1   1   1€€€€   46   1000   2   3
   don't know   1   1   1€€€€   48   1000   2   4   Pre-menopause   1   1   1€€€€   50   1000   2   4   nearing or undergoing menopause   1   1   1€€€€   52   1000   2   4   Post menopause   1   1   1€€€€   54   1000   2   4   DonТt know    1   1   1€€€€   56   1000   2   5   yes   1   1   1€€€€   58   1000   2   5   no   1   1   1€€€€   60   1000   2   6   No bed partner or roommate   1   1   1€€€€   62   1000   2   6   Partner/roommate in other room   1   1   1€€€€   64   1000   2   6%   Partner in same room but not same bed   1   1   1€€€€   66   1000   2   6   Partner in same bed   1   1   1€€€€   68   1000   2   7   My sleep is rarely disrupted   2   1   1€€€€   70   1000   2   7   Bed partner    2   1   1€€€€   72   1000   2   7B   The need to care for another (i.e. children, elderly parent, etc.)   2   1   1€€€€   74   1000   2   7   Pet(s)   2   1   1€€€€   76   1000   2   7   Pain/discomfort   2   1   1€€€€   78   1000   2   7   The need to urinate   2   1   1€€€€   80   1000   2   7   Bed/mattress   2   1   1€€€€   82   1000   2   7   Light   2   1   1€€€€   84   1000   2   7   Worries   2   1   1€€€€   86   1000   2   7   Temperature   2   1   1€€€€   88   1000   2   7   Noise    2   1   1€€€€   90   1000   2   7   Other (please describe)    3   3   1€€€€   92   1000   2   8   My sleep is rarely disrupted   2   1   1€€€€   94   1000   2   8B   The need to care for another (i.e. children, elderly parent, etc.)   2   1   1€€€€   96   1000   2   8   Pet(s)   2   1   1€€€€   98   1000   2   8   Pain/discomfort   2   1   1€€€€   100   1000   2   8   The need to urinate   2   1   1€€€€   102   1000   2   8   Bed/mattress   2   1   1€€€€   104   1000   2   8   Light   2   1   1€€€€   106   1000   2   8   Worries   2   1   1€€€€   108   1000   2   8   Temperature   2   1   1€€€€   110   1000   2   8   Noise    2   1   1€€€€   112   1000   2   8   Other (please describe)    3   3   1€€€€   114   1000   2   9   yes   1   1   1€€€€   116   1000   2   9   no   1   1   1€€€€   118   1000   2   10   a full-time student   2   1   1€€€€   120   1000   2   10   a part-time student   2   1   1€€€€   122   1000   2   10%   full-time caretaker of another person   2   1   1€€€€   124   1000   2   10   full-time homemaker   2   1   1€€€€   126   1000   2   10   retired   2   1   1€€€€   128   1000   2   10   on disability   2   1   1€€€€   130   1000   2   11,   employed full-time (includes volunteer work)   2   1   1€€€€   132   1000   2   11+   employed part-time(includes volunteer work)   2   1   1€€€€   134   1000   2   11   a full-time student   2   1   1€€€€   136   1000   2   11   a part-time student   2   1   1€€€€   138   1000   2   11%   full-time caretaker of another person   2   1   1€€€€   140   1000   2   11   full-time homemaker   0   0   1€€€€   142   1000   2   11   retired   0   0   1€€€€   144   1000   2   11   on disability   2   1   1€€€€   146   1000   3   1   I rarely or never nap   99   3   1€€€€   148   1000   3   1   I usually nap 1-2 days per week   3   3   1€€€€   150   1000   3   1   I usually nap 3-4 days per week   3   3   1€€€€   152   1000   3   1   I nap almost every day   3   3   1€€€€   154   1000   3   2        3   3   1€€€€   158   1000   3   3   rarely (never)   1   1   1€€€€   160   1000   3   3    sometimes (mostly not refreshed)   1   1   1€€€€   162   1000   3   3   half of the time    1   1   1€€€€   164   1000   3   3   often (almost every nap)   1   1   1€€€€   166   1000   3   3   always (every nap)   1   1   1€€€€   168   1000   3   4   Not during the past month   99   3   1€€€€   170   1000   3   4   Less than once a week   3   3   1€€€€   172   1000   3   4   Once or twice a week   3   3   1€€€€   4   3026   1   1   2   1   1   1€€€€   6   3026   1   1   3   1   1   1€€€€   8   3026   1   1   4   1   1   1€€€€   10   3026   1   1   5 Agree completely   1   1   1€€€€   12   3026   1   2   1 Disagree completely   1   1   1€€€€   14   3026   1   2   2   1   1   1€€€€   16   3026   1   2   3   1   1   1€€€€   18   3026   1   2   4   1   1   1€€€€   20   3026   1   2   5 Agree completely   1   1   1€€€€   22   3026   1   3   1 Disagree completely   1   1   1€€€€   24   3026   1   3   2   1   1   1€€€€   26   3026   1   3   3   1   1   1€€€€   28   3026   1   3   4   1   1   1€€€€   30   3026   1   3   5 Agree completely   1   1   1€€€€   32   3026   1   4   1 Disagree completely   1   1   1€€€€   34   3026   1   4   2   1   1   1€€€€   36   3026   1   4   3   1   1   1€€€€   38   3026   1   4   4   1   1   1€€€€   40   3026   1   4   5 Agree completely   1   1   1€€€€   42   3026   1   5   1 Disagree completely   1   1   1€€€€   44   3026   1   5   2   1   1   1€€€€   46   3026   1   5   3   1   1   1€€€€   48   3026   1   5   4   1   1   1€€€€   50   3026   1   5   5 Agree completely   1   1   1€€€€   174   1000   3   4   Three or more times a week   3   3   1€€€€   176   1000   3   5   yes   1   1   1€€€€   178   1000   3   5   no   1   1   1€€€€   180   1000   3   6!   Number of alcohol drinks per day:   3   3   1€€€€   182   1000   3   7   yes   1   1   1€€€€   184   1000   3   7   no   1   1   1€€€€   186   1000   3   8   yes   1   1   1€€€€   188   1000   3   8   no   1   1   1€€€€   190   1000   3   9%   Number of caffeinated drinks per day:   3   3   1€€€€   192   1000   4   1?   never been a smoker/smoked less than 100 cigarettes in my life    1   1   1€€€€   194   1000   4   1   former cigarette smoker   1   1   1€€€€   196   1000   4   1   current cigarette smoker   1   1   1€€€€   198   1000   4   1&   former smokeless or other tobacco user   1   1   1€€€€   200   1000   4   1'   current smokeless or other tobacco user   1   1   1€€€€   202   1000   4   2        3   3   1€€€€   204   1000   4   3        3   3   1€€€€   206   1000   4   4	    I smoked   3   3   1€€€€   208   1000   4   5	    I smoked   3   3   1€€€€   210   1000   4   6        3   3   1€€€€   212   1000   4   7        3   3   1€€€€   214   1000   4   8        3   3   1€€€€   216   1000   4   9        3   3   1€€€€   62   3026   1   7   1 Not at all important   1   1   1€€€€   64   3026   1   7   2   1   1   1€€€€   66   3026   1   7   3   1   1   1€€€€   68   3026   1   7   4   1   1   1€€€€   70   3026   1   7   5 Extremely important   1   1   1€€€€   72   3026   1   8   1 Not at all important   1   1   1€€€€   74   3026   1   8   2   1   1   1€€€€   76   3026   1   8   3   1   1   1€€€€   78   3026   1   8   4   1   1   1€€€€   80   3026   1   8   5 Extremely important   1   1   1€€€€   82   3026   1   9   1 Not at all important   1   1   1€€€€   84   3026   1   9   2   1   1   1€€€€   86   3026   1   9   3   1   1   1€€€€   88   3026   1   9   4   1   1   1€€€€   90   3026   1   9   5 Extremely important   1   1   1€€€€   92   3026   1   10   TRUE   1   1   1€€€€   94   3026   1   10   FALSE   1   1   1€€€€   96   3026   1   11   TRUE   1   1   1€€€€   98   3026   1   11   FALSE   1   1   1€€€€   104   3026   1   12   TRUE   1   1   1€€€€   106   3026   1   12   FALSE   1   1   1€€€€   108   3026   1   13   TRUE   1   1   1€€€€   110   3026   1   13   FALSE   1   1   1€€€€   112   3026   1   14   TRUE   1   1   1€€€€   114   3026   1   14   FALSE   1   1   1€€€€   116   3026   1   15   TRUE   1   1   1€€€€   118   3026   1   15   FALSE   1   1   1€€€€   120   3026   1   16   TRUE   1   1   1€€€€   122   3026   1   16   FALSE   1   1   1€€€€   124   3026   1   17   TRUE   1   1   1€€€€   126   3026   1   17   FALSE   1   1   1€€€€   128   3026   1   18   TRUE   1   1   1€€€€   130   3026   1   18   FALSE   1   1   1€€€€   132   3026   1   19   TRUE   1   1   1€€€€   134   3026   1   19   FALSE   1   1   1€€€€   136   3026   1   20   TRUE   1   1   1€€€€   138   3026   1   20   FALSE   1   1   1€€€€   150   3026   1   22   1 Disagree completely   1   1   1€€€€   152   3026   1   22   2   1   1   1€€€€   154   3026   1   22   3   1   1   1€€€€   156   3026   1   22   4   1   1   1€€€€   158   3026   1   22   5 Agree completely   1   1   1€€€€   160   3026   1   23   1 Disagree completely   1   1   1€€€€   162   3026   1   23   2   1   1   1€€€€   164   3026   1   23   3   1   1   1€€€€   166   3026   1   23   4   1   1   1€€€€   168   3026   1   23   5 Agree completely   1   1   1€€€€   170   3026   1   24   1 Disagree completely   1   1   1€€€€   172   3026   1   24   2   1   1   1€€€€   174   3026   1   24   3   1   1   1€€€€   176   3026   1   24   4   1   1   1€€€€   178   3026   1   24   5 Agree completely   1   1   1€€€€   180   3026   1   25   1 Disagree completely   1   1   1€€€€   182   3026   1   25   2   1   1   1€€€€   184   3026   1   25   3   1   1   1€€€€   186   3026   1   25   4   1   1   1€€€€   188   3026   1   25   5 Agree completely   1   1   1€€€€   190   3026   1   26   1 Disagree completely   1   1   1€€€€   192   3026   1   26   2   1   1   1€€€€   194   3026   1   26   3   1   1   1€€€€   196   3026   1   26   4   1   1   1€€€€   198   3026   1   26   5 Agree completely   1   1   1€€€€   200   3026   1   27   1 Disagree completely   1   1   1€€€€   202   3026   1   27   2   1   1   1€€€€   204   3026   1   27   3   1   1   1€€€€   206   3026   1   27   4   1   1   1€€€€   208   3026   1   27   5 Agree completely   1   1   1€€€€   210   3026   1   28   1 Disagree completely   1   1   1€€€€   212   3026   1   28   2   1   1   1€€€€   214   3026   1   28   3   1   1   1€€€€   216   3026   1   28   4   1   1   1€€€€   218   3026   1   28   5 Agree completely   1   1   1€€€€   220   3026   1   29   1 Disagree completely   1   1   1€€€€   222   3026   1   29   2   1   1   1€€€€   224   3026   1   29   3   1   1   1€€€€   226   3026   1   29   4   1   1   1€€€€   228   3026   1   29   5 Agree completely   1   1   1€€€€       8   8    S      19.0   0125   JOINT BASE LEWIS MCCHORD€€€€€€€€€€€€€€€€€€€€       …  …   <^
     20.0   60   General symptoms   1   0   0   1   0   1€€€€   1   0€€€€€€€€   300   780€€€€   0€€€€   2000   Sleep disturbances   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.5€€€€   0€€€€   2002   Sleep disturbances, unspecified   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.50€€€€   0€€€€   2004&   Insomnia with sleep apnea, unspecified   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.51€€€€   0€€€€   2006   Insomnia, unspecified   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.52€€€€   0€€€€   2008)   Hypersomnia with sleep apnea, unspecified   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.53€€€€   0€€€€   2010   Hypersomnia, unspecified   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.54€€€€   0€€€€   2012E   Sleep disturbancesDisruption of 24 hour sleep wake cycle, unspecified   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.55€€€€   0€€€€   2014?   Dysfunctions associated with sleep stages or arousal from sleep   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.56€€€€   0€€€€   2016   Unspecified sleep apnea   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.57€€€€   0€€€€   2018,   Sleep related movement disorder, unspecified   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.58€€€€   0€€€€   2020   Other sleep disturbances   1   60   1   0   0   1€€€€   1   0€€€€€€€€€€€€   780.59€€€€   0€€€€   1   No Diagnosis   1   0   0   0   0   1€€€€   1   0€€€€€€€€   100€€€€€€€€   0€€€€   1002H   Organic disorders of initiating and maintaining sleep [Organic insomnia]   1   10   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.0€€€€   0€€€€   1004   Organic Insomnia, unspecified   1   10   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.00€€€€   0€€€€   10068   Insomnia due to a medical condition classified elsewhere   1   10   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.01€€€€   0€€€€   1008   Insomnia due to mental disorder   1   10   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.02€€€€   0€€€€   1010   Other organic insomnia   1   10   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.09€€€€   0€€€€   1012>   Organic disorder of excessive somnolence [Organic hypersomnia]   1   20   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.1€€€€   0€€€€   1014    Organic hypersomnia, unspecified   1   20   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.10€€€€   0€€€€   10160   Idiopathic hypersomnia with long long sleep time   1   20   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.11€€€€   0€€€€   1018.   Idiopathic hypersomnia without long sleep time   1   20   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.12€€€€   0€€€€   1020   Recurrent hypersomnia   1   20   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.13€€€€   0€€€€   1022;   Hypersomnia due to a medical condition classified elsewhere   1   20   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.14€€€€   0€€€€   1024"   Hypersomnia due to mental disorder   1   20   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.15€€€€   0€€€€   1026   Other organic hypersomnia   1   20   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.19€€€€   0€€€€   1028   Organic sleep apnea   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.2€€€€   0€€€€   1030    Organic sleep apnea, unspecified   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.20€€€€   0€€€€   1032   Primary central sleep apnea   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.21€€€€   0€€€€   1034!   Hight altitude periodic breathing   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.22€€€€   0€€€€   1036+   Obstructive sleep apnea (adult) (pediatric)   1   30   1   0   0   1€€€€   0   0€€€€€€€€   1   327.23€€€€   0€€€€   1038@   Idiopathic sleep related nonobstructive alveolar hypoventilation   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.24€€€€   0€€€€   10404   Congenital central alveolar hypoventilation syndrome   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.25€€€€   0€€€€   1042L   Sleep related hypoventilation/hypoxemia in conditions classifiable elsewhere   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.26€€€€   0€€€€   10446   Central sleep apnea in conditions classified elsewhere   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.27€€€€   0€€€€   1046   Other organic sleep apnea   1   30   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.29€€€€   0€€€€   1048   Circadian rhythm sleep disorder   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.3€€€€   0€€€€   1050,   Circadian rhythm sleep disorder, unspecified   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.30€€€€   0€€€€   1052(   Circadian rhythm sleep disorder, delayed   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.31€€€€   0€€€€   1054:   Circadian rhythm sleep disorder, advanced sleep phase type   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.32€€€€   0€€€€   1056:   Circadian rhythm sleep disorder, irregular sleep-wake type   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.33€€€€   0€€€€   10582   Circadian rhythm sleep disorder, free-running type   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.34€€€€   0€€€€   1060-   Circadian rhythm sleep disorder, jet lag type   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.35€€€€   0€€€€   10620   Circadian rhythm sleep disorder, shift work type   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.36€€€€   0€€€€   1064B   Circadian rhythm sleep disorder in conditions classified elsewhere   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.37€€€€   0€€€€   1066%   Other circadian rhythm sleep disorder   1   40   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.39€€€€   0€€€€   1068   Organic Parasomnia   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.4€€€€   0€€€€   1070   Organic Parasomnia, unspecified   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.40€€€€   0€€€€   1072   Confusional arousals   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.41€€€€   0€€€€   1074   REM sleep behavior disorder   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.42€€€€   0€€€€   1076"   Recurrent isolated sleep paralysis   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.43€€€€   0€€€€   1078,   Parasomnia in conditions specified elsewhere   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.44€€€€   0€€€€   1080   Other organic parasomnia   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.49€€€€   0€€€€   1082&   Organic sleep related movement disoder   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.5€€€€   0€€€€   1084   Periodic limb movement disorder   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.51€€€€   0€€€€   1086   Sleep related leg cramps   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.52€€€€   0€€€€   1088   Sleep related bruxism   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.53€€€€   0€€€€   1090$   Other organic sleep related movement   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.59€€€€   0€€€€   1092   Organic sleep apnea   1   50   1   0   0   1€€€€   0   0€€€€€€€€€€€€   327.8€€€€   0€€€€   20   Hypersomnia   1   0   0   1   0   1€€€€   1   0€€€€€€€€   200€€€€€€€€   0€€€€   30   Sleep Apnea   1   0   0   1   0   1€€€€   1   0€€€€€€€€   200€€€€€€€€   0€€€€   40   Circadian rhythm disorders   1   0   0   1   0   1€€€€   1   0€€€€€€€€   200€€€€€€€€   0€€€€   50
   Parasomnia   1   0   0   1   0   1€€€€   1   0€€€€€€€€   200€€€€€€€€   0€€€€   10   Insomnia   1   0   0   1   0   1€€€€   1   0€€€€€€€€   200€€€€€€€€   0€€€€       ќ	  ќ	   ,м      21.0   273000   6   273000   7   273000   8   273000   9   273000   10   273000   11   273000   12   273000   13   273000   14   279000   0   279000   1   279000   2   279000   3   279000   4   279000   5   279000   6   279000   7   279000   8   279000   9   279000   10   279000   11   279000   12   279000   13   279000   14   280000   0   280000   1   280000   2   280000   3   280000   4   293000   0   293000   1   293000   2   293000   3   293000   4   294000   0   294000   1   294000   2   294000   3   294000   4   305000   0   305000   1   305000   2   305000   3   305000   4   305000   5   305000   6   305000   7   305000   8   305000   9   305000   10   305000   11   305000   12   305000   13   305000   14   306000   0   306000   1   306000   2   306000   3   306000   4   184000   1   184000   2   184000   3   184000   4   184000   5   184000   6   184000   7   184000   8   184000   9   184000   10   184000   11   184000   12   184000   13   184000   14   184000   0   185000   0   185000   1   185000   2   185000   3   185000   4   201000   0   201000   1   201000   2   201000   3   201000   4   201000   5   201000   6   201000   7   201000   8   201000   9   201000   10   201000   11   201000   12   201000   13   201000   14   202000   0   202000   1   202000   2   202000   3   202000   4   221000   0   221000   1   221000   2   221000   3   221000   4   221000   5   221000   6   221000   7   221000   8   221000   9   221000   10   221000   11   221000   12   221000   13   221000   14   222000   0   222000   1   222000   2   222000   3   222000   4   232000   0   232000   1   232000   2   232000   3   232000   4   232000   5   232000   6   232000   7   232000   8   232000   9   232000   10   232000   11   232000   12   232000   13   232000   14   233000   0   233000   1   233000   2   233000   3   233000   4   247000   0   247000   1   247000   2   247000   3   247000   4   248000   0   248000   1   248000   2   248000   3   248000   4   260000   0   260000   1   260000   2   260000   3   260000   4   261000   0   261000   1   261000   2   261000   3   261000   4   273000   0   273000   1   273000   2   273000   3   273000   4   273000   5            ,l      22.0   185000   1   1   Alcohol Abuse - Nausea   185000   2   1   Alcohol Abuse - Headache   185000   3   1   Alcohol Abuse - Upset Stomach   185000   4   1   Alcohol Abuse - Dizziness   326000   5   1   Substance Abuse - Nausea   326000   6   1   Substance Abuse - Headache   326000   7   1   Substance Abuse - Upset Stomach   326000   8   1   Substance Abuse - Dizziness   325000   9   1   Insomnia   325000   10   1   Headache   325000   11   1   Nausea   325000   12   1   Hypertension       з   з    Ё4      23.0   0125   A6   Sleep Medicine Section, Philadelphia VA Medical Center   1   SUATKEY0001   SUATKEY0001   19   1   0126   B3   Sleep Medicine Section, San Diego VA Medical Center   1   SUATKEY0001   SUATKEY0001   19   2            +6      24.0   0   Initial Evaluation   1   1   Initial phone call   1   2   One week FU   1   3   One month FU   1   4   After one month FU   1   5   Three months FU   1   6   After three months FU   1   7   Phone call FU   1   99   SELF_MANAGEMENT   1       e   e    Л      25.0   1   Hispanic or Latino   1   2   Not Hispanic or Latino   2   99   Unknown ethnicity   99       .   .    д
      26.0   1   From Patient   2   Not From Patient       П-  П-   њR     27.0   19   1"   Patient Satisfaction Questionnaire   1€€€€V   Please log into the portal, there is an important message waiting for you.  Thank you.   4   0€€€€"   Patient Satisfaction Questionnaire   20   1   End of protocol   1'  Thank you for participating in this study
We greatly appreciate your time and effort.  Your participation will help us to find a better way to manage patients with sleep apnea. 

Attached are instructions about how you should obtain supplies for your APAP apparatus and contact information to the sleep center.  You will be contacted by the study coordinator to review this information with you. 

 In case it is needed, this is the contact information for the study coordinator: 

Email   (provider e-mail address) 
Phone   (provider phone contact)  U   Please log into the portal, there is an important message waiting for you.  Thank you   3   0€€€€   End of protocol   1   1   Account setup   1€€€€€€€€   1   0€€€€   Account Setup   2   1   Eligibility   0.  Dear [PARTICIPANT_NAME],

Welcome to the REVAMP website. 

This study is comparing different ways to diagnose and manage people with sleep apnea.     

To see if you are eligible for this study, you need to answer nine questions which will take about five minutes.

If eligible, you will be given more information and the opportunity to accept or decline participating in this program.

All of your answers are confidential and used only by the study team.  

Click here to go to eligibility/participation questionnaire: 

***ELIGIBILTY QUESTIONNAIRE LINK***U   Please log into the portal, there is an important message waiting for you.  Thank you   1   0€€€€   Eligibility   3   1	   OSA video   1^  Dear [PARTICIPANT_NAME], 

Remember to watch two videos on the REVAMP website that will tell you more about sleep apnea and how to perform your home sleep test. If you are ready to do this, click the "Education" tab on the gray bar under the REVAMP header. The sooner you watch the videos, the sooner you will be able to proceed with your evaluation.U   Please log into the portal, there is an important message waiting for you.  Thank you   1   5€€€€	   OSA video   4   1   Monitor training video   1€€€€€€€€   1   0€€€€   Monitor training video   10000   2   Password Reset Email   1њ   Dear [PARTICIPANT_NAME],

You're receiving this notification because you requested a password reset for your VA REVAMP account.

This request has been completed.

Thanks for using VA REVAMP!
Ф   You're receiving this notification because your password reset request for your VA REVAMP account has been completed.

Thanks for using VA REVAMP!

   0   0€€€€€€€€   9   1#   Patient Satisfaction Questionnaire    1€€€€U   Please log into the portal, there is an important message waiting for you.  Thank you   4   0€€€€#   Patient Satisfaction Questionnaire    11   1   One Week FU Questionnaires   1"  Dear [PARTICIPANT_NAME]

You have now been using your PAP treatment for about one week and it is time for you to answer some follow-up questions.  This will take about 15 minutes.  

If you are ready to do this, please click the "Questionnaires" tab on the gray bar under the REVAMP header.U   Please log into the portal, there is an important message waiting for you.  Thank you   4   0"  Dear [PARTICIPANT_NAME]

You have now been using your PAP treatment for about one week and it is time for you to answer some follow-up questions.  This will take about 15 minutes.  

If you are ready to do this, please click the "Questionnaires" tab on the gray bar under the REVAMP header.   One Week Questionnaires   14   1   One Month FU Questionnaires   1#  Dear [PARTICIPANT_NAME],

You have now been using your PAP treatment for about one month and it is time for you to answer some follow-up questions. This will take about 15 minutes.  

If you are ready to do this, please click the "Questionnaires" tab on the gray bar under the REVAMP header.U   Please log into the portal, there is an important message waiting for you.  Thank you   4   0#  Dear [PARTICIPANT_NAME],

You have now been using your PAP treatment for about one month and it is time for you to answer some follow-up questions. This will take about 15 minutes.  

If you are ready to do this, please click the "Questionnaires" tab on the gray bar under the REVAMP header.   One Month Questionnaires   16   1"   Patient Satisfaction Questionnaire   1€€€€V   Please log into the portal, there is an important message waiting for you.  Thank you.   4   0€€€€"   Patient Satisfaction Questionnaire   5   1!   Initial Evaluation Questionnaires   1П  Dear [PARTICIPANT_NAME], 

Thank you for enrolling in the REVAMP program. The next step is to answer some questions that will tell us about your sleep problem and the state of your health.  The sooner you complete the questions, the sooner you will be able to proceed with your evaluation.
 
If you are ready to do this, please click the "Questionnaires" tab on the gray bar under the REVAMP header.U   Please log into the portal, there is an important message waiting for you.  Thank you   1   1€€€€!   Initial Evaluation Questionnaires   6   1   Monitor mailed   1Љ  Dear [PARTICIPANT_NAME], 

The portable monitor that you will use during your home sleep study has been mailed to you.  When you receive your monitor, follow the detailed instructions that come with it and watch the video in the Education tab that shows how to do the study.  You must perform the study on the day that was scheduled. If you do not receive it in time, contact your sleep specialist using the REVAMP Message system.

Please mail the monitor back to the sleep center the day after your overnight study.  Mailing materials are included in the package that you should use to return the monitor. 
  
If you have any questions, contact your sleep specialist using the REVAMP Message system.U   Please log into the portal, there is an important message waiting for you.  Thank you   2   0€€€€   Monitor mailed   7   1   Monitor received   1  Dear [PARTICIPANT_NAME], 

The portable monitor you returned has been received. 
 
You will be contacted to schedule your REVAMP phone call evaluation with the sleep specialist.

If you have any questions, contact your sleep specialist using the REVAMP Message system.U   Please log into the portal, there is an important message waiting for you.  Thank you   2   0€€€€   Monitor received   8   1   Initial phone evaluation   1y  Dear [PARTICIPANT_NAME], 

Your REVAMP phone call evaluation with your sleep specialist has been scheduled for [INIT_PHONE_EVAL].  The purpose of this session is to review the results of your sleep study. 

At the time of the session, please login to the REVAMP website.

If you need to reschedule the call, please contact your sleep specialist using the REVAMP Message system.U   Please log into the portal, there is an important message waiting for you.  Thank you   2   0y  Dear [PARTICIPANT_NAME], 

Your REVAMP phone call evaluation with your sleep specialist has been scheduled for [INIT_PHONE_EVAL].  The purpose of this session is to review the results of your sleep study. 

At the time of the session, please login to the REVAMP website.

If you need to reschedule the call, please contact your sleep specialist using the REVAMP Message system.   Initial phone evaluation   10   1   PAP Data   1<  REVAMP is receiving information from your PAP unit about your daily use of the treatment.  

To view your PAP use, please click the "Treatment results" tab on the gray bar under the REVAMP header.  

New results are added every day.  You can then use this website throughout the next 3 months to view your results.  U   Please log into the portal, there is an important message waiting for you.  Thank you   1   0€€€€   PAP Data   12   1   One Week Phone FU   1ћ   Dear [PARTICIPANT_NAME],
 
This is a reminder to complete a questionnaire on the REVAMP website. You can open the questionnaire by clicking the Questionnaires tab on the gray bar under the REVAMP header. U   Please log into the portal, there is an important message waiting for you.  Thank you   2   04  Dear [PARTICIPANT_NAME],
 
This is a reminder of your scheduled follow-up phone call with you sleep specialist on [ONE_WK_DATE].

PRIOR TO THAT CALL, you need to complete some questionnaires on REVAMP that will inform your sleep specialist how you are doing. You can open the questionnaires by clicking the Questionnaires tab on the gray bar under the REVAMP header.  

If you need to select a different date/time for your appointment or have any questions, please contact your sleep specialist by clicking the Messages tab on the gray bar under the REVAMP header.   One Week Phone   13   1"   Patient Satisfaction Questionnaire   1€€€€U   Please log into the portal, there is an important message waiting for you.  Thank you   4   0€€€€"   Patient Satisfaction Questionnaire   15   1   One Month Phone FU   1ћ   Dear [PARTICIPANT_NAME],
 
This is a reminder to complete a questionnaire on the REVAMP website. You can open the questionnaire by clicking the Questionnaires tab on the gray bar under the REVAMP header. U   Please log into the portal, there is an important message waiting for you.  Thank you   2   04  Dear [PARTICIPANT_NAME],
 
This is a reminder of your scheduled follow-up phone call with you sleep specialist on [ONE_MN_DATE].

PRIOR TO THAT CALL, you need to complete some questionnaires on REVAMP that will inform your sleep specialist how you are doing. You can open the questionnaires by clicking the Questionnaires tab on the gray bar under the REVAMP header.  

If you need to select a different date/time for your appointment or have any questions, please contact your sleep specialist by clicking the Messages tab on the gray bar under the REVAMP header.   One Month Phone   17   1   Three Month FU Questionnaires   1&  Dear [PARTICIPANT_NAME],

You have now been using your APAP treatment for about three months.  It is time for you to answer some follow-up questions.  This will take about 15 minutes.  

If you are ready to do this, please click the "Questionnaires" tab on the gray bar under the REVAMP header.U   Please log into the portal, there is an important message waiting for you.  Thank you   4   0&  Dear [PARTICIPANT_NAME],

You have now been using your APAP treatment for about three months.  It is time for you to answer some follow-up questions.  This will take about 15 minutes.  

If you are ready to do this, please click the "Questionnaires" tab on the gray bar under the REVAMP header.   Three Month Questionnaires   18   1   Three Month Phone FU   1ћ   Dear [PARTICIPANT_NAME],
 
This is a reminder to complete a questionnaire on the REVAMP website. You can open the questionnaire by clicking the Questionnaires tab on the gray bar under the REVAMP header. U   Please log into the portal, there is an important message waiting for you.  Thank you   2   06  Dear [PARTICIPANT_NAME],
 
This is a reminder of your scheduled follow-up phone call with you sleep specialist on [THREE_MN_DATE].

PRIOR TO THAT CALL, you need to complete some questionnaires on REVAMP that will inform your sleep specialist how you are doing. You can open the questionnaires by clicking the Questionnaires tab on the gray bar under the REVAMP header.  

If you need to select a different date/time for your appointment or have any questions, please contact your sleep specialist by clicking the Messages tab on the gray bar under the REVAMP header.   Three Month Phone       ;   ;    х      28.0   0   Unknown   0   1   Male   1   2   Female   1       №  №   `ј      29.0   0€€€€   0€€€€   1   drink(s)   39   1   2   episodes   40   1   3   events   40   1   4   episodes   41   1   5   episodes   42   1   6   day(s)   43   1   7   week(s)   43   1   8   day(s)   44   1   9   AA Meetings   45   1   10   appointments   45   1   11   homework assignment   45   1   12   support contacts   45   1   13   episodes   46   1   14	   outbursts   47   1   15   episodes   47   1   16   events   48   1   17
   activities   48   1   18   exercise   49   1   19
   activities   49   1   20   events   49   1   21   pounds   49   1   22   exercise   50   1   23
   activities   50   1   24   events   50   1   25   hour(s)   51   1   26   day(s)   51   1   27   episodes   52   1   28   panic attacks   52   1   29   episodes   53   1   30   day(s)   53   1   31   week(s)   53   1   32   episodes   54   1   33   day(s)   54   1   34   week(s)   54   1   35   events   55   1   36   events   56   1   37   religious services   57   1   38   events   58   1   39	   minute(s)   58   1   40   day(s)   58   1   41   events   59   1   42
   activities   59   1       s  s   ФZ     30.0   45   Treatment results   0   0   0   portal_revamp.aspx€€€€€€€€   32768   0   1   1   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   5   0   0   91   REVAMP Report   0   1   90   revamp_report.aspx   target="_blank"€€€€   59   33554432   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0€€€€   1   0   90   Reports   1   0   0   #€€€€€€€€   59   33554432   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   5   0   0   44   Close Patient   0   1   3   revamp.aspx€€€€(   onclick="window.location='revamp.aspx';"   59   0   1   1   0   1   3   Close Patient   32   32   Images/exit_door.png   0   1€€€€   0   0€€€€   1   0   32   Content Management   1   1   23   #€€€€€€€€   59   31457280   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0€€€€   0   0   33
   Edit pages   0   1   32   cms_page_edit.aspx€€€€€€€€   59   14680064   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0€€€€   1   0   34
   Edit menus   0   1   32   cms_menu_edit.aspx€€€€€€€€   59   16777216   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0€€€€   1   0   35   Messages   0   0   0   #€€€€Н   onclick="winrpt.showReport('messagescenter',['null'],{maximizable:false, width:($(window).width() - 50), height:($(window).height() - 50)});"   59   0   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   6   0   0   38   Messages   0   0   0   message_center.aspx€€€€€€€€   32768   0   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   6   0   0   4   New Patient   0   1   3   #€€€€P   onclick="window.location='pat_demographics.aspx?newpatient=true&patconsents=1';"   59   4096   1   0   0   1   3   New Patient   32   32   Images/user_add.png   0   2€€€€   0   0€€€€   1   1   43   Case Management   0   1   23   event_management.aspx€€€€€€€€   59   4175   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0€€€€   1   0   37   Home   0   0   0   portal_start.aspx€€€€€€€€   32768   0   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   1   0   0   39   Home   0   0   0   Default.aspx€€€€€€€€   32768   0   0   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   1   0   0   41	   Education   0   0   0   education.aspx€€€€€€€€   32768   0   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   4   0   0   42   Questionnaires   0   0   0   patient_assessment.aspx€€€€€€€€   32768   0   1   0   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   3   0   0   23
   Management   1   0   0   #€€€€€€€€   59   0   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0   4   0   0   24   Data Management   1   1   23   #€€€€€€€€   59   32768   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0€€€€   0   0   25   SOAP Note Templates   0   1   24   #€€€€/   onclick="window.location='template_mgmt.aspx';"   59   32768   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0€€€€   1   0   28   Administration   1   0   0   #€€€€€€€€   59   131072   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0   5   0   0   29   User Administration   0   1   28   user_admin.aspx€€€€€€€€   59   131072   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0€€€€   1   0   31   System Settings   0   1   28   system_settings.aspx€€€€€€€€   59   131072   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0€€€€   1   0   36   About   0   0   0   #€€€€4   onclick="Ext.onReady(function(){winAbout.show();});"   32827   0   1   0   0   0   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0   7   0   0   15   Summary Page   0   1   3   #€€€€,   onclick="window.location='pat_summary.aspx'"   59   1535   1   1   1   1   2   Summary Page   32   32   Images/ico03_summary.png   0   4€€€€   0   0€€€€   0   0   2   Home   0   0   0   revamp.aspx€€€€€€€€   59   0   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0   1   1   0   3   File   1   0   0   #€€€€€€€€   59   0   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0   2   0   0   5   Patient Lookup   0   1   3   #€€€€O   onclick="Ext.onReady(function(){winPatLookup.show(); getFocus('txtSearch');});"   59   5247   1   0   0   1   3   Lookup Patient   32   32   Images/group_zoom.png   0   3€€€€   0   0€€€€   0   0   6   Clinical Note   1   1   3   #€€€€€€€€   59   25727   1   1   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0€€€€   0   0   8   New Encounter   0   1   6   #0   linkhref="pat_new_encounter.aspx?op0=~%T~&op1=6"1   onclick="newEncounterConfirm(this, 'Encounter');"   59   4175   1   1   0   1   3	   New Visit   32   32   Images/ico01_encounter.png   1   6€€€€   47   1€€€€   0   0   13   Save   0   1   3   #'   id="lnkMasterSave" name="lnkMasterSave"%   onclick="return clickedMasterSave();"   59   0   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0€€€€   0   0   14   Change Password   0   1   3   change_password.aspx€€€€€€€€   59   0   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0€€€€   1   0   17   Assign Assessments   0   1   3   #€€€€7   onclick="window.location='pat_module_assignment.aspx';"   59   5631   1   1   0   1   2   Assign Assessments   32   32   Images/asignAssessments.png   1   9€€€€   0   0€€€€   0   0   40
   My Profile   0   0   0   pat_profile.aspx€€€€€€€€   32768   0   1   1   0   1   1€€€€   32   32€€€€   0€€€€€€€€   0   0   2   0   0   30   Lookup Portal Account   0   1   28   portal_lookup.aspx€€€€€€€€   59   131072   1   0   0   1   1€€€€€€€€€€€€€€€€   0€€€€€€€€   0   0€€€€   1   0       Ы   Ы    Ѕ      31.0   0   Unknown military service   0   1   USAF   1   2   USA   1   3   USN   1   4   USMC   1   5   USCG   1   6   Foreign Service   1       	  	   й6     32.0   0   1   INITIAL EVALUATION€€€€   NA   1   0   1   2000   1   1   INITIAL PHONE CALL   90803	   20-30 MIN   1   0   1   2000   2   1   ONE WEEK FU   90804	   20-30 MIN   1   0   1   2000   3   1   ONE MONTH FU   90805	   20-30 MIN   1   0   1   2000   4   1   AFTER 1 MONTH FU   90806	   45-50 MIN   1   0   1   2000   5   1   THREE MONTHS FU   90807	   45-50 MIN   1   0   1   2000   6   1   AFTER THREE MONTHS FU   90808	   75-80 MIN   1   0   1   2000   7   1   PHONE CALL FU   90809	   75-80 MIN   1   0   1   2000   25   3
   PSYCHOALYS   90845   NA   0   0   1   2000   26   3   FAM PSYCTX W/O PT PRESENT   90846   NA   0   0   3   2000   27   3   FAM PSYCTX W/PT PRESENT   90847   NA   0   0   3   2000   28   3   MLT-FAM GRP PSYCTX   90849   NA   0   0   4   2000   29   3
   GRP PSYCTX   90853   NA   0   0   2   2000   30   3   IA GRP PSYCTX   90857   NA   0   0   2   2000   31   4%   PHARMACOLOGIC MGMT MIN MEDICAL PSYCTX   90862   NA   0   0   1   2000   32   4$   NARCOSYNTHESIS PSYC DX&THER PURPOSES   90865   NA   0   0   1   2000   33   4"   TRANSCRANIAL MAG STIMJ TX PLANNING   90867   NA   0   0   1   2000   34   4%   TRANSCRANIAL MAG STIMJ TX DLVR & MGMT   90868   NA   0   0   1   2000   35   4   ELECTROCONVULSIVE THER   90870   NA   0   0   1   2000   36   4%   INDIV PSYCPHYSTX BFB TRAINJ 20-30 MIN   90875   NA   0   0   1   2000   37   4%   INDIV PSYCPHYSTX BFB TRAINJ 45-50 MIN   90876   NA   0   0   1   2000   38   4   HYPXH   90880   NA   0   0   1   2000   39   4)   ENVIRONMENTAL IVNTJ MGMT PURPOSES PSYC PT   90882   NA   0   0   1   2000   40   4"   PSYC EVAL HOSP RECORDS DX PURPOSES   90885   NA   0   0   1   2000   41   4$   INTERPJ/EXPLNAJ RESULTS PSYC XMS FAM   90887   NA   0   0   1   2000   42   4   PREPJ REPORT PSYC STATUS   90889   NA   0   0   1   2000   43   4   UNLIS PSYC SVC/PX   90899   NA   0   0   1   2000   44   4   BFB TRAINJ ANY MODALITY   90901   NA   0   0   1   2000   45   4   BFB TRAINJ PRNL MUSC   90911   NA   0   0   1   2000   99   1   SELF MANAGEMENT   90829	   75-80 MIN   0   0   1   2000       [  [   <r      33.0   100   Unhealthly Relationships1   Self report improvemnt with current relationships   110   Uncontrolled drinking   Self report of abstinence   120   Alcohol Cravings   Self report of reduced cravings   130>   Frequents bars and clubs most weekends for social interactions;   Social interactions occur at non-alcohol serving locations.       z   z    8      34.0   100   Alcohol Dependence   Alcohol Dependence   1   1   110   Poor Coping Skills   Poor Coping Skills   2   1       л   л    u5      35.0   1   Black or African American   1   2   White   2   3   Asian   3   4    American Indian or Alaska Native   4   5)   Native Hawaiian or Other Pacific Islander   5   6   Some other race   6   99   Unknown race   99       8  8   >”     36.0   1   Access To Recovery                                    €€€€   1   2   Alternative Pain Clinic€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   1   3   Army Community Services€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   1   4   Behavioral Health Clinic€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   1   5"   Child and Family Assistance Center€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   1   6   Clinical Consultant€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   1   7   Family Advocacy Program€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   1   8   Family Life Chaplain/Chaplain€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   1   9)   Military Community Mental Health Resource€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€   1   10&   Primary Care Provider/Medical Provider€€€€€€€€€€€€€€€€€€€€   10€€€€€€€€€€€€€€€€   1       к   к    
(      37.0   9   Self   0   0	   Not Known   1   1   Spouse   1   2   Father   1   3   Mother   1   4   Brother   1   5   Sister   1   6   Son   1   7   Daughter   1   8'   Other (friend, significant other, etc.)   1       Џ»  Џ»   9…8     38.0   370j   FOSQ10 Change 1 wk/Baseline FOSQ10 provides the percentage FOSQ10 change score (with direction maintained)o  SELECT ROUND((((SELECT Avg(eis.score)                  FROM encounter_intake_score eis,                       patient_demographics   p,                       encounter              e                 WHERE eis.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND mid IN (3016)                   AND eis.intake_group_id = 3) /             (SELECT Avg(eis.score)                  FROM encounter_intake_score eis,                       patient_demographics   p,                       encounter              e                 WHERE eis.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND mid IN (3016)                   AND eis.intake_group_id = 1)) * 100),             1)  FROM dual   1   0   5   19€€€€   1   1
   Calculated   375l   Mean change in FOSQ10 at 1 mo from baseline (such that negative scores indicate larger drop in FOSQ10 score)W  SELECT ROUND(((SELECT Avg(eis.score)                 FROM encounter_intake_score eis,                      patient_demographics   p,                      encounter              e                WHERE eis.encounter_id = e.encounter_id                  AND e.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND mid IN (3016)                  AND eis.intake_group_id = 5) -             (SELECT Avg(eis.score)                 FROM encounter_intake_score eis,                      patient_demographics   p,                      encounter              e                WHERE eis.encounter_id = e.encounter_id                  AND e.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND mid IN (3016)                  AND eis.intake_group_id = 1)),             1)  FROM dual   1   0   5   20€€€€   1   1
   Calculated   380F   Standard deviation of change in FOSQ10 at 1 month compared to baselineС   SELECT ROUND(stddev(pck_revamp_report.fngetscorechange(t.patient_id, 3016, 1, 5)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   21€€€€   1   1
   Calculated   385j   FOSQ10 Change 1 mo/Baseline FOSQ10 provides the percentage FOSQ10 change score (with direction maintained)o  SELECT ROUND((((SELECT Avg(eis.score)                  FROM encounter_intake_score eis,                       patient_demographics   p,                       encounter              e                 WHERE eis.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND mid IN (3016)                   AND eis.intake_group_id = 5) /             (SELECT Avg(eis.score)                  FROM encounter_intake_score eis,                       patient_demographics   p,                       encounter              e                 WHERE eis.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND mid IN (3016)                   AND eis.intake_group_id = 1)) * 100),             1)  FROM dual   1   0   5   22€€€€   1   1
   Calculated   390   Mean CESD at baseline  SELECT Round(Avg(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid IN (3024)   AND eis.intake_group_id = 1   1   0   2   16€€€€   1   1
   Calculated   395&   Standard deviation of CESD at baseline  SELECT Round(stddev(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid IN (3024)   AND eis.intake_group_id = 1   1   0   2   17€€€€   1   1
   Calculated   400   Mean CESD at 1 week  SELECT ROUND(Avg(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid IN (3024)   AND eis.intake_group_id = 3   1   0   3   17€€€€   1   1
   Calculated   405$   Standard deviation of CESD at 1 week  SELECT Round(stddev(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid IN (3024)   AND eis.intake_group_id = 3   1   0   3   18€€€€   1   1
   Calculated   410   Mean CESD at 1 month  SELECT ROUND(Avg(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid IN (3024)   AND eis.intake_group_id = 5   1   0   4   16€€€€   1   1
   Calculated   415%   Standard deviation of CESD at 1 month  SELECT Round(stddev(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid IN (3024)   AND eis.intake_group_id = 5   1   0   4   17€€€€   1   1
   Calculated   430d   CESD Change 1 wk/Baseline CESD provides the percentage CESD change score (with direction maintained)o  SELECT ROUND((((SELECT Avg(eis.score)                  FROM encounter_intake_score eis,                       patient_demographics   p,                       encounter              e                 WHERE eis.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND mid IN (3024)                   AND eis.intake_group_id = 3) /             (SELECT Avg(eis.score)                  FROM encounter_intake_score eis,                       patient_demographics   p,                       encounter              e                 WHERE eis.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND mid IN (3024)                   AND eis.intake_group_id = 1)) * 100),             1)  FROM dual   1   0   5   25€€€€   1   1
   Calculated   345&   Standard deviation of FOSQ10 at 1 week  SELECT Round(stddev(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid = 3016   AND eis.intake_group_id = 3   1   0   3   16€€€€   1   1
   Calculated   350   Mean FOSQ10 at 1 month  SELECT ROUND(Avg(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid IN (3016)   AND eis.intake_group_id = 5   1   0   4   14€€€€   1   1
   Calculated   360g   Change in FOSQ10 at 1 wk from baseline (such that negative scores indicate larger drop in FOSQ10 score)W  SELECT ROUND(((SELECT Avg(eis.score)                 FROM encounter_intake_score eis,                      patient_demographics   p,                      encounter              e                WHERE eis.encounter_id = e.encounter_id                  AND e.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND mid IN (3016)                  AND eis.intake_group_id = 3) -             (SELECT Avg(eis.score)                 FROM encounter_intake_score eis,                      patient_demographics   p,                      encounter              e                WHERE eis.encounter_id = e.encounter_id                  AND e.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND mid IN (3016)                  AND eis.intake_group_id = 1)),             1)  FROM dual   1   0   5   17€€€€   1   1
   Calculated   365E   Standard deviation of change in FOSQ10 at 1 week compared to baselineС   SELECT ROUND(stddev(pck_revamp_report.fngetscorechange(t.patient_id, 3016, 1, 3)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   18€€€€   1   1
   Calculated   285$   Standard deviation of SF12 at 1 week2  SELECT (SELECT ROUND(stddev(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 3           AND eis.series = 10) || ', ' ||       (SELECT ROUND(stddev(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 3           AND eis.series = 4) AS MH_PH  FROM dual   1   0   3   14€€€€   1   1
   Calculated   290   Mean SF12 at 1 month,  SELECT (SELECT ROUND(Avg(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 5           AND eis.series = 10) || ', ' ||       (SELECT ROUND(Avg(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 5           AND eis.series = 4) AS MH_PH  FROM dual   1   0   4   12€€€€   1   1
   Calculated   295%   Standard deviation of SF12 at 1 month2  SELECT (SELECT ROUND(stddev(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 5           AND eis.series = 10) || ', ' ||       (SELECT ROUND(stddev(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 5           AND eis.series = 4) AS MH_PH  FROM dual   1   0   4   13€€€€   1   1
   Calculated   300h   Mean change in SF12 at 1 wk from baseline (such that negative scores indicate larger drop in SF12 score)О   SELECT ROUND(avg(pck_revamp_report.fngetscorechange(t.patient_id, 3012, 1, 3)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   11€€€€   1   1
   Calculated   420h   Mean change in CESD at 1 wk from baseline (such that negative scores indicate larger drop in CESD score)W  SELECT ROUND(((SELECT Avg(eis.score)                 FROM encounter_intake_score eis,                      patient_demographics   p,                      encounter              e                WHERE eis.encounter_id = e.encounter_id                  AND e.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND mid IN (3024)                  AND eis.intake_group_id = 3) -             (SELECT Avg(eis.score)                 FROM encounter_intake_score eis,                      patient_demographics   p,                      encounter              e                WHERE eis.encounter_id = e.encounter_id                  AND e.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND mid IN (3024)                  AND eis.intake_group_id = 1)),             1)  FROM dual   1   0   5   23€€€€   1   1
   Calculated   425C   Standard deviation of change in CESD at 1 week compared to baselineС   SELECT ROUND(stddev(pck_revamp_report.fngetscorechange(t.patient_id, 3024, 1, 3)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   24€€€€   1   1
   Calculated   355&   Standard deviation ofFOSQ10 at 1 month  SELECT Round(stddev(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid = 3016   AND eis.intake_group_id = 5   1   0   4   15€€€€   1   1
   Calculated   40w   Number of Home Sleep Tests that failed (i.e., were not of sufficient time and/or number of channels to provide scoring)€€€€   1   0   1   8€€€€   1   1   Manual   45D   Number of Home Sleep Tests that resulted in a positive OSA DiagnosisЁ   select count(*)  from (select t.baseline_ahi, p.*          from patient_demographics p, treatment t         where p.patient_id = t.patient_id           and p.patient_id in (~patients~)           and t.baseline_ahi >= 5) x   1   0   1   9€€€€   1   1
   Calculated   50D   Number of Home Sleep Tests that resulted in a negative OSA Diagnosisэ   select count(*)  from (select t.baseline_ahi, p.*          from patient_demographics p, treatment t         where p.patient_id = t.patient_id           and p.patient_id in (~patients~)           and (t.baseline_ahi is not null and t.baseline_ahi < 5)) x   1   0   1   10€€€€   1   1
   Calculated   55O   Number of days from date questionnaire completed to when the monitor was mailedЖ   select ROUND(Avg(GetEventDays(t.patient_id, 5, 6)), 1) as days_between  from patient_demographics t where t.patient_id in (~patients~)   1   0   1   11€€€€   1   1
   Calculated   60I   Number of days between date that the monitor was mailed and received backЖ   select ROUND(Avg(GetEventDays(t.patient_id, 6, 7)), 1) as days_between  from patient_demographics t where t.patient_id in (~patients~)   1   0   1   12€€€€   1   1
   Calculated   65b   Number of patients prescribed PAP therapy (as indicated by entry of Serial Number in Demographics)Ґ   SELECT Count(*)  FROM cpap_device d, patient_demographics p WHERE d.patient_id = p.patient_id   AND d.serial_number IS NOT NULL   AND p.patient_id in (~patients~)   1   0   1   13€€€€   1   1
   Calculated   70|   The number of patients who accepted PAP therapy (i.e., who took PAP device home and began to use) (as indicated by PAP data)    SELECT Count(*)  FROM patient_event t, patient_demographics p WHERE t.patient_id = p.patient_id   AND t.event_id = 10   AND (t.status = 1 OR t.status_date IS NOT NULL)   AND p.patient_id in (~patients~)   1   0   1   14€€€€   1   1
   Calculated   75^   Mean daily PAP adherence over the first week of PAP use (cumulative use of PAP therapy/7 days)ј   SELECT ROUND(Avg(minutes_of_use), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   2€€€€   1   1
   Calculated   80+   Minimum daily PAP Adherence over the 1 weekј   SELECT ROUND(Min(minutes_of_use), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   3€€€€   1   1
   Calculated   85/   Maximum daily PAP Adherence over the first weekј   SELECT ROUND(Max(minutes_of_use), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   4€€€€   1   1
   Calculated   90E   Standard deviation of average daily PAP Adherence over the first week√   SELECT ROUND(STDDEV(minutes_of_use), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   5€€€€   1   1
   Calculated   95a   Mean residual AHI over the first week (i.e., PAP-measured AHI) over the first one week of PAP useµ   SELECT ROUND(Avg(ahi), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   7€€€€   1   1
   Calculated   125&   Minimum PAP Adherence over first Month»   SELECT ROUND(Min(minutes_of_use), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   2€€€€   1   1
   Calculated   180   Maximum Baseline AHIі   SELECT ROUND(Max(t.baseline_ahi), 1)  FROM treatment t, patient_demographics p WHERE t.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND t.baseline_ahi IS NOT NULL   1   0   2   8€€€€   1   1
   Calculated   185   Standard Deviation Baseline AHIЈ   SELECT ROUND(STDDEV(t.baseline_ahi), 1)  FROM treatment t, patient_demographics p WHERE t.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND t.baseline_ahi IS NOT NULL   1   0   2   9€€€€   1   1
   Calculated   190Y   PAP AHI 1 wk - Baseline AHI (such that negative scores indicate larger drop in AHI score)
  SELECT ROUND(((SELECT Avg(ahi)                 FROM vw_patient_cpap_freport t                WHERE t.patient_id in (~patients~)                  AND (therapy_date >= t.status_date AND                      therapy_date <= (Trunc(status_date) + 7))) -             (SELECT Avg(t.baseline_ahi)                 FROM treatment t, patient_demographics p                WHERE t.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND t.baseline_ahi IS NOT NULL)),             1)  FROM dual   1   0   5   1€€€€   1   1
   Calculated   195c   AHI Change 1 wk / Baseline AHI provides the percentage AHI change score (with direction maintained)  SELECT ROUND((((SELECT Avg(ahi)                  FROM vw_patient_cpap_freport t                 WHERE t.patient_id in (~patients~)                   AND (therapy_date >= t.status_date AND                       therapy_date <= (Trunc(status_date) + 7))) /             (SELECT Avg(t.baseline_ahi)                  FROM treatment t, patient_demographics p                 WHERE t.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.baseline_ahi IS NOT NULL)) * 100),             1)  FROM dual   1   0   5   2€€€€   1   1
   Calculated   200Y   PAP AHI 1 mo - Baseline AHI (such that negative scores indicate larger drop in AHI score)  SELECT ROUND(((SELECT Avg(ahi)                 FROM vw_patient_cpap_freport t                WHERE t.patient_id in (~patients~)                  AND ((t.therapy_date >= t.status_date) AND                      (therapy_date <= Add_months(status_date, 1)))) -             (SELECT Avg(t.baseline_ahi)                 FROM treatment t, patient_demographics p                WHERE t.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND t.baseline_ahi IS NOT NULL)),             1)  FROM dual   1   0   5   3€€€€   1   1
   Calculated   205c   AHI Change 1 mo / Baseline AHI provides the percentage AHI change score (with direction maintained)"  SELECT ROUND((((SELECT Avg(ahi)                  FROM vw_patient_cpap_freport t                 WHERE t.patient_id in (~patients~)                   AND ((t.therapy_date >= t.status_date) AND                       (therapy_date <= Add_months(status_date, 1)))) /             (SELECT Avg(t.baseline_ahi)                  FROM treatment t, patient_demographics p                 WHERE t.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.baseline_ahi IS NOT NULL)) * 100),             1)  FROM dual   1   0   5   4€€€€   1   1
   Calculated   210   Mean ESS at baselineы   SELECT ROUND(Avg(t.score), 1)  FROM encounter_intake_score t, encounter e, patient_demographics p WHERE t.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND t.mid = 3012   AND t.intake_group_id = 1   1   0   2   10€€€€   1   1
   Calculated   215%   Standard deviation of ESS at baselineе   SELECT ROUND(stddev(t.score), 1)  FROM encounter_intake_score t WHERE mid = 3012   AND t.intake_group_id = 1   AND t.encounter_id IN       (SELECT encounter_id          FROM encounter e         WHERE e.patient_id IN (~patients~))   1   0   2   11€€€€   1   1
   Calculated   220   Mean ESS at 1 weekы   SELECT ROUND(Avg(t.score), 1)  FROM encounter_intake_score t, encounter e, patient_demographics p WHERE t.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND t.mid = 3012   AND t.intake_group_id = 3   1   0   3   11€€€€   1   1
   Calculated   225#   Standard deviation of ESS at 1 weekе   SELECT ROUND(stddev(t.score), 1)  FROM encounter_intake_score t WHERE mid = 3012   AND t.intake_group_id = 3   AND t.encounter_id IN       (SELECT encounter_id          FROM encounter e         WHERE e.patient_id IN (~patients~))   1   0   3   12€€€€   1   1
   Calculated   230   Mean ESS at 1 monthы   SELECT ROUND(Avg(t.score), 1)  FROM encounter_intake_score t, encounter e, patient_demographics p WHERE t.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND t.mid = 3012   AND t.intake_group_id = 5   1   0   4   10€€€€   1   1
   Calculated   130&   Maximum PAP Adherence over first Month»   SELECT ROUND(Max(minutes_of_use), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   3€€€€   1   1
   Calculated   135B   Standard deviation of average daily PAP Adherence over first MonthЋ   SELECT ROUND(STDDEV(minutes_of_use), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   4€€€€   1   1
   Calculated   140e   Mean daily residual AHI over first month (i.e., PAP-measured AHI) over the first one month of PAP useљ   SELECT ROUND(Avg(ahi), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   6€€€€   1   1
   Calculated   145   Minimum AHI over first monthљ   SELECT ROUND(Min(ahi), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   7€€€€   1   1
   Calculated   150   Maximum AHI over first monthЊ   SELECT ROUND(Max(ahi), 1)  FROM vw_patient_cpap_freport t  WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   8€€€€   1   1
   Calculated   1558   Standard deviation of average daily AHI over first monthј   SELECT ROUND(STDDEV(ahi), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   9€€€€   1   1
   Calculated   160O   Mean daily mask Leak† (i.e., PAP-measured leak) over the first month of PAP useЊ   SELECT ROUND(Avg(leak), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   5€€€€   1   1
   Calculated   165X   Mean AHI measured on HST at baseline/diagnosis (manual entry in PAP tab of Demographics)і   SELECT ROUND(Avg(t.baseline_ahi), 1)  FROM treatment t, patient_demographics p WHERE t.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND t.baseline_ahi IS NOT NULL   1   0   2   6€€€€   1   1
   Calculated   170!   Number of Baseline AHI registeredЯ   SELECT Count(*)  FROM treatment t, patient_demographics p WHERE t.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND t.baseline_ahi IS NOT NULL   1   0   2   5€€€€   1   1
   Calculated   175   Minimum Baseline AHIі   SELECT ROUND(Min(t.baseline_ahi), 1)  FROM treatment t, patient_demographics p WHERE t.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND t.baseline_ahi IS NOT NULL   1   0   2   7€€€€   1   1
   Calculated   255q   Mean change in ESS at 1 mo compared to baseline ESS (such that negative scores indicate larger drop in ESS score)W  SELECT ROUND((((SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3012                   AND t.intake_group_id = 5) -             (SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3012                   AND t.intake_group_id = 1))),             1)  FROM dual   1   0   5   8€€€€   1   1
   Calculated   260C   Standard deviation of change in ESS at 1 month compared to baselineС   SELECT ROUND(stddev(pck_revamp_report.fngetscorechange(t.patient_id, 3012, 1, 5)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   9€€€€   1   1
   Calculated   265a   ESS Change 1 mo/Baseline ESS provides the percentage ESS change score (with direction maintained)]  SELECT ROUND((((SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3012                   AND t.intake_group_id = 5) /             (SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3012                   AND t.intake_group_id = 1)) * 100),             1)  FROM dual   1   0   5   10€€€€   1   1
   Calculated   270   Mean SF12 at baseline,  SELECT (SELECT ROUND(Avg(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 1           AND eis.series = 10) || ', ' ||       (SELECT ROUND(Avg(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 1           AND eis.series = 4) AS MH_PH  FROM dual   1   0   2   12€€€€   1   1
   Calculated   275&   Standard deviation of SF12 at baseline2  SELECT (SELECT ROUND(stddev(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 1           AND eis.series = 10) || ', ' ||       (SELECT ROUND(stddev(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 1           AND eis.series = 4) AS MH_PH  FROM dual   1   0   2   13€€€€   1   1
   Calculated   280   Mean SF12 at 1 week,  SELECT (SELECT ROUND(Avg(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 3           AND eis.series = 10) || ', ' ||       (SELECT ROUND(Avg(eis.score), 1)          FROM encounter_intake_score eis,               patient_demographics   p,               encounter              e         WHERE eis.encounter_id = e.encounter_id           AND e.patient_id = p.patient_id           AND p.patient_id in (~patients~)           AND eis.mid = 3020           AND eis.intake_group_id = 3           AND eis.series = 4) AS MH_PH  FROM dual   1   0   3   13€€€€   1   1
   Calculated   235$   Standard deviation of ESS at 1 monthе   SELECT ROUND(stddev(t.score), 1)  FROM encounter_intake_score t WHERE mid = 3012   AND t.intake_group_id = 5   AND t.encounter_id IN       (SELECT encounter_id          FROM encounter e         WHERE e.patient_id IN (~patients~))   1   0   4   11€€€€   1   1
   Calculated   240m   Mean change in ESS at 1 wk compared to baseline (such that negative scores indicate larger drop in ESS score)E  SELECT ROUND(((SELECT Avg(t.score)                 FROM encounter_intake_score t,                      encounter              e,                      patient_demographics   p                WHERE t.encounter_id = e.encounter_id                  AND e.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND t.mid = 3012                  AND t.intake_group_id = 3) -             (SELECT Avg(t.score)                 FROM encounter_intake_score t,                      encounter              e,                      patient_demographics   p                WHERE t.encounter_id = e.encounter_id                  AND e.patient_id = p.patient_id                  AND p.patient_id in (~patients~)                  AND t.mid = 3012                  AND t.intake_group_id = 1)),             1)  FROM dual   1   0   5   5€€€€   1   1
   Calculated   245B   Standard deviation of change in ESS at 1 week compared to baselineС   SELECT ROUND(stddev(pck_revamp_report.fngetscorechange(t.patient_id, 3012, 1, 3)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   6€€€€   1   1
   Calculated   250a   ESS Change 1 wk/Baseline ESS provides the percentage ESS change score (with direction maintained)]  SELECT ROUND((((SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3012                   AND t.intake_group_id = 3) /             (SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3012                   AND t.intake_group_id = 1)) * 100),             1)  FROM dual   1   0   5   7€€€€   1   1
   Calculated   305C   Standard deviation of change in SF12 at 1 week compared to baselineС   SELECT ROUND(stddev(pck_revamp_report.fngetscorechange(t.patient_id, 3020, 1, 3)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   12€€€€   1   1
   Calculated   310d   SF12 Change 1 wk/Baseline SF12 provides the percentage SF12 change score (with direction maintained)]  SELECT ROUND((((SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3020                   AND t.intake_group_id = 3) /             (SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3020                   AND t.intake_group_id = 1)) * 100),             1)  FROM dual   0   0   5   13€€€€   1   1
   Calculated   315h   Mean change in SF12 at 1 mo from baseline (such that negative scores indicate larger drop in SF12 score)О   SELECT ROUND(avg(pck_revamp_report.fngetscorechange(t.patient_id, 3012, 1, 5)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   14€€€€   1   1
   Calculated   320D   Standard deviation of change in SF12 at 1 month compared to baselineС   SELECT ROUND(stddev(pck_revamp_report.fngetscorechange(t.patient_id, 3020, 1, 5)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   15€€€€   1   1
   Calculated   330   Mean FOSQ10 at baseline  SELECT Round(Avg(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid = 3016   AND eis.intake_group_id = 1   1   0   2   14€€€€   1   1
   Calculated   335(   Standard deviation of FOSQ10 at baseline  SELECT Round(stddev(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid = 3016   AND eis.intake_group_id = 1   1   0   2   15€€€€   1   1
   Calculated   340   Mean FOSQ10 at 1 week  SELECT ROUND(Avg(eis.score), 1)  FROM encounter_intake_score eis, patient_demographics p, encounter e WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = p.patient_id   AND p.patient_id in (~patients~)   AND mid IN (3016)   AND eis.intake_group_id = 3   1   0   3   15€€€€   1   1
   Calculated   450Q   Summary score from the Patient Satisfaction Subscale of the REVAMP Questionnairesк   SELECT ROUND(Avg(eis.score), 1)  FROM encounter_intake_score eis, encounter e, patient_demographics pd WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = pd.patient_id   AND pd.patient_id in (~patients~)   AND eis.mid = 3028   1   0   6   3€€€€   1   1
   Calculated   455;   Number of times that REVAMP was logged into by the patients‘   SELECT Count(*)  FROM fx_audit t,        fx_user f,       patient_demographics p WHERE t.fx_user_id = f.fx_user_id   AND f.fx_user_id = p.fx_user_id   AND p.patient_id in (~patients~)   AND t.audit_name = 'LOGIN'   1   0   6   4€€€€   1   1
   Calculated   460D   Number of times that REVAMP Education section was clicked/accessed??к   SELECT Count(*)  FROM fx_audit t,        fx_user f,       patient_demographics p WHERE t.fx_user_id = f.fx_user_id   AND t.fx_user_id = p.fx_user_id   AND p.patient_id in (~patients~)   AND t.audit_name = 'PAGE_ACCESS: education.aspx'   1   0   6   5€€€€   1   1
   Calculated   465A   Number of times that REVAMP Graphs section was clicked/accessed??о   SELECT Count(*)  FROM fx_audit t,        fx_user f,       patient_demographics p WHERE t.fx_user_id = f.fx_user_id   AND t.fx_user_id = p.fx_user_id   AND p.patient_id in (~patients~)   AND t.audit_name = 'PAGE_ACCESS: portal_revamp.aspx'   1   0   6   6€€€€   1   1
   Calculated   470   Number of participants enrolledЂ   SELECT Count(*)  FROM patient_demographics t, patient_event e WHERE t.patient_id = e.patient_id   AND e.event_id = 1   AND e.status != 0   AND t.patient_id in (~patients~)   1   0   1   2€€€€   1   1
   Calculated   475   Number of males enrolledм   SELECT count(*)  FROM patient_demographics t, patient_event e WHERE t.patient_id = e.patient_id   AND upper(Getpatientcolumnvalue(t.gender, t.patient_id)) = 'M'   AND e.event_id = 1   AND e.status != 0   AND t.patient_id in (~patients~)   1   0   1   3€€€€   1   1
   Calculated   480   Average age at baselineє  SELECT ROUND(Avg(Trunc(Months_between(SYSDATE,                                      To_date(Getpatientcolumnvalue(t.dob,                                                                    t.patient_id),                                              'MM/DD/YYYY')) / 12)),             1)  FROM patient_demographics t, patient_event e WHERE t.patient_id = e.patient_id   AND e.event_id = 1   AND e.status != 0   AND t.patient_id in (~patients~)   1   0   2   1€€€€   1   1
   Calculated   435h   Mean change in CESD at 1 mo from baseline (such that negative scores indicate larger drop in CESD score)џ  SELECT ((SELECT Avg(eis.score)           FROM encounter_intake_score eis,                patient_demographics   p,                encounter              e          WHERE eis.encounter_id = e.encounter_id            AND e.patient_id = p.patient_id            AND p.patient_id in (~patients~)            AND mid IN (3024)            AND eis.intake_group_id = 5) -       (SELECT Avg(eis.score)           FROM encounter_intake_score eis,                patient_demographics   p,                encounter              e          WHERE eis.encounter_id = e.encounter_id            AND e.patient_id = p.patient_id            AND p.patient_id in (~patients~)            AND mid IN (3024)            AND eis.intake_group_id = 1))  FROM dual   1   0   5   26€€€€   1   1
   Calculated   440D   Standard deviation of change in CESD at 1 month compared to baselineС   SELECT ROUND(stddev(pck_revamp_report.fngetscorechange(t.patient_id, 3024, 1, 5)),1)FROM patient_demographics tWHERE t.patient_id in (~patients~)   0   0   5   27€€€€   1   1
   Calculated   445d   CESD Change 1 mo/Baseline CESD provides the percentage CESD change score (with direction maintained)o  SELECT ROUND((((SELECT Avg(eis.score)                  FROM encounter_intake_score eis,                       patient_demographics   p,                       encounter              e                 WHERE eis.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND mid IN (3024)                   AND eis.intake_group_id = 5) /             (SELECT Avg(eis.score)                  FROM encounter_intake_score eis,                       patient_demographics   p,                       encounter              e                 WHERE eis.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND mid IN (3024)                   AND eis.intake_group_id = 1)) * 100),             1)  FROM dual   1   0   5   28€€€€   1   1
   Calculated   485"   Standard deviation of baseline age≈  SELECT ROUND(stddev(TRUNC(Months_between(SYSDATE,                                         To_date(Getpatientcolumnvalue(t.dob,                                                                       t.patient_id),                                                 'MM/DD/YYYY')) / 12)),             1)  FROM patient_demographics t, patient_event e WHERE t.patient_id = e.patient_id   AND e.event_id = 1   AND e.status != 0   AND t.patient_id in (~patients~)   1   0   2   2€€€€   1   1
   Calculated   490   Average BMI at baselineЌ   SELECT Round(Avg(Getpatientbmi(t.patient_id)), 1)  FROM patient_demographics t, patient_event e WHERE t.patient_id = e.patient_id   AND e.event_id = 1   AND e.status != 0   AND t.patient_id in (~patients~)   1   0   2   3€€€€   1   1
   Calculated   495"   Standard deviation of baseline BMI–   SELECT Round(stddev(Getpatientbmi(t.patient_id)), 1)  FROM patient_demographics t, patient_event e WHERE t.patient_id = e.patient_id   AND e.event_id = 1   AND e.status != 0   AND t.patient_id in (~patients~)   1   0   2   4€€€€   1   1
   Calculated   500   Average ESS as baselineк   SELECT ROUND(Avg(eis.score), 1)  FROM encounter_intake_score eis, encounter e, patient_demographics pd WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = pd.patient_id   AND pd.patient_id in (~patients~)   AND eis.mid = 3012   1   0€€€€€€€€€€€€   0   0
   Calculated   505   Average FOSQ at baseline€   SELECT ROUND(Avg(eis.score), 1)  FROM encounter_intake_score eis, encounter e, patient_demographics pd WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = pd.patient_id   AND pd.patient_id in (~patients~)   AND eis.mid = 3016   AND eis.series = 1   1   0€€€€€€€€€€€€   0   0
   Calculated   510   Average SF12 at baseline€€€€   1   0€€€€€€€€€€€€   0   0€€€€   515   Average CES-D at baselineк   SELECT ROUND(Avg(eis.score), 1)  FROM encounter_intake_score eis, encounter e, patient_demographics pd WHERE eis.encounter_id = e.encounter_id   AND e.patient_id = pd.patient_id   AND pd.patient_id in (~patients~)   AND eis.mid = 3024   1   0€€€€€€€€€€€€   0   0
   Calculated   520   Number of HSTs performed    SELECT Count(*)  FROM patient_demographics t, patient_event e WHERE t.patient_id = e.patient_id   AND e.event_id = 7   AND (e.status != 0 OR e.status_date IS NOT NULL)   AND t.patient_id in (~patients~)   1   0€€€€€€€€€€€€   0   0
   Calculated   525   Average AHI on diagnostic testЦ   SELECT ROUND(Avg(t.baseline_ahi), 1)  FROM treatment t, patient_demographics pd WHERE t.patient_id = pd.patient_id   AND pd.patient_id in (~patients~)   1   0€€€€€€€€€€€€   0   0
   Calculated   530    Number of subjects with AHI >= 5  SELECT Count(*)  FROM (SELECT pc.patient_id, Avg(pc.ahi) AS ahi          FROM patient_cpap pc, patient_demographics pd         WHERE pc.patient_id = pd.patient_id           AND pd.patient_id in (~patients~)         GROUP BY pc.patient_id) t WHERE t.ahi >= 5   1   0   6   2€€€€   1   1
   Calculated   535    Number of patients with PAP data∆   SELECT Count(*)  FROM (SELECT DISTINCT t1.patient_id          FROM patient_cpap t1, patient_demographics t2         WHERE t1.patient_id = t2.patient_id           AND t2.patient_id in (~patients~)) t   1   0   1   15€€€€   1   1
   Calculated   325d   SF12 Change 1 mo/Baseline SF12 provides the percentage SF12 change score (with direction maintained)]  SELECT ROUND((((SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3020                   AND t.intake_group_id = 5) /             (SELECT Avg(t.score)                  FROM encounter_intake_score t,                       encounter              e,                       patient_demographics   p                 WHERE t.encounter_id = e.encounter_id                   AND e.patient_id = p.patient_id                   AND p.patient_id in (~patients~)                   AND t.mid = 3020                   AND t.intake_group_id = 1)) * 100),             1)  FROM dual   0   0   5   16€€€€   1   1
   Calculated   540   Average PAP Adherence 1 WeekЌ   SELECT ROUND(Avg(pc.minutes_of_use), 1)  FROM vw_patient_cpap_freport pc WHERE pc.patient_id in (~patients~)   AND (pc.therapy_date >= pc.status_date AND       pc.therapy_date <= Trunc(pc.status_date) + 7)   1   0   3   1€€€€   1   1
   Calculated   545   Average AHI on PAP downloadУ   SELECT ROUND(Avg(pc.ahi), 1)  FROM patient_cpap pc, patient_demographics pd WHERE pc.patient_id = pd.patient_id   AND pd.patient_id in (~patients~)   1   0   6   1€€€€   1   1
   Calculated   9998   Race_  SELECT t.race AS name, Count(*) AS value  FROM (SELECT pd.patient_id,               Nvl(sr.race_title, 'No Info Available') AS race          FROM patient_demographics pd, patient_race pr, stat_race sr         WHERE pd.patient_id = pr.patient_id(+)           AND pr.race_id = sr.race_id(+)           AND pd.patient_id in (~patients~)) t GROUP BY t.race   1   1€€€€€€€€€€€€   1   1
   Calculated   9999	   EthnicityЂ  SELECT t.ethnicity AS name, Count(*) AS value  FROM (SELECT pd.patient_id,               Nvl(se.ethnicity_name, 'No Info Available') AS ethnicity          FROM patient_demographics pd,               patient_ethnicity    pe,               stat_ethnicity       se         WHERE pd.patient_id = pe.patient_id(+)           AND pe.ethnicity_id = se.ethnicity_id(+)           AND pd.patient_id in (~patients~)) t GROUP BY t.ethnicity   1   1€€€€€€€€€€€€   1   1
   Calculated   476€€€€€€€€   1   0   2   .1€€€€   1   1€€€€   477   BASELINE€€€€   1   0   2   .2€€€€   1   1€€€€   478€€€€€€€€   1   0   2   .3€€€€   1   1€€€€   536€€€€€€€€   1   0   3   .1€€€€   1   1€€€€   537   1 WEEK€€€€   1   0   3   .2€€€€   1   1€€€€   538€€€€€€€€   1   0   3   .3€€€€   1   1€€€€   116€€€€€€€€   1   0   4   .1€€€€   1   1€€€€   117   1 MONTH€€€€   1   0   4   .2€€€€   1   1€€€€   118€€€€€€€€   1   0   4   .3€€€€   1   1€€€€   186€€€€€€€€   1   0   5   .1€€€€   1   1€€€€   187   CHANGE€€€€   1   0   5   .2€€€€   1   1€€€€   188€€€€€€€€   1   0   5   .3€€€€   1   1€€€€   542€€€€€€€€   1   0   6   .1€€€€   1   1€€€€   543€€€€€€€€   1   0   6   .2€€€€   1   1€€€€   544€€€€€€€€   1   0   6   .3€€€€   1   1€€€€   100   Minimum AHI over the first weekµ   SELECT ROUND(Min(ahi), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   8€€€€   1   1
   Calculated   105!   Maximum AHI 1 over the first weekµ   SELECT ROUND(Max(ahi), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   9€€€€   1   1
   Calculated   110;   Standard deviation of average daily AHI over the first WeekЄ   SELECT ROUND(STDDEV(ahi), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   10€€€€   1   1
   Calculated   115^   Mean mask Leak†over the first week (i.e., PAP-measured AHI) over the first one week of PAP useґ   SELECT ROUND(Avg(leak), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND (therapy_date >= t.status_date AND       therapy_date <= (Trunc(status_date) + 7))   1   0   3   6€€€€   1   1
   Calculated   120`   Mean daily PAP adherence over the first month of PAP use (cumulative use of PAP therapy/30 days)»   SELECT ROUND(Avg(minutes_of_use), 1)  FROM vw_patient_cpap_freport t WHERE t.patient_id in (~patients~)   AND ((t.therapy_date >= t.status_date) AND       (therapy_date <= Add_months(status_date, 1)))   1   0   4   1€€€€   1   1
   Calculated   56   Number of patients approached to participate in REVAMP€€€€   1   0   1   1€€€€   1   1   Manual   10P   Reasons for not enrolling in the REVAMP program (will be a categorical variable)€€€€   1   0   1   4€€€€   1   1   Manual   15]   Number of patients who sign up with REVAMP (ie, change password and log-in at least one time)™   SELECT Count(*)  FROM patient_event t, patient_demographics p WHERE t.patient_id = p.patient_id   AND t.event_id = 1   AND t.status = 1   AND p.patient_id in (~patients~)   1   0   1   5€€€€   1   1
   Calculated   20B   Percentage of patients who watched the OSA patient education video-  SELECT Round(((SELECT Count(*)                 FROM patient_event t, patient_demographics p                WHERE t.patient_id = p.patient_id                  AND t.event_id = 3                  AND t.status = 1                  AND p.patient_id in (~patients~)) /             (SELECT Count(*)                 FROM patient_event t, patient_demographics p                WHERE t.patient_id = p.patient_id                  AND t.event_id = 1                  AND t.status = 1                  AND p.patient_id in (~patients~)) * 100),             1)  FROM dual   1   0   1   16€€€€   1   1
   Calculated   250   Percentage of patients who watched the HST video-  SELECT Round(((SELECT Count(*)                 FROM patient_event t, patient_demographics p                WHERE t.patient_id = p.patient_id                  AND t.event_id = 4                  AND t.status = 1                  AND p.patient_id in (~patients~)) /             (SELECT Count(*)                 FROM patient_event t, patient_demographics p                WHERE t.patient_id = p.patient_id                  AND t.event_id = 1                  AND t.status = 1                  AND p.patient_id in (~patients~)) * 100),             1)  FROM dual   1   0   1   17€€€€   1   1
   Calculated   30$   Number of Home Sleep Tests attempted€€€€   1   0   1   6€€€€   1   1   Manual   35j   Number of Home Sleep Tests that are considered valid (i.e., have sufficient time and channels for scoring)д   select count(*)  from (select t.baseline_ahi, p.*          from patient_demographics p, treatment t         where p.patient_id = t.patient_id           and p.patient_id in (~patients~)           and t.baseline_ahi is not null) x   1   0   1   7€€€€   1   1
   Calculated       Е  Е   eф      39.0   18   In what city did you meet your spouse/significant other?   1   1   2!   What was your childhood nickname?   1   1   33   What is the name of your favorite childhood friend?   1   1   4+   What street did you live on in third grade?   1   1   5K   What is your oldest siblingТs birthday month and year? (e.g., January 1900)   1   1   6-   What is the middle name of your oldest child?   1   1   7*   What is your oldest sibling's middle name?   1   1   8+   What school did you attend for sixth grade?   2   1   9N   What was your childhood phone number including area code? (e.g., 000-000-0000)   2   1   105   In what city or town did your mother and father meet?   2   1   113   What was the last name of your third grade teacher?   2   1   120   What is your maternal grandmother's maiden name?   2   1   13    In what town was your first job?   2   1       /  /   Mс      40.0   0€€€€   0   1   Early Full Remission   1   2   Early Partial Remission   2   3   Sustained Full Remission   3   4   Sustained Partial Remission   4   5   With Physiological Dependence   5   6    Without Physiological Dependence   6   72   Early Full Remission With Physiological Dependence   7   85   Early Partial Remission With Physiological Dependence   8   96   Sustained Full Remission With Physiological Dependence   9   109   Sustained Partial Remission With Physiological Dependence   10   115   Early Full Remission Without Physiological Dependence   11   128   Early Partial Remission Without Physiological Dependence   12   139   Sustained Full Remission Without Physiological Dependence   13   14<   Sustained Partial Remission Without Physiological Dependence   14       Z  Z    ч      41.0   1   ALABAMA   AL   1   2   ALASKA   AK   1   3   AMERICAN SAMOA   AS   1   4   ARIZONA    AZ   1   5   ARKANSAS   AR   1   6   CALIFORNIA    CA   1   7	   COLORADO    CO   1   8   CONNECTICUT   CT   1   9   DELAWARE   DE   1   10   DISTRICT OF COLUMBIA   DC   1   11   FEDERATED STATES OF MICRONESIA   FM   1   12   FLORIDA   FL   1   13   GEORGIA   GA   1   14   GUAM    GU   1   15   HAWAII   HI   1   16   IDAHO   ID   1   17   ILLINOIS   IL   1   18   INDIANA   IN   1   19   IOWA   IA   1   20   KANSAS   KS   1   21   KENTUCKY   KY   1   22	   LOUISIANA   LA   1   23   MAINE   ME   1   24   MARSHALL ISLANDS   MH   1   25   MARYLAND   MD   1   26   MASSACHUSETTS   MA   1   27   MICHIGAN   MI   1   28	   MINNESOTA   MN   1   29   MISSISSIPPI   MS   1   30   MISSOURI   MO   1   31   MONTANA   MT   1   32   NEBRASKA   NE   1   33   NEVADA   NV   1   34   NEW HAMPSHIRE   NH   1   35
   NEW JERSEY   NJ   1   36
   NEW MEXICO   NM   1   37   NEW YORK   NY   1   38   NORTH CAROLINA   NC   1   39   NORTH DAKOTA   ND   1   40   NORTHERN MARIANA ISLANDS   MP   1   41   OHIO   OH   1   42   OKLAHOMA   OK   1   43   OREGON   OR   1   44   PALAU   PW   1   45   PENNSYLVANIA   PA   1   46   PUERTO RICO   PR   1   47   RHODE ISLAND   RI   1   48   SOUTH CAROLINA   SC   1   49   SOUTH DAKOTA   SD   1   50	   TENNESSEE   TN   1   51   TEXAS   TX   1   52   UTAH   UT   1   53   VERMONT   VT   1   54   VIRGIN ISLANDS   VI   1   55	   VIRGINIA    VA   1   56
   WASHINGTON   WA   1   57   WEST VIRGINIA   WV   1   58	   WISCONSIN   WI   1   59   WYOMING   WY   1   60   AA   AA   1   61   AE   AE   1   62   AP   AP   1   0€€€€€€€€   0       ^  ^   шж     42.0   26   REVAMP Report    00000010000000000000000000000000
   0x02000000   33554432   1   1   View REVAMP Report   8   0   22
   CMS Author    00000000001000000000000000000000
   0x00200000   2097152   1   1€€€€   7   0   23
   CMS Editor    00000000010000000000000000000000
   0x00400000   4194304   1   1€€€€   7   0   24   CMS Publisher    00000000100000000000000000000000
   0x00800000   8388608   1   1€€€€   7   0   25   CMS Edit Menus    00000001000000000000000000000000
   0x01000000   16777216   1   1€€€€   7   0   0   None    00000000000000000000000000000000
   0x00000000   0   0   0"   Used to allow access to login page   0   1   1   Note / Subjective    00000000000000000000000000000001
   0x00000001   1   1   1.   Gives Access to the Subjective Tab on the Note   1   1   2   Note / Objective    00000000000000000000000000000010
   0x00000002   2   1   1-   Gives Access to the Objective Tab on the Note   1   1   3   Note / Assessment    00000000000000000000000000000100
   0x00000004   4   1   1.   Gives Access to the Assessment Tab on the Note   1   1   4   Note / Plan    00000000000000000000000000001000
   0x00000008   8   1   1(   Gives Access to the Plan Tab on the Note   1   1   5	   Referrals    00000000000000000000000000010000
   0x00000010   16   1   10   Gives Access to the Treatment Plan Referrals Tab   1   1   6   Note / Flags & To Do    00000000000000000000000000100000
   0x00000020   32   1   1/   Gives Access to the Treatment Flags on the Note   1   1   7   Lock / Unlock Note    00000000000000000000000001000000
   0x00000040   64   1   1.   Allows a User to toggle Lock state of the Note   2   0   8
   Admin Note    00000000000000000000000010000000
   0x00000080   128   0   0%   Allows a User to create an Admin Note   2   1   9   Sign Admin Note    00000000000000000000000100000000
   0x00000100   256   0   0#   Allows a User to sign an Admin Note   2   0   10
   Group Note    00000000000000000000001000000000
   0x00000200   512   0   0€€€€   2   1   11
   Close Case    00000000000000000000010000000000
   0x00000400   1024   0   0   Allows a User to Close a Case   2   0   12   Case Management    00000000000000000000100000000000
   0x00000800   2048   0   0€€€€   3   1   13   Process New Patients    00000000000000000001000000000000
   0x00001000   4096   1   1%   Allows a User to Process New Patients   3   1   14   Review Notes    00000000000000000010000000000000
   0x00002000   8192   1   1   Allows a User to Review a Note   3   1   15   Review All Notes    00000000000000000100000000000000
   0x00004000   16384   1   1!   Allows a User to Review All Notes   3   1   16   Data Management    00000000000000001000000000000000
   0x00008000   32768   1   1)   Gives Access to Data Management Functions   4   1   17   Population Reporting    00000000000000010000000000000000
   0x00010000   65536   0   0€€€€   4   1   18   Administrator    00000000000000100000000000000000
   0x00020000   131072   1   1I   Gives the User Administration Functions including User Account Management   5   1   19   Substance History    00000000000001000000000000000000
   0x00040000   262144   0   0&   Gives Access to Substance History Page   1   1   21   View Action Reports    00000000000100000000000000000000
   0x00100000   1048576   0   09   Gives Access to Action Reports for the Aggregates Reports   6   0   20   Aggregate Reports    00000000000010000000000000000000
   0x00080000   524288   0   0&   Gives Access to Aggregate Reports Page   6   0       ]  ]   ЁZ      43.0   32768   Patient   0   0€€€€   1   Provider   1   1€€€€   2   Provider Intern   0   0€€€€   4   Case Manager   0   0€€€€   8   Front Office   0   0€€€€   16   Administrator   1   1€€€€   32   Office Manager   0   0€€€€   64	   undefined   0   0€€€€   128	   undefined   0   0€€€€   256	   undefined   0   0€€€€       Н  Н   ЄW      44.0   administrator@email.com   N/A   N/A   Administrator   0125AECAFD1120201275236   0   N/A   Administrator   N/A   N/A
   2103413101   0125   20-11-2012 07:52:37   0   0   977   N/A   0   revamp@intellicacorp.com   N/A   N/A   REVAMP Front Desk   0125ADJBAD1123201213329   0€€€€
   Front Desk€€€€€€€€   (555)555-1111   0125   23-11-2012 13:03:40   0   0   983€€€€   0       ]D  ]D   Щ     45.0   240   1   Month Phone FU - Subjective   1020   31-01-2013 17:52:05   1   10y  One Month Follow-up Clinic Note

[PARTICIPANT_NAME]

Phone follow-up of this [AGE] yo patient on positive airway pressure (PAP) for treatment of obstructive sleep apnea.

SUBJECTIVE:

Section 1 of patient FU questionnaire:

The patient states that [HISHER] current quality of sleep is: [1MO_MID2004_TID1_QID1].

Section 2 of patient FU questionnaire:

Since the last sleep appointment has the patient had:
  Any surgeries or hospitalizations? [1MO_MID2004_TID2_QID1] [1MO_MID2004_TID2_QID2]  
  Any changes in medical problems? [1MO_MID2004_TID2_QID3] [1MO_MID2004_TID2_QID4]
  Changes in work times or home responsibilities? [1MO_MID2004_TID2_QID5] [1MO_MID2004_TID2_QID6]
  Any accidents due to falling asleep while driving? [1MO_MID2004_TID2_QID7] [1MO_MID2004_TID2_QID8]

Epworth Sleepiness Scale: (list all)

SITUATION 
                 
[1MO_MID3012_TID1_QID1] Sitting and reading
[1MO_MID3012_TID1_QID2] Watching TV
[1MO_MID3012_TID1_QID3] Sitting inactive in a public place(i.e. a theater or a meeting)
[1MO_MID3012_TID1_QID4] As a passenger in a car for an hour without break
[1MO_MID3012_TID1_QID5] Lying down to rest in the afternoon when circumstances permit
[1MO_MID3012_TID1_QID6] Sitting and talking to someone
[1MO_MID3012_TID1_QID7] Sitting quietly after lunch without alcohol
[1MO_MID3012_TID1_QID8]

Total score: [1MO_MID3012_SCORE]
 
Section 3 and 5 of patient FU questionnaire:
 
PAP TREATMENT

The patient states that on PAP treatment, the patient's sleep problem is: [1MO_MID2004_TID3_QID1].   

The patient indicates that he/she uses PAP treatment: [1MO_MID2004_TID4_QID1].

The patient endorses the following: (list those checked by patient) [1MO_MID2004_TID4_QID3][1MO_MID2004_TID4_QID4][1MO_MID2004_TID4_QID5][1MO_MID2004_TID4_QID6][1MO_MID2004_TID4_QID7]    

The patient estimates that he/she uses PAP treatment on average for [1MO_MID2004_TID4_QID8]. 

In the past month, the patient estimates that he/she did not use the treatment on [1MO_MID2004_TID4_QID9]. 

Does the patient use extra oxygen with the PAP unit? Yes/No   

Change in treatment-related symptoms that patient rated as most important AT 1-WEEK FU (from SAQLI)

[1MO_MID3019_SUMMARY]
HEATED HUMIDIFIER:
The patient uses the heated humidifier: [1MO_MID2004_TID5_QID1]

The heated humidifier is set on [1MO_MID2004_TID5_QID2]
 
The patient complains of: (list all)

  1. nasal congestion/runny nose: [1MO_MID2004_TID5_QID3] 
  2. dry mouth/throat: [1MO_MID2004_TID5_QID4]

MASK INTERFACE: 
The patient's current mask type is: [1MO_MID2004_TID6_QID1] 

The patient endorses the following: (list all that apply)[1MO_MID2004_TID6_QID3_RID146] [1MO_MID2004_TID6_QID3_RID148][1MO_MID2004_TID6_QID3_RID150] 

[1MO_MID2004_TID6_QID3_RID150_B][1MO_MID2004_TID6_QID4][1MO_MID2004_TID6_QID5]              

IMPROVEMENTS NOTED BY PATIENT ON PAP: (list those items checked by patient)

The patient has experienced the following on PAP treatment:
[1MO_MID2004_TID7_QID1][1MO_MID2004_TID7_QID2]

RESPONSES TO QUESTIONNAIRES

Patient's total scores on the following questionnaires
  Epworth (baseline; date): [1MO_MID3012_GRP_1_SCORE]
  Epworth (current; date): [1MO_MID3012_GRP_5_SCORE]

  FOSQ-10 (baseline; date): [1MO_MID3016_GRP_1_SCORE]
  FOSQ-10 (current; date): [1MO_MID3016_GRP_5_SCORE]

  CES-D (baseline; date): [1MO_MID3024_GRP_1_SCORE]
  CES-D (current; date): [1MO_MID3024_GRP_5_SCORE]

  SF-12 (baseline; date): [1MO_MID3020_GRP_1_SCORE]
  SF-12 (current; date): [1MO_MID3020_GRP_5_SCORE]

  ISI (baseline; date): [1MO_MID3004_GRP_1_SCORE]
  ISI (current; date): [1MO_MID3004_GRP_5_SCORE]

Change in OSA symptoms that patient rated as most important PRIOR to PAP treatment (from SAQLI)

[1MO_MID3019_OSA_SUMMARY]   1   241   2   Week Phone FU - Objective   1020   31-01-2013 17:56:00   1   9I   OBJECTIVE (from PAP data)

PAP ADHERENCE DOWNLOAD

[PAP_USAGE_STATISTICS]   1   243   1   3 Month Subjective   949   29-03-2013 11:24:57   1   22{  Three Month Follow-up Clinic Note

[PARTICIPANT_NAME]

Phone follow-up of this [AGE] yo patient on positive airway pressure (PAP) for treatment of obstructive sleep apnea.

SUBJECTIVE:

Section 1 of patient FU questionnaire:

The patient states that [HISHER] current quality of sleep is: [3MO_MID2004_TID1_QID1].

Section 2 of patient FU questionnaire:

Since the last sleep appointment has the patient had:
  Any surgeries or hospitalizations? [3MO_MID2004_TID2_QID1] [3MO_MID2004_TID2_QID2]  
  Any changes in medical problems? [3MO_MID2004_TID2_QID3] [3MO_MID2004_TID2_QID4]
  Changes in work times or home responsibilities? [3MO_MID2004_TID2_QID5] [3MO_MID2004_TID2_QID6]
  Any accidents due to falling asleep while driving? [3MO_MID2004_TID2_QID7] [3MO_MID2004_TID2_QID8]

Epworth Sleepiness Scale: (list all)

SITUATION 
                 
[3MO_MID3012_TID1_QID1] Sitting and reading
[3MO_MID3012_TID1_QID2] Watching TV
[3MO_MID3012_TID1_QID3] Sitting inactive in a public place(i.e. a theater or a meeting)
[3MO_MID3012_TID1_QID4] As a passenger in a car for an hour without break
[3MO_MID3012_TID1_QID5] Lying down to rest in the afternoon when circumstances permit
[3MO_MID3012_TID1_QID6] Sitting and talking to someone
[3MO_MID3012_TID1_QID7] Sitting quietly after lunch without alcohol
[3MO_MID3012_TID1_QID8]

Total score: [3MO_MID3012_SCORE]
 
Section 3 and 5 of patient FU questionnaire:
 
PAP TREATMENT

The patient states that on PAP treatment, the patient's sleep problem is: [3MO_MID2004_TID3_QID1].   

The patient indicates that he/she uses PAP treatment: [3MO_MID2004_TID4_QID1].

The patient endorses the following: (list those checked by patient) [3MO_MID2004_TID4_QID3][3MO_MID2004_TID4_QID4][3MO_MID2004_TID4_QID5][3MO_MID2004_TID4_QID6][3MO_MID2004_TID4_QID7]    

The patient estimates that he/she uses PAP treatment on average for [3MO_MID2004_TID4_QID8]. 

In the past month, the patient estimates that he/she did not use the treatment on [3MO_MID2004_TID4_QID9]. 

Does the patient use extra oxygen with the PAP unit? Yes/No   

Change in treatment-related symptoms that patient rated as most important AT 1-WEEK FU (from SAQLI)

[3MO_MID3019_SUMMARY]
HEATED HUMIDIFIER:
The patient uses the heated humidifier: [3MO_MID2004_TID5_QID1]

The heated humidifier is set on [3MO_MID2004_TID5_QID2]
 
The patient complains of: (list all)

  1. nasal congestion/runny nose: [3MO_MID2004_TID5_QID3] 
  2. dry mouth/throat: [3MO_MID2004_TID5_QID4]

MASK INTERFACE: 
The patient's current mask type is: [3MO_MID2004_TID6_QID1] 

The patient endorses the following: (list all that apply)[3MO_MID2004_TID6_QID3_RID146] [3MO_MID2004_TID6_QID3_RID148][3MO_MID2004_TID6_QID3_RID150] 

[3MO_MID2004_TID6_QID3_RID150_B][3MO_MID2004_TID6_QID4][3MO_MID2004_TID6_QID5]              

IMPROVEMENTS NOTED BY PATIENT ON PAP: (list those items checked by patient)

The patient has experienced the following on PAP treatment:
[3MO_MID2004_TID7_QID1][3MO_MID2004_TID7_QID2]

RESPONSES TO QUESTIONNAIRES

Patient's total scores on the following questionnaires
  Epworth (baseline; date): [3MO_MID3012_GRP_1_SCORE]
  Epworth (current; date): [3MO_MID3012_GRP_7_SCORE]

  FOSQ-10 (baseline; date): [3MO_MID3016_GRP_1_SCORE]
  FOSQ-10 (current; date): [3MO_MID3016_GRP_7_SCORE]

  CES-D (baseline; date): [3MO_MID3024_GRP_1_SCORE]
  CES-D (current; date): [3MO_MID3024_GRP_7_SCORE]

  SF-12 (baseline; date): [3MO_MID3020_GRP_1_SCORE]
  SF-12 (current; date): [3MO_MID3020_GRP_7_SCORE]

  ISI (baseline; date): [3MO_MID3004_GRP_1_SCORE]
  ISI (current; date): [3MO_MID3004_GRP_7_SCORE]

Change in OSA symptoms that patient rated as most important PRIOR to PAP treatment (from SAQLI)

[3MO_MID3019_OSA_SUMMARY]   1   244   2   3 Month Objective   949   29-03-2013 11:25:53   1   22I   OBJECTIVE (from PAP data)

PAP ADHERENCE DOWNLOAD

[PAP_USAGE_STATISTICS]   1   280   1   Initial Evaluation - Subjective   1020   24-05-2013 08:45:18   1   82d  Initial Sleep Evaluation 

Name of patient:  [PARTICIPANT_NAME]
SS #:             [SSN]
Date of note:     [CURR_DATE] 
Height:           [HEIGHT] inches
Weight:           [WEIGHT] pounds
BMI:             [INI_BMI] kg/m2

Phone assessment of this [AGE] year old patient referred for evaluation of suspected obstructive sleep apnea.

Has the patient ever seen a sleep specialist, either for a daytime or overnight appointment? [INI_MID1000_TID2_QID2]

SLEEP SCHEDULE AND SYMPTOMS

Patient's usual sleep schedule during the past month.  
  Usual bed time: [INI_MID3014_TID1_QID1]  
  Minutes it usually takes to fall asleep each night: [INI_MID3014_TID1_QID2].
  Time patient usually gets up in the morning: [INI_MID3014_TID1_QID3]
  Estimated hours of actual sleep at night: [INI_MID3014_TID1_QID4].

The patient answered, "[INI_MID1000_TID3_QID1]."

[INI_MID1000_TID3_QID3]
[INI_MID1000_TID3_QID2]
The patient endorses the following sleep problems:   
[INI_MID1000_TID2_QID1]
The patient also endorses the following sleep problems:  
[INI_MID3018_TID0_QID1]
The patient identifies the following 5 OSA-related  symptoms as the most important: 
[INI_MID3018_TID1_QID1]
The patient has: [INI_MID1000_TID2_QID6].  

The patient's sleep is regularly disrupted by:
[INI_MID1000_TID2_QID7][INI_MID1000_TID2_QID8]     
How often during the past month has the patient taken sleep medication (prescribed or OTC)?
[INI_MID3014_TID3_QID2] 

SCORES ON VALIDATED QUESTIONNAIRES

MAP - Multivariable Apnea Prediction (MAP) index = [INI_SCORE_MID3002] 
  Loud snoring: [INI_MID3002_TID1_QID1]
  Snorting or gasping: [INI_MID3002_TID1_QID2]
  Breathing stops or choking or struggling for breath: [INI_MID3002_TID1_QID3]
  
ESS - Epworth Sleepiness Scale score = [INI_SCORE_MID3012] 
(an ESS score above 10 is considered to indicative of excessive daytime sleepiness)

  [INI_MID3012_TID1_QID1] Sitting and reading
  [INI_MID3012_TID1_QID2] Watching TV
  [INI_MID3012_TID1_QID3] Sitting inactive in a public place
  [INI_MID3012_TID1_QID4] As a passenger in a car for an hour without a break
  [INI_MID3012_TID1_QID5] Lying down to rest in the afternoon when circumstances permit
  [INI_MID3012_TID1_QID6] Sitting and talking to someone
  [INI_MID3012_TID1_QID7] Sitting quietly after lunch without alcohol
  [INI_MID3012_TID1_QID8] In a car, while stopped for a few minutes in traffic

ISI - Insomnia Severity Index = [INI_SCORE_MID3004]
(15-21 = moderately severe insomnia; 22-28 = severe insomnia)

  Current severity of difficulty falling asleep: [INI_MID3004_TID1_QID1]
  Current severity of difficulty staying asleep: [INI_MID3004_TID1_QID2]
  Current severity of waking up too early: [INI_MID3004_TID1_QID3]
  Satisfaction with current sleep pattern (0=very satisfied; 4=very dissatisfied): [INI_MID3004_TID1_QID4]
  To what extent does the sleep problem interfere with daily functioning: [INI_MID3004_TID1_QID5]
  How noticeable to others does patient think the sleeping problem is in terms of impairing the patient's quality of life: [INI_MID3004_TID1_QID6]
  How worried/distressed is the patient about the sleep problem: [INI_MID3004_TID1_QID7]

FOSQ-10 - Functional Outcomes of Sleep Questionnaire (short version) score = [INI_SCORE_MID3016] 

PSQI - Pittsburgh Sleep Quality Index = [INI_SCORE_MID3014]

CES-D - Center for Epidemiologic Studies Depression score = [INI_SCORE_MID3024]
        (a CES-D score greater than 14 is felt to be indicative of severe depression)

CIRCADIAN QUESTIONS 
  Does the patient routinely travel to other time zones? [INI_MID3008_TID1_QID1]  
  At what time of day would the patient get up if entirely free to plan the day? [INI_MID3008_TID1_QID2]
  During the first half hour after having awakened in the morning, how tired does the patient feel? [INI_MID3008_TID1_QID3] 
  At what time in the evening does the patient feel tired and, as a result, in need of sleep? [INI_MID3008_TID1_QID4] 
  At what time of the day does the patient reach "feeling best" peak? [INI_MID3008_TID1_QID5]
  Does the patient feel like a "morning" or "evening" type person? [INI_MID3008_TID1_QID6] 

PARASOMNIA QUESTIONS
  Legs twitching or kicking when sleeping? [INI_MID3010_TID1_QID1] 
  Sleepwalking? [INI_MID3010_TID1_QID2]
  Night eating? [INI_MID3010_TID1_QID4]
  Grinding teeth? [INI_MID3010_TID1_QID5]
  Shout, scream, punch or flail arms in air during sleep? [INI_MID3010_TID1_QID6]
  Violent or injurious behavior during sleep? [INI_MID3010_TID1_QID8]
  Nightmares (frightening dreams)? [INI_MID3010_TID1_QID10]
  Seizure, convulsion, "fit" during sleep in past 6 months? [INI_MID3010_TID1_QID12]

SOCIAL HISTORY
Is the patient enrolled in MyHealtheVet? [INI_MID1000_TID1_QID1]

Education: Highest level of education completed is [INI_MID1000_TID1_QID2]. 

Employment: the patient is [INI_MID1000_TID2_QID9][INI_MID1000_TID2_QID10][INI_MID1000_TID2_QID11].

Exercise: [INI_MID1000_TID3_QID4]

Alcohol consumption: [INI_MID1000_TID3_QID5]
[INI_MID1000_TID3_QID6][INI_MID1000_TID3_QID7]

Caffeine consumption: [INI_MID1000_TID3_QID8]
[INI_MID1000_TID3_QID9]
Smoking: [INI_MID1000_TID4_QID1]
[INI_MID1000_TID4_QID2][INI_MID1000_TID4_QID3][INI_MID1000_TID4_QID4][INI_MID1000_TID4_QID5][INI_MID1000_TID4_QID6]   1   205   1   Week Phone FU - Subjective   1020   20-11-2012 20:35:00   1   9x  One Week Follow-up Clinic Note

[PARTICIPANT_NAME]

Phone follow-up of this [AGE] yo patient on positive airway pressure (PAP) for treatment of obstructive sleep apnea.

SUBJECTIVE:

Section 1 of patient FU questionnaire:

The patient states that [HISHER] current quality of sleep is: [1WK_MID2004_TID1_QID1].

Section 2 of patient FU questionnaire:

Since the last sleep appointment has the patient had:
  Any surgeries or hospitalizations? [1WK_MID2004_TID2_QID1] [1WK_MID2004_TID2_QID2]  
  Any changes in medical problems? [1WK_MID2004_TID2_QID3] [1WK_MID2004_TID2_QID4]
  Changes in work times or home responsibilities? [1WK_MID2004_TID2_QID5] [1WK_MID2004_TID2_QID6]
  Any accidents due to falling asleep while driving? [1WK_MID2004_TID2_QID7] [1WK_MID2004_TID2_QID8]

Epworth Sleepiness Scale: (list all)

SITUATION 
                 
[1WK_MID3012_TID1_QID1] Sitting and reading
[1WK_MID3012_TID1_QID2] Watching TV
[1WK_MID3012_TID1_QID3] Sitting inactive in a public place(i.e. a theater or a meeting)
[1WK_MID3012_TID1_QID4] As a passenger in a car for an hour without break
[1WK_MID3012_TID1_QID5] Lying down to rest in the afternoon when circumstances permit
[1WK_MID3012_TID1_QID6] Sitting and talking to someone
[1WK_MID3012_TID1_QID7] Sitting quietly after lunch without alcohol
[1WK_MID3012_TID1_QID8]

Total score: [1WK_MID3012_SCORE]
 
Section 3 and 5 of patient FU questionnaire:
 
PAP TREATMENT

The patient states that on PAP treatment, the patient's sleep problem is: [1WK_MID2004_TID3_QID1].   

The patient indicates that he/she uses PAP treatment: [1WK_MID2004_TID4_QID1].

The patient endorses the following: (list those checked by patient) [1WK_MID2004_TID4_QID3][1WK_MID2004_TID4_QID4][1WK_MID2004_TID4_QID5][1WK_MID2004_TID4_QID6][1WK_MID2004_TID4_QID7]    

The patient estimates that he/she uses PAP treatment on average for [1WK_MID2004_TID4_QID8]. 

In the past month, the patient estimates that he/she did not use the treatment on [1WK_MID2004_TID4_QID9]. 

Does the patient use extra oxygen with the PAP unit? Yes/No   

Change in treatment-related symptoms that patient rated as most important AT 1-WEEK FU (from SAQLI)

[1WK_MID3019_SUMMARY]
HEATED HUMIDIFIER:
The patient uses the heated humidifier: [1WK_MID2004_TID5_QID1]

The heated humidifier is set on [1WK_MID2004_TID5_QID2]
 
The patient complains of: (list all)

  1. nasal congestion/runny nose: [1WK_MID2004_TID5_QID3] 
  2. dry mouth/throat: [1WK_MID2004_TID5_QID4]

MASK INTERFACE: 
The patient?s current mask type is: [1WK_MID2004_TID6_QID1] 

The patient endorses the following: (list all that apply)[1WK_MID2004_TID6_QID3_RID146] [1WK_MID2004_TID6_QID3_RID148][1WK_MID2004_TID6_QID3_RID150] 

[1WK_MID2004_TID6_QID3_RID150_B][1WK_MID2004_TID6_QID4][1WK_MID2004_TID6_QID5]              

IMPROVEMENTS NOTED BY PATIENT ON PAP: (list those items checked by patient)

The patient has experienced the following on PAP treatment:
[1WK_MID2004_TID7_QID1][1WK_MID2004_TID7_QID2]

RESPONSES TO QUESTIONNAIRES

Patient's total scores on the following questionnaires
  Epworth (baseline; date): [1WK_MID3012_GRP_1_SCORE]
  Epworth (current; date): [1WK_MID3012_GRP_3_SCORE]

  FOSQ-10 (baseline; date): [1WK_MID3016_GRP_1_SCORE]
  FOSQ-10 (current; date): [1WK_MID3016_GRP_3_SCORE]

  CES-D (baseline; date): [1WK_MID3024_GRP_1_SCORE]
  CES-D (current; date): [1WK_MID3024_GRP_3_SCORE]

  SF-12 (baseline; date): [1WK_MID3020_GRP_1_SCORE]
  SF-12 (current; date): [1WK_MID3020_GRP_3_SCORE]

  ISI (baseline; date): [1WK_MID3004_GRP_1_SCORE]
  ISI (current; date): [1WK_MID3004_GRP_3_SCORE]

Change in OSA symptoms that patient rated as most important PRIOR to PAP treatment (from SAQLI)

[1WK_MID3019_OSA_SUMMARY]   1   320   2   Month Phone FU - Objective   1020   26-12-2012 12:48:00   1   10I   OBJECTIVE (from PAP data)

PAP ADHERENCE DOWNLOAD

[PAP_USAGE_STATISTICS]   1   301   2   Objective TC17   970   09-09-2013 07:59:28   1   101   Text Objective TC17   0   302   3   Assessment TC17   970   09-09-2013 07:59:52   1   101   Test Assessment TC17   0   300   1   Subjective TC17 edited   970   09-09-2013 07:59:07   1   101   Text Subjective TC17   0       В  В   'M      46.0   22   3 Month Phone FU€€€€   1   970   07-01-2013 22:51:50   970   1   9   Week Phone FU€€€€   1   1020   29-03-2013 11:34:56   949   1   10   Month Phone FU€€€€   1   1020   20-11-2012 20:15:55   1020   1   82   Initial Evaluation€€€€   1   1020   24-05-2013 08:17:43   1020   1   101   Template Group1€€€€   1   970   09-09-2013 07:57:20   970   0       у™  у™   шD5     47.0   INIT_PHONE_EVAL   100П   select to_char(t.event_date, 'FMDy, Month Ddth, YYYY') as template_text
  from patient_event t
 where t.patient_id = ~%s~
   and t.event_id = 8€€€€   1€€€€€€€€   1MO_MID2004_TID7_QID1   210a   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 2004, 7, 1, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID7_QID2   210О   SELECT chr(9) || 'Other improvements with PAP use: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 7, 2, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3019_OSA_SUMMARY   210X   SELECT PCK_NOTE_PREFILL.fnGet1MOOSASymptoms(~%s~, 3019, 5, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   PAP_USAGE_STATISTICS   210C   SELECT PCK_NOTE_PREFILL.fnPAPUsage(~%s~) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID1_QID1   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 1, 1, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID1_QID1   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 1, 1, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID1_QID1   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 1, 1, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   HISHER   1  select decode(fnc_utl_decstr(gender,
                             ~%k~,
                             ~%s~),
              'M',
              'his',
              'F',
              'her',
              'their')
  from patient_demographics t
 where t.patient_id = ~%s~€€€€   1€€€€€€€€   INI_SCORE_MID3012   230O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3012, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3012_TID1_QID1   230Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3012_TID1_QID2   230Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3012_TID1_QID3   230Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_GRP_1_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3012, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_GRP_5_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3012, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3016_GRP_1_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3016, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3016_GRP_5_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3016, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3024_GRP_1_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3024, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3024_GRP_5_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3024, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3020_GRP_1_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3020, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3020_GRP_5_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3020, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3004_GRP_1_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3004, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3004_GRP_5_SCORE   210S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3004, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3012_TID1_QID4   230Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 4, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3012_TID1_QID5   230Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3012_TID1_QID6   230Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 6, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3012_TID1_QID7   230Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 7, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3012_TID1_QID8   230Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 8, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_SCORE_MID3004   230O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3004, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3004_TID1_QID1   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3004, 1, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3004_TID1_QID2   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3004, 1, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3004_TID1_QID3   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3004, 1, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3004_TID1_QID4   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3004, 1, 4, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3004_TID1_QID5   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3004, 1, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3004_TID1_QID6   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3004, 1, 6, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3004_TID1_QID7   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3004, 1, 7, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_SCORE_MID3016   230O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3016, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_SCORE_MID3014   230O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3014, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_SCORE_MID3024   230O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3024, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3008_TID1_QID1   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3008, 1, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3008_TID1_QID2   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3008, 1, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3008_TID1_QID3   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3008, 1, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3008_TID1_QID4   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3008, 1, 4, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3008_TID1_QID5   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3008, 1, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3008_TID1_QID6   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3008, 1, 6, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3010_TID1_QID1   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3010, 1, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3010_TID1_QID2   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3010, 1, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3010_TID1_QID4   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3010, 1, 4, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3010_TID1_QID5   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3010, 1, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3010_TID1_QID6   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3010, 1, 6, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3010_TID1_QID8   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3010, 1, 8, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3010_TID1_QID10   230^   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3010, 1, 10, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3010_TID1_QID12   230^   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3010, 1, 12, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID1_QID1   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 1, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID1_QID2   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 1, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   SLEEP_STUDY_DATE   100П   select to_char(t.event_date, 'FMDy, Month Ddth, YYYY') as template_text
  from patient_event t
 where t.patient_id = ~%s~
   and t.event_id = 8€€€€   1€€€€€€€€   1WK_MID2004_TID2_QID1   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 1, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID2_QID2   200∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 2, 3), 1,  'For? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 2, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID2_QID3   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 3, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID2_QID4   200∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 4, 3), 1,  'How? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 4, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID2_QID5   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 5, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID2_QID6   200∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 6, 3), 1,  'How? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 6, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID2_QID7   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 7, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID2_QID8   200±   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 8, 3), 1,  'Date? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 8, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID3_QID1   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 3, 1, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID4_QID1   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 1, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID4_QID3   200с   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 3, 3), 1, chr(10) || chr(9) ||  'May fall asleep before putting on the mask/PAP.  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 3, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID4_QID4   200с   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 4, 3), 1, chr(10) || chr(9) ||  'May remove the mask unknowingly while sleeping.  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 4, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID4_QID5   200  SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 5, 3), 1, chr(10) || chr(9) ||  'May forget to put the mask/ PAP back on after going to the bathroom. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 5, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID4_QID6   200д   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 6, 3), 1, chr(10) || chr(9) ||  'May forget to use my PAP with naps. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 6, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID4_QID7   200й   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 7, 3), 1, chr(10) || chr(9) ||  'May forget to take my PAP when I travel. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 7, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID4_QID8   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 8, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID4_QID9   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 9, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID5_QID1   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 1, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID5_QID2   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 2, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID5_QID3   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 3, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID5_QID4   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 4, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID6_QID1   200]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 6, 1, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID6_QID3_RID146   200Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 146, 3), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 146, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID6_QID3_RID148   200Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 148, 3), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 148, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID6_QID3_RID150   200Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 150, 3), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 150, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID6_QID3_RID150_B   200ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 150, 3), 1, 'Does not like the current mask because: (list those items checked by patient)' || chr(10), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID6_QID4   200a   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 2004, 6, 4, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID6_QID5   200≥   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 6, 5, 3), 1,  'Other:  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 6, 5, 3), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID7_QID1   200a   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 2004, 7, 1, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID2004_TID7_QID2   200О   SELECT chr(9) || 'Other improvements with PAP use: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 7, 2, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3004_GRP_1_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3004, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3004_GRP_3_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3004, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_GRP_1_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3012, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_GRP_3_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3012, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_SCORE   200O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3012, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_TID1_QID1   200Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 1, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_TID1_QID2   200Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 2, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_TID1_QID3   200Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 3, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_TID1_QID4   200Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 4, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_TID1_QID5   200Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 5, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_TID1_QID6   200Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 6, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3012_TID1_QID7   200Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 7, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3016_GRP_1_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3016, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   PARTICIPANT_NAME   100Њ   select upper(fnc_utl_decstr(p.first_name, ~%k~, ~%s~)) || ' ' ||
       upper(fnc_utl_decstr(p.last_name, ~%k~, ~%s~)) as template_text
 from patient_demographics p
where p.patient_id = ~%s~€€€€   1€€€€€€€€   HESHE   1  select decode(fnc_utl_decstr(gender,
                             ~%k~,
                             ~%s~),
              'M',
              'He',
              'F',
              'She',
              '(UNKNOWN)')
  from patient_demographics t
 where t.patient_id = ~%s~€€€€   1€€€€€€€€   1WK_MID3016_GRP_3_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3016, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   AGE   1w  SELECT to_char(trunc(months_between(SYSDATE,
                                    to_date(fnc_utl_decstr(DOB,
                                                           ~%k~,
                                                           ~%s~),
                                            'mm/dd/yyyy')) / 12)) as template_text
  FROM PATIENT_DEMOGRAPHICS
 WHERE PATIENT_ID = ~%s~€€€€   1€€€€€€€€	   ETHNICITY   1Л   SELECT LOWER(ethnicity_name) FROM stat_ethnicity WHERE ethnicity_id IN (SELECT ethnicity_id FROM patient_ethnicity WHERE PATIENT_ID = ~%s~)€€€€   1€€€€€€€€   GENDER   1Й   SELECT decode(GENDER,'M','male','F','female','gender is not knknown') as template_text  FROM PATIENT_DEMOGRAPHICS WHERE PATIENT_ID = ~%s~€€€€   1€€€€€€€€   1WK_MID3019_OSA_SUMMARY   200X   SELECT PCK_NOTE_PREFILL.fnGet1WKOSASymptoms(~%s~, 3019, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   RACE   1N   select pck_pat_ethnicity_race.GetPatientRaceListString(~%s~) as race from dual€€€€   1€€€€€€€€   1WK_MID3012_TID1_QID8   200J  SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 3012, 1, 8, 66, 3),         1,  ' ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3012, 1, 8, 3),         0,     PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 8, 3) || ' In a car (as the driver), while stopping for a few minutes in traffic') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3019_SUMMARY   200W   SELECT PCK_NOTE_PREFILL.fnGet1WKTxSymptoms(~%s~, 3019, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3020_GRP_1_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3020, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3020_GRP_3_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3020, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3024_GRP_1_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3024, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1WK_MID3024_GRP_3_SCORE   200S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3024, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID2_QID1   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 1, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID2_QID2   220∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 2, 7), 1,  'For? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 2, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID2_QID3   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 3, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID2_QID4   220∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 4, 7), 1,  'How? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 4, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID2_QID5   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 5, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID2_QID6   220∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 6, 7), 1,  'How? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 6, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID2_QID7   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 7, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID2_QID8   220±   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 8, 7), 1,  'Date? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 8, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID3_QID1   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 3, 1, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID4_QID1   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 1, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID4_QID3   220с   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 3, 7), 1, chr(10) || chr(9) ||  'May fall asleep before putting on the mask/PAP.  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 3, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID4_QID4   220с   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 4, 7), 1, chr(10) || chr(9) ||  'May remove the mask unknowingly while sleeping.  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 4, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID4_QID5   220  SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 5, 7), 1, chr(10) || chr(9) ||  'May forget to put the mask/ PAP back on after going to the bathroom. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 5, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID4_QID6   220д   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 6, 7), 1, chr(10) || chr(9) ||  'May forget to use my PAP with naps. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 6, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID4_QID7   220й   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 7, 7), 1, chr(10) || chr(9) ||  'May forget to take my PAP when I travel. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 7, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID4_QID8   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 8, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID4_QID9   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 9, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID5_QID1   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 1, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID5_QID2   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 2, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID5_QID3   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 3, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID5_QID4   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 4, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID6_QID1   220]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 6, 1, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID6_QID3_RID146   220Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 146, 7), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 146, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID6_QID3_RID148   220Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 148, 7), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 148, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID6_QID3_RID150   220Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 150, 7), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 150, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID6_QID3_RID150_B   220ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 150, 7), 1, 'Does not like the current mask because: (list those items checked by patient)' || chr(10), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID6_QID4   220a   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 2004, 6, 4, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID6_QID5   220≥   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 6, 5, 7), 1,  'Other:  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 6, 5, 7), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID7_QID1   220a   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 2004, 7, 1, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID2004_TID7_QID2   220О   SELECT chr(9) || 'Other improvements with PAP use: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 7, 2, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3004_GRP_1_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3004, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3004_GRP_7_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3004, 7, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_GRP_1_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3012, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_GRP_7_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3012, 7, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_SCORE   220O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3012, 7, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_TID1_QID1   220Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 1, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_TID1_QID2   220Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 2, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_TID1_QID3   220Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 3, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_TID1_QID4   220Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 4, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_TID1_QID5   220Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 5, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_TID1_QID6   220Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 6, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_TID1_QID7   220Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 7, 7) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3012_TID1_QID8   220H  SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 3012, 1, 8, 66, 7),         1,  ' ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3012, 1, 8, 7),         0,   PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 8, 7) || ' In a car (as the driver), while stopping for a few minutes in traffic') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3016_GRP_1_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3016, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3016_GRP_7_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3016, 7, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3019_OSA_SUMMARY   220X   SELECT PCK_NOTE_PREFILL.fnGet3MOOSASymptoms(~%s~, 3019, 7, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3019_SUMMARY   220W   SELECT PCK_NOTE_PREFILL.fnGet3MOTxSymptoms(~%s~, 3019, 7, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3020_GRP_1_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3020, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3020_GRP_7_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3020, 7, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3024_GRP_1_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3024, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   3MO_MID3024_GRP_7_SCORE   220S   SELECT PCK_NOTE_PREFILL.fnGetScoreData(~%s~, 3024, 7, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   SSN   1Б   select upper(fnc_utl_decstr(t.ssn, ~%k~, t.patient_id)) as TEMPLATE_TEXT
  from patient_demographics t
 where t.patient_id = ~%s~€€€€   1€€€€€€€€	   CURR_DATE   1@   select to_char(sysdate, 'mm/dd/yyyy') as TEMPLATE_TEXT from dual€€€€   1€€€€€€€€   HEIGHT   1  select distinct t.patient_height as TEMPLATE_TEXT
  from encounter t, encounter_intake_responses r
 where r.encounter_id = t.encounter_id
   and r.mid = 3002
   and r.intake_group_id = 1
   and t.encounter_type_id = 99
   and t.patient_height is not null
   and t.patient_id = ~%s~€€€€   1€€€€€€€€   WEIGHT   1  select distinct t.patient_weight as TEMPLATE_TEXT
  from encounter t, encounter_intake_responses r
 where r.encounter_id = t.encounter_id
   and r.mid = 3002
   and r.intake_group_id = 1
   and t.encounter_type_id = 99
   and t.patient_height is not null
   and t.patient_id = ~%s~€€€€   1€€€€€€€€   INI_MID1000_TID2_QID2   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 2, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3014_TID1_QID1   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3014, 1, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3014_TID1_QID2   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3014, 1, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3014_TID1_QID3   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3014, 1, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3014_TID1_QID4   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3014, 1, 4, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID1   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID3   230Ф   SELECT 'When patient naps, the nap is ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 3, 1) 
|| ' refreshing.' AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID2   230е   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 1000, 3, 1, 146, 1), 0, 
chr(10) || 'The usual length of the naps is ' 
|| PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 2, 1) || chr(10)) 
AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID2_QID1   230a   select PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 1000, 2, 1, 1) as TEMPLATE_TEXT from dual€€€€   1€€€€€€€€   INI_MID3018_TID1_QID1   230a   select PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 3018, 1, 1, 1) as TEMPLATE_TEXT from dual€€€€   1€€€€€€€€   INI_MID3018_TID1_QID2   230a   select PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 3018, 1, 1, 1) as TEMPLATE_TEXT from dual€€€€   1€€€€€€€€   INI_MID1000_TID2_QID6   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 2, 6, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3014_TID3_QID2   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3014, 3, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3002_TID1_QID1   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3002, 1, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3002_TID1_QID2   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3002, 1, 2, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3002_TID1_QID3   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3002, 1, 3, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID2_QID7   230a   select PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 1000, 2, 7, 1) as TEMPLATE_TEXT from dual€€€€   1€€€€€€€€   INI_MID1000_TID2_QID8   230a   select PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 1000, 2, 8, 1) as TEMPLATE_TEXT from dual€€€€   1€€€€€€€€   INI_SCORE_MID3002   230O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3002, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   ONE_WK_DATE   100Р   select to_char(t.event_date, 'FMDy, Month Ddth, YYYY') as template_text
  from patient_event t
 where t.patient_id = ~%s~
   and t.event_id = 12€€€€   1€€€€€€€€   ONE_MN_DATE   100Р   select to_char(t.event_date, 'FMDy, Month Ddth, YYYY') as template_text
  from patient_event t
 where t.patient_id = ~%s~
   and t.event_id = 15€€€€   1€€€€€€€€   THREE_MN_DATE   100Р   select to_char(t.event_date, 'FMDy, Month Ddth, YYYY') as template_text
  from patient_event t
 where t.patient_id = ~%s~
   and t.event_id = 18€€€€   1€€€€€€€€   1MO_MID2004_TID4_QID4   210с   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 4, 5), 1, chr(10) || chr(9) ||  'May remove the mask unknowingly while sleeping.  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 4, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID4_QID5   210  SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 5, 5), 1, chr(10) || chr(9) ||  'May forget to put the mask/ PAP back on after going to the bathroom. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 5, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID4_QID6   210д   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 6, 5), 1, chr(10) || chr(9) ||  'May forget to use my PAP with naps. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 6, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID4_QID7   210й   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 7, 5), 1, chr(10) || chr(9) ||  'May forget to take my PAP when I travel. ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 7, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID4_QID8   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 8, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID4_QID9   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 9, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_TID1_QID1   210Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 1, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_TID1_QID2   210Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 2, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_TID1_QID3   210Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 3, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_TID1_QID4   210Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 4, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_TID1_QID5   210Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 5, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_TID1_QID6   210Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 6, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_TID1_QID7   210Z   SELECT PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 7, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_TID1_QID8   210\  SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 3012, 1, 8, 66, 5), 
        1,  ' ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 3012, 1, 8, 5), 
        0, 
        PCK_NOTE_PREFILL.fnGetQuestionScore(~%s~, 3012, 1, 8, 5) || ' In a car (as the driver), while stopping for a few minutes in traffic'  
        ) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3012_SCORE   210O   SELECT PCK_NOTE_PREFILL.fnGetScore(~%s~, 3012, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID3019_SUMMARY   210W   SELECT PCK_NOTE_PREFILL.fnGet1MOTxSymptoms(~%s~, 3019, 5, 3) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID5_QID1   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 1, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID5_QID2   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 2, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID5_QID3   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 3, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID5_QID4   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 5, 4, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID6_QID1   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 6, 1, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID6_QID3_RID146   210Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 146, 5), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 146, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID6_QID3_RID148   210Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 148, 5), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 148, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID6_QID3_RID150   210Ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 150, 5), 1, chr(10) || chr(9) ||  ' ' || PCK_NOTE_PREFILL.fnGetResponseByID(~%s~, 2004, 6, 3, 150, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID6_QID3_RID150_B   210ћ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 2004, 6, 3, 150, 5), 1, 'Does not like the current mask because: (list those items checked by patient)' || chr(10), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID2_QID1   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 1, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID2_QID2   210∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 2, 5), 1,  'For? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 2, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID2_QID3   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 3, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID2_QID4   210∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 4, 5), 1,  'How? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 4, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID2_QID5   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 5, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID2_QID6   210∞   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 6, 5), 1,  'How? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 6, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID2_QID7   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 7, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID2_QID8   210±   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 2, 8, 5), 1,  'Date? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 2, 8, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID3_QID1   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 3, 1, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID4_QID1   210]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 1, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID4_QID3   210с   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 4, 3, 5), 1, chr(10) || chr(9) ||  'May fall asleep before putting on the mask/PAP.  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 4, 3, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID6_QID4   210a   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 2004, 6, 4, 5) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   1MO_MID2004_TID6_QID5   210≥   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 2004, 6, 5, 5), 1,  'Other:  ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 2004, 6, 5, 5), 0, '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_BMI   230K   SELECT PCK_NOTE_PREFILL.fnGetPatientBMI(~%s~, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID2_QID9   230{   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 1000, 2, 9, 114, 1), 1, 'unemployed', '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID3018_TID0_QID1   230п   SELECT DECODE(
  PCK_NOTE_PREFILL.fnHasResponse(~%s~, 3018, 0, 1, 1), 
  0, 
  PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 3018, 1, 1, 1), 
  PCK_NOTE_PREFILL.fnGetQuestionResponseList(~%s~, 3018, 0, 1, 1)
) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID2_QID10   230£   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 1000, 2, 10, 1), 1, PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 2, 10, 1), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID2_QID11   230£   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 1000, 2, 11, 1), 1, PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 2, 11, 1), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID4   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 4, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID5   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 5, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID6   230з   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 1000, 3, 5, 176, 1), 1, chr(9) || 'Number of Alcohol drinks per day: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 6, 1) || chr(10), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID7   230м   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 1000, 3, 5, 176, 1), 1, chr(9) || 'Does patient consume alcohol to help fall asleep? ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 7, 1), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID8   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 8, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID3_QID9   230л   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 1000, 3, 8, 186, 1), 1, chr(9) || 'Number of caffeinated drinks per day: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 3, 9, 1) || chr(10), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID4_QID1   230]   SELECT PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 4, 1, 1) AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID4_QID2   230ѕ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 1000, 4, 2, 1), 1, chr(9) || 'Age began smoking: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 4, 2, 1) || chr(10), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID4_QID3   230ѕ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 1000, 4, 3, 1), 1, chr(9) || 'Age began smoking: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 4, 3, 1) || chr(10), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID4_QID4   230Ё   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 1000, 4, 4, 1), 1, chr(9) || 'Average number of packs per day: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 4, 4, 1) || chr(10), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID4_QID5   230Ё   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponse(~%s~, 1000, 4, 5, 1), 1, chr(9) || 'Average number of packs per day: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 4, 5, 1) || chr(10), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€   INI_MID1000_TID4_QID6   230Џ   SELECT DECODE(PCK_NOTE_PREFILL.fnHasResponseByID(~%s~, 1000, 4, 6, 210, 1), 1, chr(9) || 'Age stopped smoking: ' || PCK_NOTE_PREFILL.fnGetQuestionResponse(~%s~, 1000, 4, 6, 1) || chr(10), '') AS TEMPLATE_TEXT FROM DUAL€€€€   1€€€€€€€€       I   I    ж      48.0   200   Prefill   0   1   Demographics   1   100   Messages   0       N   N    В      49.0   1
   SUBJECTIVE   1   2	   OBJECTIVE   1   3   ASSESSMENT / PLAN   1       ;   ;    N      50.0   1   Male   M   2   Female   F   3   Unknown   U       g   g    ґ      54.0   1   901   CPM   1   15-04-2013 00:00:00   1   902   Georgia Tech   1   15-04-2013 00:00:00       у   у    3      55.0   TEXTING_HOST   192.168.1.245   TEXTING_PORT   81   TEXTING_USER    0A4E8362EA06FD0DF59C3E3CC1DFE30A   TEXTING_PSWD    0A4E8362EA06FD0DF59C3E3CC1DFE30A
   DAYS_PRIOR   3	   SMTP_HOST   192.168.1.130   ORA_WIN_DIR   C:\WINDOWS\Temp\