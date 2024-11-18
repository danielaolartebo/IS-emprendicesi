/*
INSTITUTION: id 1 Universidad Icesi
SYSTEM: id 7 ECOPHIL
*/

--PERMISSION TYPES (Ids 900 forward)

Insert into SAAMFI_PERMISSION_TYPE (SYSTM_SYS_ID, PERMTYPE_ID,PERMTYPE_NAME,PERMTYPE_TYPE,PERMTYPE_DISPLAYNAME,PERMTYPE_ISACTIVE,PERMTYPE_DOUBLE_FACTOR)
values ('7', '900','superuser-access-control-ecophil','S','Control acceso superusuario (ECOPHIL)','Y','L');

Insert into SAAMFI_PERMISSION_TYPE (SYSTM_SYS_ID, PERMTYPE_ID,PERMTYPE_NAME,PERMTYPE_TYPE,PERMTYPE_DISPLAYNAME,PERMTYPE_ISACTIVE,PERMTYPE_DOUBLE_FACTOR)
values ('7', '901','admin-access-control-ecophil','A','Control acceso admin (ECOPHIL)','Y','L');

Insert into SAAMFI_PERMISSION_TYPE (SYSTM_SYS_ID, PERMTYPE_ID,PERMTYPE_NAME,PERMTYPE_TYPE,PERMTYPE_DISPLAYNAME,PERMTYPE_ISACTIVE,PERMTYPE_DOUBLE_FACTOR)
values ('7', '902','user-access-control-ecophil','U','Control acceso usuarios (ECOPHIL)','Y','L');


--PERMISSIONS (Ids 900 forward)

--1. PHILANTROPY: 

--1.0 DONORS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('900','ecophil-create-donors','Crear un donante','create_donor(donor) on ECOPHIL system','Crear donantes (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('901','ecophil-read-donors','Consultar donantes','get_donor(id) get_donors() on ECOPHIL system','Consultar donantes (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('902','ecophil-update-donors','Modificar donantes','update_donor(id, donor) on ECOPHIL system','Modificar donantes (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('903','ecophil-delete-donors','Eliminar donantes','delete_donor(id) on ECOPHIL system','Eliminar donantes (ECOPHIL)','Y','A','902');

--1.1 COMMENTS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('904','ecophil-create-stud-phil-comments','Crear comentarios de estudiantes en filantropía','create_phil_comment(stud_id,comment) on ECOPHIL system','Crear comentarios estud_filan (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('905','ecophil-read-stud-phil-comments','Consultar comentarios de estudiantes en filantropía','get_phil_comment(id) get_phil_comments(stud_id) get_phil_comments() on ECOPHIL system','Consultar comentarios estud_filan (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('906','ecophil-update-stud-phil-comments','Modificar comentarios de estudiantes en filantropía','update_phil_comment(id,comment) on ECOPHIL system','Modificar comentarios  estud_filan (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('907','ecophil-delete-stud-phil-comments','Borrar comentarios de estudiantes en filantropía','delete_phil_comment(id)','Eliminar comentarios  estud_filan (ECOPHIL)','Y','A','902');

--1.2 INTERVENTIONS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('908','ecophil-create-stud-interventions','Crear intervención de estudiante','create_intervetion(stud_id,intervention) on ECOPHIL system','Crear intervención estud_filan (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('909','ecophil-read-stud-interventions','Consultar intervenciones de estudiantes','get_intervention(id) get_interventions(stud_id) get_interventions() on ECOPHIL system','Consultar intervenciones estud_filan (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('910','ecophil-update-stud-interventions','Modificar intervenciones de estudiantes','update_intervention(id,intervention) on ECOPHIL system','Modificar intervenciones  estud_filan (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('911','ecophil-delete-stud-interventions','Borrar comentarios de estudiantes en filantropía ','delete_phil_comment(id)','Eliminar intervenciones  estud_filan (ECOPHIL)','Y','A','902');

--2. STUDENT INFORMATION

--2.0 GENERAL

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('912','ecophil-read-stud-general','Consultar la información general de un estudiante','get_stud_info_general(stud-id) on ECOPHIL system','Consultar info. general estudiante (ECOPHIL)','Y','A','902');

--2.1 FINANCIAL

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('913','ecophil-read-stud-financial','Consultar la información financiera de un estudiante','get_stud_info_financial(stud-id) on ECOPHIL system','Consultar info. financiera estudiante (ECOPHIL)','Y','A','902');

--2.2 ACADEMIC

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('914','ecophil-read-stud-academic','Consultar la información académica de un estudiante','get_stud_academic(stud-id) on ECOPHIL system','Consultar info. académica estudiante (ECOPHIL)','Y','A','902');

--2.3 OBSERVATIONS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('915','ecophil-create-stud-observations','Crear observación para un estudiante','create_observation(stud-id, observation) on ECOPHIL system','Crear observación estudiante (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('916','ecophil-read-stud-observations','Leer observaciones sobre un estudiante','get_observation(id) get_observations(stud-id) get_observations() on ECOPHIL system','Consultar observaciones estudiante (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('917','ecophil-update-stud-observations','Modificar una observación de un estudiante','update_observation(id, observation) on ECOPHIL system','Modificar observación estudiante (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('918','ecophil-delete-stud-observations','Eliminar observaciones sobre un estudiante','delete_observation on ECOPHIL system','Eliminar observación estudiante (ECOPHIL)','Y','A','902');

--2.4 BU ACTIVITIES ASISTANCE

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('919','ecophil-create-bu-activity-assistance','Crear registros de asistencia de estudiantes a actividades de BU','create_assistance_bu(stud-id,assistance_bu) create_assistance_bu(assistance_list) on ECOPHIL system','Crear registros asistencia activi. BU (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('920','ecophil-read-bu-activity-assistance','Consultar registros de asistencia de un estudiante a actividades de BU','get_assistance_bu(id) get_assistances_bu(stud-id) on ECOPHIL system','Consultar asistencia actividades BU (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('921','ecophil-update-bu-activity-assistance','Modificar registros de asistencia de un estudiante a actividades de BU','update_assistance_bu(id, assistance_bu) on ECOPHIL system','Modificar registros asis. activi. BU (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('922','ecophil-delete-bu-activity-assistance','Eliminar registros de asistencia de estudiantes a actividades de BU','delete_assistance_bu(id) on ECOPHIL system','Eliminar registros asis. activi. BU (ECOPHIL)','Y','A','902');

--2.5 PSYCHOLOGY ASSISTANCE

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('923','ecophil-create-psych-assistance','Crear registro de asistencia de un estudiante a acompañamiento psicológico','create_assistance_psy(stud-id,assistance_psy) create_assistance_psy(assistance_list) on ECOPHIL system','Crear registros asistencia acomp. psico. (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('924','ecophil-read-psych-assistance','Consultar registros de asistencia de un estudiante a acompañamiento psicológico','get_assistance_psy(id) get_assistances_psy(stud-id) on ECOPHIL system','Consultar asistencia acomp. psico. (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('925','ecophil-update-psych-assistance','Modificar registros de asistencia de un estudiante a actividades de BU','update_assistance_psy(id,assistance_psy) on ECOPHIL system','Modificar registros asis. acomp. psico. (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('926','ecophil-delete-psych-assistance','Eliminar registros de asistencia de estudiantes a actividades de BU','delete_assistance_psy(id) on ECOPHIL system','Eliminar registros asis. acomp. psico. (ECOPHIL)','Y','A','902');

--2.6 SUPPORT CENTERS ASSISTANCE

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('927','ecophil-create-supportcenter-assistance','Crear registro de asistencia de un estudiante a centros de apoyo','create_assistance_center(stud-id, assistance_center) on ECOPHIL system','Crear registros asistencia centros apoyo (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('928','ecophil-read-supportcenter-assistance','Consultar registros de asistencia de un estudiante a centros de apoyo','get_assistance_center(id) get_assistances_center(stud-id) on ECOPHIL system','Consultar asistencia centros apoyo (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('929','ecophil-update-supportcenter-assistance','Modificar registros de asistencia de un estudiante a centros de apoyo','update_assistance_center(id, assistance_center) on ECOPHIL system','Modificar registros asis. centros apoyo (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('930','ecophil-delete-supportcenter-assistance','Eliminar registros de asistencia de estudiantes a centros de apoyo','delete_assistance_center(id) on ECOPHIL system','Eliminar registros asis. centros apoyo (ECOPHIL)','Y','A','902');

--3. USERS, ROLES AND PERMISSIONS

--3.0 ROLES

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('931','ecophil-create-roles','Crear roles','create_role(role) on ECOPHIL system','Crear roles (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('932','ecophil-read-roles','Consultar roles','get_role(id) get_roles() on ECOPHIL system','Leer roles (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('933','ecophil-update-roles','Modificar roles','update_role(id, role) on ECOPHIL system','Modificar roles (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('934','ecophil-delete-roles','Eliminar roles','delete_role(id) on ECOPHIL system','Eliminar roles (ECOPHIL)','Y','A','901');

--3.1 PERMISSIONS (SOLO TIENE SENTIDO QUE LOS PERMISOS SE PUEDEN CREAR DURANTE EL DESARROLLO)

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('935','ecophil-read-permissions','Leer permisos','get_permission(id) get_permissions() on ECOPHIL system','Leer permisos (ECOPHIL)','Y','A','901');

--1036 1037 1038 reserved just IN case

--3.2 ASSOCIATE ROLES WITH PERMISSIONS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('939','ecophil-create-role_permission','Crear asociación rol-permiso','create_role_perm(role_id,perm_id) on ECOPHIL system','Crear asociación rol-permiso (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('940','ecophil-read-role_permission','Consultar asociación rol-permiso','get_role_perm(id) get_role_perm() on ECOPHIL system','Consultar asociaciones rol-permiso (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('941','ecophil-update-role_permission','Modificar asociación rol-permiso','update_role_perm(id,role_perm): on ECOPHIL system','Modificar asociación rol-permiso (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('942','ecophil-delete-role_permission','Eliminar asociación rol-permiso','delete_role_perm(id) on ECOPHIL system','Eliminar asociación rol-permiso (ECOPHIL)','Y','A','901');

--3.3 ASSOCIATE ROLES WITH USERS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('943','ecophil-create-user_role','Crear asociación rol-usuario','create_role_user(role_id,user_id) on ECOPHIL system','Crear asociación rol-usuario (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('944','ecophil-read-user_role','Consultar asociación rol-usuario','get_role_user(id) get_role_user() on ECOPHIL system','Consultar asociación rol-usuario (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('945','ecophil-update-user_role','Modificar asociación rol-usuario','update_role_user(id,role_user) on ECOPHIL system','Modificar asociación rol-usuario (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('946','ecophil-delete-user_role','Eliminar asociación rol-usuario','delete_role_user(id) on ECOPHIL system','Eliminar asociación rol-usuario (ECOPHIL)','Y','A','901');

--3.4 USERS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('947','ecophil-create-user','Crear usuario','create_user(user) on ECOPHIL system','Crear usuario (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('948','ecophil-read-user','Consultar usuarios','get_user(id) get_users() on ECOPHIL system','Consultar usuarios (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('949','ecophil-update-user','Modificar usuario','update_user(id,user) on ECOPHIL system','Modificar usuario (ECOPHIL)','Y','A','901');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('950','ecophil-delete-user','Eliminar usuario','delete_user(id) on ECOPHIL system','Eliminar usuario (ECOPHIL)','Y','A','901');

--4 SCHOLARSHIPS AND ANNOUNCEMENTS


--4.0 SCHOLARSHIPS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('951','ecophil-create-business-scholarships','Crear becas empresariales','create_scholarship(scholarship) on ECOPHIL system','Crear becas emp (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('952','ecophil-read-business-scholarships','Consultar becas empresariales','get_scholarship(id) get_scholarships() on ECOPHIL system','Consultar becas emp (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('953','ecophil-update-business-scholarships','Modificar becas empresariales','update_scholarship(id,scholarship) on ECOPHIL system','Modificar becas emp (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('954','ecophil-delete-business-scholarships','Eliminar becas empresariales','delete_scholarship(id) on ECOPHIL system','Eliminar becas emp (ECOPHIL)','Y','A','902');

--4.1 ANNOUNCEMENTS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('955','ecophil-create-scholarships-annoucements','Crear covocatorias a becas empresariales','create_announcement(scholarship-id,announcement) on ECOPHIL system','Crear convocatorias (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('956','ecophil-read-scholarships-annoucements','Consultar covocatorias a becas empresariales','get_announcement(id) get_announcements() on ECOPHIL system','Consultar convocatorias (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('957','ecophil-update-scholarships-annoucements','Modificar covocatorias a becas empresariales','update_announcement(id,announcement) on ECOPHIL system','Modificar convocatorias (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('958','ecophil-delete-scholarships-annoucements','Eliminar covocatorias a becas empresariales','delete_announcement(id) on ECOPHIL system','Eliminar convocatorias (ECOPHIL)','Y','A','902');

--4.2 STUDENT_SCHOLARSHIPS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('959','ecophil-create-student_scholarships','Asignar beca a estudiante','assign_scholarship(stud-id,scholarship) on ECOPHIL system','Asignar beca empresarial a estudiante (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('960','ecophil-read-student_scholarships','Consultar asignaciones de becas a estudiantes','get_scholarship_student(id) get_assigned_scholarships(stud-id) get_assigned_scholarships() on ECOPHIL system','Consultar asignación de becas a estud. (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('961','ecophil-update-student_scholarships','Modificar asignación de becas a estudiantes','update_assigned_scholarship(id, scholarship_student) on ECOPHIL system','Actualizar asignación de beca a estud. (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('962','ecophil-delete-student_scholarships','Eliminar asignación de beca a estudiante','remove_scholarship_from_student(id) on ECOPHIL system','Eliminar asignación de beca a estud. (ECOPHIL)','Y','A','902');

--4.3 POSTULATIONS

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('963','ecophil-create-scholarships-postulations','Crear postulaciones a beca',' create_postulation(postulation) on ECOPHIL system','Crear postulacion a beca (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('964','ecophil-read-scholarships-postulations','Consultar postulaciones a beca','get_postulation(id) get_postulations(stud-id) get_postulations(scholarship-id) get_postulations() on ECOPHIL system','Consultar postulaciones a becas (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('965','ecophil-update-scholarships-postulations','Modificar postulación a beca a becas empresarial','update_postulation(id, postulation) on ECOPHIL system','Modificar postulación a beca (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('966','ecophil-delete-scholarships-postulations','Eliminar postulación a beca','delete_postulation(id) on ECOPHIL system','Eliminar postulación a beca (ECOPHIL)','Y','A','902');

--5 REPORT GENERATION

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('967','ecophil-generate-stud-full-report','Generar reportes con la información completa de un estudiante','generate_student_report_full(stud-id) on ECOPHIL system','Generar reporte por estudiante (ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('968','ecophil-generate-stud-financial-report','Generar reportes con la información financiera de un estudiante','generate_student_report_financial(stud-id) on ECOPHIL system','Generar reporte financiero estud.(ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('969','ecophil-generate-stud-academic-report','Generar reportes con la información académica de un estudiante','generate_student_report_academic(stud-id) on ECOPHIL system','Generar reporte académico estud.(ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('970','ecophil-generate-stud-bu-report','Generar reportes con la información de bu de un estudiante','generate_student_report_bu(stud-id) on ECOPHIL system','Generar reporte bu estud.(ECOPHIL)','Y','A','902');

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('971','ecophil-generate-stud-scholarships-report','Generar reportes con la información de un estudiante relacionada a becas','generate_student_report_scholarships(stud-id) on ECOPHIL system','Generar reporte becas estud.(ECOPHIL)','Y','A','902');

-- 6 SAAMFI ACCESS SYSTEM

Insert into SAAMFI_PERMISSION (PERM_ID,PERM_NAME,PERM_USERDESCRIPTION,PERM_TECHNICALDESCRIPTION,PERM_DISPLAYNAME,PERM_ISACTIVE,PERMTYPE_DOUBLE_FACTOR,PERMTYPE_PERMTYPE_ID)
values ('990','Access-system','Access SAMMFI System (ECOPHIL)','SAAMFI access for ECOPHIL system','Acceso a SAAMFI(ECOPHIL)','Y','A','902');


-- ROLES (Ids 900 forward)

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('900','ecophil-admin','Administrador del aplicativo ECOPHIL, administra roles y usuarios','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('901','ecophil-bu','Miembro de bienestar universitario','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('902','ecophil-bu-psychology','Psicologo de bienestar universitario','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('903','ecophil-philantropy','Miembro de filantropía','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('904','ecophil-ecosystem','Miembro de ecosistema de acompañamiento','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('905','ecophil-program-directors','Director de programa','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('906','ecophil-financial-support','Miembros de apoyo financiero','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('907','ecophil-support-center','Miembros de centros de apoyo','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('908','ecophil-superuser','Superusuario','7','1');

Insert into SAAMFI_ROLE (ROLE_ID,ROLE_NAME,ROLE_DESCRIPTION,SYSTM_SYS_ID,INST_INST_ID) 
values ('909','ecophil-default','Por defecto sin permisos','7','1');


--ASSOCIATING ROLE WITH PERMISSIONS

--PHILANTROPY

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','900'); -- DONORS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','901'); -- DONORS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','902'); -- DONORS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','903'); -- DONORS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','904'); -- COMMENTS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','905'); -- COMMENTS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','906'); -- COMMENTS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','907'); -- COMMENTS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','908'); -- INTERVENTIONS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','909'); -- INTERVENTIONS- READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','910'); -- INTERVENTIONS- UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','911'); -- INTERVENTIONS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','912'); -- STUDENT INFO GENERAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','913'); -- STUDENT INFO FINANCIAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','914'); -- STUDENT INFO ACADEMIC - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','916'); -- OBSERVATIONS - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','920'); -- BU ACTIVITIES ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','924'); -- BU PSYCH ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','928'); -- SUPPORT CENTER ASSISTANCE - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','967'); -- STUDENT REPORT GENERATION - FULL
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','968'); -- STUDENT REPORT GENERATION - FINANCIAL
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','969'); -- STUDENT REPORT GENERATION - ACADEMIC
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','970'); -- STUDENT REPORT GENERATION - BU
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','971'); -- STUDENT REPORT GENERATION - SCHOLARSHIPS

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('903','990'); -- SAAMFI ACCESS

--BU

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','915'); -- OBSERVATIONS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','916'); -- OBSERVATIONS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','917'); -- OBSERVATIONS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','918'); -- OBSERVATIONS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','919'); -- BU ACTIVITIES ASISTANCE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','920'); -- BU ACTIVITIES ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','921'); -- BU ACTIVITIES ASISTANCE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','922'); -- BU ACTIVITIES ASISTANCE - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','923'); -- BU PSYCH ASISTANCE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','924'); -- BU PSYCH ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','925'); -- BU PSYCH ASISTANCE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','926'); -- BU PSYCH ASISTANCE - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('901','990'); -- SAAMFI ACCESS

-- BU PSYCH

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','915'); -- OBSERVATIONS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','916'); -- OBSERVATIONS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','917'); -- OBSERVATIONS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','918'); -- OBSERVATIONS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','919'); -- BU ACTIVITIES ASISTANCE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','920'); -- BU ACTIVITIES ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','921'); -- BU ACTIVITIES ASISTANCE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','922'); -- BU ACTIVITIES ASISTANCE - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','923'); -- BU PSYCH ASISTANCE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','924'); -- BU PSYCH ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','925'); -- BU PSYCH ASISTANCE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','926'); -- BU PSYCH ASISTANCE - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','928'); -- SUPPORT CENTER ASSISTANCE - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','912'); -- STUDENT INFO GENERAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','913'); -- STUDENT INFO FINANCIAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','914'); -- STUDENT INFO ACADEMIC - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('902','990'); -- SAAMFI ACCESS

-- ADMINISTRATOR

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','931'); -- ROLES - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','932'); -- ROLES - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','933'); -- ROLES - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','934'); -- ROLES - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','935'); -- PERMISSIONS - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','939'); -- ROLE_PERMISSION - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','940'); -- ROLE_PERMISSION - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','941'); -- ROLE_PERMISSION - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','942'); -- ROLE_PERMISSION - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','943'); -- USER_ROLE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','944'); -- USER_ROLE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','945'); -- USER_ROLE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','946'); -- USER_ROLE - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','947'); -- USERS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','948'); -- USERS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','949'); -- USERS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','950'); -- USERS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('900','990'); -- SAAMFI ACCESS

--ECOSYSTEM

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','912'); -- STUDENT INFO GENERAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','913'); -- STUDENT INFO FINANCIAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','914'); -- STUDENT INFO ACADEMIC - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','916'); -- OBSERVATIONS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','920'); -- BU ACTIVITIES ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','924'); -- BU PSYCH ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','928'); -- SUPPORT CENTER ASSISTANCE - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','901'); -- DONORS - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','967'); -- STUDENT REPORT GENERATION - FULL
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','968'); -- STUDENT REPORT GENERATION - FINANCIAL
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','969'); -- STUDENT REPORT GENERATION - ACADEMIC
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','970'); -- STUDENT REPORT GENERATION - BU
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','971'); -- STUDENT REPORT GENERATION - SCHOLARSHIPS

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('904','990'); -- SAAMFI ACCESS

--PROGRAM DIRECTORS

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','912'); -- STUDENT INFO GENERAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','913'); -- STUDENT INFO FINANCIAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','914'); -- STUDENT INFO ACADEMIC - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','920'); -- BU ACTIVITIES ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','924'); -- BU PSYCH ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','928'); -- SUPPORT CENTER ASSISTANCE - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','915'); -- OBSERVATIONS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','916'); -- OBSERVATIONS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','917'); -- OBSERVATIONS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','918'); -- OBSERVATIONS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','908'); -- INTERVENTIONS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','909'); -- INTERVENTIONS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','910'); -- INTERVENTIONS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','911'); -- INTERVENTIONS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('905','990'); -- SAAMFI ACCESS

--FINANCIAL SUPPORT

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','951'); -- SCHOLARSHIPS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','952'); -- SCHOLARSHIPS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','953'); -- SCHOLARSHIPS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','954'); -- SCHOLARSHIPS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','955'); -- ANNOUNCEMENTS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','956'); -- ANNOUNCEMENTS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','957'); -- ANNOUNCEMENTS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','958'); -- ANNOUNCEMENTS - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','959'); -- SCHOLARSHIP ASSIGNMENT - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','960'); -- SCHOLARSHIP ASSIGNMENT - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','961'); -- SCHOLARSHIP ASSIGNMENT - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','962'); -- SCHOLARSHIP ASSIGNMENT - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','963'); -- SCHOLARSHIP POSTULATION - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','964'); -- SCHOLARSHIP POSTULATION - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','965'); -- SCHOLARSHIP POSTULATION - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','966'); -- SCHOLARSHIP POSTULATION - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','912'); -- STUDENT INFO GENERAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','913'); -- STUDENT INFO FINANCIAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','914'); -- STUDENT INFO ACADEMIC - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','916'); -- OBSERVATIONS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','920'); -- BU ACTIVITIES ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','924'); -- BU PSYCH ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','928'); -- SUPPORT CENTER ASSISTANCE - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','901'); -- DONORS - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('906','990'); -- SAAMFI ACCESS

--SUPPORT CENTERS

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('907','927'); -- SUPPORT CENTER ASSISTANCE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('907','928'); -- SUPPORT CENTER ASSISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('907','929'); -- SUPPORT CENTER ASSISTANCE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('907','930'); -- SUPPORT CENTER ASSISTANCE - DELETE

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('907','990'); -- SAAMFI ACCESS

--SUPERUSUARIO (HAS ALL PERMISSIONS)

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','900'); -- DONORS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','901'); -- DONORS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','902'); -- DONORS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','903'); -- DONORS - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','904'); -- COMMENTS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','905'); -- COMMENTS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','906'); -- COMMENTS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','907'); -- COMMENTS - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','908'); -- INTERVENTIONS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','909'); -- INTERVENTIONS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','910'); -- INTERVENTIONS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','911'); -- INTERVENTIONS - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','912'); -- STUDENT INFO GENERAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','913'); -- STUDENT INFO FINANCIAL - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','914'); -- STUDENT INFO ACADEMIC - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','915'); -- OBSERVATIONS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','916'); -- OBSERVATIONS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','917'); -- OBSERVATIONS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','918'); -- OBSERVATIONS - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','919'); -- BU ACTIVITIES ASISTANCE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','920'); -- BU ACTIVITIES ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','921'); -- BU ACTIVITIES ASISTANCE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','922'); -- BU ACTIVITIES ASISTANCE - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','923'); -- BU PSYCH ASISTANCE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','924'); -- BU PSYCH ASISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','925'); -- BU PSYCH ASISTANCE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','926'); -- BU PSYCH ASISTANCE - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','927'); -- SUPPORT CENTER ASSISTANCE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','928'); -- SUPPORT CENTER ASSISTANCE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','929'); -- SUPPORT CENTER ASSISTANCE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','930'); -- SUPPORT CENTER ASSISTANCE - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','931'); -- ROLES - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','932'); -- ROLES - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','933'); -- ROLES - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','934'); -- ROLES - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','935'); -- PERMISSIONS - READ

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','939'); -- ROLE_PERMISSION - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','940'); -- ROLE_PERMISSION - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','941'); -- ROLE_PERMISSION - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','942'); -- ROLE_PERMISSION - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','943'); -- USER_ROLE - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','944'); -- USER_ROLE - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','945'); -- USER_ROLE - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','946'); -- USER_ROLE - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','947'); -- USERS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','948'); -- USERS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','949'); -- USERS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','950'); -- USERS - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','951'); -- SCHOLARSHIPS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','952'); -- SCHOLARSHIPS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','953'); -- SCHOLARSHIPS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','954'); -- SCHOLARSHIPS - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','955'); -- ANNOUNCEMENTS - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','956'); -- ANNOUNCEMENTS - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','957'); -- ANNOUNCEMENTS - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','958'); -- ANNOUNCEMENTS - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','959'); -- SCHOLARSHIP ASSIGNMENT - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','960'); -- SCHOLARSHIP ASSIGNMENT - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','961'); -- SCHOLARSHIP ASSIGNMENT - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','962'); -- SCHOLARSHIP ASSIGNMENT - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','963'); -- SCHOLARSHIP POSTULATION - CREATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','964'); -- SCHOLARSHIP POSTULATION - READ
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','965'); -- SCHOLARSHIP POSTULATION - UPDATE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','966'); -- SCHOLARSHIP POSTULATION - DELETE
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','967'); -- STUDENT REPORT GENERATION - FULL
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','968'); -- STUDENT REPORT GENERATION - FINANCIAL
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','969'); -- STUDENT REPORT GENERATION - ACADEMIC
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','970'); -- STUDENT REPORT GENERATION - BU
Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','971'); -- STUDENT REPORT GENERATION - SCHOLARSHIPS

Insert into SAAMFI_ROLE_PERM (ROLE_ROLE_ID,PERM_PERM_ID) values ('908','990'); -- SAAMFI ACCESS

--USERS (Ids 1001 forward)

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1001','ecophil-admin-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Admin','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1002','ecophil-bu-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Bu','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1003','ecophil-bu-psych-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Bu Psych','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1004','ecophil-phil-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Phil','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1005','ecophil-ecosystem-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Ecosystem','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1006','ecophil-program-director-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Program Director','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1007','ecophil-financial-support-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Financial Support','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1008','ecophil-support-center-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Support Center','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1009','ecophil-superuser-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Superuser','1234567890','1');

Insert into SAAMFI_USER (USER_ID,USER_USERNAME,USER_PASSWORD,USER_EMAIL,USER_PHONE,USER_IS_ACTIVE,USER_IS_LOCKEDOUT,USER_NAME,USER_LASTNAME,USER_DOCUMENT_ID,INST_INST_ID)
values ('1010','ecophil-default-test-user','AD9ADBCF3806C2AFEF61D8701FFA52DE','example@icesi.edu.co','3004567890','Y','N','Ecophil','Default','1234567890','1');

--USERS_ROLES

Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1001','900');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1002','901');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1003','902');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1004','903');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1005','904');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1006','905');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1007','906');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1008','907');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1009','908');
Insert into SAAMFI_USER_ROLE (USR_USER_ID,ROLE_ROLE_ID) values ('1010','909');
