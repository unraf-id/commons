-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_master
-- Table Name 	: master.reason_category
-- Purpose    	: Reason Category : List of reason categories defined for different processes, for ex., client rejection, manual adjudication etc.
--           
-- Create By   	: Nasir Khan / Sadanandegowda
-- Created Date	: 15-Jul-2019
-- 
-- Modified Date        Modified By         Comments / Remarks
-- ------------------------------------------------------------------------------------------
-- Jan-2021		Ram Bhatt	    Set is_deleted flag to not null and default false
-- ------------------------------------------------------------------------------------------

-- object: master.reason_category | type: TABLE --
-- DROP TABLE IF EXISTS master.reason_category CASCADE;
CREATE TABLE master.reason_category(
	code character varying(36) NOT NULL,
	name character varying(64) NOT NULL,
	descr character varying(128),
	lang_code character varying(3) NOT NULL,
	is_active boolean NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean NOT NULL DEFAULT FALSE,
	del_dtimes timestamp,
	CONSTRAINT pk_rsncat_code PRIMARY KEY (code,lang_code)

);
-- ddl-end --
COMMENT ON TABLE master.reason_category IS 'Reason Category : List of reason categories defined for different processes, for ex., client rejection, manual adjudication etc.';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.code IS 'Code : reason categories used during registration process, for ex., client rejection, manual adjudication etc.';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.name IS 'Name : Reason category name';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.descr IS 'Description : Reason category description';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.lang_code IS 'Language Code : For multilanguage implementation this attribute Refers master.language.code. The value of some of the attributes in current record is stored in this respective language. ';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.is_active IS 'IS_Active : Flag to mark whether the record is Active or In-active';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.cr_by IS 'Created By : ID or name of the user who create / insert record';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.cr_dtimes IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.upd_by IS 'Updated By : ID or name of the user who update the record with new values';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.upd_dtimes IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.is_deleted IS 'IS_Deleted : Flag to mark whether the record is Soft deleted.';
-- ddl-end --
COMMENT ON COLUMN master.reason_category.del_dtimes IS 'Deleted DateTimestamp : Date and Timestamp when the record is soft deleted with is_deleted=TRUE';
-- ddl-end --

