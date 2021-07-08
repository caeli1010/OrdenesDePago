/*
 Navicat Premium Data Transfer

 Source Server         : psv10
 Source Server Type    : PostgreSQL
 Source Server Version : 100017
 Source Host           : localhost:5433
 Source Catalog        : Fundacion
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100017
 File Encoding         : 65001

 Date: 08/07/2021 17:06:46
*/


-- ----------------------------
-- Table structure for alumnos
-- ----------------------------
DROP TABLE IF EXISTS "public"."alumnos";
CREATE TABLE "public"."alumnos" (
  "alum_idalumno" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "alum_apellido" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "alum_nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "alum_tipodoc" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "alum_nrodoc" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "alum_domicilio" varchar(50) COLLATE "pg_catalog"."default",
  "alum_idloc" varchar(10) COLLATE "pg_catalog"."default",
  "alum_idprov" varchar(10) COLLATE "pg_catalog"."default",
  "alum_fechanac" date,
  "alum_nacionalidad" varchar(10) COLLATE "pg_catalog"."default",
  "alum_estadocivil" varchar(10) COLLATE "pg_catalog"."default",
  "alum_telparticular" varchar(50) COLLATE "pg_catalog"."default",
  "alum_teltrabajo" varchar(50) COLLATE "pg_catalog"."default",
  "alum_telmovil" varchar(50) COLLATE "pg_catalog"."default",
  "alum_email" varchar(50) COLLATE "pg_catalog"."default",
  "alum_ocupacion" varchar(50) COLLATE "pg_catalog"."default",
  "alum_idempresa" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of alumnos
-- ----------------------------
INSERT INTO "public"."alumnos" VALUES ('1428697', 'BRIZUELA', 'ABEL ALEJANDRO', 'DNI', '35985131', '', '', '', NULL, 'ARG', '', '', '', '', '', '', '');
INSERT INTO "public"."alumnos" VALUES ('5608364', 'ABALO PRELAT', 'GASTON DIEGO', 'DNI', '42903424', '', '', '', NULL, 'ARGENTINO', '', '', '', '', '', '', '');
INSERT INTO "public"."alumnos" VALUES ('5703704', 'VILLARREAL', 'ANALIA LAURA', 'DNI', '28457507', '', '', '', NULL, '', '', '', '', '', 'ANA.LAU.VILLARREAL@GMAIL.COM', '', '');
INSERT INTO "public"."alumnos" VALUES ('5703800', 'CHAVERO', 'EDUARDO ANGEL', 'DNI', '35658254', '', '', '', NULL, '', '', '', '', '', 'CHAVE.11@LIVE.COM.AR', '', '');
INSERT INTO "public"."alumnos" VALUES ('5703812', 'ACOSTA', 'MIGUEL', 'DNI', '33689306', '', '', '', NULL, '', '', '', '', '', 'ACOSTAMIGUEL.733@GMAIL.COM', '', '');
INSERT INTO "public"."alumnos" VALUES ('5833172', 'AGUIAR FINOCCHIO', 'MATIAS AGUIAR', 'DNI', '42621327', '', '', '', NULL, '', '', '', '', '', 'MATIASAGUIAR1459@GMAIL.COM', '', '');

-- ----------------------------
-- Table structure for alumnoscarreracurso
-- ----------------------------
DROP TABLE IF EXISTS "public"."alumnoscarreracurso";
CREATE TABLE "public"."alumnoscarreracurso" (
  "alcc_idalucarrcurs" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "alcc_idalumno" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "alcc_idccalta" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "alcc_legajo" varchar(10) COLLATE "pg_catalog"."default",
  "alcc_estado" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "alcc_fechaegreso" date,
  "alcc_descuentocuota" float8,
  "alcc_tipodescuento" varchar(15) COLLATE "pg_catalog"."default",
  "alcc_cantcuotascob" int4,
  "alcc_duraciondesc" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of alumnoscarreracurso
-- ----------------------------
INSERT INTO "public"."alumnoscarreracurso" VALUES ('5786865', '5703800', '5772904', '24171', 'CURSANDO', NULL, 0, 'NINGUNO', 7, '');
INSERT INTO "public"."alumnoscarreracurso" VALUES ('5787107', '5703704', '5772904', NULL, 'CURSANDO', NULL, 0, 'NINGUNO', 7, '');
INSERT INTO "public"."alumnoscarreracurso" VALUES ('5786789', '5703812', '5772904', '24138', 'CURSANDO', NULL, 0, 'NINGUNO', 7, '');
INSERT INTO "public"."alumnoscarreracurso" VALUES ('5949175', '1428697', '5944181', '15862', 'CURSANDO', NULL, 0, 'NINGUNO', 2, '');
INSERT INTO "public"."alumnoscarreracurso" VALUES ('5947235', '5833172', '5944181', '24453', 'CURSANDO', NULL, 0, 'NINGUNO', 2, '');
INSERT INTO "public"."alumnoscarreracurso" VALUES ('5947319', '5608364', '5944181', '24890', 'CURSANDO', NULL, 0, 'NINGUNO', 2, '');

-- ----------------------------
-- Table structure for carrerascursos
-- ----------------------------
DROP TABLE IF EXISTS "public"."carrerascursos";
CREATE TABLE "public"."carrerascursos" (
  "cacu_idcarrcurs" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "cacu_tipocarrcurs" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "cacu_descripcion" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "cacu_idsubcuen" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "cacu_duracion" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "cacu_cupomin" int4,
  "cacu_cupomax" int4,
  "cacu_inicioelectivo" varchar(5) COLLATE "pg_catalog"."default",
  "cacu_finalelectivo" varchar(5) COLLATE "pg_catalog"."default",
  "cacu_totalhrs" int4,
  "cacu_modalidad" varchar(50) COLLATE "pg_catalog"."default",
  "cacu_cantcuotas" int4,
  "cacu_matricula" float8,
  "cacu_observaciones" varchar(50) COLLATE "pg_catalog"."default",
  "cacu_cuota" float8,
  "cacu_sena" float8,
  "cacu_tipocuota" varchar(20) COLLATE "pg_catalog"."default",
  "cacu_costototal" float8,
  "cacu_requerido" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of carrerascursos
-- ----------------------------
INSERT INTO "public"."carrerascursos" VALUES ('4895465', 'CURSO', '2017-INFORMATICA- EXCEL -', '1486567', '1', 10, 12, '01-01', '31-12', 12, 'PRESENCIAL', 0, 1100, '', 0, 0, 'SIN CUOTA', 1100, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895329', 'CURSO', '2017-UTN - INGLES', '1020', '4', 10, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 980, '', 980, 0, 'MENSUAL', 3920, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895360', 'CURSO', '2017-UTN - FIRST CERTIFICATE', '1020', '8', 10, 21, '01-01', '31-12', 96, 'PRESENCIAL', 7, 1100, '', 1100, 0, 'MENSUAL', 8800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895364', 'CURSO', '2017-UTN - PORTUGUES', '1022', '4', 10, 16, '01-01', '31-12', 48, 'PRESENCIAL', 3, 980, '', 980, 0, 'MENSUAL', 3920, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895371', 'CURSO', '2017-UTN - ALEMAN', '1865656', '4', 10, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 980, '', 980, 0, 'MENSUAL', 3920, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895381', 'CURSO', '2017-IACT - REFRIGERACION Y AA ', '364369', '4', 16, 36, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1250, '', 1250, 0, 'MENSUAL', 5000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895400', 'CURSO', '2017-IACT - INST. DOMI Y COMERCIALES', '1448333', '5', 10, 20, '01-01', '31-12', 60, 'PRESENCIAL', 4, 1250, '', 1250, 0, 'MENSUAL', 6250, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895440', 'CURSO', '2017-IACT - INST ELEC INDUSTRIAL', '1448343', '6', 10, 20, '01-01', '31-12', 72, 'PRESENCIAL', 5, 1250, '', 1250, 0, 'MENSUAL', 7500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895450', 'CURSO', '2017-IACT - INSTALADOR DE EQUIPOS SPLIT', '1328167', '1', 10, 36, '01-01', '31-12', 12, 'PRESENCIAL', 0, 1600, '', 0, 0, 'SIN CUOTA', 1600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895529', 'CURSO', '2017-INFORMATICA - AUTOCAD AVANZADO', '1486568', '2', 10, 12, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1400, '', 1400, 0, 'MENSUAL', 2800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895541', 'CURSO', '2017-INFORMATICA - DISEÑO WEB', '1455024', '6', 10, 12, '01-01', '31-12', 60, 'PRESENCIAL', 5, 1200, '', 1200, 0, 'MENSUAL', 7200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895586', 'CURSO', '2017-SALUD - AUXILIAR DE FARMACIA  ', '2864438', '10', 10, 40, '01-01', '31-12', 80, 'PRESENCIAL', 10, 490, '', 1310, 0, 'MENSUAL', 13590, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895620', 'CURSO', '2017-SALUD - SEC MEDICO', '3516107', '6', 10, 21, '01-01', '31-12', 30, 'PRESENCIAL', 6, 490, '', 1000, 0, 'MENSUAL', 6490, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895676', 'CURSO', '2017-BIBLIO PACHECO - REP DE PC Y NOTEBOOK', '1769849', '5', 10, 16, '01-01', '31-12', 111, 'PRESENCIAL', 4, 1250, '', 1250, 0, 'MENSUAL', 6250, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895700', 'CURSO', '2017-BIBLIO PACHECO - INTRO A REDES', '367852', '2', 10, 16, '01-01', '31-12', 32, 'PRESENCIAL', 1, 1250, '', 1250, 0, 'MENSUAL', 2500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895704', 'CURSO', '2017-BIBLIO PACHECO - INST DE CAMA DE VIGILANCIA', '3746476', '3', 10, 16, '01-01', '31-12', 36, 'PRESENCIAL', 2, 1250, '', 1250, 0, 'MENSUAL', 3750, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895784', 'CURSO', '2017-UTN- AUTOMATIZACION INDUSTRIAL', '334383', '3', 10, 21, '01-01', '31-12', 96, 'PRESENCIAL', 2, 2100, '', 2100, 0, 'MENSUAL', 6300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895790', 'CURSO', '2017-UTN - PLC NIVEL 1 -', '1268', '2', 10, 16, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1400, '', 1400, 0, 'MENSUAL', 2800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895794', 'CURSO', '2017-UTN - PLC NIVEL 2', '1270', '2', 10, 16, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1600, '', 1600, 0, 'MENSUAL', 3200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895798', 'CURSO', '2017-CIE- SEGURIDAD E HIEGINE', '3746428', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2000, '', 2000, 0, 'MENSUAL', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895802', 'CURSO', '2017-CIE - OPERACION Y PROGRAMACION DE CNC', '1631038', '3', 10, 12, '01-01', '31-12', 30, 'PRESENCIAL', 2, 2600, '', 2600, 0, 'MENSUAL', 7800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895806', 'CURSO', '2017-SOLDADURA - HERRERÍA BASICA', '3746457', '5', 12, 18, '01-01', '31-12', 60, 'PRESENCIAL', 4, 1350, '', 1350, 0, 'MENSUAL', 6750, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895814', 'CURSO', '2017-SOLDADURA - INTEGRAL', '3746444', '6', 6, 9, '01-01', '31-12', 96, 'PRESENCIAL', 5, 1600, '', 1600, 0, 'MENSUAL', 9600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895822', 'CURSO', '2017-SOLDADURA - TIG NIVEL 1', '3746452', '2', 6, 9, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1500, '', 1500, 0, 'MENSUAL', 3000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895832', 'CURSO', '2017-SOLDADURA - ALUMINIO TIG', '4807178', '2', 6, 9, '01-01', '31-12', 24, 'PRESENCIAL', 1, 3850, '', 3850, 0, 'MENSUAL', 7700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895847', 'CURSO', '2017-BIBLIO PACHECO- TORNERIA NIVEL BASICO', '3746461', '3', 12, 18, '01-01', '31-12', 72, 'PRESENCIAL', 2, 1610, '', 1610, 0, 'MENSUAL', 4830, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895853', 'CURSO', '2017-BIBLIO PACHECO - TORNERIA AVANZADA', '3746462', '3', 12, 18, '01-01', '31-12', 72, 'PRESENCIAL', 2, 1610, '', 1610, 0, 'MENSUAL', 4830, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895857', 'CURSO', '2017-PROFAU- ADMI TALLERES', '3499849', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 1550, '', 1550, 0, 'MENSUAL', 4650, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895861', 'CURSO', '2017-PROFAU- MECANICA BASICA', '3387863', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 1550, '', 1550, 0, 'MENSUAL', 4650, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895871', 'CURSO', '2017-PROFAU - CARBURACION Y ENCENDIDO', '3786924', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 1800, '', 1800, 0, 'MENSUAL', 5400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895875', 'CURSO', '2017-PROFAU - REP Y MANT DE MOTOR', '3786931', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2150, '', 2150, 0, 'MENSUAL', 6450, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895881', 'CURSO', '2017-PROFAU- AJUSTE DE MOTOR', '3786932', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2450, '', 2450, 0, 'MENSUAL', 7350, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895885', 'CURSO', '2017-PROFAU- CONO ELEC AUTOMOVIL', '3387864', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2150, '', 2150, 0, 'MENSUAL', 6450, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895891', 'CURSO', '2017-PROFAU - INST ELEC AUTOMOVIL', '3786928', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2150, '', 2150, 0, 'MENSUAL', 6450, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895492', 'CURSO', '2017-INFORMATICA - ROBOTICA BASICA', '2676885', '2', 10, 12, '01-01', '31-12', 24, 'PRESENCIAL', 1, 2250, '', 2250, 0, 'MENSUAL', 4500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4894968', 'CARRERA', 'ESP. INGENIERÍA GERENCIAL-MATRÍCULA 2017', '5143', '11', 10, 40, '01-02', '29-12', 0, 'PRESENCIAL', 0, 4935, '', 0, 0, 'SIN CUOTA', 4935, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895895', 'CURSO', '2017-PROFAU- INYECCION NAFTA FYC', '3786926', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2450, '', 2450, 0, 'MENSUAL', 7350, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895901', 'CURSO', '2017-ADMIN- LIQ DE SUELDOS', '75413', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1120, '', 1120, 0, 'MENSUAL', 4480, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895909', 'CURSO', '2017-ADMIN-ASIS ADM PYME 4M', '260920', '4', 16, 28, '01-01', '31-12', 96, 'PRESENCIAL', 3, 1680, '', 1680, 0, 'MENSUAL', 6720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895056', 'CARRERA', 'MBA 2º AÑO', '5143', '11', 12, 40, '01-03', '29-12', 0, 'PRESENCIAL', 11, 0, '', 14500, 0, 'MENSUAL', 159500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895454', 'CURSO', 'MATRICULA TUA ', '421734', '1', 1, 50, '01-02', '28-02', 0, 'PRESENCIAL', 0, 4715, '', 4715, 0, 'SIN CUOTA', 4715, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895524', 'CARRERA', 'TECNICO UNIVERSITARIO EN ADMINISTRACION PRIMER AÑO', '421734', '10', 1, 50, '01-03', '31-12', 0, 'PRESENCIAL', 10, 5350, '', 5350, 0, 'MENSUAL', 58850, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895021', 'CARRERA', 'MBA 1º AÑO', '5143', '10', 12, 35, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 14500, 0, 'MENSUAL', 145000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895074', 'CURSO', 'MATRICULA ESPECIALIZACION Y MTRIA.ESTRUCTURAL NAC.', '1893343', '1', 1, 10, '01-02', '28-02', 0, 'PRESENCIAL', 1, 0, '', 9315, 0, 'SIN CUOTA', 9315, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895060', 'MAESTRIA', '1° AÑO-ESPEC.MTRIA. I.ESTRUCTURAL-NACIONAL', '1893343', '10', 1, 10, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 9315, 0, 'MENSUAL', 93150, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895915', 'CURSO', '2017-ADMIN-ASIST ADM PYME 6M-', '260920', '6', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 5, 1120, '', 1120, 0, 'MENSUAL', 6720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895919', 'CURSO', '2017-ADMIN-ANALISTA CONTABLE', '75601', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1190, '', 1190, 0, 'MENSUAL', 4760, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895923', 'CURSO', '2017-ADMIN-ANALISTA IMPOSITIVO', '75627', '5', 16, 21, '01-01', '31-12', 60, 'PRESENCIAL', 4, 1190, '', 1190, 0, 'MENSUAL', 5950, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895927', 'CURSO', '2017-ADMIN- ADMIN DE PERSONAL', '260922', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1190, '', 1190, 0, 'MENSUAL', 4760, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895933', 'CURSO', '2017-ADMIN- ASIST RRHH 4M', '260928', '4', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 3, 1680, '', 1680, 0, 'MENSUAL', 6720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895939', 'CURSO', '2017-ADMIN- ASIST RRHH 6M', '260928', '6', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 5, 1120, '', 1120, 0, 'MENSUAL', 6720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895943', 'CURSO', '2017-ADMIN- COACHING Y LIDERAZGO', '4249108', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1190, '', 1190, 0, 'MENSUAL', 4760, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895949', 'CURSO', '2017-ADMIN- MARKETING PROMOCION Y VENTAS', '2952530', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1190, '', 1190, 0, 'MENSUAL', 4670, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895955', 'CURSO', '2017-ADMIN- SEC ADM INFORMATICO', '3892857', '4', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 3, 1800, '', 1800, 0, 'MENSUAL', 7200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895961', 'CURSO', '2017-ADMIN- SEC ADM INFORMATICO 6 M', '3892857', '6', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 5, 1200, '', 1200, 0, 'MENSUAL', 7200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895965', 'CURSO', '2017-ADMIN - CONCILIACION BANCARIA - ', '3571815', '1', 16, 21, '01-01', '31-12', 12, 'PRESENCIAL', 0, 1690, '', 0, 0, 'SIN CUOTA', 1690, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895969', 'CURSO', '2017-ADMIN- LIQ IMPUESTO A LAS GANANCIAS', '3571816', '1', 16, 21, '01-01', '31-12', 12, 'PRESENCIAL', 0, 1300, '', 0, 0, 'SIN CUOTA', 1300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895973', 'CURSO', '2017-ADMIN- MONOTRIBUTO IIBB PROV BSAS', '4404476', '2', 16, 21, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1820, '', 1820, 0, 'MENSUAL', 3640, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895977', 'CURSO', '2017-ADMIN- PNL', '4497601', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1400, '', 1400, 0, 'MENSUAL', 5600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895522', 'CURSO', '2017-INFORMATICA AUTOCAD BASICO', '1486568', '2', 10, 12, '01-01', '31-12', 30, 'PRESENCIAL', 1, 1200, '', 1200, 0, 'MENSUAL', 2400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4911697', 'CURSO', '2017-ADMIN - ORGANIZACION DE EVENTOS -', '4896590', '4', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 3, 1400, '', 1400, 0, 'MENSUAL', 5600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4911709', 'CURSO', '2017-SOLDADURA - TIG  ACERO INOXIDABLE', '4896589', '2', 6, 9, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1800, '', 1800, 0, 'MENSUAL', 3600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4972917', 'CURSO', '2017-MATRICERIA- TORNO CNC 2 EJES', '4957570', '2', 6, 8, '01-01', '31-12', 24, 'PRESENCIAL', 0, 7320, '', 0, 0, 'SIN CUOTA', 7320, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4973414', 'CURSO', '2017-MATRICERIA-HERRAMIENTAS DE CORTE', '4957574', '2', 8, 12, '01-01', '31-12', 30, 'PRESENCIAL', 0, 6900, '', 0, 0, 'SIN CUOTA', 6900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4916799', 'CURSO', 'CURSO ALEMAN SAU', '133773', '18', 1, 30, '01-03', '31-12', 0, 'PRESENCIAL', 18, 0, '', 450, 0, 'MENSUAL', 8100, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4996963', 'CURSO', '2017-ADMIN-ANALISTA IMPOSITIVO - 4 MESES', '75627', '4', 10, 21, '01-01', '31-12', 60, 'PRESENCIAL', 3, 1490, '', 1490, 0, 'MENSUAL', 5960, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4919240', 'CURSO', 'CURSADA MODULAR DOCENCIA UNIV.', '5141', '1', 1, 40, '01-03', '29-12', 0, 'PRESENCIAL', 1, 0, '', 5160, 0, 'MENSUAL', 5160, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4923906', 'CARRERA', 'CURSADA MODULAR 2017', '5143', '10', 10, 30, '01-03', '31-12', 0, 'PRESENCIAL', 0, 0, '', 4124, 0, 'MENSUAL', 0, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4925730', 'CURSO', '2017-CIE- LEAN MANUNFACTURING', '4831227', '1', 10, 16, '01-01', '31-12', 16, 'PRESENCIAL', 0, 2000, '', 0, 0, 'SIN CUOTA', 2000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4972863', 'CURSO', '2017-MATRICERIA- INYECCION DE PLASTICO', '4957555', '1', 8, 15, '01-01', '31-12', 12, 'PRESENCIAL', 0, 4120, '', 0, 0, 'SIN CUOTA', 4120, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4972871', 'CURSO', '2017-MATRICERIA- POWERSHAPE', '4957564', '1', 6, 8, '01-01', '31-12', 30, 'PRESENCIAL', 0, 11500, '', 0, 0, 'SIN CUOTA', 11500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4972882', 'CURSO', '2017-MATRICERIA- POWERMILL', '4957568', '1', 6, 8, '01-01', '31-12', 30, 'PRESENCIAL', 0, 14300, '', 0, 0, 'SIN CUOTA', 14300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4972913', 'CARRERA', '2017-MATRICERIA- FRESADORA CNC 3 EJES', '4957569', '3', 6, 8, '01-01', '31-12', 36, 'PRESENCIAL', 0, 12800, '', 0, 0, 'SIN CUOTA', 12800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5054139', 'MAESTRIA', 'CURSADA MODULAR EZEQUIEL BRIDI 2017', '5143', '6', 1, 10, '01-07', '31-12', 0, 'PRESENCIAL', 7, 0, '', 2300, 0, 'MENSUAL', 20000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5035565', 'CURSO', '2017-SALUD - AUXILIAR DE FARMACIA-COSTO NUEVO', '5039788', '10', 10, 40, '01-01', '30-12', 80, 'PRESENCIAL', 10, 590, '', 1590, 0, 'MENSUAL', 16490, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5035569', 'CURSO', '2017-SALUD - SEC MEDICO-COSTO NUEVO', '5039791', '6', 10, 21, '01-01', '31-12', 30, 'PRESENCIAL', 6, 590, '', 1190, 0, 'MENSUAL', 7730, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5073107', 'CURSO', '2017-ADMIN- CONUNICACION INTEGRAL', '5062107', '4', 12, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1190, '', 1190, 0, 'MENSUAL', 4760, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5095981', 'MAESTRIA', 'ESP. ING. GERENCIAL AGOSTO 2017', '5143', '4', 5, 30, '28-08', '31-12', 0, 'PRESENCIAL', 4, 4935, '', 4674, 0, 'MENSUAL', 23600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5134097', 'CURSO', '2017-PROFAU-SEMINA DIAG Y MANTEN INYECCION NAFTA ', '5121695', '1', 8, 30, '01-01', '31-12', 0, 'PRESENCIAL', 0, 1800, '', 0, 0, 'SIN CUOTA', 1800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5107936', 'CURSO', 'CURSADA MODULAR VW 2017', '5143', '9', 1, 20, '01-04', '20-12', 0, 'PRESENCIAL', 0, 3300, '', 0, 0, 'SIN CUOTA', 3300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5166856', 'CURSO', '2018-IACT - REFRIGERACION Y AA', '364369', '4', 16, 35, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1560, '', 1560, 0, 'MENSUAL', 6240, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5035141', 'CURSO', 'CURSO INTRODUCTORIO TSA', '421741', '1', 73, 1, '01-06', '01-12', 0, 'PRESENCIAL', 0, 2550, '', 2550, 0, 'SIN CUOTA', 2550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5166679', 'CURSO', '2018-PROFAU-SEMINA DIAG Y MANTEN INYECCION NAFTA', '5121695', '1', 10, 30, '01-01', '31-12', 9, 'PRESENCIAL', 0, 3200, '', 0, 0, 'SIN CUOTA', 3200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5166871', 'CURSO', '2018-IACT - INST. DOMI Y COMERCIALES', '1448333', '5', 5, 10, '01-01', '31-12', 60, 'PRESENCIAL', 4, 1560, '', 1560, 0, 'MENSUAL', 7800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5141383', 'CARRERA', 'CURSADA MODULAR MBA', '5143', '1', 1, 19, '01-04', '20-12', 0, 'PRESENCIAL', 0, 14500, '', 0, 0, 'SIN CUOTA', 14500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4920453', 'CARRERA', 'TECNICO SUPERIOR EN PROGRAMACION - EXPORTADOS', '2618', '20', 20, 100, '01-03', '31-12', 4, 'PRESENCIAL', 10, 0, '', 4600, 0, 'MENSUAL', 0, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4920001', 'CARRERA', 'TECNICO SUPERIOR EN SISTEMAS INFORMATICOS- PACHECO', '125849', '10', 10, 40, '01-03', '20-12', 4, 'PRESENCIAL', 10, 0, '', 3300, 0, 'MENSUAL', 0, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4920017', 'CURSO', 'CURSO INTRODUCTORIO TUP - PACHECO', '5269', '3', 20, 100, '01-02', '31-12', 0, 'PRESENCIAL', 0, 4600, '', 0, 0, 'SIN CUOTA', 4600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4920058', 'CARRERA', 'TECNICO SUPERIOR EN PROGRAMACION -JCP - EXPORTADOS', '2620', '20', 15, 100, '01-03', '31-12', 4, 'PRESENCIAL', 10, 0, '', 4600, 0, 'MENSUAL', 0, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5161404', 'CARRERA', 'MATRÍCULA MBA', '5812821', '1', 10, 40, '01-02', '28-02', 0, 'PRESENCIAL', 0, 15200, '', 0, 0, 'SIN CUOTA', 15200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5166951', 'CURSO', '2018-PROFAU- MECANICA BASICA', '3387863', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 1950, '', 1950, 0, 'MENSUAL', 5850, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5166882', 'CURSO', '2018-IACT - INST ELEC INDUSTRIAL', '1448343', '6', 5, 10, '01-01', '31-12', 72, 'PRESENCIAL', 5, 1560, '', 1560, 0, 'MENSUAL', 9360, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167128', 'CURSO', '2018-PROFAU- AJUSTE DE MOTOR', '3786932', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 3050, '', 3050, 0, 'MENSUAL', 9150, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167149', 'CURSO', '2018-PROFAU- ADMI TALLERES', '3499849', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 1950, '', 1950, 0, 'MENSUAL', 5850, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167169', 'CURSO', '2018-PROFAU - CARBURACION Y ENCENDIDO', '3786924', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2250, '', 2250, 0, 'MENSUAL', 6750, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167174', 'CURSO', '2018-PROFAU - REP Y MANT DE MOTOR', '3786931', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2680, '', 2680, 0, 'MENSUAL', 8040, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167180', 'CURSO', '2018-PROFAU- CONO ELEC AUTOMOVIL', '3387864', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2680, '', 2680, 0, 'MENSUAL', 8040, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167186', 'CURSO', '2018-PROFAU- INYECCION NAFTA FYC', '3786926', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 3050, '', 3050, 0, 'MENSUAL', 9150, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167470', 'CURSO', 'INSTACIAS CURSO 2018-IDIOMAS-INGLES', '1020', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1225, '', 1225, 0, 'MENSUAL', 4900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169239', 'CURSO', '2018-ADMIN- MARKETING PROMOCION Y VENTAS', '2952530', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1490, '', 1490, 0, 'MENSUAL', 5960, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167654', 'CURSO', '2018-INFORMATICA AUTOCAD BASICO', '1486568', '2', 10, 12, '01-01', '31-12', 30, 'PRESENCIAL', 1, 1500, '', 1500, 0, 'MENSUAL', 3000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167658', 'CURSO', '2018-INFORMATICA - AUTOCAD AVANZADO', '1486568', '2', 10, 12, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1750, '', 1750, 0, 'MENSUAL', 3500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5168299', 'CURSO', '2018-PROFAU- MECANICA AVANZADA 1', '5167695', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2150, '', 2150, 0, 'MENSUAL', 6450, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5174162', 'CURSO', '2018-INFORMATICA - DISEÑO WEB', '1455024', '6', 10, 12, '01-01', '31-12', 75, 'PRESENCIAL', 5, 1565, '', 1565, 0, 'MENSUAL', 9390, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5168962', 'CURSO', '2018-IDIOMAS-INGLES', '1020', '4', 15, 30, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1098, '', 1098, 0, 'MENSUAL', 4392, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5168995', 'CURSO', '2018-IDIOMAS- ALEMAN', '1865656', '4', 10, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1225, '', 1225, 0, 'MENSUAL', 4900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169017', 'CURSO', '2018-IDIOMAS -PORTUGUES ', '1022', '4', 10, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1225, '', 1225, 0, 'MENSUAL', 4900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169155', 'CURSO', '2018-ADMIN- LIQ DE SUELDOS', '75413', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1400, '', 1400, 0, 'MENSUAL', 5600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169171', 'CURSO', '2018-ADMIN-ASIST ADM PYME 6M', '260920', '6', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 5, 1400, '', 1400, 0, 'MENSUAL', 8400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169204', 'CURSO', '2018-ADMIN- SEC ADM INFORMATICO 6 M', '3892857', '6', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 5, 1500, '', 1500, 0, 'MENSUAL', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169198', 'CURSO', '2018-ADMIN- SEC ADM INFORMATICO 4 M', '3892857', '4', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 3, 2250, '', 2250, 0, 'MENSUAL', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169226', 'CURSO', '2018-ADMIN - ORGANIZACION DE EVENTOS', '4896590', '4', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 3, 1750, '', 1750, 0, 'MENSUAL', 7000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5183460', 'CURSO', '2018-CIE- LEAN MANUNFACTURING', '4831227', '1', 16, 16, '01-01', '31-12', 16, 'PRESENCIAL', 0, 2500, '', 0, 0, 'SIN CUOTA', 2500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169245', 'CURSO', '2018-ADMIN- MONOTRIBUTO E  IIBB PROV BS AS', '4404476', '2', 16, 21, '01-01', '31-12', 24, 'PRESENCIAL', 1, 2275, '', 2275, 0, 'MENSUAL', 4550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169234', 'CURSO', '2018-ADMIN-ANALISTA IMPOSITIVO', '75627', '5', 16, 21, '01-01', '31-12', 60, 'PRESENCIAL', 4, 1488, '', 1488, 0, 'MENSUAL', 7440, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169222', 'CURSO', '2018-ADMIN- ADMIN DE PERSONAL', '260922', '4', 12, 16, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1490, '', 1490, 0, 'MENSUAL', 5960, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169165', 'CURSO', '2018-ADMIN-ASIST ADMIN  PYME 4 M', '260920', '4', 16, 21, '01-01', '31-12', 96, 'PRESENCIAL', 3, 2100, '', 2100, 0, 'MENSUAL', 8400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169230', 'CURSO', '2018-ADMIN-ANALISTA CONTABLE', '75601', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1490, '', 1490, 0, 'MENSUAL', 5960, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169211', 'CURSO', '2018-ADMIN- ASIST RRHH 6M', '260928', '6', 16, 18, '01-01', '31-12', 96, 'PRESENCIAL', 5, 1400, '', 1400, 0, 'MENSUAL', 8400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5169770', 'CURSO', '2018-CIE- SEGURIDAD E HIEGINE', '3746428', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2500, '', 2500, 0, 'MENSUAL', 7500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5170692', 'CURSO', '2018-SALUD - AUXILIAR DE FARMACIA', '5039788', '10', 10, 40, '01-01', '31-12', 80, 'PRESENCIAL', 10, 590, '', 1590, 0, 'MENSUAL', 16490, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5170700', 'CURSO', '2018-SALUD - SEC MEDICO', '5039791', '6', 10, 30, '01-01', '31-12', 30, 'PRESENCIAL', 6, 590, '', 1190, 0, 'MENSUAL', 7730, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5172366', 'CURSO', '2018-BIBLIO PACHECO - INST DE CAMA DE VIGILANCIA', '3746476', '3', 10, 16, '01-01', '31-12', 36, 'PRESENCIAL', 2, 1565, '', 1565, 0, 'MENSUAL', 4695, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5172370', 'CURSO', '2018-BIBLIO PACHECO - INTRO A REDES', '367852', '2', 10, 16, '01-01', '31-12', 32, 'PRESENCIAL', 1, 1565, '', 1565, 0, 'MENSUAL', 3130, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5189075', 'CURSO', 'MATRICULA LEM ', '98384', '1', 1, 30, '01-02', '28-02', 0, 'PRESENCIAL', 1, 2950, '', 2950, 0, 'SIN CUOTA', 2950, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5196917', 'CURSO', '2018-UTN- AUTOMATIZACION INDUSTRIAL 6 MESES', '334383', '6', 11, 20, '01-01', '31-12', 96, 'PRESENCIAL', 5, 1315, '', 1315, 0, 'MENSUAL', 7890, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5172976', 'CURSO', '2018-UTN- AUTOMATIZACION INDUSTRIAL 3 MESES', '334383', '3', 11, 20, '01-01', '31-12', 96, 'PRESENCIAL', 2, 2630, '', 2630, 0, 'MENSUAL', 7890, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5194599', 'CURSO', 'ALEMAN-SAU-PRECOLOQUIO ', '133773', '2', 1, 68, '01-02', '31-03', 0, 'PRESENCIAL', 2, 0, '', 900, 0, 'MENSUAL', 1800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5172351', 'CURSO', '2018-BIBLIO PACHECO - REP DE PC Y NOTEBOOK', '1769849', '5', 10, 16, '01-01', '31-12', 111, 'PRESENCIAL', 4, 1565, '', 1565, 0, 'MENSUAL', 7825, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167665', 'CURSO', '2018-INFORMATICA - ROBOTICA BASICA', '2676885', '2', 10, 12, '01-01', '31-12', 24, 'PRESENCIAL', 1, 2815, '', 2815, 0, 'MENSUAL', 5630, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5168980', 'CURSO', '2018-IDIOMAS - FIRST CERTIFICATE', '1020', '4', 15, 21, '01-01', '31-12', 96, 'PRESENCIAL', 3, 1232, '', 1232, 0, 'MENSUAL', 4928, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5167648', 'CURSO', '2018-INFORMATICA- EXCEL ', '1486567', '1', 10, 16, '01-01', '31-12', 12, 'PRESENCIAL', 0, 1375, '', 0, 0, 'SIN CUOTA', 1375, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5194586', 'CURSO', 'ALEMAN-SAU', '133773', '9', 1, 45, '01-02', '31-10', 0, 'PRESENCIAL', 9, 0, '', 2000, 0, 'MENSUAL', 18000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5199776', 'CARRERA', 'DOCENCIA UNIVERSITARIA ', '5141', '10', 5, 40, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 8450, 0, 'MENSUAL', 84500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5191723', 'MAESTRIA', 'ESPEC Y MTRIA. ESTRUCTURAL EXTRANJEROS', '1893343', '10', 1, 10, '01-03', '31-12', 0, 'PRESENCIAL', 10, 22000, 'PAGOS DOLAR TIPO DE CAMBIO DEL DIA DE PAGO', 22000, 0, 'MENSUAL', 242000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5354027', 'CURSO', '2019-PROFAU- MECANICA AVANZADA 1', '5167695', '3', 16, 25, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2950, '', 2950, 0, 'MENSUAL', 8850, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356458', 'CURSO', '2019-ADMIN- LIQ DE SUELDOS', '75413', '4', 16, 21, '27-04', '31-12', 48, 'PRESENCIAL', 3, 2000, '', 2000, 0, 'MENSUAL', 8000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5220516', 'CARRERA', 'CURSADA MODULAR 2018 MBA', '5143', '1', 1, 10, '01-04', '31-12', 0, 'PRESENCIAL', 1, 0, '', 5160, 0, 'MENSUAL', 5160, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5354038', 'CURSO', '2019-PROFAU- INYECCION NAFTA FYC', '3786926', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 4150, '', 4150, 0, 'MENSUAL', 12450, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5232866', 'CURSO', '2018-IDIOMAS-INGLES-NIVEL 1-2º CUATRIMESTRE', '1020', '4', 16, 21, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1100, '', 1100, 0, 'MENSUAL', 4400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5234384', 'CURSO', '2018-UTN - PLC NIVEL 2', '1270', '2', 12, 16, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1950, '', 1950, 0, 'MENSUAL', 3900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5273957', 'CURSO', '2018-ADMIN- MARKETING DIGITAL', '5257449', '3', 18, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 1500, '', 1500, 0, 'MENSUAL', 4500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5274667', 'CURSO', '2018-PROFAU-SEMINA DIAG Y MANTEN DE CARBURACIÓN', '4578777', '1', 10, 25, '01-01', '31-12', 9, 'PRESENCIAL', 0, 2850, '', 0, 0, 'SIN CUOTA', 2850, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5232879', 'CURSO', '2018-IDIOMAS - FIRST CERTIFICATE 2º CUATRIMESTRE', '1020', '4', 16, 25, '01-01', '31-12', 48, 'PRESENCIAL', 4, 1300, '', 1300, 0, 'MENSUAL', 5200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5286316', 'CURSO', '2018-SALUD - AUXILIAR DE FARMACIA-COSTO NUEVO', '5039788', '10', 10, 40, '01-01', '31-12', 80, 'PRESENCIAL', 10, 690, '', 1990, 0, 'MENSUAL', 20590, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5286321', 'CURSO', '2018-SALUD-SEC MEDICO-COSTO NUEVO', '5039791', '6', 10, 30, '01-01', '31-12', 30, 'PRESENCIAL', 6, 690, '', 1590, 0, 'MENSUAL', 10230, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5232870', 'CURSO', '2018-IDIOMAS-INGLES-NIVEL 2 AL 6-2º - 2º CUATRIM', '1020', '4', 16, 30, '01-01', '31-12', 48, 'PRESENCIAL', 3, 1200, '', 1200, 0, 'MENSUAL', 4800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5224676', 'CURSO', '2018-UTN - PLC NIVEL 1', '1268', '2', 12, 18, '01-01', '31-12', 24, 'PRESENCIAL', 1, 1750, '', 1750, 0, 'MENSUAL', 3500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5326606', 'CURSO', '2018-IACT - INSTALADOR DE EQUIPOS SPLIT', '1328167', '1', 10, 36, '01-01', '31-12', 12, 'PRESENCIAL', 0, 2000, '', 0, 0, 'SIN CUOTA', 2000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5341978', 'CURSO', '2018-PROFAU-INTERPRETACION DE PLANOS ELECTRICOS ', '5328595', '1', 16, 21, '01-01', '31-12', 12, 'PRESENCIAL', 0, 3250, '', 0, 0, 'SIN CUOTA', 3250, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356393', 'CURSO', '2019-ADMIN-ANALISTA IMPOSITIVO', '75627', '5', 16, 21, '26-04', '31-12', 60, 'PRESENCIAL', 4, 2000, '', 2000, 0, 'MENSUAL', 10000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356366', 'CURSO', '2019-ADMIN-ASIST ADM PYME 6M', '260920', '6', 16, 21, '16-03', '31-12', 96, 'PRESENCIAL', 5, 1900, '', 1900, 0, 'MENSUAL', 11400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356493', 'CURSO', '2019-ADMIN- MONOTRIBUTO E IIBB PROV BS AS', '4404476', '2', 16, 21, '14-03', '31-12', 24, 'PRESENCIAL', 1, 3100, '', 3100, 0, 'MENSUAL', 6200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356497', 'CURSO', '2019-INFORMATICA - AUTOCAD AVANZADO', '1486568', '2', 10, 12, '09-03', '31-12', 24, 'PRESENCIAL', 1, 2400, '', 2400, 0, 'MENSUAL', 4800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356501', 'CURSO', '2019-INFORMATICA AUTOCAD BASICO', '1486568', '2', 10, 12, '12-03', '31-12', 30, 'PRESENCIAL', 1, 2000, '', 2000, 0, 'MENSUAL', 4000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356505', 'CURSO', '2019-INFORMATICA - DISEÑO WEB', '1455024', '6', 10, 12, '08-03', '31-12', 75, 'PRESENCIAL', 5, 2100, '', 2100, 0, 'MENSUAL', 12600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356512', 'CURSO', '2019-INFORMATICA - ROBOTICA BASICA', '2676885', '2', 10, 12, '11-03', '31-12', 24, 'PRESENCIAL', 1, 3800, '', 3800, 0, 'MENSUAL', 7600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5352019', 'CURSO', '2019-SALUD - AUXILIAR DE FARMACIA', '5039788', '10', 10, 40, '01-01', '31-12', 80, 'PRESENCIAL', 9, 2680, '', 1990, 0, 'MENSUAL', 20590, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5354040', 'CURSO', '2019-PROFAU- MOTORES 1-REPARACIÓN Y MANTENIMIENTO', '3786931', '3', 16, 21, '12-03', '31-12', 36, 'PRESENCIAL', 2, 3650, '', 3650, 0, 'MENSUAL', 10950, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356531', 'CURSO', '2019-BIBLIO PACHECO - INST DE CAMA DE VIGILANCIA', '3746476', '3', 12, 16, '06-03', '31-12', 36, 'PRESENCIAL', 2, 2100, '', 2100, 0, 'MENSUAL', 6300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356477', 'CURSO', '2019-ADMIN- MARKETING DIGITAL', '5257449', '3', 16, 21, '30-03', '31-12', 36, 'PRESENCIAL', 2, 2000, '', 2000, 0, 'MENSUAL', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356525', 'CURSO', '2019-INFORMATICA- EXCEL AVANZADO', '1486567', '1', 10, 12, '04-04', '31-12', 12, 'PRESENCIAL', 0, 1900, '', 0, 0, 'SIN CUOTA', 1900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5352030', 'CURSO', '2019-SALUD-SEC MEDICO', '5039791', '6', 10, 40, '01-04', '31-12', 30, 'PRESENCIAL', 6, 690, '', 1590, 0, 'MENSUAL', 10230, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356471', 'CURSO', '2019-ADMIN- MARKETING PROMOCION Y VENTAS', '2952530', '3', 16, 21, '25-04', '31-12', 36, 'PRESENCIAL', 2, 2000, '', 2000, 0, 'MENSUAL', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356481', 'CURSO', '2019-ADMIN- SEC ADM INFORMATICO 6 M', '3892857', '6', 16, 21, '16-03', '31-12', 96, 'PRESENCIAL', 5, 1900, '', 1900, 0, 'MENSUAL', 11400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5354036', 'CURSO', '2019-PROFAU- ELEC DEL AUTOMOVIL', '3387864', '3', 16, 21, '14-02', '31-12', 36, 'PRESENCIAL', 2, 3650, '', 3650, 0, 'MENSUAL', 10950, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356389', 'CURSO', '2019-ADMIN-ANALISTA CONTABLE', '75601', '4', 16, 21, '16-04', '31-12', 48, 'PRESENCIAL', 3, 2000, '', 2000, 0, 'MENSUAL', 8000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356489', 'CURSO', '2019-ADMIN - ORGANIZACION DE EVENTOS 6M', '4896590', '6', 16, 21, '15-04', '31-12', 96, 'PRESENCIAL', 5, 1900, '', 1900, 0, 'MENSUAL', 11400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356467', 'CURSO', '2019-ADMIN- ADMIN DE PERSONAL', '260922', '4', 16, 21, '11-05', '31-12', 48, 'PRESENCIAL', 3, 2000, '', 2000, 0, 'MENSUAL', 8000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356383', 'CURSO', '2019-ADMIN-ASIST RRHH 6M', '260928', '6', 16, 21, '21-03', '31-12', 96, 'PRESENCIAL', 5, 1900, '', 1900, 0, 'MENSUAL', 11400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356535', 'CURSO', '2019-BIBLIO PACHECO - REP DE PC Y NOTEBOOK', '76601', '5', 12, 16, '11-03', '31-12', 111, 'PRESENCIAL', 4, 2100, '', 2100, 0, 'MENSUAL', 10500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5199768', 'CARRERA', 'MATRICULA DOCENCIA UNIVERSITARIA- DOCENTE', '5141', '1', 5, 40, '01-03', '30-03', 0, 'PRESENCIAL', 0, 8619, '', 0, 0, 'SIN CUOTA', 8619, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356519', 'CURSO', '2019-INFORMATICA- EXCEL BASICO', '1486567', '1', 10, 20, '04-02', '31-12', 12, 'PRESENCIAL', 0, 1900, '', 0, 0, 'SIN CUOTA', 1900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5355463', 'MAESTRIA', '2019 - 2ºAÑO - ESP. Y MTRIA.ESTRUC. EXTRANJEROS ', '1893343', '10', 1, 14, '01-03', '31-12', 0, 'PRESENCIAL', 10, 16200, '', 16200, 0, 'MENSUAL', 178200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5215909', 'CARRERA', 'NO USAR - LICENCIATURA EN TECNOLOGIA EDUCATIVA', '5200241', '10', 10, 30, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 6300, 0, 'MENSUAL', 63000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5213472', 'CARRERA', 'MATRICULA DOCENCIA UNIVERSITARIA - NO DOCENTE', '5812820', '11', 9, 40, '01-02', '28-02', 0, 'PRESENCIAL', 0, 8619, '', 0, 0, 'SIN CUOTA', 8619, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5191714', 'CURSO', 'MATRICULA ESPEC. Y MTRIA.ESTRUCTURAL EXTRANJEROS', '1893343', '1', 1, 10, '01-02', '28-02', 0, 'PRESENCIAL', 1, 0, 'PAGOS DOLOR TIPO DE CAMBIO DEL DIA DE PAGO', 16200, 0, 'SIN CUOTA', 16200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5355459', 'MAESTRIA', 'NO USAR-ESP. Y MTRIA.ESTRUCTURAL NACIONAL (CUOTAS)', '1893343', '6', 1, 22, '01-07', '31-12', 0, 'PRESENCIAL', 6, 0, '', 7900, 0, 'MENSUAL', 47400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5353959', 'CURSO', '2019-PROFAU- ADMI TALLERES  ', '3499849', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 3050, '', 3050, 0, 'MENSUAL', 9150, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356545', 'CURSO', '2019-BIBLIO PACHECO - INTRO A REDES', '367852', '2', 12, 16, '09-03', '31-12', 32, 'PRESENCIAL', 1, 2100, '', 2100, 0, 'MENSUAL', 4200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356549', 'CURSO', '2019-IACT - INSTALADOR DE EQUIPOS SPLIT', '1328167', '1', 10, 36, '01-11', '31-12', 12, 'PRESENCIAL', 0, 2700, '', 0, 0, 'SIN CUOTA', 2700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356551', 'CURSO', '2019-IACT - INST. DOMI Y COMERCIALES', '1448333', '5', 10, 13, '01-02', '31-12', 60, 'PRESENCIAL', 4, 2100, '', 2100, 0, 'MENSUAL', 10500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356616', 'CURSO', '2019-UTN - PLC NIVEL 2', '1270', '2', 12, 16, '23-02', '31-12', 24, 'PRESENCIAL', 1, 2600, '', 2600, 0, 'MENSUAL', 5200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356660', 'CURSO', '2019-IDIOMAS- ALEMAN', '1865656', '4', 16, 21, '19-03', '31-12', 48, 'PRESENCIAL', 3, 1600, '', 1600, 0, 'MENSUAL', 6400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356378', 'CURSO', '2019-ADMIN-ASIST ADMIN  PYME 4 M', '260920', '4', 16, 21, '22-04', '31-12', 96, 'PRESENCIAL', 3, 2850, '', 2850, 0, 'MENSUAL', 11400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356635', 'CURSO', '2019-IDIOMAS-INGLES-NIVEL 1', '1020', '4', 16, 37, '11-03', '31-12', 48, 'PRESENCIAL', 3, 1500, '', 1500, 0, 'MENSUAL', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356564', 'CURSO', '2019-IACT - REFRIGERACION Y AA', '364369', '4', 12, 36, '15-01', '31-12', 48, 'PRESENCIAL', 3, 2100, '', 2100, 0, 'MENSUAL', 8400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356642', 'CURSO', '2019-IDIOMAS-INGLES-NIVEL 2 AL 6', '1020', '4', 12, 21, '07-03', '31-12', 48, 'PRESENCIAL', 3, 1600, '', 1600, 0, 'MENSUAL', 6400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356587', 'CURSO', '2019-UTN- AUTOMATIZACION INDUSTRIAL 3 MESES', '334383', '3', 16, 21, '19-02', '31-12', 96, 'PRESENCIAL', 2, 3600, '', 3600, 0, 'MENSUAL', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356873', 'CURSO', '2019-IDIOMAS- ALEMAN-CONVERSACIÓN', '1865656', '4', 7, 21, '09-03', '31-12', 48, 'PRESENCIAL', 3, 2100, '', 2100, 0, 'MENSUAL', 8400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356631', 'CURSO', '2019-CIE- SEGURIDAD E HIEGINE', '3746428', '3', 16, 21, '14-06', '31-12', 36, 'PRESENCIAL', 2, 3400, '', 3400, 0, 'MENSUAL', 10200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356595', 'CURSO', '2019-UTN- AUTOMATIZACION INDUSTRIAL 6 MESES', '334383', '6', 16, 21, '23-02', '31-12', 96, 'PRESENCIAL', 5, 1800, '', 1800, 0, 'MENSUAL', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356609', 'CURSO', '2019-UTN - PLC NIVEL 1', '1268', '2', 12, 16, '23-02', '01-12', 24, 'PRESENCIAL', 1, 2400, '', 2400, 0, 'MENSUAL', 4800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356655', 'CURSO', '2019-IDIOMAS - FIRST CERTIFICATE', '1020', '4', 16, 21, '06-03', '31-12', 48, 'PRESENCIAL', 3, 1800, '', 1800, 0, 'MENSUAL', 7200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356668', 'CURSO', '2019-IDIOMAS -PORTUGUES', '1022', '4', 12, 21, '21-03', '31-12', 48, 'PRESENCIAL', 3, 1600, '', 1600, 0, 'MENSUAL', 6400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5512231', 'CURSO', '2019-INFORMATICA-REPARACIÓN DE PANTALLAS LCD', '5495351', '2', 10, 16, '01-08', '31-12', 48, 'PRESENCIAL', 1, 2100, '', 2100, 0, 'MENSUAL', 4200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5394755', 'CURSO', '2019-PROFAU- DISENO AUTOMOTRIZ 1', '5378749', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 3050, '', 3050, 0, 'MENSUAL', 9150, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5394773', 'CURSO', '2019-PROFAU- MECANICA AVANZADA 2', '5378750', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 3150, '', 3150, 0, 'MENSUAL', 9450, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5416297', 'CURSO', '2019-ADMIN-SEMINARIO MONOTRIBUTO E IIBB', '3571814', '1', 10, 25, '23-05', '31-12', 10, 'PRESENCIAL', 0, 2600, '', 0, 0, 'SIN CUOTA', 2600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5440442', 'CURSO', '2019-UTN -CENTRO DE MECANIZADO', '5423002', '2', 6, 8, '01-01', '31-12', 24, 'PRESENCIAL', 1, 3000, '', 3000, 0, 'MENSUAL', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5470423', 'CURSO', '2019-CIE- LEAN MANUNFACTURING', '4831227', '1', 11, 20, '09-08', '31-12', 16, 'PRESENCIAL', 1, 0, '', 3800, 3800, 'SIN CUOTA', 3800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5481241', 'CURSO', '2019-CIE- LEAN MANUFACTURING-BOSISIO SA', '4831227', '1', 10, 11, '09-08', '01-09', 16, 'PRESENCIAL', 0, 3400, '', 0, 0, 'SIN CUOTA', 3400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5443960', 'CURSO', '2019-ADMIN- COACHING Y LIDERAZGO', '4249108', '4', 15, 25, '01-08', '31-12', 48, 'PRESENCIAL', 4, 0, '', 2000, 2000, 'MENSUAL', 8000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5353964', 'CURSO', '2019-PROFAU- MECANICA BASICA', '3387863', '3', 16, 50, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2750, '', 2750, 0, 'MENSUAL', 8250, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5541313', 'CURSO', '2019-CIE-TIMONEL YATE MOTOR', '5527152', '1', 10, 35, '01-10', '31-12', 6, 'PRESENCIAL', 0, 3000, '', 0, 0, 'SIN CUOTA', 3000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5561362', 'CURSO', '2019-PROFAU-SEMINA DIAG Y MANTEN INYECCION NAFTA', '5121695', '1', 10, 22, '01-10', '31-12', 6, 'PRESENCIAL', 0, 4200, '', 0, 0, 'SIN CUOTA', 4200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5578423', 'CURSO', '2019-CIE-ESTADÍSTICAS PARA LA MEJORA DE LA CALIDAD', '5562216', '1', 10, 20, '01-11', '31-12', 12, 'PRESENCIAL', 0, 3000, '', 0, 0, 'SIN CUOTA', 3000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5561388', 'CURSO', '2019-PROFAU-SEM PUESTA PUNTO ARBOL LEVA COMPET', '3786936', '1', 10, 22, '01-12', '31-12', 6, 'PRESENCIAL', 0, 4200, '', 0, 0, 'SIN CUOTA', 4200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5523567', 'CURSO', '2019-PROFAU- INTERPRETACIÓN DE PLANOS ELECTRICOS', '1631049', '1', 15, 25, '01-11', '30-11', 12, 'PRESENCIAL', 0, 4150, '', 0, 0, 'SIN CUOTA', 4150, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5580843', 'CURSO', '2019-PROFAU-SEM INTRO INYECCION DIESEL CRDI', '2264121', '1', 10, 50, '01-12', '31-12', 6, 'PRESENCIAL', 0, 4200, '', 0, 0, 'SIN CUOTA', 4200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5520531', 'CURSO', '2019-PROFAU- MECANICA BASICA-6 CLASES', '3387863', '2', 18, 25, '01-09', '31-12', 36, 'PRESENCIAL', 1, 4125, '', 4125, 0, 'MENSUAL', 8250, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582114', 'CURSO', '2020-PROFAU-ADMINISTRACIÓN DE TALLERES  ', '3499849', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 4300, '', 4300, 0, 'MENSUAL', 12900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5375604', 'CARRERA', 'MATRÍCULA LIC. HIGIENE Y SEGURIDAD', '5812822', '1', 10, 100, '01-02', '28-02', 0, 'PRESENCIAL', 0, 6300, '', 0, 0, 'SIN CUOTA', 6300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582116', 'CURSO', '2020-PROFAU-DISENO AUTOMOTRIZ 1', '5378749', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 4270, '', 4270, 0, 'MENSUAL', 12810, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5580334', 'CURSO', '2020-SALUD - AUXILIAR DE FARMACIA', '5039788', '10', 20, 40, '01-01', '31-12', 80, 'PRESENCIAL', 10, 890, '', 2490, 0, 'MENSUAL', 25790, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5419768', 'CURSO', '2019-SALUD-SEC MEDICO-COSTO NUEVO', '5039791', '6', 30, 40, '01-01', '31-12', 30, 'PRESENCIAL', 5, 2680, '', 1990, 0, 'MENSUAL', 12630, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4912612', 'CARRERA', 'LICENCIATURA EN ENSEÑANZA DE LA MATEMATICA', '98384', '10', 10, 70, '01-03', '30-12', 0, 'PRESENCIAL', 10, 0, '', 4000, 0, 'MENSUAL', 0, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5356557', 'CURSO', '2019-IACT - INST ELEC INDUSTRIAL', '1448343', '6', 5, 10, '01-01', '31-12', 72, 'PRESENCIAL', 5, 2100, '', 2100, 0, 'MENSUAL', 12600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5215895', 'CARRERA', 'MATRICULA LICENCIATURA EN TECNOLOGIA EDUCATIVA', '5812823', '1', 10, 30, '01-02', '28-02', 0, 'PRESENCIAL', 0, 6300, '', 0, 0, 'SIN CUOTA', 6300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4895080', 'CARRERA', 'SEMINARIO ESPECIALIZACION Y MTRIA ING ESTRUCTURAL', '1893343', '2', 1, 10, '01-03', '31-12', 0, 'PRESENCIAL', 1, 9315, '', 9315, 0, 'MENSUAL', 18630, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5580340', 'CURSO', '2020-SALUD - SECRETARIADO MEDICO', '5039791', '6', 20, 40, '01-01', '31-12', 30, 'PRESENCIAL', 6, 890, '', 1990, 0, 'MENSUAL', 12830, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5375619', 'CARRERA', 'NO USAR - LICENCIATURA EN HIGIENE Y SEGURIDAD', '5364438', '10', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 6300, 0, 'MENSUAL', 63000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582868', 'CURSO', '2020-IACT-REFRIGERACION Y AA', '364369', '4', 10, 36, '01-01', '31-12', 48, 'PRESENCIAL', 3, 2850, '', 2850, 0, 'MENSUAL', 11400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582120', 'CURSO', '2020-PROFAU- INTERPRETACIÓN DE PLANOS ELECTRICOS', '5328595', '1', 16, 21, '01-01', '31-12', 12, 'PRESENCIAL', 0, 5800, '', 0, 0, 'SIN CUOTA', 5800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582122', 'CURSO', '2020-PROFAU- INYECCION NAFTA FYC', '3786926', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 5800, '', 5800, 0, 'MENSUAL', 17400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582124', 'CURSO', '2020-PROFAU- MECANICA AVANZADA 1', '5167695', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 4150, '', 4150, 0, 'MENSUAL', 12450, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582130', 'CURSO', '2020-PROFAU- MOTORES 1-REPARACIÓN Y MANTENIMIENTO', '3786931', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 5100, '', 5100, 0, 'MENSUAL', 15300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582118', 'CURSO', '2020-PROFAU-ELECTRICIDAD DEL AUTOMOVIL', '3387864', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 5100, '', 5100, 0, 'MENSUAL', 15300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582879', 'CURSO', '2020-IACT-INSTALACIONES ELECTRICAS INDUSTRIALES', '1448343', '6', 5, 10, '01-01', '01-12', 72, 'PRESENCIAL', 5, 2850, '', 2850, 0, 'MENSUAL', 17100, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582900', 'CURSO', '2020-IACT- INST. DOMICILIARIAS Y COMERCIALES', '1448333', '5', 5, 10, '01-01', '31-12', 60, 'PRESENCIAL', 4, 2850, '', 2850, 0, 'MENSUAL', 14250, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5598242', 'CURSO', '2020-ADMIN-COACHING NIVEL 1', '4249108', '4', 15, 25, '01-01', '31-12', 48, 'PRESENCIAL', 3, 2700, '', 2700, 0, 'MENSUAL', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5618449', 'CARRERA', 'MATRICULA LICENCIATURA EN BIOIMAGENES', '5812825', '1', 10, 100, '01-02', '28-02', 0, 'PRESENCIAL', 0, 6500, '', 0, 0, 'SIN CUOTA', 6500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596892', 'CURSO', '2020-ADMIN-CONCILIACIÓN BANCARIA', '3571815', '2', 15, 25, '01-01', '31-12', 24, 'PRESENCIAL', 1, 2600, '', 2600, 0, 'MENSUAL', 5200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599225', 'CURSO', '2020-INFORMATICA-REPARACIÓN DE PANTALLAS LCD', '5495351', '2', 10, 12, '01-01', '31-12', 48, 'PRESENCIAL', 1, 2850, '', 2850, 0, 'MENSUAL', 5700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582126', 'CURSO', '2020-PROFAU- MECANICA AVANZADA 2', '5378750', '3', 16, 21, '01-01', '31-12', 36, 'PRESENCIAL', 2, 4450, '', 4450, 0, 'MENSUAL', 13350, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5582128', 'CURSO', '2020-PROFAU- MECANICA BASICA', '3387863', '3', 16, 50, '01-01', '31-12', 36, 'PRESENCIAL', 2, 3850, '', 3850, 0, 'MENSUAL', 11550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599326', 'CURSO', '2020-CIE- PLC NIVEL 1', '1268', '2', 12, 16, '01-01', '31-12', 24, 'PRESENCIAL', 1, 3250, '', 3250, 0, 'MENSUAL', 6500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596608', 'CARRERA', 'MATRICULA - LICENCIATURA EN LOGISTICA', '5812824', '1', 10, 100, '01-01', '31-12', 0, 'PRESENCIAL', 0, 6300, '', 0, 0, 'SIN CUOTA', 6300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5600413', 'CURSO', '2020-CIE-SEGURIDAD E HIGIENE INDUSTRIAL', '3746428', '3', 15, 25, '01-01', '31-12', 36, 'DISTANCIA', 2, 4600, '', 4600, 0, 'MENSUAL', 13800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596619', 'CURSO', '2020-IDIOMAS-PORTUGUÉS', '1022', '4', 15, 25, '01-01', '31-12', 48, 'PRESENCIAL', 3, 2150, '', 2150, 0, 'MENSUAL', 8600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599287', 'CURSO', '2020-CIE-AUTOMATIZACION INDUSTRIAL 3 MESES', '334383', '3', 15, 25, '01-01', '31-12', 96, 'PRESENCIAL', 2, 4900, '', 4900, 0, 'MENSUAL', 14700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596876', 'CURSO', '2020-ADMIN-ANALISTA CONTABLE', '75601', '4', 15, 25, '01-01', '31-12', 48, 'PRESENCIAL', 3, 2700, '', 2700, 0, 'MENSUAL', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5607935', 'CURSO', '2020 - CURSO INTENSIVO QUÍMICA', '5618451', '1', 1, 50, '01-02', '28-02', 40, 'PRESENCIAL', 1, 4970, '', 0, 0, 'MENSUAL', 4970, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596627', 'CURSO', '2020-ADMIN-LIQUIDACION DE SUELDOS', '75413', '4', 15, 25, '01-01', '31-12', 48, 'PRESENCIAL', 3, 2700, '', 2700, 0, 'MENSUAL', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599279', 'CURSO', '2020-IDIOMAS -FIRST CERTIFICATE', '1020', '4', 15, 21, '01-01', '31-12', 96, 'PRESENCIAL', 3, 2450, '', 2450, 0, 'MENSUAL', 9800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599229', 'CURSO', '2020-INFORMATICA-ROBOTICA BASICA', '2676885', '2', 10, 12, '01-01', '31-12', 24, 'PRESENCIAL', 1, 5150, '', 5150, 0, 'MENSUAL', 10300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5626289', 'CARRERA', 'NO USAR - LICENCIATURA EN BIOIMAGENES', '5610117', '10', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 6500, 0, 'MENSUAL', 65000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5645159', 'CURSO', '2020-PROFAU-SEMINARIO INTROD INYECCION DIESEL CRDI', '2264121', '1', 10, 21, '01-01', '31-12', 6, 'PRESENCIAL', 0, 5800, '', 0, 0, 'SIN CUOTA', 5800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5645209', 'CURSO', '2020-PROFAU-SEM PUESTA PUNTO ARBOL LEVA COMPET', '3786936', '1', 10, 21, '01-01', '31-12', 6, 'PRESENCIAL', 0, 6100, '', 0, 0, 'SIN CUOTA', 6100, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599233', 'CURSO', '2020-INFORMATICA-INST DE CAMARAS DE VIGILANCIA', '3746476', '3', 10, 16, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2850, '', 2850, 0, 'MENSUAL', 8550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599204', 'CURSO', '2020-INFORMATICA AUTOCAD BASICO', '1486568', '2', 10, 12, '01-01', '31-12', 30, 'PRESENCIAL', 1, 2700, '', 2700, 0, 'MENSUAL', 5400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599217', 'CURSO', '2020-INFORMATICA- EXCEL AVANZADO', '1486567', '1', 10, 12, '01-01', '31-12', 12, 'PRESENCIAL', 0, 2600, '', 0, 0, 'SIN CUOTA', 2600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599221', 'CURSO', '2020-INFORMATICA-EXCEL BASICO', '1486567', '1', 10, 12, '01-01', '31-12', 12, 'PRESENCIAL', 0, 2600, '', 0, 0, 'SIN CUOTA', 2600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599238', 'CURSO', '2020-INFORMATICA-INTRODUCION A REDES ', '367852', '3', 10, 16, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2850, '', 2850, 0, 'MENSUAL', 8550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599250', 'CURSO', '2020-INFORMATICA-REPARACION DE PC Y NOTEBOOK', '76601', '5', 10, 16, '01-01', '31-12', 111, 'PRESENCIAL', 4, 2850, '', 2850, 0, 'MENSUAL', 14250, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5644667', 'CURSO', '2020-INFORMATICA-REPARACIÓN DETABLETS Y CELULARES', '5631993', '3', 10, 15, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2850, '', 2850, 0, 'MENSUAL', 8550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5605895', 'CURSO', '2020-ADMIN-SEMINARIO MONOTRIBUTO E IIBB', '3571814', '1', 15, 30, '01-01', '31-12', 10, 'PRESENCIAL', 0, 3500, '', 0, 0, 'SIN CUOTA', 3500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599303', 'CURSO', '2020-CIE-INTRO AUTOMATIZACION INDUSTRIAL 1', '334383', '2', 15, 25, '01-01', '31-12', 32, 'PRESENCIAL', 1, 2500, '', 2500, 0, 'MENSUAL', 5000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596938', 'CURSO', '2020-ADMIN-ASISTENTE DE RRHH 6M', '260928', '6', 15, 25, '01-01', '31-12', 96, 'PRESENCIAL', 5, 2600, '', 2600, 0, 'MENSUAL', 15600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5598226', 'CURSO', '2020-ADMIN-MARKETING PROMOCION Y VENTAS', '2952530', '3', 15, 25, '01-01', '31-12', 36, 'PRESENCIAL', 2, 2700, '', 2700, 0, 'MENSUAL', 8100, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5597763', 'CURSO', '2020-ADMIN-SEC ADM INFORMATICO 6 M', '3892857', '6', 15, 25, '01-01', '31-12', 96, 'PRESENCIAL', 5, 2600, '', 2600, 0, 'MENSUAL', 15600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5586241', 'CURSO', '2020-PROFAU- MOTORES 2-AJUSTE DE MOTORES', '3786932', '3', 15, 21, '01-01', '31-12', 36, 'SEMI-PRESENCIAL', 2, 5100, '', 5100, 0, 'MENSUAL', 15300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5591909', 'CURSO', '2020-IDIOMAS-INGLES-NIVEL 1', '1020', '4', 25, 40, '09-03', '31-12', 48, 'PRESENCIAL', 3, 2025, '', 2025, 0, 'MENSUAL', 8100, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5597931', 'CURSO', '2020-ADMIN-MARKETING DIGITAL', '5257449', '3', 15, 25, '01-01', '31-12', 48, 'PRESENCIAL', 2, 3600, '', 3600, 0, 'MENSUAL', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599340', 'CURSO', '2020-CIE- PLC NIVEL 2', '1270', '2', 12, 16, '01-01', '31-12', 24, 'PRESENCIAL', 1, 3500, '', 3500, 0, 'MENSUAL', 7000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5599211', 'CURSO', '2020-INFORMATICA-DISEÑO WEB ', '1455024', '6', 10, 12, '01-01', '31-12', 75, 'PRESENCIAL', 5, 2850, '', 2850, 0, 'MENSUAL', 17100, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596883', 'CURSO', '2020-ADMIN-ANALISTA IMPOSITIVO', '75627', '5', 15, 25, '01-01', '31-12', 60, 'PRESENCIAL', 4, 2700, '', 2700, 0, 'MENSUAL', 13500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596633', 'CURSO', '2020-ADMIN-ASIST ADMINIST CONTABLE PYME 6 MESES ', '260920', '6', 15, 25, '01-01', '31-12', 96, 'PRESENCIAL', 5, 2600, '', 2600, 0, 'MENSUAL', 15600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('4919999', 'CARRERA', 'TECNICO SUPERIOR EN PROGRAMACION', '2618', '20', 8, 40, '01-03', '20-12', 4, 'PRESENCIAL', 10, 4600, '', 4600, 0, 'MENSUAL', 0, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5448365', 'CURSO', 'SEMINARIO UNIVERSITARIO TUA ', '421741', '1', 30, 70, '02-09', '30-09', 100, 'PRESENCIAL', 1, 0, '', 5350, 5350, 'MENSUAL', 5350, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5666744', 'CURSO', '2020-CIE-PROGRAMACIÓN INTELIGENTE RELE 1', '5651034', '2', 12, 15, '01-01', '31-12', 24, 'PRESENCIAL', 1, 3500, '', 3500, 0, 'MENSUAL', 7000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5666773', 'CURSO', '2020-CIE-PROGRAMACIÓN INTELIGENTE RELE 2', '5651035', '2', 12, 15, '01-01', '31-12', 24, 'PRESENCIAL', 0, 3500, '', 3500, 0, 'MENSUAL', 7000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5740053', 'CURSO', '2020-ADMIN-COACHING NIVEL 2 CON DESCUENTO', '4740534', '4', 10, 15, '01-01', '31-12', 48, 'DISTANCIA', 3, 2430, '', 2430, 0, 'MENSUAL', 9720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5704716', 'MAESTRIA', 'NO USAR- ESP.MTRIA.I.ESTRUC-NAC-MATRICULA %6.3', '1893343', '1', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 0, 8728, '', 0, 0, 'SIN CUOTA', 8728, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5683704', 'MAESTRIA', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC-NAC-MATRICULA 15%', '1893343', '1', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 0, 7917.75, '', 0, 0, 'SIN CUOTA', 7917.75, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5683708', 'MAESTRIA', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC.-NAC-MATRICULA 20%', '1893343', '1', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 0, 7452, '', 0, 0, 'SIN CUOTA', 7452, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5683715', 'MAESTRIA', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC.-NAC-MATRICULA 25%', '1893343', '1', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 0, 6986.25, '', 0, 0, 'SIN CUOTA', 6986.25, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5683719', 'MAESTRIA', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC.-NAC-MATRICULA 40%', '1893343', '1', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 0, 5589, '', 0, 0, 'SIN CUOTA', 5589, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5683723', 'MAESTRIA', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC.-NAC-MATRICULA 75%', '1893343', '1', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 0, 2328.75, '', 0, 0, 'SIN CUOTA', 2328.75, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5591990', 'CURSO', '2020-IDIOMAS-INGLES-NIVEL 2 AL 6', '1020', '4', 15, 25, '01-01', '31-12', 48, 'PRESENCIAL', 3, 2150, '', 2150, 0, 'MENSUAL', 8600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5771471', 'CURSO', '2020-INFORMATICA AUTOCAD BASICO ON LINE', '1486568', '2', 8, 12, '01-01', '31-12', 24, 'DISTANCIA', 1, 2700, '', 2700, 0, 'MENSUAL', 5400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5684949', 'CARRERA', 'DIPLOMATURA EN PERSPECTIVA DE GENERO EN LAS ORG. ', '5687130', '8', 20, 100, '01-04', '31-11', 0, 'PRESENCIAL', 8, 3000, '', 3000, 0, 'MENSUAL', 27000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5704921', 'MAESTRIA', 'NO USAR - ESP.MTRIA.I.ESTRUC-NAC-MATRICULA%50', '1893343', '1', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 0, 4658, '', 0, 0, 'SIN CUOTA', 4658, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5683737', 'MAESTRIA', '2º AÑO-ESP.MTRIA.I.ESTRUCTURAL-NACIONAL', '1893343', '10', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 9315, 0, 'MENSUAL', 93150, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5719642', 'CURSO', '2020-PROFAU-DISENO AUTOMOTRIZ 2', '5706952', '3', 10, 40, '01-01', '31-12', 36, 'DISTANCIA', 2, 4550, '', 4550, 0, 'MENSUAL', 13650, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5719665', 'CURSO', '2020-PROFAU- MECANICA GENERAL', '2264109', '3', 10, 40, '01-01', '31-12', 36, 'DISTANCIA', 2, 3850, '', 3850, 0, 'MENSUAL', 11550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5719686', 'CURSO', '2020-PROFAU- INYECCION ELECTRONICA NAFTA 1', '5706953', '3', 10, 40, '01-01', '31-12', 36, 'DISTANCIA', 2, 5800, '', 5800, 0, 'MENSUAL', 17400, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5736605', 'CURSO', '2020-CIE- PLC S7-1200 NIVEL 1', '5719786', '1', 8, 20, '01-01', '31-12', 18, 'DISTANCIA', 0, 3200, '', 0, 0, 'SIN CUOTA', 3200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5737921', 'CURSO', '2020-IDIOMAS- ALEMAN', '1865656', '4', 16, 20, '01-01', '31-12', 48, 'DISTANCIA', 3, 2150, '', 2150, 0, 'MENSUAL', 8600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5719715', 'CURSO', '2020-INFORMATICA PROGRAMACION EN PHP NIVEL 1', '5706951', '2', 10, 40, '01-01', '31-12', 16, 'DISTANCIA', 1, 2850, '', 2850, 0, 'MENSUAL', 5700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5794853', 'CURSO', '2020-CIE-AUTOMATIZACION INDUSTRIAL ON LINE 1 PAGO', '334383', '3', 11, 30, '01-01', '31-12', 96, 'DISTANCIA', 0, 14700, '', 0, 0, 'SIN CUOTA', 14700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5822410', 'CARRERA', 'MATRICULA LIC. EN COMERCIALIZACION', '5812835', '12', 10, 50, '01-01', '01-12', 0, 'DISTANCIA', 0, 6300, '', 0, 0, 'SIN CUOTA', 6300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5771338', 'CURSO', '2020-CIE- PLC S7-1200 NIVEL 2', '5719786', '2', 11, 20, '01-01', '31-12', 24, 'DISTANCIA', 1, 4500, '', 4500, 0, 'MENSUAL', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5683699', 'MAESTRIA', 'ESP.Y MTRIA.I.ESTRUC.-NACIONAL -MATRICULA 1° AÑO', '5812826', '10', 1, 61, '01-03', '31-12', 0, 'PRESENCIAL', 0, 10000, '', 0, 0, 'SIN CUOTA', 10000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5811968', 'CURSO', '2020-CIE-INTR SIST GES CALID ISO 9001-2015 CUOTAS', '5772922', '1', 11, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 4776, '', 0, 0, 'SIN CUOTA', 4776, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5795160', 'CURSO', '2020-CIE- PLC S7-1200 NIVEL 1- 1 PAGO', '5719786', '2', 11, 20, '01-01', '31-12', 18, 'DISTANCIA', 0, 4900, '', 0, 0, 'SIN CUOTA', 4900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5596640', 'CURSO', '2020-ADMIN-ASIST ADMINIST CONTABLE PYME 4 MESES', '260920', '4', 15, 25, '01-01', '31-12', 96, 'PRESENCIAL', 3, 3900, '', 3900, 0, 'MENSUAL', 15600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5795178', 'CURSO', '2020-CIE- PLC S7-1200 NIVEL 2-UN PAGO', '5719786', '2', 10, 20, '01-01', '31-12', 24, 'DISTANCIA', 0, 9800, '', 0, 0, 'SIN CUOTA', 9800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5833041', 'CURSO', '2020-INFORMATICA-PROGRAMACION PHP 1 ON LINE -CUOTA', '5706951', '2', 10, 40, '01-01', '31-12', 16, 'DISTANCIA', 0, 8364, '', 0, 0, 'SIN CUOTA', 8364, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5795174', 'CURSO', '2020-CIE- PLC S7-1200 NIVEL 2- CUOTAS', '5719786', '2', 10, 20, '01-01', '31-12', 24, 'DISTANCIA', 0, 11700, '', 0, 0, 'SIN CUOTA', 11700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5795164', 'CURSO', '2020-CIE- PLC S7-1200 NIVEL 1- CUOTAS', '5719786', '2', 11, 20, '01-01', '31-12', 18, 'DISTANCIA', 0, 5850, '', 0, 0, 'SIN CUOTA', 5850, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5811711', 'CURSO', '2020-PROFAU-DISEÑO MECANICO 2 CON SOLIDWORKS', '5796565', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 1, 5450, '', 5450, 0, 'MENSUAL', 10900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5785052', 'CURSO', '2020-CIE-INTR SIST  GES CALID ISO 9001-2015 1 PAGO', '5772922', '1', 11, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 4000, '', 0, 0, 'SIN CUOTA', 4000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5811975', 'CURSO', '2020-CIE-CONSTRUCCION EN SECO CUOTAS', '5745434', '3', 15, 40, '01-01', '31-12', 36, 'DISTANCIA', 0, 21600, '', 0, 0, 'SIN CUOTA', 21600, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5719708', 'CURSO', '2020-INFORMATICA PROGRAMACION BASICA C', '5706950', '2', 10, 40, '01-01', '31-12', 40, 'DISTANCIA', 1, 3000, '', 3000, 0, 'MENSUAL', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5758513', 'CURSO', '2020-CIE-CONSTRUCCION EN SECO 1 PAGO', '5745434', '3', 15, 40, '01-01', '31-12', 36, 'DISTANCIA', 0, 18000, '', 0, 0, 'SIN CUOTA', 18000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5794848', 'CURSO', '2020-CIE-AUTOMATIZACION INDUSTRIAL ON LINE-CUOTAS', '334383', '3', 11, 50, '01-01', '31-12', 96, 'SEMI-PRESENCIAL', 0, 17550, '', 0, 0, 'SIN CUOTA', 17550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5704730', 'MAESTRIA', 'NO USAR - ESP.MTRIA.I.ESTRUC-NAC-MATRICULA%37.1', '1893343', '1', 1, 60, '01-03', '31-12', 0, 'PRESENCIAL', 0, 5859, '', 0, 0, 'SIN CUOTA', 5859, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5822396', 'CARRERA', 'MATRICULA LIC. EN PROD. GRAFICA', '5812831', '12', 15, 50, '01-01', '31-12', 0, 'PRESENCIAL', 0, 6300, '', 0, 0, 'SIN CUOTA', 6300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5822406', 'CARRERA', 'MATRICULA LIC. EN TURISMO Y HOTELERIA', '5812833', '12', 10, 50, '01-01', '31-12', 0, 'PRESENCIAL', 0, 6300, '', 0, 0, 'SIN CUOTA', 6300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5683167', 'CARRERA', 'NO USAR - LICENCIATURA EN LOGISTICA', '5592041', '10', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 6300, 0, 'MENSUAL', 63000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5740534', 'CURSO', 'CURSO DE INGRESO DE GRADO', '48489', '6', 5, 100, '01-02', '30-12', 0, 'DISTANCIA', 2, 0, '', 0, 0, 'SIN CUOTA', 1750, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5823508', 'CARRERA', 'MATRICULAS ESP.MANT.INST.T. Y DIST.E.E (EMIDE)', '5822425', '12', 10, 50, '01-01', '01-12', 0, 'DISTANCIA', 0, 11230, '', 0, 0, 'SIN CUOTA', 11230, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5771343', 'CURSO', '2020-PROFAU-DISEÑO MECANICO 1 CON SOLIDWORKS', '5759199', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 1, 4850, '', 4850, 0, 'MENSUAL', 9700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5831857', 'CURSO', '2020-INFORMATICA- EXCEL AVANZADO ON LINE-1 PAGO', '1486567', '1', 5, 12, '01-01', '31-12', 12, 'DISTANCIA', 0, 3500, '', 0, 0, 'SIN CUOTA', 3500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5833034', 'CURSO', '2020-INFORMATICA-PROGRAMACION PHP 1 ON LINE -1PAGO', '5706951', '2', 10, 40, '01-01', '31-12', 16, 'DISTANCIA', 0, 7000, '', 0, 0, 'SIN CUOTA', 7000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5831859', 'CURSO', '2020-INFORMATICA- EXCEL AVANZADO ON LINE-CUOTAS', '1486567', '1', 5, 12, '01-01', '31-12', 12, 'DISTANCIA', 0, 4200, '', 0, 0, 'SIN CUOTA', 4200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5833004', 'CURSO', '2020-INFORMATICA-EXCEL BASICO ON LINE-1 PAGO', '1486567', '1', 5, 12, '01-01', '31-12', 12, 'DISTANCIA', 0, 3500, '', 0, 0, 'SIN CUOTA', 3500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5833017', 'CURSO', '2020-INFORMATICA-EXCEL BASICO ON LINE-CUOTAS', '1486567', '1', 5, 12, '01-01', '31-12', 12, 'DISTANCIA', 0, 4200, '', 0, 0, 'SIN CUOTA', 4200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5833048', 'CURSO', '2020-INFORMATICA-RESPONSIVE WEB DESIGN-1 PAGO', '1455024', '3', 10, 40, '01-01', '31-12', 36, 'DISTANCIA', 0, 12000, '', 0, 0, 'SIN CUOTA', 12000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5833052', 'CURSO', '2020-INFORMATICA-RESPONSIVE WEB DESIGN-CUOTAS', '1455024', '3', 10, 40, '01-01', '31-12', 36, 'DISTANCIA', 0, 14340, '', 0, 0, 'SIN CUOTA', 14340, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5853262', 'CURSO', '2021-ADMIN-CONCILIACIÓN BANCARIA CON EXCEL-CUOTAS', '3571815', '2', 8, 30, '01-01', '31-12', 24, 'DISTANCIA', 0, 8480, '', 0, 0, 'SIN CUOTA', 8480, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5835684', 'CURSO', '2020-INFORMAT-DESARROLLO SITIO WEB FIREBASE-1 PAGO', '5836250', '2', 7, 30, '01-01', '31-12', 32, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5835689', 'CURSO', '2020-INFORMAT-DESARROLLO SITIO WEB FIREBASE-CUOTAS', '5836250', '2', 7, 30, '01-01', '31-12', 32, 'DISTANCIA', 0, 10800, '', 0, 0, 'SIN CUOTA', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5853264', 'CURSO', '2021-ADMIN-LIQUIDACION DE SUELDOS-1 PAGO', '75413', '4', 7, 30, '01-01', '31-12', 48, 'DISTANCIA', 0, 18000, '', 0, 0, 'SIN CUOTA', 18000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5835669', 'CURSO', '2020-INFORMATICA-DESA APPS ANDROID KOTLIN-CUOTAS', '5836251', '2', 8, 30, '01-01', '31-12', 32, 'DISTANCIA', 0, 10800, '', 0, 0, 'SIN CUOTA', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5835665', 'CURSO', '2020-INFORMATICA-DESA APPS ANDROID KOTLIN-1 PAGO', '5836251', '2', 8, 30, '01-01', '31-12', 32, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5835693', 'CURSO', '2020-INFORMAT-REPARACIÓN ELECTRÓNICA BÁSICA-1 PAGO', '5836249', '2', 8, 30, '01-01', '31-12', 32, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5835697', 'CURSO', '2020-INFORMAT-REPARACIÓN ELECTRÓNICA BÁSICA-CUOTAS', '5836249', '2', 8, 30, '01-01', '31-12', 32, 'DISTANCIA', 0, 10800, '', 0, 0, 'SIN CUOTA', 10800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5849874', 'CURSO', '2020-ADMIN-PNL ON LINE CUOTAS', '4497601', '2', 7, 20, '01-01', '31-12', 24, 'DISTANCIA', 0, 10890, '', 0, 0, 'SIN CUOTA', 10890, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5835566', 'CURSO', '2020-ADMIN-PNL ON LINE 1 PAGO', '4497601', '2', 7, 20, '01-01', '31-12', 24, 'DISTANCIA', 0, 9100, '', 0, 0, 'SIN CUOTA', 9100, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5857400', 'CURSO', '2020-PROFAU-ELECTRICIDAD GRAL DE AUTOMOVIL ONLINE', '3387864', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 1, 5100, '', 5100, 0, 'MENSUAL', 10200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852101', 'CURSO', '2021-ADMIN-ANALISTA IMPOSITIVO-CUOTAS', '75627', '5', 8, 30, '01-01', '31-12', 60, 'DISTANCIA', 0, 20140, '', 0, 0, 'SIN CUOTA', 20140, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5860029', 'CURSO', '2021-ADMIN-MARKETING DIGITAL-CUOTAS', '5257449', '4', 8, 30, '01-01', '31-12', 64, 'DISTANCIA', 0, 21200, '', 0, 0, 'SIN CUOTA', 21200, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5853153', 'CURSO', '2021-ADMIN-COACHING Y GESTION DE LAS EMOCIO-CUOTAS', '4740534', '4', 7, 30, '01-01', '31-12', 48, 'DISTANCIA', 0, 19080, '', 0, 0, 'SIN CUOTA', 19080, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852097', 'CURSO', '2021-ADMIN-ANALISTA CONTABLE-CUOTAS', '75601', '4', 8, 30, '01-01', '31-12', 48, 'DISTANCIA', 0, 16960, '', 0, 0, 'SIN CUOTA', 16960, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852876', 'CURSO', '2021-ADMIN-ASIST ADMIN CONTABLE PYME 6 M-1 PAGO ', '260920', '6', 10, 30, '01-01', '31-12', 96, 'DISTANCIA', 0, 27000, '', 0, 0, 'SIN CUOTA', 27000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5853157', 'CURSO', '2021-ADMIN-CONCILIACIÓN BANCARIA CON EXCEL-1 PAGO', '3571815', '2', 8, 30, '01-01', '31-12', 24, 'DISTANCIA', 0, 8000, '', 0, 0, 'SIN CUOTA', 8000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852095', 'CURSO', '2021-ADMIN-ANALISTA CONTABLE-1 PAGO', '75601', '4', 8, 30, '01-01', '31-12', 48, 'DISTANCIA', 0, 16000, '', 0, 0, 'SIN CUOTA', 16000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852099', 'CURSO', '2021-ADMIN-ANALISTA IMPOSITIVO-1 PAGO', '75627', '5', 8, 30, '01-01', '31-12', 60, 'DISTANCIA', 0, 19000, '', 0, 0, 'SIN CUOTA', 19000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852878', 'CURSO', '2021-ADMIN-ASIST ADMIN CONTABLE PYME 6 M-CUOTAS', '260920', '6', 10, 30, '01-01', '31-12', 96, 'DISTANCIA', 0, 28620, '', 0, 0, 'SIN CUOTA', 28620, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852103', 'CURSO', '2021-ADMIN-ASIST ADMINIST CONTABLE PYME 4 M-1 PAGO', '260920', '4', 10, 30, '01-01', '31-12', 96, 'DISTANCIA', 0, 27000, '', 0, 0, 'SIN CUOTA', 27000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852880', 'CURSO', '2021-ADMIN-ASISTENTE DE RRHH 6M-1 PAGO', '260928', '6', 9, 30, '01-01', '31-12', 96, 'DISTANCIA', 0, 27000, '', 0, 0, 'SIN CUOTA', 27000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852884', 'CURSO', '2021-ADMIN-COACHING Y LIDERAZGO-1 PAGO', '4249108', '4', 7, 30, '01-01', '31-12', 48, 'DISTANCIA', 0, 18000, '', 1, 0, 'SIN CUOTA', 18000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852105', 'CURSO', '2021-ADMIN-ASIST ADMINIST CONTABLE PYME 4 M-CUOTAS', '260920', '4', 10, 30, '01-01', '31-12', 96, 'DISTANCIA', 0, 28620, '', 0, 0, 'SIN CUOTA', 28620, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5861929', 'CURSO', '2021-ADMIN-ASISTENTE DE RRHH 4M-CUOTAS', '260928', '4', 9, 25, '01-01', '31-12', 96, 'DISTANCIA', 0, 28620, '', 0, 0, 'SIN CUOTA', 28620, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5861927', 'CURSO', '2021-ADMIN-ASISTENTE DE RRHH 4M-1 PAGO', '260928', '4', 9, 25, '01-01', '31-12', 96, 'DISTANCIA', 0, 27000, '', 0, 0, 'SIN CUOTA', 27000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852882', 'CURSO', '2021-ADMIN-ASISTENTE DE RRHH 6M-CUOTAS', '260928', '6', 9, 30, '01-01', '31-12', 96, 'DISTANCIA', 0, 28620, '', 0, 0, 'SIN CUOTA', 28620, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5853151', 'CURSO', '2021-ADMIN-COACHING Y GESTION DE LAS EMOCIO-1 PAGO', '4740534', '4', 7, 30, '01-01', '31-12', 48, 'DISTANCIA', 0, 18000, '', 0, 0, 'SIN CUOTA', 18000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5852886', 'CURSO', '2021-ADMIN-COACHING Y LIDERAZGO-CUOTAS', '4249108', '4', 7, 30, '01-01', '31-12', 48, 'DISTANCIA', 0, 19080, '', 0, 0, 'SIN CUOTA', 19080, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5853266', 'CURSO', '2021-ADMIN-LIQUIDACION DE SUELDOS-CUOTAS', '75413', '4', 7, 30, '01-01', '31-12', 48, 'DISTANCIA', 0, 19080, '', 0, 0, 'SIN CUOTA', 19080, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5860023', 'CURSO', '2021-ADMIN-MARKETING DIGITAL-1 PAGO', '5257449', '4', 8, 30, '01-01', '31-12', 64, 'DISTANCIA', 0, 20000, '', 0, 0, 'SIN CUOTA', 20000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5861608', 'CURSO', '2020-PROFAU-DISEÑO MECANICO 3 CON SOLIDWORKS', '5862125', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 1, 5450, '', 5450, 0, 'MENSUAL', 10900, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903514', 'CURSO', '2021-CIE-OPERACION Y PROGRAMACION DE CNC-1 PAGO', '1631038', '3', 7, 25, '01-01', '31-12', 30, 'DISTANCIA', 0, 13500, '', 0, 0, 'SIN CUOTA', 13500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903130', 'CURSO', '2021-CIE-PLC S7-1200 NIVEL 1-1 PAGO', '5719786', '1', 8, 25, '01-01', '31-12', 21, 'DISTANCIA', 0, 8000, '', 0, 0, 'SIN CUOTA', 8000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903245', 'CURSO', '2021-CIE- PLC S7-1200 NIVEL 1-CUOTAS', '5719786', '2', 8, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 8480, '', 0, 0, 'SIN CUOTA', 8480, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903249', 'CURSO', '2021-CIE-SEGURIDAD E HIGIENE INDUSTRIAL-1 PAGO', '3746428', '3', 7, 25, '01-01', '31-12', 36, 'DISTANCIA', 0, 13800, '', 0, 0, 'SIN CUOTA', 13800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903253', 'CURSO', '2021-CIE-SEGURIDAD E HIGIENE INDUSTRIAL-CUOTAS', '3746428', '3', 7, 25, '01-01', '31-12', 36, 'DISTANCIA', 0, 14628, '', 0, 0, 'SIN CUOTA', 14628, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903518', 'CURSO', '2021-CIE-OPERACION Y PROGRAMACION DE CNC-CUOTAS', '1631038', '3', 7, 25, '01-01', '31-12', 30, 'DISTANCIA', 0, 14310, '', 0, 0, 'SIN CUOTA', 14310, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903930', 'CURSO', '2021-IDIOMAS-PORTUGUES-1 PAGO', '1022', '4', 8, 8, '01-01', '31-12', 48, 'DISTANCIA', 0, 12000, '', 0, 0, 'SIN CUOTA', 12000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903642', 'CURSO', '2021-CIE-LEAN MANUFACTURING-1 PAGO', '4831227', '1', 9, 25, '01-01', '31-12', 16, 'DISTANCIA', 0, 5500, '', 0, 0, 'SIN CUOTA', 5500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903644', 'CURSO', '2021-CIE-LEAN MANUFACTURING-CUOTAS', '4831227', '1', 9, 25, '01-01', '31-12', 16, 'DISTANCIA', 0, 5830, '', 0, 0, 'SIN CUOTA', 5830, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903121', 'CURSO', '2021-CIE-AUTOMATIZACION INDUSTRIAL ON LINE-1 PAGO', '334383', '3', 11, 25, '01-01', '31-12', 96, 'DISTANCIA', 0, 27000, '', 0, 0, 'SIN CUOTA', 27000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903123', 'CURSO', '2021-CIE-AUTOMATIZACION INDUSTRIAL ON LINE-CUOTAS', '334383', '3', 9, 25, '01-01', '31-12', 96, 'DISTANCIA', 0, 28620, '', 0, 0, 'SIN CUOTA', 28620, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5902909', 'CURSO', '2021-ADMIN-SECRETARIADO ADMINISTRATIVO 6M-1 PAGO', '3892857', '6', 9, 25, '01-01', '31-12', 96, 'DISTANCIA', 0, 27000, '', 0, 0, 'SIN CUOTA', 27000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5902914', 'CURSO', '2021-ADMIN-SECRETARIADO ADMNINISTRATIVO 6M-CUOTAS', '3892857', '6', 9, 25, '01-01', '31-12', 96, 'DISTANCIA', 0, 28620, '', 0, 0, 'SIN CUOTA', 28620, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903810', 'CURSO', '2021-ADMIN-MARKETING PROMOCIÓN Y VENTAS-1 PAGO', '2952530', '3', 9, 25, '01-01', '31-12', 36, 'DISTANCIA', 0, 13500, '', 0, 0, 'SIN CUOTA', 13500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903814', 'CURSO', '2021-ADMIN-MARKETING PROMOCIÓN Y VENTAS-CUOTAS', '2952530', '3', 9, 25, '01-01', '31-12', 36, 'DISTANCIA', 0, 14310, '', 0, 0, 'SIN CUOTA', 14310, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903867', 'CURSO', '2021-SALUD-CUIDADOR DE PERSONAS MAYORES-CUOTAS UTN', '4497602', '6', 10, 50, '01-01', '31-12', 36, 'DISTANCIA', 5, 2640, '', 2640, 0, 'MENSUAL', 15840, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903857', 'CURSO', '2021-SALUD-SECRETARIADO MEDICO-CUOTAS UTN', '5039791', '6', 10, 50, '01-01', '31-12', 30, 'DISTANCIA', 5, 3040, '', 3040, 0, 'MENSUAL', 18240, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903139', 'CURSO', '2021-CIE-PLC S7-1200 NIVEL 2-1 PAGO', '5719786', '2', 7, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 11000, '', 0, 0, 'SIN CUOTA', 11000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903892', 'CURSO', '2021-PROFAU-INYECCIÓN ELECTR GRALONLINE-CUOTAS UTN', '5706953', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 1, 7750, '', 7750, 0, 'MENSUAL', 15500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903883', 'CURSO', '2021-PROFAU-ELECT GRAL DE AUTOM ONLINE-CUOTAS UTN', '3387864', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 1, 6650, '', 6650, 0, 'MENSUAL', 13300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903835', 'CURSO', '2021-PROFAU-MECANICA GRAL ONLINE-CUOTAS UTN', '2264109', '3', 10, 25, '01-01', '31-12', 36, 'DISTANCIA', 2, 5150, '', 5150, 0, 'MENSUAL', 15450, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903907', 'CURSO', '2021-PROFAU-INT PLANOS ELÉCTR ONLINE-CUOTAS UTN', '5328595', '1', 10, 25, '01-01', '31-12', 12, 'DISTANCIA', 0, 7750, '', 0, 0, 'SIN CUOTA', 7750, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903911', 'CURSO', '2021-PROFAU-INT PLANOS ELÉCTR ONLINE-CUOTAS ', '5328595', '1', 10, 25, '01-01', '31-12', 12, 'DISTANCIA', 0, 8215, '', 0, 0, 'SIN CUOTA', 8215, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903889', 'CURSO', '2021-PROFAU-INYECCIÓN ELECTR GRAL ONLINE-CUOTAS ', '5706953', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 16430, '', 0, 0, 'SIN CUOTA', 16430, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903852', 'CURSO', '2021-SALUD - AUXILIAR DE FARMACIA-CUOTAS UTN', '5039788', '10', 10, 50, '01-01', '31-12', 80, 'PRESENCIAL', 9, 3580, '', 3580, 0, 'MENSUAL', 35800, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903920', 'CURSO', '2021-PROFAU-DISEÑO MECÁNICO 1-ONLINE-CUOTAS', '5759199', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 13462, '', 0, 0, 'SIN CUOTA', 13462, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903916', 'CURSO', '2021-PROFAU-DISEÑO MECÁNICO 1 ON LINE-CUOTAS UTN', '5759199', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 1, 6350, '', 6350, 0, 'MENSUAL', 12700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903928', 'CURSO', '2021-IDIOMAS-ALEMAN-CUOTAS', '1865656', '4', 8, 20, '01-01', '31-12', 48, 'DISTANCIA', 0, 12720, '', 0, 0, 'SIN CUOTA', 12720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5902951', 'CURSO', '2021-ADMIN-HERRAMIENTAS DE PNL-1 PAGO', '4497601', '2', 9, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903134', 'CURSO', '2021-CIE- PLC S7-1200 NIVEL 2-CUOTAS', '5719786', '2', 7, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 11660, '', 0, 0, 'SIN CUOTA', 11660, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903640', 'CURSO', '2021-CIE-CONSTRUCCION EN SECO-CUOTAS', '5745434', '3', 9, 25, '01-01', '31-12', 36, 'DISTANCIA', 0, 12720, '', 0, 0, 'SIN CUOTA', 12720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903637', 'CURSO', '2021-CIE-CONSTRUCCION EN SECO-1 PAGO', '5745434', '3', 9, 25, '01-01', '31-12', 36, 'DISTANCIA', 0, 12000, '', 0, 0, 'SIN CUOTA', 12000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903925', 'CURSO', '2021-IDIOMAS-ALEMAN-1 PAGO', '1865656', '4', 8, 20, '01-01', '31-12', 48, 'DISTANCIA', 0, 12000, '', 0, 0, 'SIN CUOTA', 12000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903863', 'CURSO', '2021-SALUD-CUIDADOR DE NIÑOS-CUOTAS UTN', '4461068', '6', 10, 50, '01-01', '31-12', 36, 'DISTANCIA', 5, 2640, '', 2640, 0, 'MENSUAL', 15840, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903821', 'CURSO', '2021-ADM-SEM MONOTRIBUTO E IIBB-1 PAGO', '3571814', '1', 7, 25, '01-01', '31-12', 10, 'DISTANCIA', 0, 5000, '', 0, 0, 'SIN CUOTA', 5000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903825', 'CURSO', '2021-ADM-SEM MONOTRIBUTO E IIBB-CUOTAS', '3571814', '1', 7, 25, '01-01', '31-12', 10, 'DISTANCIA', 0, 5300, '', 0, 0, 'SIN CUOTA', 5300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903877', 'CURSO', '2021-PROFAU-ELECT GRAL DE AUTOM ONLINE-CUOTAS ', '3387864', '2', 10, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 14098, '', 0, 0, 'SIN CUOTA', 14098, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903932', 'CURSO', '2021-IDIOMAS-PORTUGUES-CUOTAS', '1022', '4', 8, 20, '01-01', '31-12', 48, 'DISTANCIA', 0, 12720, '', 0, 0, 'SIN CUOTA', 12720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903934', 'CURSO', '2021-IDIOMAS-INGLES-1 PAGO', '1020', '4', 8, 20, '01-01', '31-12', 48, 'DISTANCIA', 0, 9750, '', 0, 0, 'SIN CUOTA', 9750, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5904003', 'CURSO', '2021-ADMIN-SELECCIÓN Y GESTIÓN DE PERSONAL-CUOTA', '5911914', '3', 8, 20, '01-01', '31-12', 36, 'DISTANCIA', 0, 12720, '', 0, 0, 'SIN CUOTA', 12720, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903951', 'CURSO', '2021-INFORMAT-EXCEL AVANZADO ON LINE-1 PAGO', '1486567', '1', 9, 15, '01-01', '31-12', 12, 'DISTANCIA', 0, 5000, '', 0, 0, 'SIN CUOTA', 5000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903976', 'CURSO', '2021-INFORMAT-REPARACIÓN ELECTRÓNICA BÁSICA-CUOTAS', '5836249', '2', 10, 20, '01-01', '31-12', 32, 'DISTANCIA', 0, 9540, '', 0, 0, 'SIN CUOTA', 9540, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903936', 'CURSO', '2021-IDIOMAS-INGLES-CUOTAS', '1020', '4', 8, 20, '01-01', '31-12', 48, 'DISTANCIA', 0, 10335, '', 0, 0, 'SIN CUOTA', 10335, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903967', 'CURSO', '2021-INFORMAT-PROGRAMACION PHP 1-ON LINE-CUOTAS', '5706951', '2', 10, 30, '01-01', '31-12', 20, 'DISTANCIA', 0, 6360, '', 0, 0, 'SIN CUOTA', 6360, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903949', 'CURSO', '2021-INFORMAT-DESA APPS ANDROID KOTLIN-CUOTAS', '5836251', '2', 10, 20, '01-01', '31-12', 36, 'DISTANCIA', 0, 9540, '', 0, 0, 'SIN CUOTA', 9540, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903837', 'CURSO', '2021-PROFAU-MECANICA GRAL ONLINE-CUOTAS', '2264109', '3', 10, 25, '01-01', '31-12', 36, 'DISTANCIA', 0, 16377, '', 0, 0, 'SIN CUOTA', 16377, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903957', 'CURSO', '2021-INFORMAT-EXCEL AVANZADO ON LINE-CUOTAS', '1486567', '1', 9, 15, '01-01', '31-12', 12, 'DISTANCIA', 0, 5300, '', 0, 0, 'SIN CUOTA', 5300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903988', 'CURSO', '2021-ADMIN-ADMIN PERSONAL-CUOTAS', '260922', '4', 7, 25, '01-01', '31-12', 48, 'DISTANCIA', 0, 19080, '', 0, 0, 'SIN CUOTA', 19080, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903961', 'CURSO', '2021-INFORMAT-EXCEL BASICO ON LINE-1 PAGO', '1486567', '1', 9, 15, '01-01', '31-12', 12, 'DISTANCIA', 0, 4500, '', 0, 0, 'SIN CUOTA', 4500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903999', 'CURSO', '2021-ADMIN-SELECCIÓN Y GESTIÓN DE PERSONAL-1 PAGO ', '5911914', '3', 8, 25, '01-01', '31-12', 36, 'DISTANCIA', 0, 12000, '', 0, 0, 'SIN CUOTA', 12000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903947', 'CURSO', '2021-INFORMAT-DESA APPS ANDROID KOTLIN-1 PAGO', '5836251', '2', 10, 20, '01-01', '31-12', 32, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903954', 'CURSO', '2020-INFORMAT-EXCEL AVANZADO ON LINE-CUOTAS', '1486567', '1', 9, 20, '01-01', '31-12', 12, 'DISTANCIA', 0, 4770, '', 0, 0, 'SIN CUOTA', 4770, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903965', 'CURSO', '2021-INFORMAT-PROGRAMACION PHP 1-ON LINE -1PAGO', '5706951', '2', 10, 30, '01-01', '31-12', 20, 'DISTANCIA', 0, 6000, '', 0, 0, 'SIN CUOTA', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903974', 'CURSO', '2021-INFORMAT-REPARACIÓN ELECTRÓNICA BÁSICA-1 PAGO', '5836249', '2', 10, 20, '01-01', '31-12', 32, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903963', 'CURSO', '2021-INFORMAT-EXCEL BASICO ON LINE-CUOTAS', '1486567', '1', 9, 15, '01-01', '31-12', 12, 'DISTANCIA', 0, 4770, '', 0, 0, 'SIN CUOTA', 4770, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5903986', 'CURSO', '2021-ADMIN-ADMIN PERSONAL-1 PAGO ', '260922', '4', 7, 25, '01-01', '31-12', 48, 'DISTANCIA', 0, 18000, '', 0, 0, 'SIN CUOTA', 18000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5906344', 'CURSO', '2021-IDIOMAS -FIRST CERTIFICATE-1 PAGO', '1020', '8', 10, 25, '01-01', '31-12', 96, 'DISTANCIA', 0, 23550, '', 0, 0, 'SIN CUOTA', 23550, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5902955', 'CURSO', '2021-ADMIN-HERRAMIENTAS DE PNL-CUOTAS', '4497601', '2', 9, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 9540, '', 0, 0, 'SIN CUOTA', 9540, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5910372', 'CARRERA', 'TEC. UNIVERSITARIO EN ADMINISTRACION SEGUNDO AÑO', '421734', '10', 1, 90, '01-03', '31-12', 0, 'PRESENCIAL', 10, 5350, '', 5350, 0, 'MENSUAL', 58850, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5945441', 'CARRERA', 'LIC. EN LOGISTICA 1ER AÑO', '5592041', '10', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 6300, 0, 'MENSUAL', 63000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5926379', 'CURSO', '2021-INFORMAT-BOOTSTRAP-1 PAGO', '5911913', '2', 10, 30, '01-01', '31-12', 20, 'DISTANCIA', 0, 6000, '', 0, 0, 'SIN CUOTA', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5926383', 'CURSO', '2021-INFORMAT-BOOTSTRAP-CUOTAS', '5911913', '2', 10, 30, '01-01', '31-12', 20, 'DISTANCIA', 0, 6360, '', 0, 0, 'SIN CUOTA', 6360, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5926387', 'CURSO', '2021-INFORMAT-PROGRAMACION PHP 2-1PAGO', '5911912', '2', 10, 30, '01-01', '31-12', 20, 'DISTANCIA', 0, 6000, '', 0, 0, 'SIN CUOTA', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5926440', 'CURSO', '2021-INFORMAT-PROGRAMACION PHP 2-CUOTAS', '5911912', '2', 10, 30, '01-01', '31-12', 20, 'DISTANCIA', 0, 6360, '', 0, 0, 'SIN CUOTA', 6360, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5945446', 'CARRERA', 'LIC. EN LOGISTICA 2DO AÑO', '5592041', '11', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 11, 0, '', 6300, 0, 'MENSUAL', 69300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5945451', 'CARRERA', 'LIC. HIGIENE Y SEGURIDAD 1ER AÑO', '5364438', '10', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 6300, 0, 'MENSUAL', 63000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5945456', 'CARRERA', 'LIC. HIGIENE Y SEGURIDAD 2DO AÑO', '5364438', '11', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 11, 0, '', 6300, 0, 'MENSUAL', 69300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5926456', 'CURSO', '2021-ADMIN-GOOGLE ADS  POSICIONAMIENTO-CUOTAS', '5911915', '2', 8, 25, '01-01', '31-12', 24, 'DISTANCIA', 0, 8480, '', 0, 0, 'SIN CUOTA', 8480, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5926473', 'CURSO', '2021-ADMIN-COMMUNITY MANAGER-CUOTAS', '5911916', '1', 10, 25, '01-01', '31-12', 16, 'DISTANCIA', 0, 5300, '', 0, 0, 'SIN CUOTA', 5300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5926465', 'CURSO', '2021-ADMIN-GOOGLE ADS  POSICIONAMIENTO-1PAGO', '5911915', '2', 8, 30, '01-01', '31-12', 24, 'DISTANCIA', 0, 8000, '', 0, 0, 'SIN CUOTA', 8000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5926469', 'CURSO', '2021-ADMIN-COMMUNITY MANAGER-1 PAGO', '5911916', '1', 10, 25, '01-01', '31-12', 16, 'DISTANCIA', 0, 5000, '', 0, 0, 'SIN CUOTA', 5000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5927144', 'CURSO', '2021-INFORMAT-PROGRAMACION CON C NIVEL 1-1PAGO', '5706950', '2', 8, 15, '01-01', '31-12', 24, 'DISTANCIA', 0, 8000, '', 0, 0, 'SIN CUOTA', 8000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5927149', 'CURSO', '2021-INFORMAT-PROGRAMACIONCON C NIVEL 1-CUOTAS', '5706950', '2', 8, 15, '01-01', '31-12', 24, 'DISTANCIA', 0, 8480, '', 0, 0, 'SIN CUOTA', 8480, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5927154', 'CURSO', '2021-INFORMAT-PROGRAMACION CON C NIVEL 2-1PAGO', '5706950', '2', 8, 15, '01-01', '31-12', 30, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5927158', 'CURSO', '2021-INFORMAT-PROGRAMACION CON C NIVEL 2-CUOTAS', '5706950', '2', 9, 15, '01-01', '31-12', 30, 'DISTANCIA', 0, 9540, '', 0, 0, 'SIN CUOTA', 9540, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5940165', 'CURSO', '2021-INFORMAT-HTML Y CSS-1 PAGO', '5911911', '2', 10, 30, '01-01', '31-12', 20, 'DISTANCIA', 0, 6000, '', 0, 0, 'SIN CUOTA', 6000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5940169', 'CURSO', '2021-INFORMAT-HTML Y CSS-CUOTAS', '5911911', '2', 10, 30, '01-01', '31-12', 20, 'DISTANCIA', 0, 6360, '', 0, 0, 'SIN CUOTA', 6360, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5940174', 'CURSO', '2021-CIE-CALIDAD INDUSTRIAL-1 PAGO', '5927314', '2', 8, 20, '01-01', '31-12', 40, 'DISTANCIA', 0, 16000, '', 0, 0, 'SIN CUOTA', 16000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5940178', 'CURSO', '2021-CIE-CALIDAD INDUSTRIAL-CUOTAS', '5927314', '2', 8, 20, '01-01', '31-12', 40, 'DISTANCIA', 0, 16960, '', 0, 0, 'SIN CUOTA', 16960, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5945408', 'CARRERA', 'LIC. TEC. EDUCATIVA 1ER AÑO', '5200241', '10', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 6300, 0, 'MENSUAL', 63000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5945430', 'CARRERA', 'LIC. BIOIMAGENES 1ER AÑO', '5610117', '10', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 10, 0, '', 6500, 0, 'MENSUAL', 65000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5945432', 'CARRERA', 'LIC. BIOIMAGENES 2DO AÑO', '5610117', '11', 10, 100, '01-03', '31-12', 0, 'PRESENCIAL', 11, 0, '', 6500, 0, 'MENSUAL', 71500, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5948682', 'CURSO', '2021-IDIOMAS-FIRST CERTIFICATE 1 CUATRI-1 PAGO', '1020', '4', 10, 20, '01-01', '31-12', 48, 'DISTANCIA', 0, 11775, '', 0, 0, 'SIN CUOTA', 11775, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5948687', 'CURSO', '2021-IDIOMAS-FIRST CERTIFICATE 1 CUATRI-CUOTAS', '1020', '4', 10, 20, '01-01', '31-12', 48, 'DISTANCIA', 0, 12482, '', 0, 0, 'SIN CUOTA', 12482, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5949023', 'CURSO', '2021-IDIOMAS-INGLES-CUOTAS UTN', '1020', '4', 10, 15, '01-01', '31-12', 48, 'DISTANCIA', 3, 2584, '', 2584, 0, 'MENSUAL', 10336, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5951747', 'CARRERA', 'TUP - PLANES DE PAGOS', '2618', '20', 8, 100, '01-01', '31-12', 14, 'DISTANCIA', 0, 0, '', 0, 0, 'MENSUAL', 0, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5951763', 'CURSO', '2021-HUERTA AGROECOLOGICA', '75621', '1', 15, 100, '01-01', '31-12', 16, 'DISTANCIA', 0, 0, '', 0, 0, 'SIN CUOTA', 0, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5957885', 'CURSO', '2021-DIPLOMATURAS-DIPLOMATURA 4.0-1 PAGO', '5890992', '8', 25, 30, '01-01', '31-12', 120, 'DISTANCIA', 0, 52000, '', 0, 0, 'SIN CUOTA', 52000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5957887', 'CURSO', '2021-DIPLOMATURAS-DIPLOMATURA 4.0-CUOTAS', '5890992', '8', 25, 30, '01-01', '31-12', 120, 'DISTANCIA', 0, 55332, '', 0, 0, 'SIN CUOTA', 55332, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5962576', 'CARRERA', '2021-CIE-SEGURIDAD E HIGIENE - CUOTAS UTN', '9397', '3', 7, 45, '08-04', '25-06', 36, 'DISTANCIA', 3, 0, '', 4876, 0, 'MENSUAL', 14628, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5962582', 'CARRERA', '2021-PROFAU-INYECCION NAFTA - PAGO CUOTAS', '3387866', '2', 6, 54, '07-04', '26-05', 24, 'DISTANCIA', 1, 0, '', 16430, 0, 'SIN CUOTA', 16430, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5963600', 'CURSO', 'CURSO DE INGRESO DE GRADO NIVEL 1', '48489', '6', 5, 100, '01-02', '30-12', 0, 'DISTANCIA', 0, 700, '', 0, 0, 'SIN CUOTA', 700, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5963604', 'CURSO', 'CURSO DE INGRESO DE GRADO NIVEL 2', '48489', '6', 5, 100, '01-02', '31-12', 0, 'DISTANCIA', 0, 1050, '', 0, 0, 'SIN CUOTA', 1050, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5965362', 'CURSO', '2021-PROFAU- MOTORES 1-REP Y MANT-CUOTAS', '3786931', '2', 10, 20, '01-01', '31-12', 24, 'DISTANCIA', 0, 14098, '', 0, 0, 'SIN CUOTA', 14098, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5965375', 'CURSO', '2021-PROFAU- MOTORES 1-REP Y MANT-CUOTAS UTN', '3786931', '2', 10, 20, '01-01', '31-12', 24, 'DISTANCIA', 1, 6650, '', 6650, 0, 'MENSUAL', 13300, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5906492', 'CURSO', '2021-INFORMAT-REPARACIÓN TABLET Y CELULARES-CUOTAS', '5631993', '2', 10, 30, '01-01', '31-12', 32, 'DISTANCIA', 0, 9540, '', 0, 0, 'SIN CUOTA', 9540, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5944706', 'CURSO', '2021-INFORMAT-REPARACIÓN TABLET Y CELUL-CUOTA UTN', '5631993', '2', 10, 30, '01-01', '31-12', 32, 'DISTANCIA', 1, 4770, '', 4770, 0, 'MENSUAL', 9540, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5906365', 'CURSO', '2021-INFORMAT-DISEÑO WEB BASICO-CUOTAS', '1455024', '2', 10, 20, '01-01', '31-12', 32, 'DISTANCIA', 0, 9540, '', 0, 0, 'SIN CUOTA', 9540, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5906363', 'CURSO', '2021-INFORMAT-DISEÑO WEB BASICO-1 PAGO', '1455024', '2', 10, 20, '01-01', '31-12', 32, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5906488', 'CURSO', '2021-INFORMAT-REPARACIÓN TABLET Y CELULARES-1 PAGO', '5631993', '2', 10, 30, '01-01', '31-12', 32, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5965578', 'CURSO', '2021-INFORMAT-DISEÑO WEB INTERMEDIO-1 PAGO', '1455024', '2', 10, 20, '01-01', '31-12', 32, 'DISTANCIA', 0, 9000, '', 0, 0, 'SIN CUOTA', 9000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5965605', 'CURSO', '2021-INFORMAT-DISEÑO WEB INTERMEDIO-CUOTAS', '1455024', '2', 10, 20, '01-01', '31-12', 32, 'DISTANCIA', 0, 9540, '', 0, 0, 'SIN CUOTA', 9540, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5966262', 'CURSO', '2021-DIPLOMATURAS-BARRIOS CERRADOS-1 PAGO ', '4312584', '6', 10, 30, '01-01', '31-12', 60, 'DISTANCIA', 0, 27000, '', 0, 0, 'SIN CUOTA', 27000, 0);
INSERT INTO "public"."carrerascursos" VALUES ('5966270', 'CURSO', '2021-DIPLOMATURAS-BARRIOS CERRADOS-CUOTAS', '4312584', '6', 10, 30, '01-01', '31-12', 60, 'DISTANCIA', 0, 28620, '', 0, 0, 'SIN CUOTA', 28620, 0);

-- ----------------------------
-- Table structure for carrerascursosalta
-- ----------------------------
DROP TABLE IF EXISTS "public"."carrerascursosalta";
CREATE TABLE "public"."carrerascursosalta" (
  "ccal_idccalta" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ccal_idcarrcurs" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ccal_idprofesor" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ccal_fechainicio" date,
  "ccal_fechafin" date,
  "ccal_turno" varchar(10) COLLATE "pg_catalog"."default",
  "ccal_horario" varchar(50) COLLATE "pg_catalog"."default",
  "ccal_dias" varchar(50) COLLATE "pg_catalog"."default",
  "ccal_sueldoprof" float8,
  "ccal_cantcuotascob" int4,
  "ccal_estado" varchar(20) COLLATE "pg_catalog"."default",
  "ccal_fechaalta" date,
  "ccal_descripcion" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "ccal_fechaultdeb" date
)
;

-- ----------------------------
-- Records of carrerascursosalta
-- ----------------------------
INSERT INTO "public"."carrerascursosalta" VALUES ('4895903', '4895901', '', '2017-07-01', '2017-11-01', 'MAÑANA', '09:00-12:00', 'MARTES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN- LIQ DE SUELDOS- MAR 09 06/06', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5086917', '4972917', '', '2017-11-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'EJECUCION', '2017-08-28', '2017-MATRICERIA-TORNO CNC 2 EJES MAR 12/10 19 HS', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895526', '4895522', '', '2017-05-01', '2017-06-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2017-02-17', '2017- INFORMATICA AUTOCAD BASICO - LUN 3/4 19 HS ', '2017-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895340', '4895329', '', '2017-04-01', '2017-08-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2017-02-17', '2017-UTN - INGLES NIVEL 6-LYM 19.30 HS13/3 SUSPEND', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895385', '4895381', '', '2017-02-01', '2017-06-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 5, 'TERMINO', '2017-02-17', '2017-IACT - REFRIGERACION Y AA 1 -MARTES 19 H 10/1', '2017-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895387', '4895381', '', '2017-03-01', '2017-07-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 5, 'TERMINO', '2017-02-17', '2017-IACT - REFRIGERACION Y AA 2 -LUNES 06/02 19 H', '2017-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895899', '4895895', '', '2017-06-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2017-02-18', '2017-PROFAU- INYECCION NAFTA FYC-MAR 19 9/5', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895818', '4895814', '', '2017-05-01', '2017-11-01', 'NOCHE', '18:00-22:00', 'JUEVES', 0, 7, 'TERMINO', '2017-02-18', '2017-SOLDADURA - INTEGRAL - JUEV 18 HS 6/4', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4972869', '4972863', '', '2017-10-01', '2017-11-01', 'TARDE', '14:00-17:00', 'JUEVES', 0, 0, 'ESPERA', '2017-05-04', '2017-MATRICERIA-INYECC DE PLASTICO 5/10 SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895478', '4895465', '', '2017-03-01', '2017-04-01', 'TARDE', '16:00-19:00', 'JUEVES', 0, 1, 'TERMINO', '2017-02-17', '2017-INFOMATICA - EXCEL AVANZADO- JUE 9/3 16 HS', '2017-03-30');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895368', '4895364', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:30-21:30', 'JUEVES', 0, 0, 'ESPERA', '2017-02-17', '2017-UTN - PORTUGUES NIVEL 5 JUEVES 18.30 HS 16/03', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895467', '4895465', '', '2017-03-01', '2017-04-01', 'TARDE', '16:00-19:00', 'MARTES', 0, 1, 'TERMINO', '2017-02-17', '2017-INFOMATICA - EXCEL BASICO - MARTES 7/3 16 HS', '2017-03-30');
INSERT INTO "public"."carrerascursosalta" VALUES ('4911468', '4895465', '', '2017-05-01', '2017-06-01', 'TARDE', '16:00-19:00', 'JUEVES', 0, 1, 'TERMINO', '2017-02-21', '2017-INFOMATICA - EXCEL AVANZADO- JUE 4/5 16 HS', '2017-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5198171', '5167648', '', '2018-05-01', '2018-06-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 0, 'TERMINO', '2018-03-19', '2018-INFORMATICA- EXCEL BASICO- LUNES 21/5 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5054149', '5054139', '', '2017-07-01', '2017-07-31', 'NOCHE', '', '', 0, 1, 'TERMINO', '2017-07-12', 'CURSADA MODULAR EZEQUIEL BRIDI METODOS CUANTITATIV', '2017-07-13');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895377', '4895371', '', '2017-04-01', '2017-08-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - ALEMAN NIVEL 5 SABADOS 09 HS 18/03', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895332', '4895329', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - INGLES NIVEL 1 - L Y M 18 HS 13/3', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5235596', '5224676', '', '2018-10-01', '2018-11-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-05-22', '2018-UTN - PLC NIVEL 1-SABADO 9 HS 8/9', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895879', '4895875', '', '2017-08-01', '2017-11-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2017-02-18', '2017-PROFAU - REP Y MANT DE MOTOR-MAR 19HS 11/7', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4996961', '4895895', '', '2017-09-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2017-05-26', '2017-PROFAU- INYECCION NAFTA FYC-MAR 19 15/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895816', '4895814', '', '2017-04-01', '2017-10-01', 'NOCHE', '18:00-22:00', 'MARTES', 0, 7, 'TERMINO', '2017-02-18', '2017-SOLDADURA - INTEGRAL - MAR 18 H 14/3', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895512', '4895492', '', '2017-06-01', '2017-07-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 0, 'ESPERA', '2017-02-17', '2017 - INFORMATICA - ROBOTICA BASICA MIER 3/5 15H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895375', '4895371', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - ALEMAN NIVEL 2 MIERCOLES 18 HS 15/03', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895873', '4895871', '', '2017-07-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2017-02-18', '2017-PROFAU - CARBURACION Y ENCENDI- VIER 19H 9/6', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5135410', '5035141', '', '2017-10-01', '2018-02-28', 'NOCHE', '', '', 0, 0, 'ESPERA', '2017-10-19', 'CURSO INTRODUCTORIO TSA-FEBRERO 2018', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895889', '4895885', '', '2017-07-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'TERMINO', '2017-02-18', '2017-PROFAU- CONO ELEC AUTOMOVIL-JUE 19H 1/6', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895893', '4895891', '', '2017-08-01', '2017-11-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'TERMINO', '2017-02-18', '2017-PROFAU - INST ELEC AUTOMOVIL-JUE 19H 6/7', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895459', '4895454', '', '2017-03-01', '2017-03-31', 'NOCHE', '', '', 0, 4, 'EJECUCION', '2017-02-17', 'MATRICULA TSA 2017', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167176', '5167174', '', '2018-07-01', '2018-09-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2018-01-10', '2018-PROFAU -REP Y MANT DE MOTOR-MARTES 5/6 SUSP', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5523569', '5523567', '', '2019-10-01', '2019-11-30', 'MAÑANA', '09:00-15:30', 'SABADO', 0, 0, 'TERMINO', '2019-10-01', '2019-PROFAU-INTERPR DE PLANOS ELECT SAB 19/10 9 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5135169', '4895450', '', '2017-12-01', '2018-01-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 2, 'TERMINO', '2017-10-18', '2017-IACT -  INST DE EQUIPOS SPLIT MART 5/12 15 HS', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895865', '4895861', '', '2017-06-01', '2017-09-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 4, 'TERMINO', '2017-02-18', '2017-PROFAU- MECANICA BASICA- LUN 15 H 8/5', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5198940', '5169165', '', '2018-09-01', '2018-12-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2018-03-20', '2018-ADMIN-ASIST ADM PYME 4 M-LU Y MIE 13/8 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5228668', '5167648', '', '2018-06-01', '2018-06-26', 'TARDE', '15:00-18:00', 'MARTES', 0, 1, 'TERMINO', '2018-05-02', '2018-INFORMATICA-EXCE BASICO- MARTES 5/6 15 HS', '2018-06-06');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895379', '4895371', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:30-21:30', 'MARTES', 0, 0, 'ESPERA', '2017-02-17', '2017-UTN - ALEMAN NIVEL 3 SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5560976', '5356551', '', '2019-12-01', '2020-04-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 4, 'EJECUCION', '2019-10-21', '2019-IACT-INST DOM Y COMERCIALES-21-VIE 15/11 15 H', '2020-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5704718', '5704716', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-05-12', '2019-2DO AÑO ESP.MTRIA.I.ESTRUC-NAC-MATRICULA %6.3', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5166868', '5166856', '', '2018-04-01', '2018-08-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 5, 'TERMINO', '2018-01-08', '2018-IACT - REFRIGERACION Y AA-5-JUEV 22/03 19 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5849872', '5835566', '', '2020-11-01', '2020-12-31', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2020-09-28', '2020-ADMIN-PNL ON LINE 1 PAGO LU Y MI 19/10 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895271', '4895074', '', '2017-02-01', '2017-03-01', 'NOCHE', '', '', 0, 0, 'TERMINO', '2017-02-16', 'MATRICULA ESPECIALIZACION Y MTRIA.ESTRUCTURAL 2017', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4894970', '4894968', '', '2017-02-01', '2017-06-30', 'NOCHE', '', '', 0, 44, 'EJECUCION', '2017-02-10', 'ESP. INGENIERÍA GERENCIAL-MATRÍCULA 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895531', '4895529', '', '2017-11-01', '2018-01-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2017-02-17', '2017-INFORMATICA - AUTOCAD AVANZADO - 21/10 SAB', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5311921', '5166882', '', '2018-10-01', '2019-02-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'EJECUCION', '2018-09-03', '2018-IACT -INST ELEC INDUSTRIAL 9-SAB 29/9 10 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5216293', '5170700', '', '2018-07-01', '2018-12-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 6, 'TERMINO', '2018-04-03', '2018-SALUD - SEC MEDICO-MARTES 03/7 18:30 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895023', '4895021', '', '2017-03-01', '2017-12-29', 'NOCHE', '', '', 0, 42, 'EJECUCION', '2017-02-10', 'ESP. INGENIERÍA GERENCIAL 1º AÑO 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895058', '4895056', '', '2017-03-01', '2017-12-29', 'NOCHE', '', '', 0, 42, 'EJECUCION', '2017-02-10', 'ESP. INGENIERÍA GERENCIAL 2º AÑO 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5216633', '5166871', '', '2018-07-01', '2018-11-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-04-04', '2018-IACT-INST DOM Y COMERCIALES-9-VIE 8/6 15 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895804', '4895802', '', '2017-05-01', '2017-08-01', 'NOCHE', '', '', 0, 0, 'ESPERA', '2017-02-18', '2017-CIE - OPERACION Y PROGRAMACION DE CNC- A CONF', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5038714', '4895465', '', '2010-10-01', '2017-11-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 3, 'TERMINO', '2017-07-04', '2017-INFOMATICA - EXCEL BASICO - LUNES 4/9 15 HS', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895808', '4895806', '', '2017-05-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 6, 'TERMINO', '2017-02-18', '2017-SOLDADURA - HERRERÍA BASICA- LUN 19 HS 3/4', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5352036', '5352030', '', '2019-03-01', '2019-09-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 7, 'TERMINO', '2018-12-03', '2019-SALUD-SEC MEDICO-MARTES 9/4 18:30 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5314967', '5183460', '', '2018-11-01', '2018-12-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'LUNES-MIERCOLES', 0, 0, 'TERMINO', '2018-09-11', '2018-CIE-LEAN MANUNFACTURING-LUN Y MIE 28/11 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5165580', '4920001', '', '2017-03-01', NULL, 'NOCHE', '', '', 0, 32, 'EJECUCION', '2017-12-21', 'TECNICO SUP. EN SISTEMAS INFORMATICOS MARZO 2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895859', '4895857', '', '2017-09-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2017-02-18', '2017-PROFAU- ADMI TALLERES- SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895810', '4895806', '', '2017-05-01', '2017-10-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 6, 'TERMINO', '2017-02-18', '2017-SOLDADURA - HERRERÍA BASICA - SAB 9 HS 15/4', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895897', '4895895', '', '2017-09-01', '2017-12-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'ESPERA', '2017-02-18', '2017-PROFAU- INYECCION NAFTA FYC-MAR 15 15/8', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4996965', '4996963', '', '2017-09-01', '2018-01-01', 'NOCHE', '18:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2017-05-26', '2017-ADMIN-ANALISTA IMPOSITIVO -4 M-16/8 MIER 18H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895812', '4895806', '', '2017-05-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 6, 'TERMINO', '2017-02-18', '2017-SOLDADURA - HERRERÍA BASICA - MIER 19 H 5/4', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895824', '4895822', '', '2017-07-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2017-02-18', '2017-SOLDADURA - TIG NIVEL 1 - LUNES 19 HS 12/06', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895788', '4895784', '', '2017-06-01', '2017-09-01', 'MAÑANA', '08:00-12:00/08:00-12:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2017-02-18', '2017-UTN- AUTOMATIZACION INDUSTRIAL - LYM 8H 08/05', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895851', '4895847', '', '2017-06-01', '2017-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2017-02-18', '2017-BIBLIO PACHECO- TORNERIA N BASIC-MYJ 19H 16/5', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895834', '4895832', '', '2017-09-01', '2017-11-01', 'NOCHE', '18:30-21:30', 'MARTES', 0, 3, 'TERMINO', '2017-02-18', '2017-SOLDADURA - ALUMINIO TIG - MAR 18.30 HS  15/8', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895883', '4895881', '', '2017-09-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2017-02-18', '2017-PROFAU- AJUSTE DE MOTOR-MIER 19H 16/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4972915', '4972913', '', '2017-11-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2017-05-04', '2017-MATRICERIA-FRESADORA CNC 3 EJES-SUSP 5/10 19H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4972876', '4972871', '', '2017-11-01', '2017-12-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-VIERNES', 0, 0, 'ESPERA', '2017-05-04', '2017-MATRICERIA- POWERSHAPE - 2/10 SUPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895887', '4895885', '', '2017-07-01', '2017-10-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2017-02-18', '2017-PROFAU- CONO ELEC AUTOMOVIL-JUE 15H 1/6', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895690', '4895676', '', '2017-04-01', '2017-09-01', 'TARDE', '15:00-18:00/15:00-18:00', 'LUNES-JUEVES', 0, 6, 'TERMINO', '2017-02-17', '2017-BIBLIO PACHECO - REP  PC Y NOT- LYJ 15 H 13/3', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895855', '4895853', '', '2017-06-01', '2017-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2017-02-18', '2017-BIBLIO PACHECO - TORNERIA AVANZADA-MYJ 16/5', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5060862', '5054139', '', '2017-07-13', '2017-07-15', 'NOCHE', '', '', 0, 0, 'TERMINO', '2017-07-13', 'CURSADA MODULAR GESTION PERSON EZEQUIEL BRIDI 2017', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895698', '4895676', '', '2017-05-01', '2017-10-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-VIERNES', 0, 6, 'TERMINO', '2017-02-17', '2017-BIBLIO PACHECO - REP PC Y NOT- MYV 19 H 11/4', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895796', '4895794', '', '2017-11-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2017-02-18', '2017-UTN - PLC NIVEL 2 - LUNES 19 H 23/10', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895696', '4895676', '', '2017-06-01', '2017-11-01', 'TARDE', '15:00-18:00/15:00-18:00', 'MARTES-VIERNES', 0, 6, 'TERMINO', '2017-02-17', '2017-BIBLIO PACHECO - REP PC Y NOT- MYV 15 H 09/05', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895706', '4895704', '', '2017-05-01', '2017-08-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2017-02-17', '2017-BIBLIO PACHECO - INST CAM VIGIL -MIE 12/4 19H', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895800', '4895798', '', '2017-05-01', '2017-08-01', 'NOCHE', '18:00-21:00', 'VIERNES', 0, 4, 'TERMINO', '2017-02-18', '2017-CIE- SEGURIDAD E HIGIENE- VIE 18 HS 21/4', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895702', '4895700', '', '2017-05-01', '2017-07-01', 'MAÑANA', '08:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2017-02-17', '2017-BIBLIO PACHECO - INTRO A REDES 8/4 8 HS', '2017-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5486216', '5356519', '', '2019-10-01', '2019-10-30', 'TARDE', '15:00-18:00', 'MARTES', 0, 1, 'TERMINO', '2019-08-09', '2019-INFORMATICA- EXCEL BASICO- MARTES 8/10 15 HS', '2019-10-24');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895877', '4895875', '', '2017-07-01', '2017-10-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'ESPERA', '2017-02-18', '2017-PROFAU - REP Y MANT DE MOTOR-MAR 15HS 13/6', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5229371', '5166951', '', '2018-07-01', '2018-09-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 3, 'TERMINO', '2018-05-04', '2018-PROFAU- MECANICA BASICA- LUN 15 HS 11/6', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5087112', '4895400', '', '2017-11-01', '2018-03-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2017-08-29', '2017-IACT -INST. DOMI Y COMERCIALES-VI 27/10 15 H', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167171', '5167169', '', '2018-06-01', '2018-08-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2018-01-10', '2018-PROFAU-CARBURACION Y ENCENDO-JUE 3/5 19 SUSP', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5051736', '4895400', '', '2017-11-01', '2018-05-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 7, 'TERMINO', '2017-07-06', '2017-IACT - INST. DOMI Y COMERCIALES-VI 29/09 19 H', '2018-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167190', '5167186', '', '2018-04-01', '2018-06-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2018-01-10', '2018-PROFAU- INYECCION NAFTA FYC-MARTES 6/3 19 HS', '2018-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5135171', '4895450', '', '2017-12-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'TERMINO', '2017-10-18', '2017-IACT - INST DE EQUIPOS SPLIT MART 5/12 19 HS', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166861', '5166856', '', '2018-04-01', '2018-08-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 5, 'TERMINO', '2018-01-08', '2018-IACT - REFRIGERACION Y AA-3-LUNES 05/03 19 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5704733', '5704730', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-05-12', '2019-2DO AÑO ESP.MTRIA.I.ESTRUC-NAC-MATRICULA%37.1', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5235905', '5167648', '', '2018-08-01', '2018-08-31', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2018-05-23', '2018-INFORMATICA-EXCEL AVANZADO- JUEVES 9/8 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5168301', '5168299', '', '2018-08-01', '2018-10-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'TERMINO', '2018-01-18', '2018-PROFAU-MECANICA AVANZADA 1-VIERNES 13/7 19 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5170090', '4895524', '', '2018-01-31', '2018-12-31', 'NOCHE', '', '', 0, 35, 'EJECUCION', '2018-01-31', 'TECNICO SUPERIOR EN ADMINISTRACION 2018 SEGUDO AÑO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5792067', '4895080', '', '2020-08-01', '2020-09-01', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-08-06', '2020- METODOS DE LOS ELEMENTOS FINITOS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5199771', '5199768', '', '2018-03-01', '2018-12-31', 'NOCHE', '', '', 0, 13, 'EJECUCION', '2018-03-21', 'MATRICULA DOCENCIA UNIVERSITARIA 2018', '2021-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5561385', '5561362', '', '2019-12-01', '2019-12-31', 'NOCHE', '19:00-22:00/19:00-22:00', 'MIERCOLES-JUEVES', 0, 0, 'TERMINO', '2019-10-23', '2019-PROFAU-SEM DIAG Y MANT INYEC NAF-MI 11/12 19H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4914434', '4912612', '', '2017-03-04', '2017-12-30', 'MAÑANA', '08:00-17:00', 'SABADO', 0, 44, 'EJECUCION', '2017-03-01', 'LIC. EN ENSEÑANZA DE LA MATEMATICA-AÑO 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4920012', '4919999', '', '2017-03-01', NULL, 'MAÑANA', '', '', 0, 42, 'EJECUCION', '2017-03-16', 'TEC. SUP. PROGRAMACIÓN MARZO 2017 - PACHECO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895913', '4895909', '', '2017-05-01', '2017-09-01', 'MAÑANA', '09:00-12:00/09:00-12:00', 'MARTES-MIERCOLES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN-ASIS ADM PYME 4M- MYM 9H 11/4', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895917', '4895915', '', '2017-05-01', '2017-11-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 7, 'TERMINO', '2017-02-18', '2017-ADMIN-ASIST ADM PYME 6M-SAB 9H 22/4', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895921', '4895919', '', '2017-05-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN-ANALISTA CONTABLE-MIE 19H 12/4', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5009766', '4895465', '', '2017-08-01', '2017-09-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'TERMINO', '2017-05-30', '2017-INFOMATICA - EXCEL BASICO - MARTES 18/7 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4923708', '4895465', '', '2017-05-01', '2017-06-01', 'TARDE', '16:00-19:00', 'LUNES', 0, 1, 'TERMINO', '2017-03-20', '2017-INFOMATICA - EXCEL BASICO - LUNES 8/5 16 HS', '2017-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5085048', '4895465', '', '2017-11-01', '2017-12-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 2, 'TERMINO', '2017-08-18', '2017-INFORMATICA-EXCEL BASICO - LUNES 9/10 15 HS', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4972884', '4972882', '', '2017-11-01', '2017-12-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-VIERNES', 0, 0, 'ESPERA', '2017-05-04', '2017-MATRICERIA- POWERMILL-VIE 6/10 SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895947', '4895943', '', '2017-08-01', '2017-12-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2017-02-18', '2017-ADMIN-COACHING Y LIDERAZGO-SAB08/07SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895929', '4895927', '', '2017-08-01', '2017-12-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2017-02-18', '2017-ADMIN- ADMIN DE PERSONAL-SAB15/07SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4972919', '4972917', '', '2017-09-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'TERMINO', '2017-05-04', '2017-MATRICERIA- TORNO CNC 2 EJES MAR 1/8 19 HS', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4916783', '4895381', '', '2017-05-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 5, 'TERMINO', '2017-03-07', '2017-IACT - REFRIGERACION Y AA 7-MAR 11/4 19 HS', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4916787', '4895381', '', '2017-06-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 5, 'TERMINO', '2017-03-07', '2017-IACT - REFRIGERACION Y AA 9-LUNES 8/5 19 HS', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5216643', '5166871', '', '2018-07-01', '2018-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-04-04', '2018-IACT-INST DOM Y COMERCIALES-10-VIE 8/6 19 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4916785', '4895381', '', '2017-06-01', '2017-10-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 5, 'TERMINO', '2017-03-07', '2017-IACT - REFRIGERACION Y AA 8-LUNES 8/5 15 HS', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4916814', '4916799', '', '2017-03-01', '2017-12-31', 'TARDE', '', '', 0, 10, 'EJECUCION', '2017-03-07', 'CURSO ALEMAN SAU NIVEL 1 2017', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4919150', '4916799', '', '2017-03-01', '2017-12-31', 'TARDE', '16:00-18:00/16:00-18:00', 'MARTES-VIERNES', 0, 10, 'EJECUCION', '2017-03-13', 'CURSO ALEMAN SAU NIVEL II 2017', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5320111', '5166871', '', '2018-12-01', '2019-04-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-09-20', '2018-IACT-INST DOM Y COMERCIALES-21-VIE 23/11 15 H', '2019-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895925', '4895923', '', '2017-05-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN-ANALISTA IM-VIER 19H 7/4', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895905', '4895901', '', '2017-05-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN- LIQ DE SUELDOS- JUE 19 20/4', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895911', '4895909', '', '2017-05-01', '2017-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-JUEVES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN-ASIS ADM PYME 4M- LYJ 19H 10/4', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5038719', '4895465', '', '2017-11-01', '2017-12-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 2, 'TERMINO', '2017-07-04', '2017-INFOMATICA - EXCEL AVANZADO- JUE 12/10 15 HS', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895907', '4895901', '', '2017-05-01', '2017-09-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN- LIQ DE SUELDOS- SAB 09 22/4', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169247', '5169245', '', '2018-07-01', '2018-08-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2018-01-25', '2018-ADMIN- MONOTRIBUTO  E  IIBB-A CONFIRMAR', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5060872', '4895784', '', '2017-10-01', '2017-12-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2017-07-13', '2017-UTN- AUTOMATIZACION INDUSTRIAL- MYJ 18H 12/09', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169236', '5169234', '', '2018-06-01', '2018-10-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-01-25', '2018-ADMIN-ANALISTA IMPOSITIVO-VIERNES 18/5 19 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5054137', '4895364', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:30-21:30', 'MIERCOLES', 0, 4, 'TERMINO', '2017-07-12', '2017-UTN -PORTUGUES NIVEL 2 MIER 18.30 9/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5235907', '5167648', '', '2018-08-01', '2018-08-31', 'TARDE', '15:00-18:00', 'LUNES', 0, 0, 'TERMINO', '2018-05-23', '2018-INFORMATICA- EXCEL BASICO- LUNE 6/8 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5051729', '4895400', '', '2017-10-01', '2018-03-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-07-06', '2017-IACT - INST. DOMI Y COMERCIALES-VI 01/09 19 H', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167188', '5167186', '', '2018-04-01', '2018-06-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'ESPERA', '2018-01-10', '2018-PROFAU-INYECCION NAFTA FYC-MARS 6/3 15 H SUSP', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4919247', '4895586', '', '2017-05-01', '2018-03-01', 'TARDE', '14:00-18:00', 'MARTES', 0, 11, 'TERMINO', '2017-03-14', '2017-SALUD -AUXILIAR DE FARMACIA - MAR 14 HS 16/5', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5087114', '4895400', '', '2017-11-01', '2018-03-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2017-08-29', '2017-IACT -INST. DOMI Y COMERCIALES-VI 27/10 19 H', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4919249', '4895620', '', '2017-05-01', '2017-11-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 7, 'TERMINO', '2017-03-14', '2017-SALUD - SEC MEDICO - MARTES 18.30 HS 16/05', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5061401', '4895700', '', '2017-11-01', '2018-01-01', 'MAÑANA', '08:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2017-07-14', '2017-BIBLIO PACHECO - INTRO A REDES 07/10 8 HS', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166863', '5166856', '', '2018-04-01', '2018-08-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 5, 'TERMINO', '2018-01-08', '2018-IACT - REFRIGERACION Y AA-2-LUNES 05/03 15 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5168966', '5168962', '', '2018-04-01', '2018-07-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 4, 'TERMINO', '2018-01-24', '2018-IDIOMAS-INGLES NIVEL 1-JUEVES 22/3 18 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166681', '5166679', '', '2018-08-01', '2018-08-31', 'MAÑANA', '09:00-18:00', 'SABADO', 0, 0, 'TERMINO', '2018-01-02', '2018-PROFAU-SEM DIAG Y M INYEC. NAFTA-SABADO 04/8', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5229387', '5168299', '', '2018-08-01', '2018-10-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 3, 'TERMINO', '2018-05-04', '2018-PROFAU-MECANICA AVANZADA 1-VIERNES 13/7 15 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5704923', '5704921', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-05-13', '2019-2DO AÑO ESP.MTRIA.I.ESTRUC-NAC-MATRICULA 50%', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5526921', '5356549', '', '2019-12-01', '2019-12-31', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'TERMINO', '2019-10-09', '2019-IACT-INST DE EQUIPOS SPLIT-LUNES 9/12 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5561364', '5561362', '', '2019-12-01', '2019-12-31', 'TARDE', '15:00-18:00/15:00-18:00', 'MIERCOLES-JUEVES', 0, 0, 'TERMINO', '2019-10-23', '2019-PROFAU-SEM DIAG Y MANT INYEC NAF-MI 11/12 15H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5794850', '5794848', '', '2020-10-01', '2021-01-31', 'NOCHE', '19:00-21:00/19:00-21:00', 'MARTES-JUEVES', 0, 0, 'TERMINO', '2020-08-21', '2020-CIE-AUTOMAT IND ONLINE CUOTA MAYJU 20/10 19 H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5526914', '5356564', '', '2019-12-01', '2020-03-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'EJECUCION', '2019-10-09', '2019-IACT-REFRIGERACION Y AA-17-JUEV 7/11 19', '2020-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5849876', '5849874', '', '2020-11-01', '2020-12-31', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2020-09-28', '2020-ADMIN-PNL ON LINE CUOTAS-LU Y MI 19/10 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895931', '4895927', '', '2017-08-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2017-02-18', '2017-ADMIN-ADM DE PERSONAL-JUE 19H 13/07SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5087117', '4895440', '', '2017-10-01', '2018-03-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2017-08-29', '2017-IACT - NST ELEC INDUSTRIAL SAB 30/09 10 HS', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5009768', '4895465', '', '2017-08-01', '2017-09-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2017-05-30', '2017-INFOMATICA - EXCEL AVANZADO- JUE 6/7 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5166884', '5166882', '', '2018-03-01', '2018-07-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2018-01-08', '2018-IACT - INST ELEC INDUSTRIAL-1-SAB 03/02 10 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5073082', '5054139', '', '2017-07-17', '2017-07-19', 'NOCHE', '', '', 0, 2, 'TERMINO', '2017-07-19', 'CURSADA MODULAR SEMINARIO INTEGRADOR BRIDI 2017', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166873', '5166871', '', '2018-03-01', '2018-06-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 4, 'EJECUCION', '2018-01-08', '2018-IACT-INST DOM  Y COMERCIALES-1-VIE 2/2 15 HS', '2018-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4973416', '4973414', '', '2017-11-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2017-05-06', '2017-MATRICERIA-HERRAM DE CORTE LUN 2/10 SUSPENDID', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5166866', '5166856', '', '2018-04-01', '2018-08-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 5, 'TERMINO', '2018-01-08', '2018-IACT - REFRIGERACION Y AA-4-JUEV 22/03 15 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5018420', '4895400', '', '2017-08-01', '2018-01-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-06-05', '2017-IACT - INST. DOMI Y COMERCIALES-VI 7/7 15 H', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5038727', '4895522', '', '2017-09-01', '2017-11-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 2, 'TERMINO', '2017-07-04', '2017- INFORMATICA AUTOCAD BASICO -JUE 5/10 15 A 18', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5168969', '5168962', '', '2018-04-01', '2018-07-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2018-01-24', '2018-IDIOMAS-INGLES NIVEL 2-MAR Y JU 20/3 19:30 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5170702', '5170700', '', '2018-03-01', '2018-08-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 6, 'TERMINO', '2018-02-01', '2018-SALUD - SEC MEDICO-MARTES 20/3 18:30 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5216645', '5166882', '', '2018-07-01', '2018-12-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-04-04', '2018-IACT -INST ELEC INDUSTRIAL 5-SAB 2/6 10 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5320116', '5166871', '', '2018-12-01', '2019-04-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-09-20', '2018-IACT-INST DOM Y COMERCIALES-22-VIE 23/11 19 H', '2019-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5211140', '4920017', '', '2018-05-01', '2018-07-01', 'MAÑANA', '', '', 0, 3, 'TERMINO', '2018-03-23', 'CURSO INTRODUCTORIO TSP MAYO 2018 - PACHECO', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5051740', '4895381', '', '2017-10-01', '2018-02-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 5, 'TERMINO', '2017-07-06', '2017-IACT - REFRIGERACION Y AA 15-MIER 6/9 19 HS', '2018-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5237529', '5166871', '', '2018-09-01', '2018-12-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 4, 'TERMINO', '2018-05-31', '2018-IACT-INST DOM Y COMERCIALES-13-VIE 3/8 15 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5486226', '5440442', '', '2019-09-01', '2019-10-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'EJECUCION', '2019-08-09', '2019-UTN -CENTRO DE MECANIZADO-SABADO 09HS 24/8', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5166955', '5166951', '', '2018-04-01', '2018-06-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 3, 'TERMINO', '2018-01-09', '2018-PROFAU- MECANICA BASICA- VIER 15 HS 9/3', '2018-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5229392', '5167180', '', '2018-08-01', '2018-10-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 3, 'TERMINO', '2018-05-04', '2018-PROFAU- CONO ELEC AUTOMOVIL-MIER 11/7 15 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5526919', '5356549', '', '2019-12-01', '2019-12-31', 'TARDE', '15:00-18:00', 'LUNES', 0, 0, 'TERMINO', '2019-10-09', '2019-IACT-INST DE EQUIPOS SPLIT-LUNES 9/12 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5561390', '5561388', '', '2019-12-01', '2019-12-31', 'NOCHE', '19:00-22:00/19:00-22:00', 'MIERCOLES-JUEVES', 0, 0, 'TERMINO', '2019-10-23', '2019-PROFAU-SEM PUESTA PUNTO ARBOL LEVA 4/12 19 H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5835695', '5835693', '', '2020-11-01', '2020-12-22', 'NOCHE', '17:00-19:00/17:00-19:00', 'MARTES-JUEVES', 0, 1, 'TERMINO', '2020-09-17', '2020-INFO-REP ELECTR BÁSICA 20/10 MAYJ 17 H-1 PAGO', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5794855', '5794853', '', '2020-10-01', '2021-01-31', 'NOCHE', '19:00-21:00/19:00-21:00', 'MARTES-JUEVES', 0, 0, 'TERMINO', '2020-08-21', '2020-CIE-AUTOM IND ONLINE 1 PAGO MAYJU 20/10 19 H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5077324', '4920001', '', '2017-08-07', '2017-11-25', 'NOCHE', '', '', 0, 37, 'EJECUCION', '2017-08-04', 'TECNICO SUP. EN SISTEMAS INFORMATICOS AGOSTO 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5706115', '5580340', '', '2020-09-01', '2021-04-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 8, 'TERMINO', '2020-05-19', '2020-SALUD-SECRETARIADO MEDICO-MARTES 8/9 18:30 H', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5079590', '4895790', '', '2017-10-01', '2017-12-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2017-08-08', '2017-UTN - PLC NIVEL 1 - SAB 9H 23/09', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895935', '4895933', '', '2017-07-01', '2017-11-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2017-02-18', '2017-ADMIN- ASIST RRHH 4M- MYJ SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5073112', '5073107', '', '2017-09-01', '2018-01-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2017-07-19', '2017-ADMIN- CONUNICACION INTEGRAL- JUE 7/9 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5036177', '4895329', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2017-06-30', '2017-UTN - INGLES NIVEL 5 -M Y J 18 HS 8/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4953470', '4895440', '', '2017-06-01', '2017-10-31', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2017-04-25', '2017-IACT - INST ELEC INDUSTRIAL SAB 6/5 10 HS', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5219701', '5170692', '', '2018-06-01', '2019-05-01', 'TARDE', '14:00-18:00', 'SABADO', 0, 12, 'TERMINO', '2018-04-09', '2018-SALUD -AUXILIAR DE FARMACIA-SABADO 30/6 14 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169169', '5169165', '', '2018-04-01', '2018-08-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-MIERCOLES', 0, 5, 'TERMINO', '2018-01-25', '2018-ADMIN-ASIST ADM PYME 4 M-LU Y MIE 19/3  19 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169224', '5169222', '', '2018-06-01', '2018-09-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 4, 'TERMINO', '2018-01-25', '2018-ADMIN- ADMIN DE PERSONAL-SABADO 12/5 9 HS', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169232', '5169230', '', '2018-05-01', '2018-08-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2018-01-25', '2018-ADMIN-ANALISTA CONTABLE- MARTES 17/4 19 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5051646', '4895440', '', '2017-09-01', '2018-02-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2017-07-06', '2017-IACT - NST ELEC INDUSTRIAL SAB 05/08 10 HS', '2018-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4979856', '4895676', '', '2017-10-01', '2018-03-01', 'TARDE', '15:00-18:00/15:00-18:00', 'LUNES-JUEVES', 0, 6, 'TERMINO', '2017-05-11', '2017-BIBLIO PACHECO - REP PC Y NOT- LYJ 15 H 04/09', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5036163', '4895329', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2017-06-30', '2017-UTN -INGLES NIVEL 4 -M Y J 18 HS 8/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5036174', '4895329', '', '2017-09-01', '2017-12-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2017-06-30', '2017-UTN -INGLES NIVEL 4 -M Y J 19:30 HS 8/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5541320', '5541313', '', '2019-11-01', '2019-12-01', 'NOCHE', '19:00-21:00', 'VIERNES', 0, 0, 'ESPERA', '2019-10-09', '2019-CIE-TIMONEL YATE MOTOR-VIER 15/11 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4973633', '4895700', '', '2017-08-01', '2017-10-01', 'MAÑANA', '08:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2017-05-08', '2017-BIBLIO PACHECO - INTRO A REDES 8/7 8 HS', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166875', '5166871', '', '2018-03-01', '2018-06-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2018-01-08', '2018-IACT-INST DOM  Y COMERCIALES-2-VIE 2/2 19 HS', '2018-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5038729', '4895522', '', '2017-11-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2017-07-04', '2017- INFORMATICA AUTOCAD BASICO -LUN 2/10 19 A 22', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5320145', '5166882', '', '2018-11-01', '2019-04-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-09-20', '2018-IACT -INST ELEC INDUSTRIAL 10-SAB 27/10 10 HS', '2019-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169241', '5169239', '', '2018-06-01', '2018-08-30', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 3, 'TERMINO', '2018-01-25', '2018-ADMIN- MARK  PROM Y VENTAS-JUEVES 17/5 19 HS ', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5229394', '5167180', '', '2018-08-01', '2018-10-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'TERMINO', '2018-05-04', '2018-PROFAU- CONO ELEC AUTOMOVIL-MIER 11/7 19 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5488058', '5356564', '', '2019-10-01', '2020-01-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2019-08-13', '2019-IACT-REFRIGERACION Y AA-14-MARTES 10/9 19 ', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5168971', '5168962', '', '2018-05-01', '2018-07-26', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2018-01-24', '2018-IDIOMAS-INGLES NIVEL 3-MAR Y JU 03/04 18 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5488055', '5419768', '', '2019-11-01', '2020-05-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 5, 'TERMINO', '2019-08-13', '2019-SALUD-SEC MEDICO-MARTES 5/11 18:30 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169213', '5169211', '', '2018-05-01', '2018-10-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-01-25', '2018-ADMIN- ASIST RRHH 6M-SABADO 14/4 9 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5237531', '5166871', '', '2018-09-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2018-05-31', '2018-IACT-INST DOM Y COMERCIALES-14-VIE 3/8 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5794238', '5719665', '', '2020-10-01', '2020-12-31', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 3, 'TERMINO', '2020-08-18', '2020-PROFAU- MECANICA GENERAL JUEVES 17/9 19 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4920014', '4920001', '', '2017-03-01', NULL, 'NOCHE', '', '', 0, 42, 'EJECUCION', '2017-03-16', 'TECNICO SUP. EN SISTEMAS INFORMATICOS MARZO 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4921522', '4920453', '', '2017-03-01', NULL, 'MAÑANA', '', '', 0, 42, 'EJECUCION', '2017-03-17', 'TEC. SUP. PROGRAMACIÓN MARZO 2017 - EXPORTADOS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4923912', '4923906', '', '2017-03-01', '2017-06-30', 'NOCHE', '', '', 0, 42, 'EJECUCION', '2017-03-20', 'CURSADA MODULAR METODOS CUANTITATIVOS 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4940355', '4923906', '', '2017-04-01', '2017-04-30', 'NOCHE', '', '', 0, 41, 'EJECUCION', '2017-04-03', 'CURSADA MODULAR INFORMACION FINANCIERA 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5706117', '5580334', '', '2020-09-01', '2021-07-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 8, 'EJECUCION', '2020-05-19', '2020-SALUD-AUXILIAR DE FARMACIA SABADO 5/9 9HS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5795162', '5795160', '', '2020-10-01', '2020-12-10', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'TERMINO', '2020-08-24', '2020-CIE- PLC S7-1200 NIVEL 1 JU 22/10 18 H-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5170874', '5161404', '', '2017-02-01', '2018-12-28', 'NOCHE', '', '', 0, 15, 'EJECUCION', '2018-02-02', '2018 MATRÍCULA MBA', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895937', '4895933', '', '2017-08-01', '2017-12-01', 'MAÑANA', '09:00-12:00/09:00-12:00', 'LUNES-VIERNES', 0, 0, 'ESPERA', '2017-02-18', '2017-ADMIN- ASIST RRHH 4M- LYV10/07SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5169008', '5168995', '', '2018-04-01', '2018-07-01', 'NOCHE', '18:00-18:30', 'MIERCOLES', 0, 4, 'TERMINO', '2018-01-24', '2018-IDIOMAS-ALEMAN 4- MIER 14/03 18 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5081236', '5054139', '', '2017-08-09', '2017-08-11', 'NOCHE', '', '', 0, 0, 'TERMINO', '2017-08-09', 'CURSADA MODULAR CREATIVIDAD E INOVACION 2017', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5169160', '5169155', '', '2018-05-01', '2018-08-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 4, 'TERMINO', '2018-01-25', '2018-ADMIN- LIQ DE SUELDOS-SABADO 14/4 9 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5171768', '4895074', '', '2018-02-01', '2018-03-31', 'NOCHE', '', '', 0, 1, 'TERMINO', '2018-02-06', 'MATRICULA ESPEC. Y MTRIA.ESTRUCTURAL 2018 ', '2018-03-07');
INSERT INTO "public"."carrerascursosalta" VALUES ('5092548', '4895492', '', '2017-11-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'TERMINO', '2017-09-11', '2017-INFORMATICA -ROBOTICA BASICA - MAR 24/10 19H', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4974307', '4895440', '', '2017-07-01', '2018-01-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2017-05-09', '2017-IACT - INST ELEC INDUSTRIAL SAB 3/6 10 HS', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5213191', '5167186', '', '2018-07-01', '2018-08-28', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'TERMINO', '2018-03-26', '2018-PROFAU-INYECCION NAFTA FYC-MARTES 12/6 19 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5051725', '4895440', '', '2017-10-01', '2018-04-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 7, 'TERMINO', '2017-07-06', '2017-IACT - NST ELEC INDUSTRIAL SAB 02/09 10 HS', '2018-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5489417', '4920017', '', '2019-09-01', '2019-12-31', 'MAÑANA', '', '', 0, 0, 'TERMINO', '2019-08-16', 'CURSO INTRODUCTORIO TUP SEPTIMBRE 2019 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5168973', '5168962', '', '2018-05-01', '2018-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2018-01-24', '2018-IDIOMAS-INGLES NIVEL 4-LUN Y MIER 4/4 18 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166879', '5166871', '', '2018-04-01', '2018-07-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2018-01-08', '2018-IACT-INST DOM Y COMERCIALES-4-VIE 2/3 19 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5052404', '4895371', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 4, 'TERMINO', '2017-07-07', '2017-UTN - ALEMAN NIVEL 3 MIERCOLES 18 HS 09/08', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5578425', '5578423', '', '2019-11-01', '2019-11-30', 'NOCHE', '18:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2019-10-30', '2019-CIE-ESTADÍSTICAS  MEJORA CALIDAD-VIE 15/11 18', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5795166', '5795164', '', '2020-10-01', '2020-12-10', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'TERMINO', '2020-08-24', '2020-CIE- PLC S7-1200 NIVEL 1-CUOTA JU 22/10 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5237642', '5167658', '', '2018-09-01', '2018-10-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-05-31', '2018-INFORMATICA- AUTOCAD AVANZADO-SABADO 4/8 9 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5230045', '5169770', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-21:00', 'VIERNES', 0, 3, 'TERMINO', '2018-05-07', '2018-CIE- SEGURIDAD E HIEGINE-VIER 10/8 18 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5835699', '5835697', '', '2020-11-01', '2020-12-22', 'NOCHE', '17:00-19:00/17:00-19:00', 'MARTES-JUEVES', 0, 1, 'TERMINO', '2020-09-17', '2020-INFO-REP ELECTR BÁSICA 20/10 MAYJ 17 H-CUOTAS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5073533', '4920453', '', '2017-08-01', '2017-12-31', 'NOCHE', '', '', 0, 37, 'EJECUCION', '2017-07-24', 'TEC. SUP. EN PROGRAMACION AGOSTO 2017 - EXPORTADOS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5855888', '5740534', '', '2021-02-01', '2021-03-15', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-10-20', 'CURSO DE INGRESO DE GRADO FEBRERO 2021 Y LIBRE', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5220519', '5220516', '', '2018-04-01', '2018-05-31', 'NOCHE', '', '', 0, 28, 'EJECUCION', '2018-04-10', 'GESTIÓN DEL CONOCIMIENTO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5562039', '4895080', '', '2019-10-26', '2019-11-07', 'TARDE', '', '', 0, 15, 'EJECUCION', '2019-10-29', 'SEMINARIO DISEÑO DE ESTRUCTURAS DE MADERA 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5237648', '5167654', '', '2018-10-01', '2018-11-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'TERMINO', '2018-05-31', '2018-INFORMATICA-AUTOCAD BASICO-MARTES 4/9 19 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895941', '4895939', '', '2017-07-01', '2017-12-09', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2017-02-18', '2017-ADMIN- ASIST RRHH 6M- SAB 9H 24/06', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4979858', '4895676', '', '2017-11-01', '2018-03-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-JUEVES', 0, 5, 'TERMINO', '2017-05-11', '2017-BIBLIO PACHECO - REP PC Y NOT- LYJ 19 H 02/10', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5051727', '4895400', '', '2017-10-01', '2018-03-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-07-06', '2017-IACT - INST. DOMI Y COMERCIALES-VI 01/09 15 H', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5168978', '5168962', '', '2018-05-01', '2018-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2018-01-24', '2018-IDIOMAS-INGLES NIVEL 6-LUN Y MIER 4/4 18 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5231228', '5169155', '', '2018-09-01', '2018-12-01', 'MAÑANA', '09:00-12:00', 'MIERCOLES', 0, 0, 'ESPERA', '2018-05-09', '2018-ADMIN- LIQ DE SUELDOS- MIER 22/8 9 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5092550', '4895381', '', '2017-12-01', '2018-03-01', 'TARDE', '', '', 0, 4, 'TERMINO', '2017-09-11', '2017-IACT - REFRIGERACION Y AA 17-JUEV 09/11 15 H', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5223028', '5169155', '', '2018-09-01', '2018-11-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'TERMINO', '2018-04-16', '2018-ADMIN- LIQ DE SUELDOS-MIER 15/8 19 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169157', '5169155', '', '2018-06-01', '2018-08-29', 'MAÑANA', '09:00-12:00', 'MIERCOLES', 0, 3, 'TERMINO', '2018-01-25', '2018-ADMIN- LIQ DE SUELDOS- MIER 9/5  9 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167178', '5167174', '', '2018-05-01', '2018-07-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'ESPERA', '2018-01-10', '2018-PROFAU-REP Y MANT DE MOTOR-10/4 SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5213446', '5172351', '', '2018-09-01', '2018-12-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-JUEVES', 0, 4, 'TERMINO', '2018-03-27', '2018-BIBLIO PACHECO - REP PC Y NOT- LYJ 19 H 6/8', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167182', '5167180', '', '2018-05-01', '2018-07-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 0, 'ESPERA', '2018-01-10', '2018-PROFAU- CONO ELEC AUTOM-MIER 4/4 15  H SUSP', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5166953', '5166951', '', '2018-03-01', '2018-05-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2018-01-09', '2018-PROFAU- MECANICA BASICA- LUN 19 HS 5/2', '2018-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169175', '5169171', '', '2018-05-01', '2018-09-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2018-01-25', '2018-ADMIN-ASIST ADM PYME 6M-SAB 14/4  9 HS', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5352025', '5352019', '', '2019-02-01', '2019-11-30', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 11, 'TERMINO', '2018-12-03', '2019-SALUD-AUXILIAR DE FARMACIA- SABADO 16/02 9 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5491374', '5356531', '', '2019-11-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 2, 'TERMINO', '2019-08-23', '2019-BIBLIO PACHECO-INST CAM VIGIL -MIE 2/10 19 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5849706', '5719665', '', '2020-12-01', '2021-02-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2020-09-25', '2020-PROFAU- MECANICA GENERAL MARTES 3/11 19 HS', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5073542', '4919999', '', '2017-08-01', '2018-02-28', 'NOCHE', '', '', 0, 37, 'EJECUCION', '2017-07-24', 'TEC. SUP. EN PROGRAMACION-AGOSTO 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5082833', '4920058', '', '2017-08-01', '2017-12-31', 'NOCHE', '', '', 0, 37, 'EJECUCION', '2017-08-11', 'TEC. SUP EN PROG AGOSOTO 2017-JCP - EXPORTADOS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5485335', '4895080', '', '2019-06-02', '2019-08-09', 'NOCHE', '', '', 0, 17, 'EJECUCION', '2019-08-09', 'DINÁMICA AVANZADA DE ESTRUCTURAS - 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895452', '4895450', '', '2017-01-01', '2017-02-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'TERMINO', '2017-02-17', '2017-IACT - INST DE EQUIPOS SPLIT MIER 4/1 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895979', '4895977', '', '2017-07-01', '2017-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2017-02-18', '2017-ADMIN- PNL- VIERNES 19 HS A CONFIRMAR', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895959', '4895955', '', '2017-07-01', '2017-11-01', 'MAÑANA', '09:00-12:00/09:00-12:00', 'MARTES-JUEVES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN- SEC ADM INFORMATICO- SUSPENDIDO 13/07', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895342', '4895329', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - INGLES NIVEL 3 -M Y J 18 HS 14/3', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4911699', '4911697', '', '2017-07-01', '2017-11-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-MIERCOLES', 0, 5, 'TERMINO', '2017-02-21', '2017-ADMIN-ORGANIZACION DE EVENTOS -LYM 19H 12/6', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5051734', '4895400', '', '2017-11-01', '2018-05-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 7, 'TERMINO', '2017-07-06', '2017-IACT - INST. DOMI Y COMERCIALES-VI 29/09 15 H', '2018-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5073954', '4895798', '', '2017-10-01', '2017-12-01', 'NOCHE', '18:00-21:00', 'VIERNES', 0, 0, 'ESPERA', '2017-07-25', '2017-CIE- SEGURIDAD E HIGIENE- SUSPENDIDO08/09', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895963', '4895961', '', '2017-07-01', '2017-12-09', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2017-02-18', '2017-ADMIN- SEC ADM INFORMATICO 6 M - SAB 9H 24/06', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895975', '4895973', '', '2017-06-01', '2017-08-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2017-02-18', '2017-ADMIN- MONOTRIBUTO IIBB PROV BSAS-LU 19H 22/5', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895344', '4895329', '', '2017-04-01', '2017-08-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'MARTES-JUEVES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - INGLES NIVEL 1 - M Y J 19.30 HS 14/3', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895336', '4895329', '', '2017-04-01', '2017-08-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'MARTES-JUEVES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - INGLES NIVEL 3 -M Y J 19.30 HS 14/3', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895945', '4895943', '', '2017-08-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2017-02-18', '2017-ADMIN-COACHING Y LIDERAZGO-VIE 14/7SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5167136', '5167128', '', '2018-07-01', '2018-09-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2018-01-10', '2018-PROFAU- AJUSTE DE MOTOR- 19 HS 7/6SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895334', '4895329', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - INGLES NIVEL 4 -M Y J 18 HS 14/3', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895402', '4895400', '', '2017-02-01', '2017-07-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-02-17', '2017-IACT - INST. DOMI Y COMERCIALES - VI 6/1 15 H', '2017-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5083524', '4895875', '', '2017-10-01', '2017-12-06', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 3, 'TERMINO', '2017-08-14', '2017-PROFAU -REP Y MANT DE MOTOR-MAR 15 HS 6/9', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4911449', '4895440', '', '2017-05-01', '2017-11-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 7, 'TERMINO', '2017-02-21', '2017-IACT - INST ELEC INDUSTRIAL SAB 8/4 10 HS', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4926089', '4920017', '', '2017-03-27', '2017-08-01', 'MAÑANA', '', '', 0, 0, 'CADUCO', '2017-03-27', 'CURSO INTRODUCTORIO TSP MAYO 2017 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4911441', '4895400', '', '2017-05-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-02-21', '2017-IACT - INST. DOMI Y COMERCIALES - VI 7/4 19 H', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4925732', '4925730', '', '2017-06-01', '2017-07-01', 'NOCHE', '', '', 0, 0, 'TERMINO', '2017-03-23', '2017-CIE- LEAN MANUNFACTURING -26 Y  27 JUNIO 8 H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4911439', '4895400', '', '2017-05-01', '2017-10-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-02-21', '2017-IACT - INST. DOMI Y COMERCIALES - VI 7/4 15 H', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895849', '4895847', '', '2017-05-01', '2017-08-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2017-02-18', '2017-BIBLIO PACHECO- TORNERIA N. BASI-LYM 19H 22/3', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5232868', '5232866', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 3, 'TERMINO', '2018-05-14', '2018-IDIOMAS-INGLES-NIVEL 1-LUNE Y MIER 18 HS 13/8', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895957', '4895955', '', '2017-05-01', '2017-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN- SEC ADM INFORMATICO- MYJ 19H 11/4', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5168982', '5168980', '', '2018-05-01', '2018-07-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 3, 'TERMINO', '2018-01-24', '2018-IDIOMAS- FIRST CERTIF- L Y MI 4/4 19:30 HS ', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895971', '4895969', '', '2017-10-01', '2017-11-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2017-02-18', '2017-ADMIN- LIQ IMPUESTO GANANCIAS- SUSPENDIDO20/9', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895951', '4895949', '', '2017-05-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN- MARKETING PROM Y VENTAS- MAR 19H 11/4', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4979860', '4895676', '', '2017-11-01', '2018-03-01', 'TARDE', '15:00-18:00/15:00-18:00', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2017-05-11', '2017-BIBLIO PACHECO - REP PC Y NOT-SUSPENDIDO17/10', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895356', '4895329', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - INGLES NIVEL 2 - L Y M 18 HS 13/3', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895338', '4895329', '', '2017-04-01', '2017-07-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2017-02-17', '2017-UTN - INGLES NIVEL 5 - L Y M 18 HS 13/3', '2017-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895967', '4895965', '', '2017-07-01', '2017-08-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 2, 'TERMINO', '2017-02-18', '2017-ADMIN - CONCILIACION BANCARIA - VIE 19H 16/6', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5092553', '4895381', '', '2017-11-01', '2018-02-01', 'NOCHE', '', '', 0, 4, 'TERMINO', '2017-09-11', '2017-IACT - REFRIGERACION Y AA 16-LUNES 09/10 19 H', '2018-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895953', '4895949', '', '2017-08-01', '2017-12-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 5, 'TERMINO', '2017-02-18', '2017-ADMIN- MARKETING PROM Y VENTAS- SAB 9H 15/7', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4919242', '4919240', '', '2017-03-01', '2017-03-31', 'TARDE', '', '', 0, 1, 'TERMINO', '2017-03-14', 'EVALUACIÓN DE LOS APRENDIZAJES 2017', '2017-03-15');
INSERT INTO "public"."carrerascursosalta" VALUES ('5232902', '5169165', '', '2018-09-01', '2018-12-01', 'MAÑANA', '09:00-12:00/09:00-12:00', 'MARTES-MIERCOLES', 0, 0, 'ESPERA', '2018-05-14', '2018-ADMIN-ASIST ADM PYME 4 M- MAR Y MIE 22/8 9 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5223798', '5172976', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2018-04-18', '2018-UTN- AUTOMATIZACION INDUSTRIAL- MYJ 18 HS 7/8', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166886', '5166882', '', '2018-04-01', '2018-08-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2018-01-08', '2018-IACT - INST ELEC INDUSTRIAL-2-SAB 03/03 10 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166877', '5166871', '', '2018-04-01', '2018-07-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 4, 'TERMINO', '2018-01-08', '2018-IACT-INST DOM  Y COMERCIALES-3-VIE 2/3 15 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5213448', '5172351', '', '2018-09-01', '2018-12-01', 'TARDE', '15:00-18:00/15:00-18:00', 'MARTES-VIERNES', 0, 4, 'TERMINO', '2018-03-27', '2018-BIBLIO PACHECO -REP PC Y NOT- MYV 15 H 7/8', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5491550', '5356551', '', '2019-11-01', '2020-02-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 3, 'EJECUCION', '2019-08-23', '2019-IACT-INST DOM Y COMERCIALES-17-VIE 20/9 15 HS', '2020-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5580336', '5580334', '', '2020-02-01', '2020-11-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 10, 'TERMINO', '2019-11-01', '2020-SALUD-AUXILIAR DE FARMACIA SABADO 15/2 9 HS', '2020-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895358', '4895329', '', '2017-04-01', '2017-08-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - INGLES NIVEL 1 - L Y M 19.30 HS 13/3 ', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4979862', '4895676', '', '2017-11-01', '2018-03-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2017-05-11', '2017-BIBLIO PACHECO - REP PC Y NOT-SUSPENDIDO 3/10', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5052406', '4895371', '', '2017-09-01', '2017-12-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 4, 'TERMINO', '2017-07-07', '2017-UTN -ALEMAN NIVEL 6 SABADOS 09 HS 12/08', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4947786', '4895901', '', '2017-09-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2017-04-24', '2017-ADMIN- LIQ DE SUELDOS- VIE 25/8 19 HS', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5251450', '5035141', '', '2018-06-01', '2018-10-30', 'NOCHE', '', '', 0, 0, 'ESPERA', '2018-06-01', 'CURSO INTRODUCTORIO TSA-SEPTIMBRE 2018', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4942519', '4895814', '', '2017-06-01', '2017-11-01', 'NOCHE', '18:00-22:00', 'MARTES', 0, 6, 'TERMINO', '2017-04-10', '2017-SOLDADURA - INTEGRAL - MAR 18 H 09/05', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4942524', '4911709', '', '2017-07-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2017-04-10', '2017-SOLDADURA - TIG ACERO INOX - A CONFI', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4940256', '4895400', '', '2017-06-01', '2017-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-04-03', '2017-IACT - INST. DOMI Y COMERCIALES-VI 12/5 19 H', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4940254', '4895400', '', '2017-06-01', '2017-11-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-04-03', '2017-IACT - INST. DOMI Y COMERCIALES-VI 12/5 15 H', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5073957', '4925730', '', '2017-11-01', '2017-11-09', 'NOCHE', '18:00-22:00', 'MARTES', 0, 1, 'TERMINO', '2017-07-25', '2017-CIE- LEAN MANUNFACTURING - MARTES 3/10 18 HS', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5083965', '5054139', '', '2017-07-15', '2017-07-25', 'NOCHE', '', '', 0, 4, 'TERMINO', '2017-08-15', 'CURSADA MODULAR CREACION Y ADM. PYMES BRIDI 2017', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167154', '5167149', '', '2018-07-01', '2018-09-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2018-01-10', '2018-PROFAU- ADMI TALLERES- 8/6 SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5224678', '5224676', '', '2018-07-01', '2018-08-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-04-20', '2018-UTN - PLC NIVEL 1-SABADO 9 HS 9/6', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4942517', '4895790', '', '2017-07-01', '2017-09-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2017-04-10', '2017-UTN - PLC NIVEL 1 - SAB 9H 24/06', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169139', '5169017', '', '2018-06-01', '2018-09-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 4, 'TERMINO', '2018-01-25', '2018-IDIOMAS -PORTUGUES NIVEL 1 MAR 8/5 18 HS', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5224028', '5166882', '', '2018-08-01', '2019-01-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-04-19', '2018-IACT-INST ELEC INDUSTRIAL 6-SAB 7/7 10 HS', '2019-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5051738', '4895381', '', '2017-10-01', '2018-02-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 5, 'TERMINO', '2017-07-06', '2017-IACT - REFRIGERACION Y AA 14-MIER 6/9 15 HS', '2018-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5092555', '4895381', '', '2017-12-01', '2018-03-01', 'NOCHE', '19:00-21:00', 'JUEVES', 0, 4, 'TERMINO', '2017-09-11', '2017-IACT -REFRIGERACION Y AA 18-JUEV 09/11 19 H', '2018-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5491552', '5356551', '', '2019-11-01', '2020-02-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'EJECUCION', '2019-08-23', '2019-IACT-INST DOM Y COMERCIALES-18-VIE 20/9 19 HS', '2020-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167165', '5166951', '', '2018-04-01', '2018-06-01', 'MAÑANA', '10:00-13:00', 'VIERNES', 0, 3, 'TERMINO', '2018-01-10', '2018-PROFAU- MECANICA BASICA- VIER 10 HS 9/3', '2018-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169228', '5169226', '', '2018-06-01', '2018-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2018-01-25', '2018-ADMIN - ORG. DE EVENTOS-LU Y MIER 21/5 19 HS', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5857363', '5582120', '', '2020-11-01', '2020-12-31', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-10-28', '2020-PROFAU-INTER DE PLANOS ELECTR VIE 20/11 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5232887', '5232879', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 3, 'EJECUCION', '2018-05-14', '2018-IDIOMAS- FIRST CERT 2º CUATR MIER 18 HS 15/8', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5224019', '5166856', '', '2018-07-01', '2018-10-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 4, 'TERMINO', '2018-04-19', '2018-IACT-REFRIGERACION Y AA-9-MIER 6/6 15 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5213450', '5167648', '', '2018-06-01', '2018-07-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2018-03-27', '2018-INFORMATICA-EXCEL AVANZADO- JUEVES 7/6 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5796141', '4920017', '', '2020-10-01', '2020-12-27', 'MAÑANA', '', '', 0, 0, 'TERMINO', '2020-08-27', 'CURSO INTRODUCTORIO TUP OCTUBRE 2020 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5580338', '5580334', '', '2020-02-29', '2020-12-01', 'TARDE', '14:00-18:00', 'SABADO', 0, 9, 'TERMINO', '2019-11-01', '2020-SALUD-AUXILIAR DE FARMACIA SABADO 29/2 14 HS', '2020-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5052402', '4895371', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 4, 'TERMINO', '2017-07-07', '2017-UTN -ALEMAN NIVEL 2 MARTES 18 HS 08/08', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4947838', '4895949', '', '2017-09-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2017-04-24', '2017-ADMIN- MARKETING PROM Y VENTAS-SUSPENDID 22/8', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5224021', '5166856', '', '2018-08-01', '2018-11-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'TERMINO', '2018-04-19', '2018-IACT --REFRIGERACION Y AA-10-JUE 12/7 19 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4947788', '4895901', '', '2017-10-01', '2017-12-16', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2017-04-24', '2017-ADMIN- LIQ DE SUELDOS- SAB 09 09/09', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5232916', '5232870', '', '2018-09-01', '2018-11-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2018-05-14', '2018-IDIOMAS-INGLES-NIVE 3-2º CUA MA JU 14/8 19:30', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5251946', '5168995', '', '2018-09-01', '2018-11-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2018-06-04', '2018-IDIOMAS-ALEMAN 8- SABADO 11/8 9 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4996121', '4895400', '', '2017-08-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-05-22', '2017-IACT - INST. DOMI Y COMERCIALES-VI 7/7 19 H', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5796352', '5582118', '', '2020-10-01', '2020-12-31', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'EJECUCION', '2020-08-31', '2020-PROFAU-ELECTRIC DEL AUTOMOVIL-LUNES 7/9 19 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5104907', '4895440', '', '2017-11-01', '2018-04-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2017-09-28', '2017-IACT -INST ELEC INDUSTRIAL SAB 28/10 10 HS', '2018-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5254045', '5169017', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2018-06-07', '2018-IDIOMAS -PORTUGUES NIVEL 1 JUE 23/8 SUSPENDID', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5169144', '5168995', '', '2018-04-01', '2018-07-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 4, 'TERMINO', '2018-01-25', '2018-IDIOMAS-ALEMAN 1- MARTES 13/3 18 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5213452', '5167665', '', '2018-09-01', '2018-10-01', 'TARDE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2018-03-27', '2018-INFORMATICA- ROBOTICA BASICA-LUNES 6/8 19 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167184', '5167180', '', '2018-05-01', '2018-07-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'TERMINO', '2018-01-10', '2018-PROFAU- CONO ELEC AUTOMOVIL-MIER 11/4 19 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5580851', '5580843', '', '2019-12-01', '2019-12-31', 'NOCHE', '19:00-22:00/19:00-22:00', 'MIERCOLES-JUEVES', 0, 0, 'ESPERA', '2019-11-04', '2019-PROFAU-SEM INTR INYEC DIESEL CRDI 18/12 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5491554', '5356557', '', '2019-11-01', '2020-02-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 2, 'EJECUCION', '2019-08-23', '2019-IACT - INST ELEC INDUSTRIAL-9-SAB 28/9 10 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169167', '5169165', '', '2018-05-01', '2018-08-28', 'MAÑANA', '09:00-12:00/09:00-12:00', 'MARTES-MIERCOLES', 0, 4, 'TERMINO', '2018-01-25', '2018-ADMIN-ASIST ADM PYME 4 M- MAR Y MIE 25/4 9 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5224626', '5172370', '', '2018-09-01', '2018-10-01', 'MAÑANA', '08:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-04-20', '2018-BIBLIO PACHECO - INTRO A REDES 4/8  8 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5857402', '5857400', '', '2020-12-01', '2021-01-31', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'EJECUCION', '2020-10-28', '2020-PROFAU-ELEC GRAL DE AUT ONLINE LU 16/11 19H ', '2021-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4955066', '4895806', '', '2017-10-01', '2018-03-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2017-04-28', '2017-SOLDADURA - HERRERÍA BASICA - SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4953454', '4895522', '', '2017-07-01', '2017-09-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 3, 'TERMINO', '2017-04-25', '2017- INFORMATICA AUTOCAD BASICO - JUE 1/6 15 A 18', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4955064', '4895806', '', '2017-09-01', '2018-02-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2017-04-28', '2017-SOLDADURA - HERRERÍA BASICA - SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4953460', '4895465', '', '2017-07-01', '2017-08-01', 'TARDE', '16:00-19:00', 'LUNES', 0, 2, 'TERMINO', '2017-04-25', '2017-INFOMATICA - EXCEL BASICO - MARTES 6/6 16 HS', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4947132', '4895465', '', '2017-06-01', '2017-07-01', 'TARDE', '16:00-19:00', 'JUEVES', 0, 0, 'TERMINO', '2017-04-20', '2017-INFOMATICA - EXCEL AVANZADO- JUE 8/6 16 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4955070', '4895704', '', '2017-08-01', '2017-11-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2017-04-29', '2017-BIBLIO PACHECO - INST CAM VIGIL -MIE 12/7 19H', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895373', '4895371', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - ALEMAN NIVEL 1 MARTES 18 HS 14/3', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4953474', '4895381', '', '2017-08-01', '2017-12-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 5, 'TERMINO', '2017-04-25', '2017-IACT - REFRIGERACION Y AA 11-JUE 6/7 15 HS', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5052631', '4895371', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 0, 'ESPERA', '2017-07-10', '2017-UTN -ALEMAN NIVEL 1 SUSPENDIDO 08/08', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895366', '4895364', '', '2017-04-01', '2017-08-01', 'NOCHE', '18:30-21:30', 'MIERCOLES', 0, 5, 'TERMINO', '2017-02-17', '2017-UTN - PORTUGUES NIVEL 1 MIER 18.30 15/03', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895362', '4895360', '', '2017-04-01', '2017-12-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 9, 'TERMINO', '2017-02-17', '2017-UTN - FIRST CERTIFICATE- L Y M 19.30 HS 13/3', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4947840', '4895955', '', '2017-09-01', '2018-01-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2017-04-24', '2017-ADMIN- SEC ADM INFORMATICO- SUSPENDIDO 22/08', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4953476', '4895381', '', '2017-08-01', '2017-11-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'TERMINO', '2017-04-25', '2017-IACT - REFRIGERACION Y AA 12-JUE 6/7 19 HS', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4953468', '4895400', '', '2017-07-01', '2017-12-09', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-04-25', '2017-IACT - INST. DOMI Y COMERCIALES-VI 9/6 19 H', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167650', '5167648', '', '2018-03-01', '2018-04-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 2, 'TERMINO', '2018-01-17', '2018-INFORMATICA- EXCE BASICO- LUNES 5/3 15 HS', '2018-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5224617', '5172366', '', '2018-09-01', '2018-10-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 2, 'TERMINO', '2018-04-20', '2018-BIBLIO PACHECO-INST CAM VIGIL -MIE 1/8 19H', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4954255', '4895861', '', '2017-07-01', '2017-10-01', 'MAÑANA', '19:00-21:00', 'LUNES', 0, 4, 'TERMINO', '2017-04-27', '2017-PROFAU- MECANICA BASICA- LUN 19 H 12/6', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4954251', '4895861', '', '2017-07-01', '2017-10-01', 'MAÑANA', '10:00-13:00', 'LUNES', 0, 0, 'TERMINO', '2017-04-27', '2017-PROFAU- MECANICA BASICA- LUN 10 H 12/6', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4953456', '4895522', '', '2017-08-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2017-04-25', '2017- INFORMATICA AUTOCAD BASICO -LUN 26/6 19 A 22', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4953466', '4895400', '', '2017-07-01', '2017-12-09', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-04-25', '2017-IACT - INST. DOMI Y COMERCIALES-VI 9/6 15 H', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4953472', '4895381', '', '2017-07-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2017-04-25', '2017-IACT - REFRIGERACION Y AA 10-MIER 7/6 19 HS', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4955062', '4895806', '', '2017-10-01', '2018-03-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2017-04-28', '2017-SOLDADURA - HERRERÍA BASICA- SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4947802', '4895909', '', '2017-09-01', '2018-01-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-JUEVES', 0, 5, 'TERMINO', '2017-04-24', '2017-ADMIN-ASIS ADM PYME 4M- LYJ 19H 28/08', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4996368', '4895973', '', '2017-10-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2017-05-23', '2017-ADMIN- MONOTRIBUTO IIBB PROV BSAS-MA 19H 19/9', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5085039', '5035565', '', '2017-10-01', '2018-07-01', 'TARDE', '14:00-18:00', 'SABADO', 0, 10, 'TERMINO', '2017-08-18', '2017-SALUD- AUXILIAR DE FARM-SAB 14 HS 28/10 NUEVO', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5224032', '5166882', '', '2018-09-01', '2019-02-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-04-19', '2018-IACT -INST ELEC INDUSTRIAL 7-SAB 4/8 10 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5121220', '4895400', '', '2017-12-01', '2018-04-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2017-10-11', '2017-IACT- INST. DOMI Y COMERCIALES-VI 24/11 15 H', '2018-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169162', '5169155', '', '2018-05-01', '2018-08-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2018-01-25', '2018-ADMIN- LIQ DE SUELDOS-MIER 11/4  19 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5224024', '5166871', '', '2018-08-01', '2018-12-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-04-19', '2018-IACT-INST DOM Y COMERCIALES-11-VIE 6/7 15 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5232911', '5232870', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 3, 'TERMINO', '2018-05-14', '2018-IDIOMAS-INGLES-NIVEL 2A -2º CUAT JUEV 16/8 18', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5491908', '5354027', '', '2019-10-01', '2019-11-01', 'MAÑANA', '10:00-13:00', 'LUNES', 0, 0, 'ESPERA', '2019-08-26', '2019-PROFAU-MEC AVANZ 1-LUNES 16/9 10 HS CANCELADO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4947829', '4895919', '', '2017-09-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 5, 'TERMINO', '2017-04-24', '2017-ADMIN-ANALISTA CONTABLE-MIE 19H 30/8', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4947804', '4895915', '', '2017-08-01', '2018-01-01', 'NOCHE', '18:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-04-24', '2017-ADMIN-ASIST ADM PYME 6M-VIER 18H 7/7', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4947799', '4895909', '', '2017-09-01', '2018-01-01', 'MAÑANA', '09:00-12:00/09:00-12:00', 'MARTES-MIERCOLES', 0, 0, 'CADUCO', '2017-04-24', '2017-ADMIN-ASIS ADM PYME 4M- MYM SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5251950', '5168995', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 3, 'TERMINO', '2018-06-04', '2018-IDIOMAS-ALEMAN 2- MARTES 7/8 18 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5213474', '5213472', '', '2018-02-01', '2018-12-31', 'NOCHE', '', '', 0, 14, 'EJECUCION', '2018-03-27', 'MATRICULA DOCENCIA UNIVERSITARIA NO DOCENTE 2018', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5491935', '5416297', '', '2019-11-01', '2019-11-30', 'NOCHE', '17:00-22:00', 'JUEVES', 0, 0, 'TERMINO', '2019-08-26', '2019-ADMIN-SEMIN MONOTR E IIBB 14 Y 21 NOVIE 17 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5582445', '5356557', '', '2020-01-01', '2020-05-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 3, 'EJECUCION', '2019-11-07', '2019-IACT -INST ELEC INDUSTRIAL-11-SAB 30/11 10 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5582870', '5582868', '', '2020-02-01', '2020-05-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 4, 'EJECUCION', '2019-11-08', '2020-IACT-REFRIGERACION Y AA-1-LUNES 6/1 15 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5033281', '4895861', '', '2017-09-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2017-06-22', '2017-PROFAU-MECANICA BASICA - MIE 19 H 9/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5036236', '4895822', '', '2017-10-01', '2017-11-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2017-06-30', '2017-SOLDADURA -  TIG NIVEL 1 - SAB 9 HS 09/09', '2017-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4911458', '4895465', '', '2017-04-01', '2017-05-01', 'TARDE', '16:00-19:00', 'MARTES', 0, 2, 'TERMINO', '2017-02-21', '2017-INFOMATICA - EXCEL BASICO - MARTES 4/4 16 HS', '2017-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5035990', '4895329', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2017-06-29', '2017-UTN -  INGLES NIVEL 2 - L Y M 18 HS 7/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5035982', '4895329', '', '2017-09-01', '2017-12-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'MIERCOLES-VIERNES', 0, 4, 'TERMINO', '2017-06-29', '2017-UTN - INGLES NIVEL 1 -  MIE Y VI 19.30 HS 9/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895792', '4895790', '', '2017-04-01', '2017-05-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2017-02-18', '2017-UTN - PLC NIVEL 1 - SAB 9H 11/3 ', '2017-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5021825', '4895400', '', '2017-09-01', '2018-02-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-06-14', '2017-IACT - INST. DOMI Y COMERCIALES-VI 4/8 15 H', '2018-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5035992', '4895329', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MIERCOLES-VIERNES', 0, 4, 'TERMINO', '2017-06-29', '2017-UTN -  INGLES NIVEL 3 - MI Y VIER 18 HS 9/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5035986', '4895329', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2017-06-29', '2017-UTN - INGLES NIVEL 6 - L Y M 18 HS 7/8 ', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4911711', '4911709', '', '2017-04-01', '2017-06-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2017-02-21', '2017-SOLDADURA - TIG  ACERO INOX - LUNES 19 H 20/3', '2017-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5021834', '4895440', '', '2017-08-01', '2018-01-01', 'MAÑANA', '', '', 0, 6, 'TERMINO', '2017-06-14', '2017-IACT - NST ELEC INDUSTRIAL SAB 8/7 10 HS', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5033341', '4895814', '', '2017-08-01', '2018-02-01', 'NOCHE', '18:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2017-06-22', '2017-SOLDADURA- INTEGRAL- SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5035978', '4895814', '', '2017-09-01', '2018-04-01', 'NOCHE', '18:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2017-06-29', '2017-SOLDADURA - INTEGRAL - SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5035976', '4895814', '', '2017-09-01', '2018-04-01', 'NOCHE', '18:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2017-06-29', '2017-SOLDADURA -INTEGRAL- SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5035988', '4895329', '', '2017-09-01', '2017-12-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2017-06-29', '2017-UTN -  INGLES NIVEL 2 - L Y M 19.30 HS 7/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167652', '5167648', '', '2018-04-01', '2018-05-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2018-01-17', '2018-INFORMATICA-EXCEL AVANZADO- JUEVES 12/4 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5032805', '4895885', '', '2017-10-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'TERMINO', '2017-06-21', '2017-PROFAU- CONO ELEC AUTOMOVIL-JUE 19H 07/09', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5022356', '4895381', '', '2017-09-01', '2018-01-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 5, 'TERMINO', '2017-06-15', '2017-IACT - REFRIGERACION Y AA 13-MAR 8/8 19 HS', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895389', '4895381', '', '2017-04-01', '2017-08-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 5, 'TERMINO', '2017-02-17', '2017-IACT - REFRIGERACION Y AA 3 -MIER 08/03 15 H', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5035571', '5035569', '', '2017-09-01', '2018-04-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 8, 'TERMINO', '2017-06-27', '2017-SALUD - SEC MEDICO - MART 18.30 HS 26/9 NUEVO', '2018-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895391', '4895381', '', '2017-04-01', '2017-08-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 5, 'TERMINO', '2017-02-17', '2017-IACT - REFRIGERACION Y AA 4 -MIER 08/03 19 H', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169243', '5169239', '', '2018-06-01', '2018-09-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 4, 'TERMINO', '2018-01-25', '2018-ADMIN- MARK PROM Y VENTAS-SABADO 12/5 9 HS', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5194588', '5194586', '', '2018-03-01', '2018-12-31', 'NOCHE', '', '', 0, 9, 'TERMINO', '2018-03-12', 'ALEMAN-SAU-NIVEL 1-2018', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5194590', '5194586', '', '2018-03-01', '2018-12-31', 'NOCHE', '', '', 0, 9, 'TERMINO', '2018-03-12', 'ALEMAN-SAU-NIVEL 2-2018', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5191720', '4895060', '', '2018-03-01', '2018-12-31', 'NOCHE', '', '', 0, 12, 'TERMINO', '2018-03-05', 'ESPECIALIZACION Y MTRIA. ESTRUCTURAL 2018', '2019-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5121222', '4895400', '', '2017-12-01', '2018-04-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2017-10-11', '2017-IACT -INST. DOMI Y COMERCIALES-VI 24/11 19 H', '2018-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5035567', '5035565', '', '2017-09-01', '2018-06-30', 'TARDE', '14:00-18:00', 'SABADO', 0, 11, 'TERMINO', '2017-06-27', '2017-SALUD - AUXILIAR DE FARM-SAB 14 HS 12/8 NUEVO', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5021832', '4895400', '', '2017-09-01', '2018-02-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-06-14', '2017-IACT -INST. DOMI Y COMERCIALES-VI 4/8 19 H', '2018-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5190814', '5167648', '', '2018-04-01', '2018-04-30', 'TARDE', '15:00-18:00', 'MARTES', 0, 1, 'TERMINO', '2018-03-02', '2018-INFORMATICA-EXCE BASICO- MARTES 3/4 15 HS', '2018-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5033262', '4895965', '', '2017-11-01', '2017-12-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2017-06-22', '2017-ADMIN -CONCILIACION BANCARIA-SUSPENDIDO19/10', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895867', '4895861', '', '2017-04-01', '2017-06-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2017-02-18', '2017-PROFAU- MECANICA BASICA- LUN 19 H 6/3', '2017-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895869', '4895861', '', '2017-04-01', '2017-06-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'TERMINO', '2017-02-18', '2017-PROFAU- MECANICA BASICA - MIER 19H 8/3', '2017-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5035144', '5035141', '', '2017-03-01', '2017-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2017-06-26', 'CURSO INTRODUCTORIO TSA-SEPTIMBRE 2017', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5032810', '4895861', '', '2017-09-01', '2017-12-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 4, 'TERMINO', '2017-06-21', '2017-PROFAU- MECANICA BASICA - LUN 15 H 28/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5232922', '5232870', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2018-05-14', '2018-IDIOMAS-INGLES-NIVE 4-2º CUA MA Y JU 14/8 18 ', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5191725', '5191723', '', '2018-03-01', '2018-12-31', 'NOCHE', '', '', 0, 12, 'TERMINO', '2018-03-05', 'ESPEC Y MTRIA. ESTRUCTURAL EXTRANJEROS', '2019-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5224026', '5166871', '', '2018-08-01', '2018-12-01', 'NOCHE', '18:00-21:00', 'VIERNES', 0, 5, 'TERMINO', '2018-04-19', '2018-IACT-INST DOM Y COMERCIALES-12-VIE 6/7 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5796359', '5771343', '', '2020-11-01', '2020-12-31', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'ESPERA', '2020-08-31', '2020-PROFAU-DISEÑO MEC 1 CON SOLIDWOR-MI 8/10 15 H', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5035994', '4895360', '', '2017-09-01', '2018-03-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2017-06-29', '2017-UTN - FIRST CERTIFICATE-LUN Y MI 19.30 HS 7/8', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5251952', '5168995', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 3, 'TERMINO', '2018-06-04', '2018-IDIOMAS-ALEMAN 5- MIER 22/8 18 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5582881', '5582879', '', '2020-02-01', '2020-07-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'EJECUCION', '2019-11-08', '2020-IACT-INST ELECT IND-1-SABADO 11/1 10 HS', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5197190', '4920453', '', '2018-03-01', NULL, 'NOCHE', '', '', 0, 32, 'EJECUCION', '2018-03-16', 'TEC. SUP. PROGRAMACIÓN MARZO 2018 - REINCORPORADOS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5224503', '5167654', '', '2018-07-01', '2018-08-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'TERMINO', '2018-04-20', '2018-INFORMATICA-AUTOCAD BASICO-MARTES 5/6 19 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895502', '4895492', '', '2017-06-01', '2017-07-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'TERMINO', '2017-02-17', '2017 - INFORMATICA - ROBOTICA BASICA - MAR 2/5 19H', '2017-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5054144', '4895364', '', '2017-09-01', '2017-12-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 0, 'ESPERA', '2017-07-12', '2017-UTN -PORTUGUES NIVEL 1 SUSPENDIDO 29/8', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895863', '4895861', '', '2017-04-01', '2017-07-01', 'MAÑANA', '10:00-13:00', 'LUNES', 0, 4, 'TERMINO', '2017-02-18', '2017-PROFAU- MECANICA BASICA- LUN 10 H 6/3', '2017-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895395', '4895381', '', '2017-04-01', '2017-08-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 5, 'TERMINO', '2017-02-17', '2017-IACT - REFRIGERACION Y AA 6 -JUEV 23/03 19 H', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895428', '4895400', '', '2017-03-01', '2017-08-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-02-17', '2017-IACT - INST. DOMI Y COMERCIALES -VI 3/2 19 HS', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895404', '4895400', '', '2017-02-01', '2017-07-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-02-17', '2017-IACT - INST. DOMI Y COMERCIALES - VI 6/1 19 H', '2017-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895393', '4895381', '', '2017-04-01', '2017-08-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 5, 'TERMINO', '2017-02-17', '2017-IACT - REFRIGERACION Y AA 5 -JUEV 23/03 15 H', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895626', '4895620', '', '2017-03-01', '2017-10-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 8, 'TERMINO', '2017-02-17', '2017-SALUD - SEC MEDICO - MARTES 18.30 HS 14/03', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172353', '5172351', '', '2018-05-01', '2018-09-01', 'MAÑANA', '09:00-12:00/09:00-12:00', 'LUNES-JUEVES', 0, 0, 'ESPERA', '2018-02-09', '2018-BIBLIO PACHECO-REP PC Y NOT-LYJ 9 H 5/4-SUSPE', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895446', '4895440', '', '2017-04-01', '2017-10-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 7, 'TERMINO', '2017-02-17', '2017-IACT - INST ELEC INDUSTRIAL SAB 11/03 10 HS', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895786', '4895784', '', '2017-04-01', '2017-07-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-VIERNES', 0, 4, 'TERMINO', '2017-02-18', '2017-UTN- AUTOMATIZACION INDUSTRIAL- MYV 18H 14/3', '2017-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895442', '4895440', '', '2017-02-01', '2017-08-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 7, 'TERMINO', '2017-02-17', '2017-IACT - INST ELEC INDUSTRIAL SAB 14/01 10 HS', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167660', '5167658', '', '2018-05-01', '2018-06-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-01-17', '2018-INFORMATICA- AUTOCAD AVANZADO-SABADO 7/4 9 HS', '2018-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895432', '4895400', '', '2017-04-01', '2017-09-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-02-17', '2017-IACT - INST. DOMI Y COMERCIALES - VI 3/3 15 H', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895430', '4895400', '', '2017-04-01', '2017-09-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2017-02-17', '2017-IACT - INST. DOMI Y COMERCIALES - VI 3/3 19 H', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895692', '4895676', '', '2017-04-01', '2017-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-JUEVES', 0, 6, 'TERMINO', '2017-02-17', '2017-BIBLIO PACHECO - REP PC Y NOT- LYJ 19 H 13/3', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895426', '4895400', '', '2017-03-01', '2017-08-01', 'NOCHE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2017-02-17', '2017-IACT - INST. DOMI Y COMERCIALES - VI 3/2 15 H', '2017-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895543', '4895541', '', '2017-04-01', '2017-10-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 7, 'EJECUCION', '2017-02-17', '2017-INFORMATICA - DISEÑO WEB - VIER 18/03 19 HS', '2017-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5134100', '5134097', '', '2017-11-01', '2017-12-01', 'MAÑANA', '09:00-18:00', 'SABADO', 0, 0, 'TERMINO', '2017-10-12', '2017-PROFAU- SEMI DIAG M INYECCION NAFTA-SAB 11/11', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895444', '4895440', '', '2017-03-01', '2017-09-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 7, 'TERMINO', '2017-02-17', '2017-IACT - INST ELEC INDUSTRIAL SAB 11/02 10 HS', '2017-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172360', '5172351', '', '2018-05-01', '2018-09-01', 'TARDE', '15:00-18:00/15:00-18:00', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2018-02-09', '2018-BIBLIO PACHECO-REP PC Y NOT-MYV15 H 3/4-SUSPE', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5172358', '5172351', '', '2018-05-01', '2018-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-JUEVES', 0, 0, 'ESPERA', '2018-02-09', '2018-BIBLIO PACHECO-REP PC Y NOT- 19 H 05/4SUSPEN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5167667', '5167665', '', '2018-05-01', '2018-05-29', 'NOCHE', '19:00-22:00', 'MARTES', 0, 1, 'TERMINO', '2018-01-17', '2018-INFORMATICA - ROBOTICA BASICA-MARTES 3/4 19 H', '2018-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5143132', '5134097', '', '2017-12-01', '2018-01-01', 'MAÑANA', '09:00-18:00', 'SABADO', 0, 0, 'TERMINO', '2017-11-15', '2017-PROFAU- SEMI DIAG M INYECCION NAFTA-SAB 09/12', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('4895602', '4895586', '', '2017-03-01', '2018-01-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 11, 'TERMINO', '2017-02-17', '2017-SALUD - AUXILIAR DE FARMACIA - SAB 9 HS 18/3', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5174169', '5174162', '', '2018-07-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2018-02-21', '2018-INFORMATICA - DISEÑO WEB - VIER 1/6 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5173869', '5169211', '', '2018-07-01', '2018-12-01', 'NOCHE', '18:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2018-02-20', '2018-ADMIN- ASIST RRHH 6M-VIERNES 22/6 18 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5134419', '5107936', '', '2017-10-13', '2017-12-06', 'NOCHE', '', '', 0, 3, 'EJECUCION', '2017-10-13', 'MODULO PYME', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5142729', '4920017', '', '2018-02-01', '2018-02-28', 'MAÑANA', '', '', 0, 1, 'TERMINO', '2017-11-14', 'CURSO INTRODUCTORIO TSP FEBRERO 2018 - PACHECO', '2018-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5085340', '4920017', '', '2017-10-01', '2017-12-31', 'MAÑANA', '', '', 0, 3, 'TERMINO', '2017-08-22', 'CURSO INTRODUCTORIO TSP OCTUBRE 2017 - PACHECO', '2017-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4920071', '4920058', '', '2017-03-01', NULL, 'NOCHE', '', '', 0, 42, 'EJECUCION', '2017-03-16', 'TEC. SUP. PROGRAMACIÓN MARZO 2017 - JCP-EXPORTADOS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5141385', '5141383', '', '2017-10-25', '2017-12-06', 'NOCHE', '', '', 0, 30, 'EJECUCION', '2017-11-08', 'MÓDULO PYME 2º CUAT', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5142575', '5054139', '', '2017-11-01', '2017-11-30', 'NOCHE', '', '', 0, 20, 'EJECUCION', '2017-11-13', 'MODULAR FORMULACION Y EVAL PROYECTOS BRIDI 2017', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5491916', '5354040', '', '2019-10-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'TERMINO', '2019-08-26', '2019-PROFAU-MOTORES 1-VIER 13/9 19 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5255487', '5220516', '', '2018-06-01', '2018-06-30', 'NOCHE', '', '', 0, 26, 'EJECUCION', '2018-06-11', 'SEMINARIO INTEGRADOR', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5485891', '4920001', '', '2019-08-01', '2019-12-31', 'NOCHE', '', '', 0, 17, 'EJECUCION', '2019-08-09', 'TECNICO SUPERIOR EN SIST INFORMATICOS- AGOSTO 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895596', '4895586', '', '2017-02-01', '2018-01-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 12, 'TERMINO', '2017-02-17', '2017-SALUD - AUXILIAR DE FARMACIA - SAB 9 HS 25/2', '2018-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5790394', '4895080', '', '2020-04-01', '2020-05-01', 'TARDE', '', '', 0, 7, 'EJECUCION', '2020-08-03', '2020- DISEÑO DE PROGRAMAS EXPERIM. DE ING. ESTRUCT', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895082', '4895080', '', '2019-04-01', '2019-05-31', 'NOCHE', '', '', 0, 21, 'EJECUCION', '2017-02-10', 'ESTRUCTURAS METALICAS ESPECIALES 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5793715', '4912612', '', '2020-08-01', '2020-08-30', 'NOCHE', '', '', 0, 7, 'EJECUCION', '2020-08-13', 'LEM-DERECHO EXAMEN', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5168975', '5168962', '', '2018-05-01', '2018-08-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2018-01-24', '2018-IDIOMAS-INGLES NIVEL 5-LU Y MIE 4/4 19:30 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5167663', '5167654', '', '2018-04-01', '2018-05-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 2, 'TERMINO', '2018-01-17', '2018-INFORMATICA-AUTOCAD BASICO-JUEVES 8/3 19 HS', '2018-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5166858', '5166856', '', '2018-03-01', '2018-07-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 5, 'TERMINO', '2018-01-08', '2018-IACT - REFRIGERACION Y AA-1-MIER 07/02 19 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169013', '5168995', '', '2018-04-01', '2018-07-01', 'NOCHE', '09:00-12:00', 'SABADO', 0, 4, 'TERMINO', '2018-01-24', '2018-IDIOMAS-ALEMAN 7- SABADO 10/3  9 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169206', '5169204', '', '2018-05-01', '2018-10-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-01-25', '2018-ADMIN- SEC ADM INFORM 6 M-SABADO 14/4  9 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5232940', '5232870', '', '2018-09-01', '2018-11-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 3, 'TERMINO', '2018-05-14', '2018-IDIOMAS-INGLES-NIVE 6-2º CUA LU MI 13/8 19:30', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169772', '5169770', '', '2018-05-01', '2018-07-01', 'NOCHE', '18:00-21:00', 'VIERNES', 0, 3, 'TERMINO', '2018-01-30', '2018-CIE- SEGURIDAD E HIEGINE-VIER 13/4 18 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5193343', '5166882', '', '2018-06-01', '2018-11-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-03-08', '2018-IACT -INST ELEC INDUSTRIAL 4-SAB 05/05 10 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5191718', '5191714', '', '2018-02-01', '2018-03-31', 'NOCHE', '', '', 0, 1, 'TERMINO', '2018-03-05', 'MATRICULA  MTRIA.ESTRUCTURAL EXTRANJERO 2018', '2018-03-07');
INSERT INTO "public"."carrerascursosalta" VALUES ('5158648', '4923906', '', '2017-11-29', NULL, 'NOCHE', '', '', 0, 34, 'EJECUCION', '2017-11-29', 'CURSADA MODULAR KOZLOWSKI DEBITO 2 DE 13 2017 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5183462', '5183460', '', '2018-07-01', '2018-08-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'LUNES-MIERCOLES', 0, 0, 'TERMINO', '2018-02-27', '2018-CIE- LEAN MANUNFACTURING-LUN Y MIE 1/8 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5190876', '4912612', '', '2018-03-01', '2018-03-31', 'MAÑANA', '', '', 0, 0, 'ESPERA', '2018-03-02', 'MATRICULA LEM 2018', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5190899', '5189075', '3095612', '2018-03-01', '2018-12-31', 'MAÑANA', '', '', 0, 0, 'ESPERA', '2018-03-02', 'MATRICULA LEM 2018', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5582873', '5582868', '', '2020-01-01', '2020-05-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 4, 'EJECUCION', '2019-11-08', '2020-IACT-REFRIGERACION Y AA-2-LUNES 6/1 19 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5194609', '5194599', '', '2018-02-01', '2018-03-31', 'NOCHE', '', '', 0, 1, 'TERMINO', '2018-03-12', 'ALEMAN-SAU-PRECOLOQUIO 2018', '2018-03-22');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895062', '4895060', '', '2017-03-01', '2017-12-31', 'NOCHE', '', '', 0, 22, 'TERMINO', '2017-02-10', 'ESPECIALIZACION EN ING. ESTRUCTURAL-2017', '2019-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5170668', '4895454', '', '2018-03-01', '2018-03-31', 'NOCHE', '', '', 0, 2, 'TERMINO', '2018-02-01', 'MATRICULA TSA 2018', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5170694', '5170692', '', '2018-02-01', '2018-11-30', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 10, 'TERMINO', '2018-02-01', '2018-SALUD - AUXILIAR DE FARMACIA-SABADO 17/2 9 HS', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895533', '4895524', '', '2017-03-01', '2017-12-31', 'NOCHE', '', '', 0, 45, 'EJECUCION', '2017-02-17', 'TECNICO SUPERIOR EN ADMINISTRACION 2017 PRIMER AÑO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('4895535', '4895524', '', '2017-03-01', '2017-12-31', 'NOCHE', '', '', 0, 45, 'EJECUCION', '2017-02-17', 'TECNICO SUPERIOR EN ADMINISTRACION 2017 SEGUNDO AÑ', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5038466', '4923906', '', '2017-06-01', '2017-08-31', 'NOCHE', '', '', 0, 38, 'EJECUCION', '2017-07-04', 'CURSADA MODULAR NEGOCIACIÓN 2017', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5141333', '4895440', '', '2017-12-01', '2018-05-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'EJECUCION', '2017-11-08', '2017-IACT -INST ELEC INDUSTRIAL SAB 25/11 10 HS', '2018-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5165577', '4919999', '', '2018-03-01', NULL, 'MAÑANA', '', '', 0, 32, 'EJECUCION', '2017-12-21', 'TEC. SUP. PROGRAMACIÓN MARZO 2018 - PACHECO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169716', '4895056', '', '2018-03-01', '2018-12-28', 'NOCHE', '', '', 0, 32, 'EJECUCION', '2018-01-30', 'MBA 2º AÑO 2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5170088', '4895524', '', '2018-01-31', '2018-12-31', 'NOCHE', '', '', 0, 35, 'EJECUCION', '2018-01-31', 'TECNICO SUPERIOR EN ADMINISTRACION 2018 PRIMER AÑO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5190781', '5166871', '', '2018-06-01', '2018-10-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-03-02', '2018-IACT-INST DOM Y COMERCIALES-7-VIE 4/5 15 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5190783', '5166871', '', '2018-06-01', '2018-10-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-03-02', '2018-IACT-INST DOM Y COMERCIALES-8-VIE 4/5 19 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5169173', '5169171', '', '2018-05-01', '2018-10-01', 'NOCHE', '18:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2018-01-25', '2018-ADMIN-ASIST ADM PYME 6M-VIER 13/4  18 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5811714', '5811711', '', '2020-11-01', '2020-12-31', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 2, 'EJECUCION', '2020-09-01', '2020-PROFAU-DISEÑO MEC 2 CON SOLIDWOR-MI 7/10 19 H', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5194842', '5166856', '', '2018-06-01', '2018-09-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2018-03-12', '2018-IACT - REFRIGERACION Y AA-8-MIER 30/05 19 HS', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5491924', '5354038', '', '2019-10-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2019-08-26', '2019-PROFAU-INYECCION NAFTA FYC-MARTES 24/09 19 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5161406', '5161404', '', '2017-12-01', '2017-12-29', 'NOCHE', '', '', 0, 16, 'EJECUCION', '2017-12-06', '2018 MATRÍCULA BONIFICADA - ESP. ING. GERENCIAL', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5158489', '4923906', '', '2017-11-01', '2017-11-30', 'NOCHE', '', '', 0, 34, 'EJECUCION', '2017-11-28', 'CURSADA MODULAR KOZLOWSKI DEBITO 1 DE 13 2017-2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5194801', '5166951', '', '2018-05-01', '2018-07-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2018-03-12', '2018-PROFAU- MECANICA BASICA-SAB 9 HS 14/4', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5194799', '5166951', '', '2018-05-01', '2018-07-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 3, 'TERMINO', '2018-03-12', '2018-PROFAU- MECANICA BASICA-JUE 19 HS 12/4', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5182903', '5166856', '', '2018-05-01', '2018-08-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 4, 'TERMINO', '2018-02-26', '2018-IACT - REFRIGERACION Y AA-6-MARTE 10/04 15 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172978', '5172976', '', '2018-05-01', '2018-07-03', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2018-02-15', '2018-UTN- AUTOMATIZACION INDUSTRIAL- MYJ 18H 10/04', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5182905', '5166856', '', '2018-05-01', '2018-08-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2018-02-26', '2018-IACT - REFRIGERACION Y AA-7-MARTE 10/04 19 HS', '2018-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5174839', '5168962', '', '2018-05-01', '2018-07-26', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 3, 'TERMINO', '2018-02-23', '2018-IDIOMAS-INGLES NIVEL 1-JUEVES 12/04 18 HS', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172368', '5172366', '', '2018-05-01', '2018-07-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'TERMINO', '2018-02-09', '2018-BIBLIO PACHECO - INST CAM VIGIL -MIE 4/4 19H', '2018-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5234398', '5234384', '', '2018-09-01', '2018-10-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2018-05-17', '2018-UTN - PLC NIVEL 2-LUNES 6/8 19 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5174845', '5166871', '', '2018-05-01', '2018-09-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-02-23', '2018-IACT-INST DOM Y COMERCIALES-6-VIE 6/4 15 HS', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5174207', '5166871', '', '2018-05-01', '2018-09-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-02-21', '2018-IACT-INST DOM Y COMERCIALES-5-VIE 6/4 19 HS', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5173859', '5167648', '', '2018-04-01', '2018-05-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 2, 'TERMINO', '2018-02-20', '2018-INFORMATICA- EXCE BASICO- LUNES 9/4 15 HS', '2018-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5274675', '5167186', '', '2018-10-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2018-06-26', '2018-PROFAU-INYECCION NAFTA FYC-MARTES 11/9 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5183420', '5170692', '', '2018-01-01', '2018-12-31', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 10, 'TERMINO', '2018-02-27', '2018-SALUD - AUXILIAR DE FARMACIA-SABADO 7/4  9 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5175419', '5166882', '', '2018-05-01', '2018-10-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-02-23', '2018-IACT - INST ELEC INDUSTRIAL-3-SAB 07/04 10 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5811970', '5811968', '', '2020-10-01', '2020-11-30', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 0, 'ESPERA', '2020-09-02', '2020-CIE-INTR CALID ISO 9001-2015 MI 7/10 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5273959', '5273957', '', '2018-10-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 3, 'TERMINO', '2018-06-19', '2018-ADMIN- MARKETING DIGITAL- JUEVES 13/9 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5215903', '5215895', '', '2018-03-01', '2018-12-31', 'NOCHE', '', '', 0, 8, 'EJECUCION', '2018-04-03', 'MATRICULA LIC EN TECNOLOGIA EDUCATIVA 2018', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172347', '5166951', '', '2018-04-01', '2018-06-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'TERMINO', '2018-02-09', '2018-PROFAU- MECANICA BASICA- VIER 19 HS 9/3', '2018-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172372', '5172370', '', '2018-05-01', '2018-06-01', 'MAÑANA', '08:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-02-09', '2018-BIBLIO PACHECO - INTRO A REDES 07/4 8 HS', '2018-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172356', '5172351', '', '2018-05-01', '2018-09-01', 'TARDE', '15:00-18:00/15:00-18:00', 'LUNES-JUEVES', 0, 5, 'TERMINO', '2018-02-09', '2018-BIBLIO PACHECO - REP  PC Y NOT- LYJ 15 H 05/4', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5196942', '5196917', '', '2018-05-01', '2018-10-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-03-16', '2018-UTN- AUTOMATIZACION INDUSTRIAL-SAB 09H 21/04', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5256861', '5166951', '', '2018-09-01', '2018-11-01', 'MAÑANA', '10:00-13:00', 'LUNES', 0, 3, 'TERMINO', '2018-06-15', '2018-PROFAU- MECANICA BASICA-LUNES 10 HS 6/8', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172364', '5172351', '', '2018-05-01', '2018-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-VIERNES', 0, 5, 'TERMINO', '2018-02-09', '2018-BIBLIO PACHECO - REP  PC Y NOT- MYV 19 H 03/4', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5274669', '5274667', '', '2018-08-01', '2018-08-31', 'MAÑANA', '09:00-18:00', 'SABADO', 0, 0, 'TERMINO', '2018-06-26', '2018-PROFAU-SEMIN DIAG Y MANT DE CARBURA 25/8 9 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5582975', '5582900', '', '2020-03-01', '2020-07-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'EJECUCION', '2019-11-08', '2020-IACT- INST. DOM Y COMERC-1-VIERNES 24/1 19 HS', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5172796', '4895021', '', '2018-03-01', '2018-12-28', 'NOCHE', '', '', 0, 32, 'EJECUCION', '2018-02-14', 'MBA 1º AÑO 2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5189083', '4912612', '', '2018-03-01', '2018-12-31', 'MAÑANA', '', '', 0, 33, 'EJECUCION', '2018-02-28', 'LIC. EN ENSEÑANZA DE LA MATEMATICA.- 1º AÑO 2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5492112', '5354036', '', '2019-10-01', '2019-12-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 3, 'TERMINO', '2019-08-27', '2019-PROFAU-ELEC DEL AUTOMOVIL-LUNES 16/9 15 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5189095', '4912612', '', '2018-03-01', '2018-12-31', 'MAÑANA', '', '', 0, 33, 'EJECUCION', '2018-02-28', 'LIC. EN ENSEÑANZA DE LA MATEMATICA.- 2º AÑO 2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5199778', '5199776', '', '2018-03-01', '2018-12-31', 'NOCHE', '', '', 0, 32, 'EJECUCION', '2018-03-21', 'DOCENCIA UNIVERSITARIA 1° AÑO - 2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5215914', '5215909', '', '2018-04-01', '2018-12-31', 'NOCHE', '', '', 0, 31, 'EJECUCION', '2018-04-03', 'LIC EN TECNOLOGIA EDUCATIVA 2018 1º AÑO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5229385', '5168299', '', '2018-08-01', '2018-10-01', 'MAÑANA', '10:00-13:00', 'VIERNES', 0, 3, 'TERMINO', '2018-05-04', '2018-PROFAU-MECANICA AVANZADA 1-VIERNES 13/7 10 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5291765', '4920017', '', '2018-09-01', '2018-12-31', 'MAÑANA', '', '', 0, 0, 'TERMINO', '2018-08-15', 'CURSO INTRODUCTORIO TSP SEPTIMBRE 2018 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5288090', '4919240', '', '2018-06-01', '2018-06-30', 'NOCHE', '', '', 0, 0, 'ESPERA', '2018-08-06', 'UNIVERSIDAD Y CONTEXTO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5307295', '5167648', '', '2018-11-01', '2018-11-30', 'TARDE', '15:00-18:00', 'LUNES', 0, 0, 'TERMINO', '2018-08-24', '2018-INFORMATICA- EXCEL BASICO-LUNES 5/11 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5583771', '5448365', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 0, 'ESPERA', '2019-11-11', 'SEMINARIO UNIVERSITARIO TUA - FEBRERO 2020', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5278732', '5166871', '', '2018-09-01', '2019-01-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-07-05', '2018-IACT-INST DOM Y COMERCIALES-15-VIE 31/8 15 HS', '2019-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5288597', '5167648', '', '2018-10-01', '2018-11-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2018-08-07', '2018-INFORMATICA-EXCEL AVANZADO- JUEVES 4/10 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5277341', '5168299', '', '2018-08-01', '2018-10-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 3, 'TERMINO', '2018-07-02', '2018-PROFAU-MECANICA AVANZADA 1-JUEVES 12/7 19 HS', '2018-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5229414', '5169230', '', '2018-09-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2018-05-04', '2018-ADMIN-ANALISTA CONTABLE- MARTES 21/8 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5492328', '5356545', '', '2019-11-01', '2019-12-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 2, 'TERMINO', '2019-08-27', '2019-BIBLIO PACHECO-INTR A REDES SABADO 19/10 9 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5278724', '5166856', '', '2018-10-01', '2019-01-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 4, 'TERMINO', '2018-07-05', '2018-IACT-REFRIGERACION Y AA-13-LUNES 10/9 19 HS', '2019-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5278726', '5166856', '', '2018-11-01', '2019-02-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 4, 'TERMINO', '2018-07-05', '2018-IACT-REFRIGERACION Y AA-14-MIER 10/10 15 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5278728', '5166856', '', '2018-11-01', '2019-02-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2018-07-05', '2018-IACT-REFRIGERACION Y AA-15-MIER 10/10 19 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5281484', '5167648', '', '2018-09-01', '2018-10-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 0, 'TERMINO', '2018-07-16', '2018-INFORMATICA- EXCEL BASICO- LUNES 3/9 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5229373', '5166951', '', '2018-07-01', '2018-09-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2018-05-04', '2018-PROFAU- MECANICA BASICA- LUN 19 HS 11/6', '2018-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5278722', '5166856', '', '2018-09-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2018-07-05', '2018-IACT-REFRIGERACION Y AA-12-MARTES 7/8 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5278734', '5166871', '', '2018-09-01', '2019-01-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-07-05', '2018-IACT-INST DOM Y COMERCIALES-16-VIE 31/8 19 HS', '2019-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5278730', '5166882', '', '2018-10-01', '2019-02-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2018-07-05', '2018-IACT -INST ELEC INDUSTRIAL 8-SAB 1/9 10 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5278738', '5166871', '', '2018-10-01', '2019-02-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-07-05', '2018-IACT-INST DOM Y COMERCIALES-17-VIE 28/9 15 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5326111', '5166856', '', '2018-12-01', '2019-02-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 3, 'TERMINO', '2018-10-10', '2018-IACT-REFRIGERACION Y AA-17-JUEVES 8/11 19 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5326103', '5166856', '', '2018-12-01', '2019-02-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 3, 'TERMINO', '2018-10-10', '2018-IACT-REFRIGERACION Y AA-16-JUEVES 8/11 15 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5342561', '5166882', '', '2018-12-01', '2019-05-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-10-29', '2018-IACT -INST ELEC INDUSTRIAL 11-SAB 24/11 10 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5326883', '5326606', '', '2018-12-01', '2019-01-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-MIERCOLES', 0, 2, 'TERMINO', '2018-10-11', '2018-IACT- INST DE EQUIPOS SPLIT MARTES 4/12 19 HS', '2019-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5278720', '5166856', '', '2018-09-01', '2018-12-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 4, 'TERMINO', '2018-07-05', '2018-IACT-REFRIGERACION Y AA-11-MARTES 7/8 15 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5326881', '5326606', '', '2018-12-01', '2019-01-01', 'TARDE', '15:00-18:00/15:00-18:00', 'MARTES-MIERCOLES', 0, 2, 'TERMINO', '2018-10-11', '2018-IACT- INST DE EQUIPOS SPLIT MARTES 4/12 15 HS', '2019-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5341990', '5341978', '', '2018-11-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 2, 'TERMINO', '2018-10-24', '2018-PROFAU-INTER PLANOS ELECT VIER 16/11 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5288599', '5167648', '', '2018-09-01', '2018-09-30', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2018-08-07', '2018-INFORMATICA-EXCEL BASICO- JUEVES 6/9 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5278740', '5166871', '', '2018-10-01', '2019-02-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-07-05', '2018-IACT-INST DOM Y COMERCIALES-18-VIE 28/9 19 HS', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5354609', '5353964', '', '2019-03-01', '2019-05-01', 'NOCHE', '10:00-13:00', 'LUNES', 0, 3, 'TERMINO', '2018-12-12', '2019-PROFAU-MECANICA BASICA-LUNES 11/2 10 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5354591', '5353959', '', '2019-04-01', '2019-05-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2018-12-12', '2019-PROFAU-ADMI TALLERES-LUNES 11/03 19 HS ', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5833019', '5833017', '', '2020-10-01', '2020-10-31', 'NOCHE', '18:00-20:00', 'LUNES', 0, 0, 'TERMINO', '2020-09-09', '2020-INFORMATICA-EXCEL BASICO LU 19/10 18HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5289726', '5224676', '', '2018-10-01', '2018-11-01', 'TARDE', '13:00-16:00', 'SABADO', 0, 2, 'TERMINO', '2018-08-09', '2018-UTN - PLC NIVEL 1-SABADO 13 HS 8/9', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5307677', '5172370', '', '2018-11-01', '2018-12-01', 'MAÑANA', '08:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-08-27', '2018-BIBLIO PACHECO - INTRO A REDES 6/10 8 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5347695', '5035141', '', '2019-01-27', '2019-03-08', 'NOCHE', '', '', 0, 0, 'ESPERA', '2018-11-12', 'CURSO INTRODUCTORIO TSA FEBRERO 2019', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356465', '5356458', '', '2019-06-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2018-12-26', '2019-ADMIN- LIQ DE SUELDOS- MIER 15/5 BAJA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356462', '5356458', '', '2019-05-01', '2019-08-01', 'MAÑANA', '09:00-12:00', 'MIERCOLES', 0, 0, 'ESPERA', '2018-12-26', '2019-ADMIN- LIQ DE SUELDOS- MIER 15/5 9 BAJA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356475', '5356471', '', '2019-06-01', '2019-07-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 2, 'TERMINO', '2018-12-26', '2019-ADMIN- MARK PROM Y VENTAS-JUEVES 25/04 19 HS ', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5284223', '5232866', '', '2018-09-01', '2018-12-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 4, 'TERMINO', '2018-07-27', '2018-IDIOMAS-INGLES-NIVEL 1-MARTES 18 HS 14/8', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356473', '5356471', '', '2019-06-01', '2019-07-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-12-26', '2019-ADMIN- MARK PROM Y VENTAS-SABADO 27/4 9 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356460', '5356458', '', '2019-06-01', '2019-08-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2018-12-26', '2019-ADMIN- LIQ DE SUELDOS-SABADO 27/04 9 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356395', '5356393', '', '2019-06-01', '2019-09-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2018-12-21', '2019-ADMIN-ANALISTA IMPOSITIVO-VIERNES 26/4 19 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5349723', '4920017', '', '2019-01-01', '2019-02-28', 'MAÑANA', '', '', 0, 0, 'TERMINO', '2018-11-26', 'CURSO INTRODUCTORIO TSP FEBRERO 2019 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5354603', '5354038', '', '2019-04-01', '2019-06-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2018-12-12', '2019-PROFAU-INYECCION NAFTA FYC-MARTES 12/03 19 HS', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5355449', '4895074', '', '2018-12-01', '2019-03-31', 'NOCHE', '', '', 0, 1, 'TERMINO', '2018-12-17', 'MATRICULA ESPECIALIZACION Y MTRIA.ESTRUCTURAL-2019', '2019-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5355455', '5191714', '', '2018-12-01', '2019-03-31', 'NOCHE', '', '', 0, 0, 'TERMINO', '2018-12-17', 'MATRICULA ESPEC. Y MTRIA.ESTRUC. EXTRANJEROS-2019', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5354599', '5354036', '', '2019-03-01', '2019-05-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 3, 'TERMINO', '2018-12-12', '2019-PROFAU-ELEC DEL AUTOMOVIL-JUEVES 14/02 19 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5354615', '5353964', '', '2019-03-01', '2019-05-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'TERMINO', '2018-12-12', '2019-PROFAU-MECANICA BASICA-LUNES 11/2 19 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5354605', '5354027', '', '2019-04-01', '2019-05-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2018-12-12', '2019-PROFAU-MECANICA AVANZADA 1-MIERCOLE 6/3 19 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5344745', '5161404', '', '2018-11-01', '2018-12-31', 'NOCHE', '', '', 0, 6, 'EJECUCION', '2018-11-01', '2019 MATRÍCULA MBA BONIFICADA', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5354613', '5353964', '', '2019-04-01', '2019-06-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 3, 'TERMINO', '2018-12-12', '2019-PROFAU-MECANICA BASICA-LUNES 11/3 15 HS', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5354607', '5354040', '', '2019-05-01', '2019-07-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2018-12-12', '2019-PROFAU-MOTORES 1-MARTES 9/4 19 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5492824', '5481241', '', '2019-10-01', '2019-10-31', 'NOCHE', '18:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2019-08-29', '2019-CIE-LEAN MANUNFACTURING-BOSISIO VIE 4/10', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5822380', '5161404', '', '2020-06-01', '2020-12-31', 'TARDE', '', '', 0, 1, 'EJECUCION', '2020-09-07', '2021 MATRÍCULA MBA BONIFICADA', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356521', '5356519', '', '2019-02-01', '2019-03-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 0, 'TERMINO', '2018-12-26', '2019-INFORMATICA- EXCEL BASICO- LUNES 4/2 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356385', '5356383', '', '2019-06-01', '2019-10-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2018-12-21', '2019-ADMIN- ASIST RRHH 6M-SABADO 27/4 9 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5325322', '5166951', '', '2018-11-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2018-10-08', '2018-PROFAU- MECANICA BASICA-LUNES 19 HS 08/10', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5307545', '5234384', '', '2018-11-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2018-08-27', '2018-UTN - PLC NIVEL 2-LUNES 22/10 19 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5327367', '5234384', '', '2018-11-01', '2018-12-01', 'NOCHE', '16:00-19:00', 'LUNES', 0, 2, 'TERMINO', '2018-10-12', '2018-UTN - PLC NIVEL 2-LUNES 22/10 16 HS', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5822390', '5215895', '', '2020-06-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-09-07', '2021 MATRICULA LIC EN TEC EDUCATIVA - BONIFICADA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5823511', '5823508', '', '2020-06-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-09-08', '2021-MATRICULAS E.M.I.T.Y DIST.E.E (EMIDE)-BONIFIC', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5286178', '4919999', '', '2018-08-01', '2018-12-31', 'NOCHE', '', '', 0, 27, 'EJECUCION', '2018-08-01', 'TECNICO SUPERIOR EN PROGRAMACION-AGOSTO 2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5291688', '5232870', '', '2018-09-01', '2018-11-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 3, 'TERMINO', '2018-08-14', '2018-IDIOMAS-INGLES-NIVEL 2 B-2º CUAT JUEV 16/8 18', '2018-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5306116', '5166951', '', '2018-11-01', '2018-12-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 2, 'TERMINO', '2018-08-21', '2018-PROFAU- MECANICA BASICA-MIER 19 HS 3/10', '2018-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356650', '5356642', '', '2019-04-01', '2019-07-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS-INGLES-NIVE 4 MA Y JU 19/3 19:30 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356559', '5356557', '', '2019-03-01', '2019-07-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2018-12-26', '2019-IACT - INST ELEC INDUSTRIAL-1-SAB 2/2 10 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5822385', '5213472', '', '2020-06-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-09-07', '2021 MATRICULA MDU NO DOCENTE - BONIFICADA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356540', '5356535', '', '2019-04-01', '2019-07-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-VIERNES', 0, 4, 'TERMINO', '2018-12-26', '2019-BIBLIO PACHECO -REP PC Y NOT- MYV 19 H 12/3', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356491', '5356489', '', '2019-05-01', '2019-10-01', 'NOCHE', '18:00-22:00', 'LUNES', 0, 6, 'TERMINO', '2018-12-26', '2019-ADMIN - ORG. DE EVENTOS-LUNES 15/4 18 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356658', '5356655', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS- FIRST CERTIF- MI 6/3 18 HS ', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356529', '5356525', '', '2019-04-01', '2019-05-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2018-12-26', '2019-INFORMATICA-EXCEL AVANZADO- JUEVES 4/4 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356553', '5356551', '', '2019-03-01', '2019-07-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-12-26', '2019-IACT-INST DOM Y COMERCIALES-1-VIE 1/2 15 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356652', '5356642', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS-INGLES-NIVEL 5 MA Y JU 19/3 18 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5822412', '5822410', '', '2020-06-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-09-07', '2021 MATRICULA LIC.COMERCIALIZACION- BONIFICADA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356582', '5356564', '', '2019-04-01', '2019-07-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 4, 'TERMINO', '2018-12-26', '2019-IACT - REFRIGERACION Y AA-4-JUEVES 14/3 15 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356499', '5356497', '', '2019-07-01', '2019-08-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-12-26', '2019-INFORMATICA- AUTOCAD AVANZADO-SABADO 8/6 9 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356537', '5356535', '', '2019-04-01', '2019-08-01', 'NOCHE', '15:00-18:00/15:00-18:00', 'LUNES-JUEVES', 0, 5, 'TERMINO', '2018-12-26', '2019-BIBLIO PACHECO - REP PC Y NOT- LYJ 15 H 11/3', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356516', '5356512', '', '2019-04-01', '2019-05-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2018-12-26', '2019-INFORMATICA- ROBOTICA BASICA-LUNES 11/3 19 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5822388', '5375604', '', '2020-06-01', '2020-12-31', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2020-09-07', '2021 MATRÍCULA LIC. HIGIENE Y SEG - BONIFICADA', '2021-02-25');
INSERT INTO "public"."carrerascursosalta" VALUES ('5586169', '5356551', '', '2020-01-01', '2020-05-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'EJECUCION', '2019-11-15', '2019-IACT-INST DOM Y COMERCIALES-24-VIE 13/12 19 H', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356575', '5356564', '', '2019-02-01', '2019-05-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2018-12-26', '2019-IACT - REFRIGERACION Y AA-2-MAR 15/1 19 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356503', '5356501', '', '2019-04-01', '2019-06-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2018-12-26', '2019-INFORMATICA-AUTOCAD BASICO-MARTES 12/03 19 HS', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356533', '5356531', '', '2019-04-01', '2019-05-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 2, 'TERMINO', '2018-12-26', '2019-BIBLIO PACHECO-INST CAM VIGIL -MIE 6/3 19H', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356637', '5356635', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS-INGLES-NIVEL 1-LUNES 18 HS 11/3 ADRIA', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5586243', '5586241', '', '2020-10-01', '2020-12-31', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'EJECUCION', '2019-11-15', '2020-PROFAU-MOTORES 2-AJUSTE DE MOTOR VI 4/9  19 H', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356510', '5356505', '', '2019-04-01', '2019-09-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2018-12-26', '2019-INFORMATICA - DISEÑO WEB - VIER 8/3 19 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356580', '5356564', '', '2019-03-01', '2019-06-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2018-12-26', '2019-IACT - REFRIGERACION Y AA-3-MIER 13/2 19 HS', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5822392', '5596608', '', '2020-06-01', '2020-12-31', 'NOCHE', '', '', 0, 5, 'EJECUCION', '2020-09-07', '2021 MATRICULA - LIC EN LOGISTICA BONIFICADA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356584', '5356564', '', '2019-04-01', '2019-07-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'TERMINO', '2018-12-26', '2019-IACT - REFRIGERACION Y AA-5-JUEVES 14/3 19 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356600', '5356595', '', '2019-03-01', '2019-08-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-12-26', '2019-UTN- AUTOMATIZACION INDUSTRIAL-SAB 09 H 23/02', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356487', '5356481', '', '2019-06-01', '2019-10-01', 'NOCHE', '18:00-22:00', 'MIERCOLES', 0, 5, 'TERMINO', '2018-12-26', '2019-ADMIN-SEC ADM INFORM 6 M-MIERCOLES 15/5 18 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5822398', '5822396', '', '2020-09-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-09-07', '2021 MATRICULA LIC. EN PROD. GRAFICA- BONIFICADA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5822408', '5822406', '', '2020-09-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-09-07', '2021 MATRICULA LIC.TURISMO Y HOTELERIA -BONIFICADA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5587226', '5580340', '', '2020-03-01', '2020-09-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 7, 'TERMINO', '2019-11-25', '2020-SALUD-SECRETARIADO MEDICO-MARTES 17/3 18:30 H', '2020-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5822394', '5618449', '', '2020-06-01', '2020-12-31', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2020-09-07', '2021 MATRICULA LIC EN BIOIMAGENES - BONIFICADA', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356523', '5356519', '', '2019-03-01', '2019-04-01', 'TARDE', '15:00-19:00', 'LUNES', 0, 0, 'TERMINO', '2018-12-26', '2019-INFORMATICA- EXCEL BASICO- LUNES 11/3 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5587255', '5161404', '', '2019-11-20', '2019-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2019-11-26', '2020 MATRÍCULA MBA - BONIFICADA ', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356555', '5356551', '', '2019-03-01', '2019-07-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-12-26', '2019-IACT-INST DOM Y COMERCIALES-2-VIE 1/2 19 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356648', '5356642', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS-INGLES-NIVEL 3-JUE 21/3 18 HS AZUL', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356633', '5356631', '', '2019-10-01', '2019-11-01', 'NOCHE', '18:00-21:00', 'VIERNES', 0, 2, 'EJECUCION', '2018-12-26', '2019-CIE- SEGURIDAD E HIEGINE-VIER 13/09 18 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356611', '5356609', '', '2019-03-01', '2019-04-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-12-26', '2019-UTN - PLC NIVEL 1-SABADO 9 HS 23/2', '2019-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356547', '5356545', '', '2019-05-01', '2019-06-01', 'MAÑANA', '08:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-12-26', '2019-BIBLIO PACHECO -INTRO A REDES SABADO 6/4 8 HS', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356621', '5356616', '', '2019-08-01', '2019-09-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 2, 'TERMINO', '2018-12-26', '2019-UTN - PLC NIVEL 2-SABADO 13/7 9 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5590212', '4920017', '', '2020-01-01', '2020-02-28', 'MAÑANA', '', '', 0, 0, 'TERMINO', '2019-12-04', 'CURSO INTRODUCTORIO TUP FEBRERO 2020 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356664', '5356660', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 0, 'ESPERA', '2018-12-26', '2019-IDIOMAS-ALEMAN 1- MIERCOLES 13/3 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5831877', '5831859', '', '2020-10-01', '2020-10-31', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 1, 'TERMINO', '2020-09-09', '2020-INFORMATICA-EXCEL AVANZAD MI 14/10 18 H-CUOTA', '2020-10-30');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356640', '5356635', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS-INGLES-NIVEL 1-LUNES 18 HS 18/3 AZUL', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356589', '5356587', '', '2019-05-01', '2019-07-01', 'NOCHE', '18:00-18:00/22:00-22:00', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2018-12-26', '2019-UTN- AUTOMATIZACION INDUSTRIAL- MYJ 9/4 18HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356573', '5356564', '', '2019-02-01', '2019-04-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 3, 'TERMINO', '2018-12-26', '2019-IACT - REFRIGERACION Y AA-1-MAR 15/1 15 HS', '2019-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356644', '5356642', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS-INGLES-NIVEL 2-MARTES 12/3 18 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5833043', '5833041', '', '2020-11-01', '2020-12-10', 'NOCHE', '19:00-21:00', 'JUEVES', 0, 1, 'TERMINO', '2020-09-09', '2020-INFORMATICA-PROGRAMAC PHP 1 JU22/10 19H-CUOTA', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356646', '5356642', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS-INGLES-NIVEL 3-JUE 7/3 18 HS ALEJANDR', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5394301', '5356609', '', '2019-06-01', '2019-07-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2019-02-25', '2019-UTN - PLC NIVEL 1-SABADO 9 HS 04/5', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5286318', '5286316', '', '2018-10-01', '2019-10-19', 'TARDE', '14:00-18:00', 'SABADO', 0, 13, 'TERMINO', '2018-08-01', '2018-SALUD-AUXILIAR DE FARMACIA-SABADO 27/10 14 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5307425', '5166871', '', '2018-11-01', '2019-03-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-08-24', '2018-IACT-INST DOM Y COMERCIALES-19-VIE 26/10 15 H', '2019-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5307427', '5166871', '', '2018-11-01', '2019-03-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-08-24', '2018-IACT-INST DOM Y COMERCIALES-20-VIE 26/10 19 H', '2019-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5362003', '5356557', '', '2019-04-01', '2019-08-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2019-02-02', '2019-IACT - INST ELEC INDUSTRIAL-2-SAB 2/3 10 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5349604', '5166871', '', '2019-01-01', '2019-05-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2018-11-23', '2018-IACT-INST DOM Y COMERCIALES-25-VIE 21/12 19 H', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5377407', '5356551', '', '2019-04-01', '2019-08-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2019-02-15', '2019-IACT-INST DOM Y COMERCIALES-5-VIE 29/3 15 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5359157', '4895454', '', '2019-01-01', '2019-12-31', 'NOCHE', '', '', 0, 0, 'EJECUCION', '2019-01-21', 'MATRICULA TSA -2019', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5377410', '5356551', '', '2019-04-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2019-02-15', '2019-IACT-INST DOM Y COMERCIALES-6-VIE 29/3 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5359568', '4895524', '', '2019-03-01', '2019-12-31', 'NOCHE', '', '', 0, 25, 'EJECUCION', '2019-01-24', 'TECNICO SUPERIOR EN ADMINISTRACION-2019 ', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5359573', '4895524', '', '2019-03-01', '2019-12-31', 'NOCHE', '', '', 0, 25, 'EJECUCION', '2019-01-24', 'TECNICO SUPERIOR EN ADMINISTRACION-2017/2018', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5360985', '4919999', '', '2019-03-01', NULL, 'MAÑANA', '', '', 0, 22, 'EJECUCION', '2019-01-31', 'TEC. SUP. PROGRAMACIÓN MARZO 2019 - PACHECO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5360362', '5354027', '', '2019-04-01', '2019-06-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 0, 'ESPERA', '2019-01-29', '2019-PROFAU-MEC AVANZADA 1-MIERCOLE 6/3 15 HS SUSP', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5361859', '4920001', '', '2019-03-01', NULL, 'NOCHE', '', '', 0, 22, 'EJECUCION', '2019-02-01', 'TECNICO SUP. EN SISTEMAS INFORMATICOS MARZO 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5831879', '5831857', '', '2020-10-01', '2020-10-31', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 1, 'TERMINO', '2020-09-09', '2020-INFORMATICA-EXCELAVANZADO MI 14/10 18 H-1PAGO', '2020-10-30');
INSERT INTO "public"."carrerascursosalta" VALUES ('5349612', '5166882', '', '2019-01-01', '2019-06-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-11-23', '2018-IACT -INST ELEC INDUSTRIAL 12-SAB 22/12 10 HS', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5375732', '5199776', '', '2019-03-01', '2019-12-31', 'NOCHE', '', '', 0, 21, 'EJECUCION', '2019-02-12', 'DOCENCIA UNIVERSITARIA 1º AÑO 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5394779', '5394773', '', '2019-07-01', '2019-08-01', 'MAÑANA', '10:00-13:00', 'MIERCOLES', 0, 0, 'ESPERA', '2019-02-26', '2019-PROFAU-MECANICA AVANZADA 2-MIER 12/6 10 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5394777', '5394773', '', '2019-07-01', '2019-08-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 0, 'ESPERA', '2019-02-26', '2019-PROFAU-MECANICA AVANZADA 2-MIER 12/6 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5395580', '5189075', '', '2019-03-01', '2019-03-31', 'MAÑANA', '', '', 0, 0, 'ESPERA', '2019-02-28', 'MATRICULA LEM-2019', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5375738', '5199776', '', '2019-03-01', '2019-12-31', 'NOCHE', '', '', 0, 21, 'EJECUCION', '2019-02-12', 'DOCENCIA UNIVERSITARIA 2º AÑO 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5394775', '5394773', '', '2019-07-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2019-02-26', '2019-PROFAU-MECANICA AVANZADA 2-MIER 12/6 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5286323', '5286321', '', '2018-10-01', '2019-05-15', 'NOCHE', '18:30-21:00', 'MARTES', 0, 8, 'TERMINO', '2018-08-01', '2018-SALUD-SEC MEDICO-MARTES 30/10 18:30 HS', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356875', '5356873', '', '2019-04-01', '2019-07-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 4, 'TERMINO', '2018-12-27', '2019-IDIOMAS- ALEMAN CONVERSACIÓN-SABADO 09/3 9 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5359241', '5356551', '', '2019-04-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2019-01-21', '2019-IACT-INST DOM Y COMERCIALES-4-VIE 1/3 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5359237', '5356551', '', '2019-04-01', '2019-08-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2019-01-21', '2019-IACT-INST DOM Y COMERCIALES-3-VIE 1/3 15 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356670', '5356668', '', '2019-04-01', '2019-07-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 4, 'TERMINO', '2018-12-26', '2019-IDIOMAS -PORTUGUES NIVEL 1 JUEVES 21/3 18 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5349602', '5166871', '', '2019-01-01', '2019-05-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2018-11-23', '2018-IACT-INST DOM Y COMERCIALES-23-VIE 21/12 15 H', '2019-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5362186', '5161404', '', '2019-02-01', '2019-02-28', 'NOCHE', '', '', 0, 4, 'EJECUCION', '2019-02-04', '2019 MATRÍCULA MBA', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5375591', '5215895', '', '2019-02-01', '2019-02-28', 'NOCHE', '', '', 0, 3, 'EJECUCION', '2019-02-12', 'MATRICULA LIC EN TECNOLOGIA EDUCATIVA 2019', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5375769', '5213472', '', '2019-02-01', '2019-02-28', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2019-02-12', 'MATRICULA DOCENCIA UNIVERSITARIA - NO DOCENTE 2019', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5411705', '4920017', '', '2019-05-31', '2019-07-31', 'MAÑANA', '', '', 0, 0, 'TERMINO', '2019-04-03', 'CURSO INTRODUCTORIO TSP MAYO 2019 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5398062', '5354036', '', '2019-07-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 2, 'TERMINO', '2019-03-07', '2019-PROFAU-ELEC DEL AUTOMOVIL-JUEVES 23/5 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5416302', '5416297', '', '2019-05-01', '2019-05-31', 'NOCHE', '17:00-22:00', 'JUEVES', 0, 0, 'TERMINO', '2019-04-09', '2019-ADMIN-SEMIN MONOTR E IIBB 23 Y 30 MAYO 17 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5405380', '5354027', '', '2019-07-01', '2019-08-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 2, 'TERMINO', '2019-03-20', '2019-PROFAU-MECANICA AVANZADA 1-LUNES 3/6 15 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5415771', '5356564', '', '2019-06-01', '2019-09-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2019-04-08', '2019-IACT - REFRIGERACION Y AA-8-MARTES 14/5 19 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5419770', '5419768', '', '2019-09-01', '2020-02-01', 'NOCHE', '18:30-21:00', 'MARTES', 0, 4, 'TERMINO', '2019-04-15', '2019-SALUD-SEC MEDICO-MARTES 6/8 18:30 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5833015', '5833004', '', '2020-10-01', '2020-10-31', 'NOCHE', '18:00-20:00', 'LUNES', 0, 0, 'TERMINO', '2020-09-09', '2020-INFORMATICA-EXCEL BASICO LU 19/10 18HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5405382', '5354027', '', '2019-07-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2019-03-20', '2019-PROFAU-MECANICA AVANZADA 1-LUNES  3/6 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5405376', '5354038', '', '2019-08-01', '2019-09-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'TERMINO', '2019-03-20', '2019-PROFAU-INYECCION NAFTA FYC-MARTES 18/6 19 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5398283', '5356551', '', '2019-06-01', '2019-11-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 6, 'TERMINO', '2019-03-07', '2019-IACT-INST DOM Y COMERCIALES-7-VIE 03/5 15 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5397808', '5356519', '', '2019-04-01', '2019-05-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 0, 'TERMINO', '2019-03-07', '2019-INFORMATICA- EXCEL BASICO- LUNES 8/4 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5404225', '4912612', '', '2019-03-01', '2019-12-31', 'MAÑANA', '', '', 0, 0, 'ESPERA', '2019-03-18', 'LEM TESIS ', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5408945', '5356525', '', '2019-09-01', '2019-09-30', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2019-03-28', '2019-INFORMATICA-EXCEL AVANZADO- JUEVES 5/9 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5376169', '5375604', '', '2019-02-01', '2019-02-28', 'NOCHE', '', '', 0, 4, 'EJECUCION', '2019-02-13', 'MATRÍCULA LIC. HIGIENE Y SEGURIDAD 2019', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5397827', '5356535', '', '2019-06-01', '2019-10-01', 'TARDE', '19:00-22:00/19:00-22:00', 'LUNES-JUEVES', 0, 0, 'ESPERA', '2019-03-07', '2019-BIBLIO PACHECO - REP PC Y NOT- LYJ SUSP 6/5', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5397802', '5356501', '', '2019-07-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'TERMINO', '2019-03-07', '2019-INFORMATICA-AUTOCAD BASICO-VIER 07/06 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5397806', '5356512', '', '2019-07-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'TERMINO', '2019-03-07', '2019-INFORMATICA- ROBOTICA BASICA-LUNES 3/6 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5414645', '5199768', '', '2019-03-01', '2019-03-30', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2019-04-05', 'MATRICULA DOCENCIA UNIVERSITARIA 2019', '2021-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5375617', '5215909', '', '2019-03-01', '2019-12-31', 'NOCHE', '', '', 0, 22, 'EJECUCION', '2019-02-12', 'LICENCIATURA EN TECNOLOGIA EDUCATIVA 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5408941', '5356519', '', '2019-06-01', '2019-06-30', 'TARDE', '15:00-18:00', 'LUNES', 0, 0, 'TERMINO', '2019-03-28', '2019-INFORMATICA- EXCEL BASICO- LUNES 3/6 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5407172', '5356551', '', '2019-07-01', '2019-11-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 5, 'TERMINO', '2019-03-25', '2019-IACT-INST DOM Y COMERCIALES-9-VIE 31/5 15 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5411593', '5356557', '', '2019-06-01', '2019-10-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2019-04-01', '2019-IACT - INST ELEC INDUSTRIAL-4-SAB 27/4 10 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5420623', '5353964', '', '2019-10-01', '2019-12-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 3, 'TERMINO', '2019-04-17', '2019-PROFAU-MECANICA BASICA-VIERNES 13/9 15 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5418513', '5194599', '', '2019-02-01', '2019-03-31', 'TARDE', '', '', 0, 0, 'EJECUCION', '2019-04-11', 'ALEMAN-SAU-PRECOLOQUIO 2019', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5416340', '5356477', '', '2019-10-01', '2019-11-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2019-04-09', '2019-ADMIN- MARKETING DIGITAL- SABADOS 24/8 9 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5421293', '5356378', '', '2019-09-01', '2019-12-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2019-04-23', '2019-ADMIN-ASIST ADM PYME 4 M-LU Y MIE 12/8 19 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5375624', '5375619', '', '2019-03-01', '2019-12-31', 'NOCHE', '', '', 0, 22, 'EJECUCION', '2019-02-12', 'LICENCIATURA EN HIGIENE Y SEGURIDAD 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5375677', '4895021', '', '2019-03-01', '2019-12-31', 'NOCHE', '', '', 0, 22, 'EJECUCION', '2019-02-12', 'MBA 1º AÑO 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5407181', '5356551', '', '2019-07-01', '2019-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 5, 'TERMINO', '2019-03-25', '2019-IACT-INST DOM Y COMERCIALES-10-VIE 31/5 19 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5398298', '5356551', '', '2019-06-01', '2019-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2019-03-07', '2019-IACT-INST DOM Y COMERCIALES-8-VIE 03/5 19 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5397829', '5356535', '', '2019-06-01', '2019-10-01', 'TARDE', '15:00-18:00/15:00-18:00', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2019-03-07', '2019-BIBLIO PACHECO -REP PC Y NOT- SUSP 7/5  15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5400068', '5394755', '', '2019-07-01', '2019-09-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2019-03-11', '2019-PROFAU-DISENO AUTOMOTRIZ 1-VIERN 14/6 SUSPEND', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5422491', '5356668', '', '2019-09-01', '2019-12-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2019-04-26', '2019-IDIOMAS-PORTUGUES NIVEL 1 SAB 10/8 SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5440447', '5440442', '', '2019-05-01', '2019-06-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'CADUCO', '2019-05-02', '2019-UTN -CENTRO DE MECANIZADO-JUEVES 18HS 09/5', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5446273', '5356564', '', '2019-07-01', '2019-10-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 4, 'TERMINO', '2019-05-15', '2019-IACT - REFRIGERACION Y AA-9-MIER 12/6 15 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5445725', '5356551', '', '2019-08-01', '2019-11-30', 'TARDE', '15:00-18:00', 'VIERNES', 0, 4, 'TERMINO', '2019-05-14', '2019-IACT-INST DOM Y COMERCIALES-11-VIE 28/6 15 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5443921', '5356471', '', '2019-10-01', '2019-11-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 2, 'TERMINO', '2019-05-09', '2019-ADMIN- MARK PROM Y VENTAS-JUEVES 12/9 19 HS ', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5443965', '5443960', '', '2019-09-01', '2019-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'TERMINO', '2019-05-09', '2019-ADMIN- COACHING Y LIDERAZGO-VIERNES 9/8 19 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5447297', '5356642', '', '2019-09-01', '2019-11-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2019-05-20', '2019-IDIOMAS-INGLES-NIVEL 5 MA Y JU 13/8 19:30 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5446275', '5356564', '', '2019-07-01', '2019-10-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2019-05-15', '2019-IACT - REFRIGERACION Y AA-10-MIER 12/6 19 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5448467', '5356519', '', '2019-08-01', '2019-08-30', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'TERMINO', '2019-05-27', '2019-INFORMATICA- EXCEL BASICO- MARTES 6/8 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5448469', '5356512', '', '2019-10-01', '2019-10-07', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'TERMINO', '2019-05-27', '2019-INFORMATICA- ROBOTICA BASICA-LUNES 2/9 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5405378', '5354027', '', '2019-07-01', '2019-08-01', 'MAÑANA', '10:00-13:00', 'LUNES', 0, 2, 'TERMINO', '2019-03-20', '2019-PROFAU-MECANICA AVANZADA 1-LUNES 3/6 10 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5445729', '5356609', '', '2019-08-01', '2019-09-01', 'TARDE', '13:00-16:00', 'SABADO', 0, 2, 'TERMINO', '2019-05-14', '2019-UTN - PLC NIVEL 1-SABADO 13 HS 13/7', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5447301', '5356642', '', '2019-09-01', '2019-12-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 4, 'TERMINO', '2019-05-20', '2019-IDIOMAS-INGLES-NIVEL 2-LUNE 5/8 18 HS ADRIAN', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5447299', '5356642', '', '2019-09-01', '2019-11-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 3, 'TERMINO', '2019-05-20', '2019-IDIOMAS-INGLES-NIVEL 6 MA Y JU 13/8 18 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5438262', '5356557', '', '2019-07-01', '2019-12-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2019-04-29', '2019-IACT - INST ELEC INDUSTRIAL-5-SAB 1/6 10 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5448334', '5356557', '', '2019-08-01', '2019-12-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2019-05-24', '2019-IACT - INST ELEC INDUSTRIAL-6-SAB 29/6 10 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5833036', '5833034', '', '2020-11-01', '2020-12-10', 'NOCHE', '19:00-21:00', 'JUEVES', 0, 1, 'TERMINO', '2020-09-09', '2020-INFORMATICA-PROGRAMAC PHP 1 JU22/10 19H-1PAGO', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5422385', '5356587', '', '2019-09-01', '2019-10-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-JUEVES', 0, 2, 'TERMINO', '2019-04-26', '2019-UTN- AUTOMATIZACION INDUSTRIAL- MYJ 6/8 18HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5448496', '5448365', '', '2019-09-02', '2019-09-30', 'TARDE', '', '', 0, 0, 'ESPERA', '2019-05-27', 'SEMINARIO UNIVERSITARIO TUA- SEPTIEMBRE 2019', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5447295', '5356642', '', '2019-09-01', '2019-11-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 3, 'TERMINO', '2019-05-20', '2019-IDIOMAS-INGLES-NIVEL 4-JUE 8/8 18 HS ALEJANDR', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5447288', '5356655', '', '2019-09-01', '2019-11-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 3, 'TERMINO', '2019-05-20', '2019-IDIOMAS- FIRST CERTIF- MI 7/8 18 HS ', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5447292', '5356642', '', '2019-09-01', '2019-11-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 3, 'TERMINO', '2019-05-20', '2019-IDIOMAS-INGLES-NIVEL 3-MAR 6/8 18 HS ALEJANDR', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5443941', '5356389', '', '2019-09-01', '2019-11-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2019-05-09', '2019-ADMIN-ANALISTA CONTABLE- MARTES 13/8 19 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5447290', '5356635', '', '2019-09-01', '2019-11-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 3, 'TERMINO', '2019-05-20', '2019-IDIOMAS-INGLES-NIVEL 1-JUEVES  8/8 18 HS AZUL', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5448471', '5356497', '', '2019-10-01', '2019-12-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2019-05-27', '2019-INFORMATICA- AUTOCAD AVANZADO-SABADO 7/9 9 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5445727', '5356551', '', '2019-08-01', '2019-11-30', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2019-05-14', '2019-IACT-INST DOM Y COMERCIALES-12-VIE 28/6 19 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5447789', '5356642', '', '2019-09-01', '2019-12-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 4, 'TERMINO', '2019-05-22', '2019-IDIOMAS-INGLES-NIVEL 2-LUNES 5/8 18 HS AZUL', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5355468', '5355459', '', '2019-03-01', '2019-06-30', 'NOCHE', '', '', 0, 3, 'TERMINO', '2018-12-17', 'ESP. Y MTRIA.ESTRUCTURAL- 1º CUAT. 2019', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5355471', '5355463', '', '2019-03-01', '2019-06-30', 'NOCHE', '', '', 0, 3, 'TERMINO', '2018-12-17', 'ESPEC. Y MTRIA.ESTRUC. EXTRANJEROS- 1º CUAT. 2019', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5451992', '5416297', '', '2019-08-01', '2019-08-31', 'NOCHE', '17:00-22:00', 'MIERCOLES', 0, 0, 'TERMINO', '2019-06-03', '2019-ADMIN-SEMIN MONOTR E IIBB 14 Y 21 AGOST 17 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356391', '5356389', '', '2019-05-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 4, 'TERMINO', '2018-12-21', '2019-ADMIN-ANALISTA CONTABLE- MARTES 16/4 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5465826', '5356668', '', '2019-10-01', '2019-12-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 3, 'TERMINO', '2019-06-06', '2019-IDIOMAS -PORTUGUES NIVEL 2 JUEVES 22/8 18 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5470425', '5470423', '', '2019-11-01', '2019-12-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2019-06-21', '2019-CIE-LEAN MANUNFACTURING-MAR Y JUE 7/11 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5356381', '5356378', '', '2019-05-01', '2019-08-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-MIERCOLES', 0, 4, 'TERMINO', '2018-12-21', '2019-ADMIN-ASIST ADM PYME 4 M-LU Y MIE 22/4 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356387', '5356383', '', '2019-04-01', '2019-09-01', 'NOCHE', '18:00-22:00', 'JUEVES', 0, 6, 'TERMINO', '2018-12-21', '2019-ADMIN-ASIST RRHH 6M-JUEVES 21/3 18 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356483', '5356481', '', '2019-04-01', '2019-09-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-12-26', '2019-ADMIN- SEC ADM INFORM 6 M-SABADO 16/3 9 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356371', '5356366', '', '2019-04-01', '2019-09-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2018-12-21', '2019-ADMIN-ASIST ADM PYME 6M-SAB 16/3 9 HS', '2019-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5481332', '5356635', '', '2019-09-01', '2019-11-27', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 3, 'TERMINO', '2019-07-30', '2019-IDIOMAS-INGLES-NIVEL 1-MIER 14/8 18 HS AZUL', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356376', '5356366', '', '2019-05-01', '2019-10-01', 'NOCHE', '18:00-22:00', 'MARTES', 0, 6, 'TERMINO', '2018-12-21', '2019-ADMIN-ASIST ADM PYME 6M-MARTES 16/4 18 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5419740', '5353964', '', '2019-05-01', '2019-07-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 3, 'TERMINO', '2019-04-15', '2019-PROFAU-MECANICA BASICA-MARTES 16/4 15 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5481239', '5356616', '', '2019-11-01', '2019-12-01', 'TARDE', '13:00-16:00', 'SABADO', 0, 2, 'TERMINO', '2019-07-29', '2019-UTN - PLC NIVEL 2-SABADO 5/10 13 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5356479', '5356477', '', '2019-05-01', '2019-06-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2018-12-26', '2019-ADMIN- MARKETING DIGITAL- SABADOS 30/3 9 HS', '2019-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5481141', '4919999', '', '2019-08-01', '2019-12-31', 'NOCHE', '', '', 0, 17, 'EJECUCION', '2019-07-29', 'TECNICO SUPERIOR EN PROGRAMACION-AGOSTO 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5478103', '5356564', '', '2019-09-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 4, 'TERMINO', '2019-07-12', '2019-IACT-REFRIGERACION Y AA-13-LUNES 12/8 19 ', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5478101', '5356564', '', '2019-09-01', '2019-12-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 4, 'TERMINO', '2019-07-12', '2019-IACT - REFRIGERACION Y AA-12-LUNES 12/8 15 H', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5480120', '5356557', '', '2019-10-01', '2020-03-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'EJECUCION', '2019-07-22', '2019-IACT - INST ELEC INDUSTRIAL-8-SAB 31/8 10 HS', '2020-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5469495', '5356551', '', '2019-09-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2019-06-18', '2019-IACT-INST DOM Y COMERCIALES-14-VIE 26/7 19 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5469493', '5356551', '', '2019-09-01', '2019-12-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 4, 'TERMINO', '2019-06-18', '2019-IACT-INST DOM Y COMERCIALES-13-VIE 26/7 15 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5480125', '5356609', '', '2019-11-01', '2019-12-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'TERMINO', '2019-07-22', '2019-UTN - PLC NIVEL 1-SABADO 9 HS 05/10', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5471215', '5356557', '', '2019-09-01', '2020-01-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 4, 'EJECUCION', '2019-06-26', '2019-IACT - INST ELEC INDUSTRIAL-7-SAB 27/7 10 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5401017', '5353964', '', '2019-05-01', '2019-07-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 3, 'TERMINO', '2019-03-12', '2019-PROFAU-MECANICA BASICA-JUEVES 11/4 15 HS', '2019-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5480659', '5354027', '', '2019-09-01', '2019-11-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 3, 'TERMINO', '2019-07-24', '2019-PROFAU-MECANICA AVANZADA 1-JUEVES 8/8 15 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5480115', '5356551', '', '2019-10-01', '2020-02-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 4, 'TERMINO', '2019-07-22', '2019-IACT-INST DOM Y COMERCIALES-15-VIE 23/8 15 HS', '2020-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5480118', '5356551', '', '2019-10-01', '2020-02-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2019-07-22', '2019-IACT-INST DOM Y COMERCIALES-16-VIE 23/8 19 HS', '2020-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5481243', '5481241', '', '2019-08-01', '2019-09-01', 'NOCHE', '18:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2019-07-30', '2019-CIE-LEAN MANUNFACTURING-BOSISIO SA 9/8', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5469544', '5353964', '', '2019-10-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'TERMINO', '2019-06-18', '2019-PROFAU-MECANICA BASICA-VIERNES 13/9 19HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5469546', '5354036', '', '2019-10-01', '2019-11-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 2, 'TERMINO', '2019-06-18', '2019-PROFAU-ELEC DEL AUTOMOVIL-JUEVES 5/9 19 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5420625', '5353964', '', '2019-07-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 2, 'TERMINO', '2019-04-17', '2019-PROFAU-MECANICA BASICA-VIERNES 14/6 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5420621', '5353964', '', '2019-07-01', '2019-08-01', 'MAÑANA', '10:00-13:00', 'VIERNES', 0, 2, 'TERMINO', '2019-04-17', '2019-PROFAU-MECANICA BASICA-VIERNES 14/6 10 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5398249', '5356557', '', '2019-05-01', '2019-10-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2019-03-07', '2019-IACT - INST ELEC INDUSTRIAL-3-SAB 30/3 10 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5420627', '5354040', '', '2019-08-01', '2019-10-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'TERMINO', '2019-04-17', '2019-PROFAU-MOTORES 1-MIER 17/7 19 HS', '2019-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5469642', '5356564', '', '2019-08-01', '2019-11-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'TERMINO', '2019-06-18', '2019-IACT - REFRIGERACION Y AA-11-JUEVE 11/7 19 HS', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5377619', '5352019', '', '2019-04-01', '2020-01-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 11, 'TERMINO', '2019-02-18', '2019-SALUD-AUXILIAR DE FARMACIA- SABADO 06/04 9 HS', '2020-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5519218', '5353964', '', '2019-10-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'TERMINO', '2019-09-16', '2019-PROFAU-MECANICA BASICA-LUNES 16/9 19 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5514624', '5354036', '', '2019-10-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'TERMINO', '2019-09-06', '2019-PROFAU-ELEC DEL AUTOMOVIL-MIER 11/9 19 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5418501', '5194586', '', '2019-03-01', '2019-11-30', 'TARDE', '', '', 0, 8, 'EJECUCION', '2019-04-11', 'ALEMAN-SAU NIVEL I 2019', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5418505', '5194586', '', '2019-03-01', '2019-11-30', 'TARDE', '', '', 0, 8, 'EJECUCION', '2019-04-11', 'ALEMAN-SAU NIVEL II 2019', '2019-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5401029', '5356564', '', '2019-05-01', '2019-08-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 4, 'TERMINO', '2019-03-12', '2019-IACT - REFRIGERACION Y AA-7-LUNES 8/4 19 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5401027', '5356564', '', '2019-05-01', '2019-08-01', 'TARDE', '15:00-18:00', 'LUNES', 0, 4, 'TERMINO', '2019-03-12', '2019-IACT - REFRIGERACION Y AA-6-LUNES 8/4 15 HS', '2019-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5598246', '5598242', '', '2020-05-01', '2020-08-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2019-12-12', '2020-ADMIN-COACHING Y LIDERAZGO 1-VIER 17/4 19 HS', '2020-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5420516', '5355459', '', '2019-07-01', '2019-12-31', 'NOCHE', '', '', 0, 6, 'TERMINO', '2019-04-17', 'ESP. Y MTRIA.ESTRUCTURAL- 2º CUAT. 2019', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5375704', '4895056', '', '2019-03-01', '2019-12-31', 'NOCHE', '', '', 0, 22, 'EJECUCION', '2019-02-12', 'MBA 2º AÑO 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5395576', '4912612', '', '2019-03-01', '2019-07-31', 'MAÑANA', '08:00-17:00', 'SABADO', 0, 22, 'EJECUCION', '2019-02-28', 'LIC. EN ENSEÑANZA DE LA MATEMATICA- 1ER CUAT. 19', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5512240', '5512231', '', '2019-11-01', '2019-12-31', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2019-09-02', '2019-INFOR-REP DE PANTALLAS LCD-MA Y V 15/11 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5397671', '4920453', '', '2019-03-01', NULL, 'NOCHE', '', '', 0, 22, 'EJECUCION', '2019-03-07', 'TEC. SUP. PROGRAMACIÓN MARZO 2019 - REINCORPORADOS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596629', '5596627', '', '2020-09-01', '2020-11-26', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 4, 'TERMINO', '2019-12-10', '2020-ADMIN-LIQUIDACION DE SUELDOS-JUEVES 13/8 19 H', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5400823', '4912612', '', '2019-03-01', '2019-07-31', 'MAÑANA', '08:00-17:00', 'SABADO', 0, 22, 'EJECUCION', '2019-03-12', 'LICENCIATURA EN ENSEÑANZA DE LA MATEMATICA 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596885', '5596883', '', '2020-09-01', '2020-12-18', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'TERMINO', '2019-12-10', '2020-ADMIN-ANALISTA IMPOSITIVO-VIERNES 7/8 19 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596631', '5596627', '', '2020-05-01', '2020-08-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 3, 'TERMINO', '2019-12-10', '2020-ADMIN-LIQUIDACION DE SUELDOS-SABADO 18/4 9 HS', '2020-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5420506', '5355463', '', '2019-07-01', '2019-12-31', 'NOCHE', '', '', 0, 18, 'EJECUCION', '2019-04-17', 'ESP. Y MTRIA.ESTRUC. EXTRANJEROS- 2º CUAT. 2019', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5448473', '5356501', '', '2019-10-01', '2019-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'TERMINO', '2019-05-27', '2019-INFORMATICA-AUTOCAD BASICO-VIER 6/9 19 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5471759', '5141383', '', '2019-07-01', '2019-07-30', 'NOCHE', '', '', 0, 16, 'EJECUCION', '2019-06-28', 'MODULO ECONOMÍA Y EMPRESA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596924', '5596892', '', '2020-08-01', '2020-09-30', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2019-12-10', '2020-ADMIN-CONCILIACIÓN BANCARIA-LUNES 13/7 BAJA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5596615', '5596608', '', '2019-12-01', '2020-03-01', 'NOCHE', '', '', 0, 9, 'EJECUCION', '2019-12-09', '2020 - MATRICULA LIC LOGISTICA  BONIFICADA ', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5515342', '5356564', '', '2019-11-01', '2020-02-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 4, 'EJECUCION', '2019-09-10', '2019-IACT-REFRIGERACION Y AA-15-MIER 9/10 15', '2020-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5419732', '5356366', '', '2019-08-01', '2020-01-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 5, 'TERMINO', '2019-04-15', '2019-ADMIN-ASIST ADM PYME 6M-SAB 6/7 9 HS', '2019-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5520589', '5520531', '', '2019-11-01', '2019-12-31', 'MAÑANA', '09:00-15:30', 'SABADO', 0, 1, 'TERMINO', '2019-09-23', '2019-PROFAU-MEC BASICA-6 CLASES-SAB 9/11 9 HS', '2019-12-05');
INSERT INTO "public"."carrerascursosalta" VALUES ('5513850', '5356525', '', '2019-11-01', '2019-11-30', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2019-09-05', '2019-INFORMATICA-EXCEL AVANZADO-JUEVES 7/11 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5596942', '5596938', '', '2020-08-01', '2021-01-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2019-12-10', '2020-ADMIN-ASIST RRHH 6M-SAB 11/7 9 HS', '2021-01-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5597911', '5597763', '', '2020-08-01', '2021-01-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2019-12-11', '2020-ADMIN-SEC ADM INFORMATICO 6M SAB 18/7 BAJA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5521666', '5356519', '', '2019-11-01', '2019-11-30', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'TERMINO', '2019-09-30', '2019-INFORMATICA- EXCEL BASICO- MARTES 5/11 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5520437', '5356551', '', '2019-11-01', '2020-03-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 4, 'EJECUCION', '2019-09-23', '2019-IACT-INST DOM Y COMERCIALES-19-VIE 18/10 15 H', '2020-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5606459', '5596608', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 8, 'EJECUCION', '2020-01-03', '2020 -MATRICULA - LICENCIATURA EN LOGISTICA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599213', '5599211', '', '2020-04-01', '2020-09-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 6, 'TERMINO', '2019-12-17', '2020-INFORMATICA-DISEÑO WEB VIER 6/3 19 HS', '2020-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5598271', '5582118', '', '2020-04-01', '2020-06-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 3, 'EJECUCION', '2019-12-12', '2020-PROFAU-ELECTRIC DEL AUTOMOVIL-LUNES 9/3 19 H', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599206', '5599204', '', '2020-10-01', '2020-12-31', 'NOCHE', '18:00-19:30/18:00-19:30', 'MIERCOLES-VIERNES', 0, 3, 'EJECUCION', '2019-12-17', '2020-INFORMATICA AUTOCAD BASICO MI YVIER 2/9 19 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599231', '5599229', '', '2020-04-01', '2020-05-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2019-12-17', '2020-INFORMAT-ROBOT BASICA LUNES 2/3 19 SUSPENDIDO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5599223', '5599221', '', '2020-03-01', '2020-04-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'TERMINO', '2019-12-17', '2020-INFORMATICA-EXCEL BASICO MARTES 3/3 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5599281', '5599279', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 2, 'TERMINO', '2019-12-17', '2020-IDIOMAS -FIRST CERTIFICATE MIER 18/3 18 HS', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599219', '5599217', '', '2020-03-01', '2020-04-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 0, 'TERMINO', '2019-12-17', '2020-INFORMATICA- EXCEL AVANZADO JUEVES 5/3 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5598395', '5582122', '', '2020-04-01', '2020-06-30', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'EJECUCION', '2019-12-12', '2020-PROFAU-INYECCION NAFTA FYC-MARTES 10/3 19 HS', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599046', '5582116', '', '2020-04-01', '2020-06-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 2, 'EJECUCION', '2019-12-16', '2020-PROFAU-DISENO AUTOMOTRIZ 1-MIER 11/03 19 HS', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5416335', '5352019', '', '2019-07-01', '2020-07-01', 'TARDE', '14:00-18:00', 'SABADO', 0, 14, 'TERMINO', '2019-04-09', '2019-SALUD-AUXILIAR DE FARMACIA- SABADO 15/6 14 HS', '2020-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599044', '5582116', '', '2020-04-01', '2020-05-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 2, 'TERMINO', '2019-12-16', '2020-PROFAU-DISENO AUTOMOTRIZ 1-MIER 11/03 15 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599057', '5582124', '', '2020-07-01', '2020-09-01', 'MAÑANA', '10:00-13:00', 'JUEVES', 0, 3, 'EJECUCION', '2019-12-16', '2020-PROFAU-MECANICA AVANZADA 1 JUEV 18/6 10 HS', '2020-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599494', '5213472', '', '2019-12-01', '2019-12-31', 'TARDE', '', '', 0, 2, 'EJECUCION', '2019-12-18', '2020-MATRICULA DOCENCIA UNIVERSITARIA -BONIFICABLE', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599501', '5215895', '', '2019-12-01', '2019-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2019-12-18', '2020- MATRICULA LIC EN TEC EDUCATIVA-BONIFICADA', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599305', '5599303', '', '2020-05-01', '2020-06-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 2, 'EJECUCION', '2019-12-17', '2020-CIE-INTR AUTOMATIZACION INDU 1- SAB 4/4 9 HS', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599505', '5375604', '', '2019-12-01', '2019-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2019-12-18', '2020 -MATRÍCULA LIC. HIG Y SEGURIDAD -BONIFICADA', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5606424', '5213472', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2020-01-03', '2020-MATRICULA DOCENCIA UNIVERSITARIA - NO DOCENTE', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5606461', '5375604', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2020-01-03', '2020 -MATRÍCULA LIC. HIGIENE Y SEGURIDAD', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599240', '5599238', '', '2020-05-01', '2020-06-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2019-12-17', '2020-INFORMATICA-INTR A REDES SABADO 4/4 NO INICIO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5599252', '5599250', '', '2020-05-01', '2020-09-01', 'TARDE', '15:00-15:00/15:00-18:00', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2019-12-17', '2020-INFORMATICA-REP PC Y NOT-MYV 31/3NO INICIO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5606480', '5215895', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-01-03', '2020 - MATRICULA LIC. EN TECNOLOGIA EDUCATIVA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5515344', '5356564', '', '2019-11-01', '2020-01-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'TERMINO', '2019-09-10', '2019-IACT-REFRIGERACION Y AA-16-MIER 9/10 19', '2020-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599290', '5599287', '', '2020-04-01', '2020-06-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-JUEVES', 0, 2, 'TERMINO', '2019-12-17', '2020-CIE-AUTOMATIZACION INDUSTRIAL- MYJ 10/3 18 HS', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5605897', '5605895', '', '2020-12-01', '2020-12-31', 'NOCHE', '18:00-20:30', 'MIERCOLES', 0, 0, 'ESPERA', '2019-12-26', '2020-ADMIN-SEM MONOTRIBUTO E IIBB MIE 2/12 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5599272', '5596640', '', '2020-08-01', '2020-11-30', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 4, 'TERMINO', '2019-12-17', '2020-ADMIN-ASIST ADMIN CONT PYME 4M-M Y J 7/7 19 ', '2020-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5520439', '5356551', '', '2019-11-01', '2020-03-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'EJECUCION', '2019-09-23', '2019-IACT-INST DOM Y COMERCIALES-20-VIE 18/10 19 H', '2020-03-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599052', '5582120', '', '2020-03-01', '2020-05-01', 'NOCHE', '19:00-21:00', 'JUEVES', 0, 3, 'EJECUCION', '2019-12-16', '2020-PROFAU-INTER DE PLANOS ELECTR JUEV 13/2 19 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599061', '5582124', '', '2020-03-01', '2020-05-31', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'EJECUCION', '2019-12-16', '2020-PROFAU-MECANICA AVANZADA 1 VIER 14/02 19 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599065', '5582128', '', '2020-03-01', '2020-05-01', 'MAÑANA', '10:00-13:00', 'MIERCOLES', 0, 3, 'EJECUCION', '2019-12-16', '2020-PROFAU- MECANICA BASICA MIER 12/02 10 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5645621', '5597931', '', '2020-06-01', '2020-08-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 3, 'TERMINO', '2020-02-17', '2020-ADMIN-MARKETING DIGITAL SAB 9/5 9 HS', '2020-08-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5644983', '5600413', '', '2020-09-01', '2020-11-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'JUEVES-VIERNES', 0, 3, 'TERMINO', '2020-02-13', '2020-CIE-SEGURIDAD E HIE IND JU Y VI 20/8 19.30 HS', '2020-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5607230', '5582879', '', '2020-03-01', '2020-06-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 4, 'EJECUCION', '2020-02-03', '2020-IACT-INST ELECT IND-2-SABADO 8/2 10 HS', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5645217', '5645209', '', '2020-05-01', '2020-05-31', 'MAÑANA', '09:00-16:00', 'SABADO', 0, 0, 'ESPERA', '2020-02-14', '2020-PROFAU-SEM PUESTA PUNTO ARBOL LEVA 9/5 9 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5607363', '5582868', '', '2020-04-01', '2020-06-01', 'TARDE', '15:00-18:00', 'MARTES', 0, 0, 'ESPERA', '2020-02-03', '2020-IACT-REFRIGERACION Y AA-4-MAR 10/3 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5606464', '5161404', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2020-01-03', '2020 MATRÍCULA MBA ', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5666765', '5666744', '', '2020-05-01', '2020-06-01', 'MAÑANA', '09:00-12:00', 'MARTES', 0, 0, 'ESPERA', '2020-03-06', '2020-CIE-PROGRAM INTELIGENTE RELE 1 JUE 16/4 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5626329', '5582879', '', '2020-04-01', '2020-09-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2020-02-10', '2020-IACT-INST ELECT IND-3-SABADO 7/3 10 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5645604', '5582868', '', '2020-04-01', '2020-07-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2020-02-17', '2020-IACT-REFRIGERACION Y AA-5-MAR 10/3 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5626316', '5618449', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2020-02-10', '2020 - MATRICULA LIC BIOIMAGENES', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5607255', '5582900', '', '2020-04-01', '2020-07-01', 'TARDE', '15:00-18:00', 'VIERNES', 0, 0, 'ESPERA', '2020-02-03', '2020-IACT- INST. DOM Y COMERC-2-VIERNES 21/2 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5607260', '5582900', '', '2020-04-01', '2020-07-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-02-03', '2020-IACT- INST. DOM Y COMERC-3-VIERNES 21/2 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5646561', '5582900', '', '2020-04-01', '2020-07-31', 'TARDE', '15:00-18:00', 'VIERNES', 0, 0, 'ESPERA', '2020-02-20', '2020-IACT- INST. DOM Y COMERC-4-VIERNES 20/3 15 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5646563', '5582900', '', '2020-04-01', '2020-07-31', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-02-20', '2020-IACT- INST. DOM Y COMERC-5-VIERNES 20/3 19HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5607941', '5607935', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2020-02-04', '2020 - CURSO INTENSIVO QUÍMICA', '2020-02-05');
INSERT INTO "public"."carrerascursosalta" VALUES ('5644670', '5644667', '', '2020-04-01', '2020-05-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 0, 'ESPERA', '2020-02-13', '2020-INFOR-REP DE TABLET Y CELULAR MI 4/3 15 SUSP', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5682691', '5191723', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-03-12', '2020- 1 AÑO ESPEC Y MTRIA.ESTRUCTURAL EXTRANJEROS ', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5682750', '5582879', '', '2020-05-01', '2020-09-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2020-03-12', '2020-IACT-INST ELECT IND-4-SABADO 4/4 10 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5682769', '5582868', '', '2020-05-01', '2020-08-01', 'TARDE', '19:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2020-03-12', '2020-IACT-REFRIGERACION Y AA-6-JUEV 16/4 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5683702', '5683699', '', '2020-03-01', '2020-04-30', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-03-13', '2019-2ºAÑO-ESP.Y MTRIA.I.ESTRUC.-NACMATRICULA PURA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5683706', '5683704', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-03-13', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC-NAC-MATRICULA 15%', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5683713', '5683708', '', '2020-03-01', '2020-04-30', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-03-13', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC.-NAC-MATRICULA 20%', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5683717', '5683715', '', '2020-03-01', '2020-04-30', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-03-13', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC.-NAC-MATRICULA 25%', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5683721', '5683719', '', '2020-03-01', '2020-04-30', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-03-13', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC.-NAC-MATRICULA 40%', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5683725', '5683723', '', '2020-03-01', '2020-04-30', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-03-13', '2019-2ºAÑO-ESP.MTRIA.I.ESTRUC.-NAC-MATRICULA 75%', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5683731', '5355463', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-03-13', '2019 - 2ºAÑO - ESP. Y MTRIA.ESTRUC. EXTRANJEROS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5607199', '5582868', '', '2020-03-01', '2020-06-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 4, 'EJECUCION', '2020-02-03', '2020-IACT-REFRIGERACION Y AA-3-MIER 12/2 19 HS', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5699326', '5596876', '', '2020-09-11', '2020-11-30', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2020-04-22', '2020-ADMIN-ANALISTA CONT  11/08 19 HS BAJA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5596878', '5596876', '', '2020-04-01', '2020-06-30', 'NOCHE', '19:00-22:00', 'MARTES', 0, 3, 'TERMINO', '2019-12-10', '2020-ADMIN-ANALISTA CONTABLE-MARTES 10/3 19 HS', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599263', '5599250', '', '2020-04-01', '2020-09-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'LUNES-JUEVES', 0, 6, 'EJECUCION', '2019-12-17', '2020-INFORMATICA-REP PC Y NOT- LU Y JU 2/3 19 H ', '2020-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5607375', '5375619', '', '2020-02-01', '2020-02-24', 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-02-03', 'CURSO INTENSIVO QUÍMICA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5643813', '4895524', '', '2020-02-01', '2020-12-30', 'NOCHE', '', '', 0, 15, 'EJECUCION', '2020-02-12', 'TEC.UNIVERSITARIO EN ADMINISTRACION- PRIMERO 2020 ', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5644297', '4895524', '', '2020-02-01', '2020-12-30', 'NOCHE', '', '', 0, 15, 'EJECUCION', '2020-02-12', 'TEC. UNIVERSITARIO EN ADMINISTRACION- SEGUNDO 2020', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5698116', '4895080', '', '2020-04-01', '2020-05-31', 'TARDE', '', '', 0, 10, 'EJECUCION', '2020-04-15', '2020- INESTABILIDAD DEL EQUILIBRIO ', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5696321', '4920017', '', '2020-05-17', '2020-07-17', 'MAÑANA', '', '', 0, 3, 'TERMINO', '2020-04-08', 'CURSO INTRODUCTORIO TUP  MAYO 2020- PACHECO', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599236', '5599233', '', '2020-04-01', '2020-06-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'EJECUCION', '2019-12-17', '2020-INFORMATICA-INST CAM VIG MI 4/3 19 SUSPENDIDO', '2020-06-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5592006', '5591990', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 4, 'EJECUCION', '2019-12-09', '2020-IDIOMAS-INGLES-NIVEL 2-MIER 18/03 18 HS AZUL', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596588', '5591990', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 4, 'EJECUCION', '2019-12-09', '2020-IDIOMAS-INGLES-NIVEL 3-LUNES 9/3 18 HS-ADRIAN', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596590', '5591990', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 4, 'EJECUCION', '2019-12-09', '2020-IDIOMAS-INGLES-NIVEL 3-LUNES 16/3 18 HS-AZUL', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596593', '5591990', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 4, 'EJECUCION', '2019-12-09', '2020-IDIOMAS-INGLES-NIVEL 4-MARTES 10/03 18 HS', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5520441', '5356557', '', '2019-12-01', '2020-05-01', 'MAÑANA', '10:00-13:00', 'SABADO', 0, 5, 'EJECUCION', '2019-09-23', '2019-IACT - INST ELEC INDUSTRIAL-10-SAB 2/11 10 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596601', '5591990', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 4, 'EJECUCION', '2019-12-09', '2020-IDIOMAS-INGLES-NIVEL 5-JUEVES 12/03 18 HS', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596606', '5591909', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 4, 'EJECUCION', '2019-12-09', '2020-IDIOMAS-INGLES-NIVEL 1-MIER 11/03 18 HS ADRI', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596610', '5591909', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 4, 'EJECUCION', '2019-12-09', '2020-IDIOMAS-INGLES-NIVEL 1-MARTES 17/03 18 HS-AZU', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5596638', '5596633', '', '2020-04-01', '2020-09-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 6, 'TERMINO', '2019-12-10', '2020-ADMIN-ASIST ADMIN CONT PYME-6M-SAB 14/3 9 HS', '2020-09-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5560978', '5356551', '', '2019-12-01', '2020-04-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 4, 'EJECUCION', '2019-10-21', '2019-IACT-INST DOM Y COMERCIALES-22-VIE 15/11 19 H', '2020-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599067', '5582128', '', '2020-03-01', '2020-05-01', 'TARDE', '15:00-18:00', 'MIERCOLES', 0, 3, 'EJECUCION', '2019-12-16', '2020-PROFAU- MECANICA BASICA MIER 12/02 15 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5592001', '5591990', '', '2020-04-01', '2020-07-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 4, 'EJECUCION', '2019-12-09', '2020-IDIOMAS-INGLES-NIVEL 2-JU 19/03 18 HS ALESUSP', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599069', '5582128', '', '2020-03-01', '2020-05-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'EJECUCION', '2019-12-16', '2020-PROFAU- MECANICA BASICA MIER 12/02 19 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599334', '5599326', '', '2020-04-01', '2020-05-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 2, 'EJECUCION', '2019-12-17', '2020-CIE- PLC NIVEL 1-SAB 7/3 9 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5599342', '5599340', '', '2020-04-01', '2020-05-01', 'TARDE', '13:00-16:00', 'SABADO', 0, 2, 'EJECUCION', '2019-12-17', '2020-CIE- PLC NIVEL 2-SAB 7/3 13 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5644975', '5582128', '', '2020-04-01', '2020-05-01', 'MAÑANA', '10:00-22:00', 'JUEVES', 0, 2, 'EJECUCION', '2020-02-13', '2020-PROFAU- MECANICA BASICA JUE 12/03 10 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5644977', '5582128', '', '2020-04-01', '2020-05-01', 'TARDE', '15:00-18:00', 'JUEVES', 0, 2, 'EJECUCION', '2020-02-13', '2020-PROFAU- MECANICA BASICA JUE 12/03 15 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5644979', '5582128', '', '2020-04-01', '2020-05-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 2, 'EJECUCION', '2020-02-13', '2020-PROFAU- MECANICA BASICA JUE 12/03 19 HS', '2020-05-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5706601', '5599221', '', '2020-07-01', '2020-07-31', 'NOCHE', '18:00-20:00', 'MARTES', 0, 0, 'TERMINO', '2020-05-21', '2020-INFORMATICA-EXCEL BASICO MARTES 7/7 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5734793', '5596619', '', '2020-08-01', '2020-11-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 4, 'EJECUCION', '2020-05-28', '2020-IDIOMAS-PORTUGUÉS-NIVEL 1 LYM 15/7 19.30 HS', '2020-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5738481', '5591909', '', '2020-10-01', '2020-12-28', 'NOCHE', '18:00-19:30/19:30-21:00', 'LUNES-JUEVES', 0, 3, 'TERMINO', '2020-06-11', '2020-IDIOMAS-INGLES-NIVEL 1 L 18 Y J 1930 27/8-ALE', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5738463', '5599279', '', '2020-10-01', '2020-12-31', 'NOCHE', '18:00-20:00', 'VIERNES', 0, 3, 'EJECUCION', '2020-06-11', '2020-IDIOMAS -FIRST CERTIFICATE VIERNES 28/8 18 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5738532', '5591990', '', '2020-10-01', '2020-12-31', 'NOCHE', '18:00-20:00', 'JUEVES', 0, 3, 'TERMINO', '2020-06-11', '2020-IDIOMAS-INGLES-NIVEL 6-JUEVES 20/08 18 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5734795', '5596619', '', '2020-09-01', '2020-12-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 4, 'EJECUCION', '2020-05-28', '2020-IDIOMAS-PORTUGUÉS-NIVEL 3 LU Y MI 10/8 18 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5738522', '5591990', '', '2020-09-01', '2020-12-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MARTES', 0, 4, 'TERMINO', '2020-06-11', '2020-IDIOMAS-INGLES-NIVEL 4- LUN Y MAR 18/8 18 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5706599', '5599217', '', '2020-07-01', '2020-07-31', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 0, 'TERMINO', '2020-05-21', '2020-INFORMATICA- EXCEL AVANZADO MIER 8/7 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5738496', '5591990', '', '2020-10-01', '2020-12-31', 'NOCHE', '18:00-19:30/18:00-19:30', 'MIERCOLES-VIERNES', 0, 3, 'TERMINO', '2020-06-11', '2020-IDIOMAS-INGLES-NIVEL 2 MI Y VI 26/8 18 H-ADRI', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5736607', '5736605', '', '2020-06-01', '2020-06-30', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'TERMINO', '2020-06-01', '2020-CIE- PLC S7-1200 NIVEL 1-JUEVES 18/6 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5738517', '5591990', '', '2020-10-01', '2020-12-31', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 3, 'TERMINO', '2020-06-11', '2020-IDIOMAS-INGLES-NIVEL 3-LU Y MIE 26/8 19.30 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5719674', '5719665', '', '2020-09-01', '2020-10-01', 'MAÑANA', '10:00-13:00', 'LUNES', 0, 2, 'TERMINO', '2020-05-26', '2020-PROFAU- MECANICA GENERAL LUNES 10/8 10 HS', '2020-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5646152', '4920001', '', '2020-03-01', NULL, 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-02-19', 'TECNICO SUP. EN SISTEMAS INFORMATICOS MARZO 2020', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5706506', '4895080', '', '2020-04-01', '2020-05-31', 'NOCHE', '', '', 0, 7, 'EJECUCION', '2020-05-20', '2020-ESTRUCTURAS METÁLICAS ESPECIALES', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5737926', '5737921', '', '2020-09-01', '2020-12-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 4, 'TERMINO', '2020-06-09', '2020-IDIOMAS- ALEMAN 1- MIERCOLES 12/8 18 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5740055', '5740053', '', '2020-10-01', '2020-12-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 3, 'TERMINO', '2020-06-22', '2020-ADMIN-COACHING NIVEL 2 VIER DTO 4/9 19 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5738527', '5591990', '', '2020-09-01', '2020-12-01', 'NOCHE', '19:30-21:00/18:00-19:30', 'MARTES-MIERCOLES', 0, 4, 'TERMINO', '2020-06-11', '2020-IDIOMAS-INGLES-NIVEL 5 MAR 19.30-MIER 18 18/8', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5706583', '5582120', '', '2020-08-01', '2020-08-31', 'NOCHE', '19:00-22:00/19:00-22:00/19:00-19:00/19:00-19:00', 'LUNES-MARTES-MIERCOLES-JUEVES', 0, 0, 'ESPERA', '2020-05-21', '2020-PROFAU-INTER DE PLANOS ELECT LU  3/8 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5706597', '5599211', '', '2020-10-01', '2021-03-01', 'NOCHE', '19:00-20:30/19:00-20:30', 'MARTES-SABADO', 0, 0, 'ESPERA', '2020-05-21', '2020-INFORMATICA-DISEÑO WEB MAR Y SAB 1/9 19 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5719722', '5719715', '', '2020-11-01', '2020-12-10', 'NOCHE', '19:00-21:00', 'JUEVES', 0, 2, 'TERMINO', '2020-05-26', '2020-INFORMATICA PROGRAMA EN PHP 1 JUE 22/10 19 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5738910', '5448365', '', '2020-10-01', '2020-11-02', 'NOCHE', '', '', 0, 0, 'EJECUCION', '2020-06-12', 'SEMINARIO UNIVERSITARIO TUA- NOVIEMBRE 2020', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5706422', '5582130', '', '2020-06-01', '2020-07-31', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 2, 'EJECUCION', '2020-05-20', '2020-PROFAU-MOTORES 1-REPAR Y MANT VIE 22/5 19 HS', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5859564', '5448365', '', '2021-02-01', '2021-03-01', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-11-03', 'SEMINARIO UNIVERSITARIO TUA- FEBRERO 2021', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5719713', '5719708', '', '2020-07-01', '2020-07-31', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 1, 'TERMINO', '2020-05-26', '2020-INFORMATICA PROGRAMA BASICA C MIE 17/6 18 HS', '2020-07-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5902921', '5860023', '', '2021-05-01', '2021-09-01', 'MAÑANA', '09:00-13:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-MARKETING DIGITAL-JUEV 20/5 9 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5745314', '5599217', '', '2020-10-01', '2020-10-31', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 1, 'TERMINO', '2020-07-03', '2020-INFORMATICA- EXCEL AVANZADO MIER 14/10 18 HS', '2020-10-30');
INSERT INTO "public"."carrerascursosalta" VALUES ('5771340', '5771338', '', '2020-09-01', '2020-10-03', 'TARDE', '14:00-17:00', 'SABADO', 0, 2, 'TERMINO', '2020-07-08', '2020-CIE- PLC S7-1200 NIVEL 2-SABADO 15/8 14 HS', '2020-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5861895', '4895060', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-11-16', '2021 - 1° AÑO - ESPEC.Y MTRIA.ESTRUCTURAL NACIONAL', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902939', '5852099', '', '2021-05-01', '2021-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-ANALISTA IMPOSITIVO-VI 14/5 19 HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902953', '5902951', '', '2021-04-01', '2021-07-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-HERRAMIENTAS DE PNL-12/4 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5740558', '5740534', '', '2020-06-01', '2020-11-30', 'NOCHE', '', '', 0, 6, 'TERMINO', '2020-06-24', 'CURSO DE INGRESO DE GRADO - JUNIO A NOVIEMBRE 2020', '2020-11-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5786426', '5740534', '', '2020-09-01', '2020-12-17', 'NOCHE', '', '', 0, 4, 'TERMINO', '2020-07-21', 'CURSO DE INGRESO DE GRADO - SEPTIEMBRE 2020', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5861904', '5191723', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-11-16', '2021- 1 AÑO -ESPEC Y MTRIA.ESTRUCTURAL EXTRANJEROS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902924', '5860029', '', '2021-05-01', '2021-09-01', 'MAÑANA', '09:00-13:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-MARKETING DIGITAL-JUEV 20/5 9 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5874583', '5683699', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2020-11-18', '2021- ESP.Y MTRIA.I.ESTRUC.-NAC -MATRICULA 1° AÑO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902960', '5852884', '', '2021-06-01', '2021-10-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-COACHING Y LIDERAZGO JU 10/6 19H-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5745312', '5599221', '', '2020-10-01', '2020-10-30', 'NOCHE', '18:00-20:00', 'LUNES', 0, 0, 'TERMINO', '2020-07-03', '2020-INFORMATICA-EXCEL BASICO LUNES 19/10 18 HS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5771346', '5771343', '', '2020-09-01', '2020-10-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 2, 'EJECUCION', '2020-07-08', '2020-PROFAU-DISEÑO MEC 1 CON SOLIDWOR-MI 12/8 19 H', '2020-10-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5902942', '5852101', '', '2021-05-01', '2021-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-ANALISTA IMPOSITIVO VI 14/5 19 H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5646154', '4919999', '', '2020-03-01', NULL, 'MAÑANA', '', '', 0, 12, 'EJECUCION', '2020-02-19', 'TEC. SUP. PROGRAMACIÓN MARZO 2020 - PACHECO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5902962', '5852886', '', '2021-06-01', '2021-10-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-COACHING Y LIDERAZGO JU 10/6 19H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902912', '5902909', '', '2021-05-01', '2021-11-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-SECRET ADMN INF 6M SA 22/5 9 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902916', '5902914', '', '2021-05-01', '2021-11-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-SECRET ADMN INF 6M SA 22/5 9 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902949', '5853266', '', '2021-06-01', '2021-10-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-LIQUIDAC DE SUELDOS-SAB 12/6 9HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902957', '5902955', '', '2021-04-01', '2021-07-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-HERRAMIENTAS DE PNL-12/4 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5699874', '5194586', '', '2020-04-01', '2020-12-31', 'TARDE', '', '', 0, 9, 'EJECUCION', '2020-04-27', 'ALEMAN - SAU NIVEL 1 _2020', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5699876', '5194586', '', '2020-04-01', '2020-12-31', 'TARDE', '', '', 0, 9, 'EJECUCION', '2020-04-27', 'ALEMAN-SAU- NIVEL 2_2020', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5745320', '5719708', '', '2020-11-01', '2020-12-01', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 2, 'TERMINO', '2020-07-03', '2020-INFORMATICA PROGRAMA BASICA C MIE 23/9 18 HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5771473', '5771471', '', '2020-10-01', '2020-12-31', 'NOCHE', '18:00-19:30/18:00-19:30', 'MIERCOLES-VIERNES', 0, 3, 'EJECUCION', '2020-07-08', '2020-INF AUTOCAD BASIC ON LINE MI Y VI 2/9 18  HS', '2020-12-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903127', '5903123', '', '2021-03-01', '2021-06-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2020-12-21', '2021-CIE-AUTOMA IND ONLINE-MA Y JU 16/3 19HS-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5885562', '4920017', '', '2021-02-01', '2021-03-11', 'MAÑANA', '', '', 0, 0, 'TERMINO', '2020-12-01', 'CURSO INTRODUCTORIO TUP FEBRERO 2021 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902965', '5852880', '', '2021-05-01', '2021-11-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-ASISTENTE DE RRHH 6M-SA 15/5 9 HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902968', '5852882', '', '2021-05-01', '2021-11-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-ASISTENTE DE RRHH 6M-SA 15/5 9 H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5666110', '5375619', '', '2020-01-01', '2020-12-31', 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-03-05', '2020-LICENCIATURA EN HIGIENE Y SEGURIDAD', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5684951', '5684949', '', '2020-04-01', '2020-11-30', 'MAÑANA', '', '', 0, 9, 'EJECUCION', '2020-03-30', '2020 -DIPLOMATURA EN GENERO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903132', '5903130', '', '2021-04-01', '2021-05-01', 'NOCHE', '14:00-17:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-21', '2021-CIE-PLC S7 1200 NIVEL 1-JU 18/3 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902945', '5853264', '', '2021-06-01', '2021-10-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-LIQUIDAC DE SUELDOS-SAB 126 9 H-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903125', '5903121', '', '2021-03-01', '2021-06-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2020-12-21', '2021-CIE-AUTOMA IND ONLINE-MA Y JU 16/3 19HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902929', '5852095', '', '2021-05-01', '2021-10-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-ANALISTA CONTABLE-MAR 11/5 19 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5902932', '5852097', '', '2021-05-01', '2021-10-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2020-12-18', '2021-ADMIN-ANALISTA CONTABLE-MAR 11/5 19 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903905', '5903892', '', '2021-05-01', '2021-06-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2020-12-27', '2021-PROFAU-INYEC ELEC GRALONLIN MI 7/4 -CUOTA UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903251', '5903249', '', '2021-05-01', '2021-09-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'JUEVES-VIERNES', 0, 0, 'ESPERA', '2020-12-21', '2021-CIE-SEGURIDAD E HIGIE-JU 13/5 19:30 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903693', '5852105', '', '2021-05-01', '2021-10-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-ASIS ADM CONT PYME 4M MJ 18/5 19H-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903684', '5852878', '', '2021-03-01', '2021-09-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-ASIS ADM CONT PYME 6M SA 13/3 9H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903784', '5853262', '', '2021-05-01', '2021-07-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-CONCILI BANCARIA EXCEL-MI 5/5 19-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903803', '5852876', '', '2021-03-01', '2021-09-01', 'MAÑANA', '09:00-13:00', 'MARTES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-ASIS ADM CONT PYME 6M MA 9/3 9HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903682', '5852876', '', '2021-03-01', '2021-09-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-ASIS ADM CONT PYME 6M SA 13/3 9HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903806', '5852878', '', '2021-03-01', '2021-09-01', 'MAÑANA', '09:00-13:00', 'MARTES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-ASIS ADM CONT PYME 6M MA 9/3 9HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903648', '5903642', '', '2021-06-01', '2021-07-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2020-12-23', '2021-CIE-LEAN MANUFACTURING-MA 1/6 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903255', '5903253', '', '2021-05-01', '2021-09-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'JUEVES-VIERNES', 0, 0, 'ESPERA', '2020-12-21', '2021-CIE-SEGURIDAD E HIGIE-JU 13/5 19:30 H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903812', '5903810', '', '2021-03-01', '2021-07-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-MARKETING PROM Y VENTA-SA 13/3 9H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903816', '5903814', '', '2021-03-01', '2021-06-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-MARKETING PROM Y VENTA-SA 13/3 9H-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903992', '5903986', '', '2021-06-01', '2021-10-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-27', '2021-ADMIN-ADMIN PERSONAL JU 10/6 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903691', '5852103', '', '2021-05-01', '2021-10-01', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-ASIS ADM CONT PYME 4M MJ 18/5 19H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903712', '5853151', '', '2021-07-01', '2021-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-COACH Y GEST DELA EMO-VI 16/7 19H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903902', '5903889', '', '2021-04-01', '2021-05-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 1, 'EJECUCION', '2020-12-27', '2021-PROFAU-INYEC ELEC GRALONLIN MI 7/4 19-CUOTA', '2021-04-22');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903714', '5853153', '', '2021-07-01', '2021-11-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-COACH Y GEST DELA EMO-VI 16/7 19-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903411', '5141383', '', '2020-04-01', '2020-06-01', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2020-12-21', '2020 -MODULO TECNOLOGIA EDUCATIVA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5904666', '5903963', '', '2021-03-01', '2021-04-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 0, 'TERMINO', '2020-12-29', '2021-INFORMAT-EXCEL BASICO ONLINE LU 1/3 18-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903923', '5903920', '', '2021-04-01', '2021-06-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-12-27', '2021-PROFAU-DISEÑO MECÁ 1 ONLINE VI 9/4 19-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5904664', '5903961', '', '2021-03-01', '2021-04-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 0, 'TERMINO', '2020-12-29', '2021-INFORMAT-EXCEL BASICO ONLINE LU 1/3 18H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903136', '5903134', '', '2021-05-01', '2021-07-01', 'TARDE', '14:00-17:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-21', '2021-CIE-PLC S7 1200 NIVEL 2-SAB 8/5 14 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903823', '5903821', '', '2021-05-01', '2021-06-01', 'NOCHE', '19:00-21:30', 'MIERCOLES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADM-SEM MONOTRIBUTO E IIBB-MI 5/5 19 HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903865', '5903863', '', '2021-05-01', '2021-10-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-27', '2021-SALUD-CUIDADOR DE NIÑOS-SA 10/4 9HS-CUOTA UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903247', '5903245', '', '2021-03-01', '2021-05-01', 'TARDE', '14:00-17:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-21', '2021-CIE-PLC S7 1200 NIVEL 1-JU 18/3 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903704', '5861929', '', '2021-04-01', '2021-08-01', 'MAÑANA', '09:00-12:00/09:00-12:00', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-ASIST DE RRHH 4M-L Y MI12/4 9 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903749', '5853157', '', '2021-05-01', '2021-07-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADMIN-CONCILI BANCARIA EXCEL-MI 5/5 19H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5904001', '5903999', '', '2021-04-01', '2021-06-30', 'NOCHE', '19:00-21:00', 'LUNES', 0, 0, 'ESPERA', '2020-12-27', '2021-ADMIN-SELEC Y GEST PERSONAL-LU 12/4 19H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5904005', '5904003', '', '2021-04-01', '2021-06-30', 'NOCHE', '19:00-21:00', 'LUNES', 0, 0, 'ESPERA', '2020-12-27', '2021-ADMIN-SELEC Y GEST PERSONAL-LU 12/4 19H-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903914', '5903911', '', '2021-05-01', '2021-06-01', 'NOCHE', '09:30-12:30', 'SABADO', 0, 0, 'ESPERA', '2020-12-27', '2021-PROFAU-INT PLANO ELÉCT ONLIN SA 5/5 9 H-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903909', '5903907', '', '2021-05-01', '2021-06-01', 'NOCHE', '09:30-12:30', 'SABADO', 0, 0, 'ESPERA', '2020-12-27', '2021-PROFAU-INT PLANO ELÉCT ONLIN SA 5/5 9 H-UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903918', '5903916', '', '2021-04-01', '2021-06-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2020-12-27', '2021-PROFAU-DISEÑO MECÁ 1 ONLINE VI 9/4 19 HS-UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903646', '5903644', '', '2021-06-01', '2021-07-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2020-12-23', '2021-CIE-LEAN MANUFACTURING-MA 1/6 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903869', '5903867', '', '2021-05-01', '2021-10-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-27', '2021-SALUD-CUIDA PERSONA MAYOR-SA10/4 9H-CUOTA UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5904676', '5903951', '', '2021-04-01', '2021-05-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-29', '2021-INFORMAT-EXCEL AVANZADO ONLIN JU 8/4 18-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903171', '5903139', '', '2021-05-01', '2021-07-01', 'TARDE', '14:00-17:00', 'SABADO', 0, 0, 'ESPERA', '2020-12-21', '2021-CIE-PLC S7 1200 NIVEL 2-SAB 8/5 14 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903827', '5903825', '', '2021-05-01', '2021-06-01', 'NOCHE', '19:00-21:30', 'MIERCOLES', 0, 0, 'ESPERA', '2020-12-23', '2021-ADM-SEM MONOTRIBUTO E IIBB-MI 5/5 19 H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903990', '5903988', '', '2021-06-01', '2021-10-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-27', '2021-ADMIN-ADMIN PERSONAL JU 10/6 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903413', '5141383', '', '2020-07-01', '2020-09-01', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2020-12-21', '2020-MODULO INNOVACION Y TRANSFORMACION DIGITAL', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903855', '5903852', '', '2021-04-01', '2021-12-31', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 1, 'EJECUCION', '2020-12-27', '2021-SALUD-AUXI DE FARMACIA-SA 6/3 9HS-CUOTAS UTN', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903859', '5903857', '', '2021-04-01', '2021-09-01', 'MAÑANA', '09:00-11:30', 'SABADO', 0, 1, 'EJECUCION', '2020-12-27', '2021-SALUD-SECRET MEDICO-SA 6/3 9 HS-CUOTAS UTN', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903873', '5903835', '', '2021-03-01', '2021-06-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'EJECUCION', '2020-12-27', '2021-PROFAU-MEC GRAL ONLINE-LU 8/2 19HS-CUOTAS UTN', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5906367', '5906363', '', '2021-03-01', '2021-05-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-INFORMAT-DISEÑO WEB BAS-LYMI 15/3 19:30-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5904685', '5903965', '', '2021-07-01', '2021-09-01', 'NOCHE', '19:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-29', '2021-INFORMAT-PROGRAM PHP 1 ONLIN JU 1/7 19-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906293', '5903930', '', '2021-04-01', '2021-09-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-PORTU NIVEL2-LUYMI 12/4 19:30H-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906301', '5903932', '', '2021-04-01', '2021-09-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-PORTU NIVEL2-LUYMI 12/4 19:30H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906291', '5903930', '', '2021-04-01', '2021-09-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-PORTU NIVEL1-LUYMI 12/4 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906319', '5903934', '', '2021-03-01', '2021-08-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 1-LUYMI 15/3 19:30 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906321', '5903936', '', '2021-03-01', '2021-08-01', 'NOCHE', '19:30-21:00/19:30-21:00', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 1-LUYMI 15/3 19:30 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906323', '5903934', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 2-LUYMI 15/3 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906325', '5903936', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 2-LUYMI 15/3 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906327', '5903934', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-VIERNES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 3-MIYVI 17/3 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906329', '5903936', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MIERCOLES-VIERNES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 3-MIYVI 17/3 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906331', '5903934', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 4-MAYJU 16/3 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906334', '5903936', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 4-MAYJU 16/3 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906336', '5903934', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MARTES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 5-LUYMA 15/3 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906338', '5903936', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MARTES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 5-LUYMA 15/3 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906340', '5903934', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-20:00', 'JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 6-JU 18/3 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906342', '5903936', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-20:00', 'JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-INGLES 6-JU 18/3 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906346', '5906344', '', '2021-03-01', '2021-12-01', 'NOCHE', '18:00-20:00', 'VIERNES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-FIRST CERTIFICATE-VI 19/3 18 H-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906490', '5906488', '', '2021-03-01', '2021-05-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-01-19', '2021-INFORMAT-REP TABLET Y CE-MAYJ 4/3 19:30-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906494', '5906492', '', '2021-03-01', '2021-05-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-01-19', '2021-INFORMAT-REP TABLET Y CE-MAYJ 4/3 19:30-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5861610', '5861608', '', '2020-12-31', '2021-02-01', 'NOCHE', '19:00-22:00', 'MIERCOLES', 0, 3, 'EJECUCION', '2020-11-16', '2020-PROFAU-DISEÑO MEC 3  SOLIDWORKS MI 2/12 19 HS', '2021-02-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5904680', '5903957', '', '2021-04-01', '2021-05-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2020-12-29', '2021-INFORMAT-EXCEL AVANZADO ONLIN JU 8/4 18-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5907873', '5215895', '', '2021-02-01', '2021-02-28', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2021-02-02', '2021- MATRICULA LIC EN TECNOLOGIA EDUCATIVA', '2021-02-05');
INSERT INTO "public"."carrerascursosalta" VALUES ('5906355', '5903947', '', '2021-06-01', '2021-08-01', 'NOCHE', '17:00-19:00/17:00-19:00', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-INFORMAT-DESA ANDROID KOTLIN-LU 14/6-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906357', '5903949', '', '2021-06-01', '2021-08-01', 'NOCHE', '17:00-19:00/17:00-19:00', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-INFORMAT-DESA ANDROID KOTLIN-LU 14/6-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5907884', '5822406', '', '2021-02-01', '2021-02-28', 'NOCHE', '', '', 0, 0, 'ESPERA', '2021-02-02', '2021- MATRICULA LIC. EN TURISMO Y HOTELERIA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906361', '5903976', '', '2021-04-01', '2021-06-01', 'NOCHE', '17:00-19:00/17:00-19:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-INFORMAT-REP ELECT BÁSI-MAYJU 8/4 17 H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5907860', '5618449', '', '2020-02-01', '2020-02-28', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2021-02-02', '2021 -MATRICULA LICENCIATURA EN BIOIMAGENES', '2021-02-03');
INSERT INTO "public"."carrerascursosalta" VALUES ('5906359', '5903974', '', '2021-04-01', '2021-06-01', 'NOCHE', '17:00-19:00/17:00-19:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-INFORMAT-REP ELECT BÁSI-MAYJU 8/4 17 H-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906091', '5903640', '', '2021-05-01', '2021-09-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 0, 'ESPERA', '2021-01-09', '2021-CIE-CONSTR EN SECO MA 4/5 18HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906369', '5906365', '', '2021-03-01', '2021-05-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-INFORMAT-DISEÑO WEB BAS-LYMI 15/3 19:30-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906065', '5903967', '', '2021-03-01', '2021-05-01', 'NOCHE', '19:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2021-01-08', '2021-INFORMAT-PROGRAM PHP 1 ONLIN JU 1/7 19-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906089', '5903637', '', '2021-05-01', '2021-09-01', 'NOCHE', '18:00-21:00', 'MARTES', 0, 0, 'ESPERA', '2021-01-09', '2021-CIE-CONSTR EN SECO MA 4/5 18HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906298', '5903932', '', '2021-04-01', '2021-09-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-PORTU NIVEL1-LUYMI 12/4 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906313', '5903928', '', '2021-04-01', '2021-09-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-ALEMAN 1-JU 15/4 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906304', '5903932', '', '2021-04-01', '2021-09-01', 'NOCHE', '19:00-20:30/19:00-20:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-PORTU NIVEL4-MAYJU 13/4 19 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906295', '5903930', '', '2021-04-01', '2021-09-01', 'NOCHE', '19:00-20:30/19:00-20:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-PORTU NIVEL4-MAYJU 13/4 19 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906315', '5903928', '', '2021-04-01', '2021-09-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-ALEMAN 2-MI 14/4 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906309', '5903925', '', '2021-04-01', '2021-09-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-ALEMAN 1-JU 15/4 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5906311', '5903925', '', '2021-04-01', '2021-09-01', 'NOCHE', '18:00-21:00', 'MIERCOLES', 0, 0, 'ESPERA', '2021-01-18', '2021-IDIOMAS-ALEMAN 2-MI 14/4 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5885044', '5580340', '', '2020-12-01', '2021-07-01', 'MAÑANA', '09:00-11:30', 'SABADO', 0, 5, 'EJECUCION', '2020-11-27', '2020-SALUD-SECRETARIADO MEDICO-SABADO 12/12 9:30 H', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5907868', '5596608', '', '2021-02-01', '2021-02-28', 'NOCHE', '', '', 0, 3, 'EJECUCION', '2021-02-02', '2021 -MATRICULA LICENCIATURA EN LOGISTICA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5907887', '5375604', '', '2021-02-01', '2021-02-28', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2021-02-02', '2021- MATRÍCULA LIC. HIGIENE Y SEGURIDAD', '2021-02-03');
INSERT INTO "public"."carrerascursosalta" VALUES ('5907891', '5161404', '', '2021-02-01', '2021-02-28', 'NOCHE', '', '', 0, 1, 'EJECUCION', '2021-02-02', '2021 - MATRÍCULA MBA', '2021-02-03');
INSERT INTO "public"."carrerascursosalta" VALUES ('5940221', '5903835', '', '2021-03-01', '2021-06-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 1, 'EJECUCION', '2021-02-18', '2021-PROFAU-MEC GRAL ONLINE-JU11/3 19 H-CUOTAS UTN', '2021-04-02');
INSERT INTO "public"."carrerascursosalta" VALUES ('5911617', '5903518', '', '2021-03-01', '2021-06-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-02-09', '2021-CIE-OPERAC Y PROGR DE CNC MYJ 23/3 19 H-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5903516', '5903514', '', '2021-03-01', '2021-06-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2020-12-22', '2021-CIE-OPERAC Y PROGR DE CNC MYJ 23/3 19H-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5940219', '5903837', '', '2021-03-01', '2021-06-01', 'NOCHE', '19:00-22:00', 'JUEVES', 0, 0, 'ESPERA', '2021-02-18', '2021-PROFAU-MEC GRAL ONLINE-JU11/3 19 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5940325', '5903877', '', '2021-05-01', '2021-07-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2021-02-18', '2021-PROFAU-ELEC GRAL AUT ONLIN LU10/5 19HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5940328', '5903883', '', '2021-05-01', '2021-06-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2021-02-18', '2021-PROFAU-ELEC GRAL AUT ONLIN LU10/519H-CUOTAUTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5940176', '5940174', '', '2021-04-01', '2021-06-01', 'NOCHE', '18:00-20:30/09:00-11:30', 'JUEVES-SABADO', 0, 0, 'ESPERA', '2021-02-18', '2021-CIE-CALIDAD INDUSTRIAL JU 8/4 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5944708', '5944706', '', '2021-04-01', '2021-05-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'MARTES-JUEVES', 0, 1, 'EJECUCION', '2021-03-09', '2021-INFORMAT-REP TABLET Y CE-MAYJ 4/319-CUOTA UTN', '2021-04-10');
INSERT INTO "public"."carrerascursosalta" VALUES ('5926431', '5926387', '', '2021-07-01', '2021-09-01', 'NOCHE', '19:00-21:30', 'VIERNES', 0, 0, 'ESPERA', '2021-02-10', '2021-INFORMAT-PROGRAMACION PHP 2 VI 23/7 19H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5926442', '5926440', '', '2021-07-01', '2021-09-01', 'NOCHE', '19:00-21:30', 'VIERNES', 0, 0, 'ESPERA', '2021-02-10', '2021-INFORMAT-PROGRAMACION PHP 2 VI 23/7 19H-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5940167', '5940165', '', '2021-06-01', '2021-09-01', 'NOCHE', '19:00-21:30', 'MIERCOLES', 0, 0, 'ESPERA', '2021-02-18', '2021-INFORMAT-HTML Y CSS MI 30/6 19 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5940171', '5940169', '', '2021-06-01', '2021-09-01', 'NOCHE', '19:00-21:30', 'MIERCOLES', 0, 0, 'ESPERA', '2021-02-18', '2021-INFORMAT-HTML Y CSS MI 30/6 19 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5926381', '5926379', '', '2021-06-01', '2021-09-01', 'NOCHE', '19:00-21:30', 'MARTES', 0, 0, 'ESPERA', '2021-02-10', '2021-INFORMAT-BOOTSTRAP-MA 29/6 19 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5926460', '5926456', '', '2021-04-01', '2021-06-01', 'MAÑANA', '09:00-12:00', 'VIERNES', 0, 0, 'ESPERA', '2021-02-10', '2021-ADMIN-GOOGLE ADS  POSICION-VI 16/4 9 HS-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5926467', '5926465', '', '2021-04-01', '2021-06-01', 'MAÑANA', '09:00-12:00', 'VIERNES', 0, 0, 'ESPERA', '2021-02-10', '2021-ADMIN-GOOGLE ADS POSICION-VI 16/4 9 HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5944726', '5903961', '', '2021-04-01', '2021-05-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 0, 'ESPERA', '2021-03-09', '2021-INFORMAT-EXCEL BASICO ONLINE LU 5/4 18H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5944731', '5903963', '', '2021-04-01', '2021-05-01', 'NOCHE', '18:00-21:00', 'LUNES', 0, 0, 'ESPERA', '2021-03-09', '2021-INFORMAT-EXCEL BASICO ONLINE LU 5/4 18-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5926471', '5926469', '', '2021-04-01', '2021-05-01', 'MAÑANA', '09:00-13:00', 'MARTES', 0, 0, 'ESPERA', '2021-02-10', '2021-ADMIN-COMMUNITY MANAGER-MA 13/4 9 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5926475', '5926473', '', '2021-04-01', '2021-05-01', 'MAÑANA', '09:00-13:00', 'MARTES', 0, 0, 'ESPERA', '2021-02-10', '2021-ADMIN-COMMUNITY MANAGER-MA 13/4 9 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5667653', '4895056', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-03-09', '2020 -MBA 2º AÑO ', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5926385', '5926383', '', '2021-06-01', '2021-09-01', 'NOCHE', '19:00-21:30', 'MARTES', 0, 0, 'ESPERA', '2021-02-10', '2021-INFORMAT-HTML Y CSS MA 30/6 19 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5940180', '5940178', '', '2021-04-01', '2021-06-01', 'NOCHE', '18:00-20:30/09:00-11:30', 'JUEVES-SABADO', 0, 0, 'ESPERA', '2021-02-18', '2021-CIE-CALIDAD INDUSTRIAL JU 8/4 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5682550', '4895021', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-03-12', '2020- MBA 1º AÑO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5682687', '4895060', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-03-12', '2020- 1° AÑO ESPECIALIZACION Y MTRIA. ESTRUCTURAL', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5683169', '5683167', '', '2020-02-01', '2020-12-31', 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-03-13', '2020 1C LICENCIATURA EN LOGISTICA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5683739', '5683737', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 11, 'EJECUCION', '2020-03-13', '2019-2º AÑO-ESP.MTRIA.I.ESTRUCTURAL-NACIONAL-CUOTA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5684346', '5215909', '', '2020-03-01', '2020-12-31', 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-03-19', '2020- LICENCIATURA EN TECNOLOGIA EDUCATIVA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5927156', '5927154', '', '2021-07-01', '2021-09-01', 'NOCHE', '20:00-21:30', 'JUEVES', 0, 0, 'ESPERA', '2021-02-17', '2021-INFORMAT-PROGRAM C NIVEL 2 JU 8/7 20 HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5927160', '5927158', '', '2021-07-01', '2021-09-01', 'NOCHE', '20:00-21:30', 'JUEVES', 0, 0, 'ESPERA', '2021-02-17', '2021-INFORMAT-PROGRAM C NIVEL 2 JU 8/7 20 HS-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5927151', '5927149', '', '2021-04-01', '2021-06-01', 'NOCHE', '20:00-21:30', 'JUEVES', 0, 0, 'ESPERA', '2021-02-17', '2021-INFORMAT-PROGRAM C NIVEL1 JU 15/4 20 HS-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5927146', '5927144', '', '2021-04-01', '2021-06-01', 'NOCHE', '20:00-21:30', 'JUEVES', 0, 0, 'ESPERA', '2021-02-17', '2021-INFORMAT-PROGRAM C NIVEL1 JU 15/4 20 HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5946746', '5906492', '', '2021-05-01', '2021-07-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-03-12', '2021-INFORMAT-REP TABLET Y CE-MAYJ 6/5 19:30-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5946754', '5906488', '', '2021-05-01', '2021-07-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-03-12', '2021-INFORMAT-REP TABLET Y CE-MAYJ 6/5 19:30-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5945438', '5945432', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-10', '2021 - 2DO AÑO BIOIMAGENES ', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5962589', '5903889', '', '2021-04-07', '2021-05-26', 'NOCHE', '', '', 0, 0, 'ESPERA', '2021-04-09', '2021-PROFAU-INYECCIÓN ELECTR GRAL ONLINE-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5948684', '5948682', '', '2021-03-01', '2021-07-01', 'NOCHE', '18:00-20:00', 'VIERNES', 0, 0, 'ESPERA', '2021-03-16', '2021-IDIOMAS -FIRST CERTIF 1 CUATRI-VI 19/3 -1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5948689', '5948687', '', '2021-03-01', '2021-07-01', 'NOCHE', '18:00-20:00', 'VIERNES', 0, 0, 'ESPERA', '2021-03-16', '2021-IDIOMAS-FIRST CERTIF 1 CUATRI-VI 19/3-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5948761', '5903130', '', '2021-05-01', '2021-06-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2021-03-16', '2021-CIE-PLC S7 1200 NIVEL 1-JU 13/5 18 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5948763', '5903245', '', '2021-05-01', '2021-06-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2021-03-16', '2021-CIE-PLC S7 1200 NIVEL 1-JU 13/5 18 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5951749', '5951747', '', '2021-03-01', NULL, 'MAÑANA', '', '', 0, 0, 'ESPERA', '2021-03-23', 'TUP - PLANES DE PAGOS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5951765', '5951763', '', '2021-04-01', '2021-05-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-03-23', '2021-HUERTA AGROECOLOGICA-LU Y MA 18:30 HS 5/4', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5945443', '5945441', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-10', '2021- 1ER AÑO LOGISTICA ', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5952125', '5903852', '', '2021-07-01', '2022-04-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 0, 'ESPERA', '2021-03-25', '2021-SALUD-AUXI DE FARMACIA-SA 12/6 9HS-CUOTAS UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5952128', '5903857', '', '2021-07-01', '2021-12-01', 'MAÑANA', '09:00-11:30', 'SABADO', 0, 0, 'ESPERA', '2021-03-25', '2021-SALUD-SECRET MEDICO-SA 12/6 9 HS-CUOTAS UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5952154', '4920017', '', '2021-05-01', '2021-07-31', 'MAÑANA', '', '', 0, 0, 'ESPERA', '2021-03-25', 'CURSO INTRODUCTORIO TUP MAYO 2021 - PACHECO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5956737', '5448365', '', '2021-03-01', '2021-06-01', 'NOCHE', '', '', 0, 0, 'ESPERA', '2021-03-30', 'SEMINARIO UNIVERSITARIO TUA- MAYO 2021', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5684391', '5626289', '', '2020-03-31', '2020-12-31', 'NOCHE', '', '', 0, 12, 'EJECUCION', '2020-03-19', '2020- LICENCIATURA EN BIOIMAGENES', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5684962', '5199776', '', '2020-03-01', '2020-12-31', 'MAÑANA', '', '', 0, 11, 'EJECUCION', '2020-03-30', '2020 -2DO AÑO MDU', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5698787', '5199776', '', '2020-03-01', '2020-12-31', 'MAÑANA', '', '', 0, 11, 'EJECUCION', '2020-04-20', '2020- 1ER AÑO MDU', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5772904', '4919999', '', '2020-08-01', '2020-12-31', 'MAÑANA', '', '', 0, 7, 'EJECUCION', '2020-07-15', 'TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5885042', '5580334', '', '2020-12-01', '2021-11-01', 'MAÑANA', '09:00-13:00', 'SABADO', 0, 5, 'EJECUCION', '2020-11-27', '2020-SALUD-AUXILIAR DE FARMACIA SABADO 12/12 9 HS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903875', '5903837', '', '2021-02-01', '2021-05-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 2, 'EJECUCION', '2020-12-27', '2021-PROFAU-MEC GRAL ONLINE-LU 8/2 19 HS-CUOTAS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903879', '5903877', '', '2021-02-01', '2021-04-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'EJECUCION', '2020-12-27', '2021-PROFAU-ELEC GRAL AUT ONLIN MA 9/2 19H-CUOTAS', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5903899', '5903883', '', '2021-03-01', '2021-04-01', 'NOCHE', '19:00-22:00', 'MARTES', 0, 2, 'EJECUCION', '2020-12-27', '2021-PROFAU-ELEC GRAL AUT ONLIN MA 9/2 19-CUOTAUTN', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5907876', '5822410', '', '2021-02-01', '2021-02-28', 'NOCHE', '', '', 0, 3, 'EJECUCION', '2021-02-02', '2021- MATRICULA LIC. EN COMERCIALIZACION', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5907880', '5822396', '', '2021-02-01', '2021-02-28', 'NOCHE', '', '', 0, 3, 'EJECUCION', '2021-02-02', '2021- MATRICULA LIC. EN PROD. GRAFICA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5910370', '4895524', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-02-03', 'TEC. UNI. EN ADMINISTRACION PRIMER AÑO 2021', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5910374', '5910372', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-02-03', 'TEC. UNI. EN ADMINISTRACION SEGUNDO AÑO 2021', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5943231', '4895056', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-03', '2021- MBA 2º AÑO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5944179', '4920001', '', '2021-03-01', NULL, 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-05', 'TECNICO SUP. EN SISTEMAS INFORMATICOS MARZO 2021', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5944181', '4919999', '', '2021-03-01', NULL, 'MAÑANA', '', '', 0, 2, 'EJECUCION', '2021-03-05', 'TECNICO UNIV. EN PROGRAMACION-MARZO 2021-PACHECO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5945415', '5945408', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-10', '2021 - 1ER AÑO   TEC. EDUCATIVA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5945434', '5945430', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-10', '2021 - 1ER AÑO  BIOIMAGENES', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5945448', '5945446', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-10', '2021- 2DO AÑO  LOGISTICA', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5945453', '5945451', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-10', '2021- 1ER AÑO HIGIENE Y SEGURIDAD', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5946377', '4895021', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-11', '2021 - MBA 1º AÑO', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5948528', '5945456', '', '2021-03-01', '2021-12-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-15', '2021-2DO AÑO  HIGIENE Y SEGURIDAD', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5951899', '5194586', '', '2021-02-01', '2021-10-31', 'NOCHE', '', '', 0, 2, 'EJECUCION', '2021-03-23', 'ALEMAN-SAU-NIVEL 2- 2021', '2021-04-01');
INSERT INTO "public"."carrerascursosalta" VALUES ('5949025', '5949023', '', '2021-03-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-JUEVES', 0, 1, 'EJECUCION', '2021-03-17', '2021-IDIOMAS-INGLES 4-MAYJU16/318 HS-CUOTAS UTN', '2021-04-10');
INSERT INTO "public"."carrerascursosalta" VALUES ('5952492', '5949023', '', '2021-04-01', '2021-08-01', 'NOCHE', '18:00-19:30/18:00-19:30', 'MARTES-VIERNES', 0, 1, 'EJECUCION', '2021-03-26', '2021-IDIOMAS-INGLES 3-MIYVI 17/3 18 HS-CUOTAS UTN', '2021-04-10');
INSERT INTO "public"."carrerascursosalta" VALUES ('5963602', '5963600', '', '2021-03-01', '2022-02-28', 'NOCHE', '', '', 0, 0, 'ESPERA', '2021-04-14', 'CURSO DE INGRESO DE GRADO NIVEL 1 2021/2022', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5963606', '5963604', '', '2021-03-01', '2022-02-28', 'NOCHE', '', '', 0, 0, 'ESPERA', '2021-04-14', 'CURSO DE INGRESO DE GRADO NIVEL 2 2021/2022', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5957889', '5957885', '', '2021-04-01', '2021-12-31', 'NOCHE', '18:30-20:30/18:30-20:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-03-31', '2021-DIPLOMATURAS-DIPLOMAT 4.0 MAYJU 4/5 -1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5957891', '5957887', '', '2021-04-01', '2021-12-31', 'NOCHE', '18:30-20:30/18:30-20:30', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-03-31', '2021-DIPLOMATURAS-DIPLOMAT 4.0 MAYJU 4/5-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5962591', '5903837', '', '2021-04-13', '2021-06-06', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2021-04-09', '2021-PROFAU-MEC GRAL ONLINE-MA13/4 19 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965342', '5903837', '', '2021-06-01', '2021-09-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2021-04-19', '2021-PROFAU-MEC GRAL ONLINE-LU 7/6 19 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5962596', '5903835', '', '2021-04-13', '2021-06-06', 'NOCHE', '19:00-22:00', 'MARTES', 0, 0, 'ESPERA', '2021-04-09', '2021-PROFAU-MEC GRAL ONLINE-MA13/4 19H-CUOTAS UTN ', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965344', '5903835', '', '2021-06-01', '2021-09-01', 'NOCHE', '19:00-22:00', 'LUNES', 0, 0, 'ESPERA', '2021-04-19', '2021-PROFAU-MEC GRAL ONLINE-LU 7/6 19 H-CUOTAS UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965368', '5965362', '', '2021-06-01', '2021-08-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2021-04-19', '2021-PROFAU-MOTORES 1-REP Y MANT-VI 11/6 19-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965387', '5965375', '', '2021-06-01', '2021-08-01', 'NOCHE', '19:00-22:00', 'VIERNES', 0, 0, 'ESPERA', '2021-04-19', '2021-PROFAU-MOTORES1-REP Y MANT-VI 11/6-CUOTAS UTN', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5951382', '5903121', '', '2021-06-01', '2021-10-01', 'NOCHE', '18:00-22:00/18:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-03-22', '2021-CIE-AUTOMA IND ONLINE-MA Y JU 15/619HS-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5962990', '5903963', '', '2021-05-10', '2021-05-31', 'NOCHE', '', '', 0, 0, 'ESPERA', '2021-04-12', '2021-INFORMAT-EXCEL BASICO ONLINE LU 10/518-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5951380', '5903123', '', '2021-06-01', '2021-10-09', 'NOCHE', '19:00-22:00/19:00-22:00', 'MARTES-JUEVES', 0, 0, 'ESPERA', '2021-03-22', '2021-CIE-AUTOMA IND ONLINE-MA Y JU 15/6 19HS-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965512', '5903957', '', '2021-05-01', '2021-06-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2021-04-20', '2021-INFORMAT-EXCEL AVANZADO ONLIN JU 13/518-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965510', '5903951', '', '2021-05-01', '2021-06-01', 'NOCHE', '18:00-21:00', 'JUEVES', 0, 0, 'ESPERA', '2021-04-20', '2021-INFORMAT-EXCEL AVANZADO ONLIN JU13/518-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965537', '5906363', '', '2021-07-01', '2021-09-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-04-20', '2021-INFORMAT-DISEÑO WEB BAS-LYMI 14/7 19:30-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965539', '5906365', '', '2021-07-01', '2021-09-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-04-20', '2021-INFORMAT-DISEÑO WEB BAS-LYMI 14/7 19:30-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965588', '5965578', '', '2021-05-01', '2021-07-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-04-20', '2021-INFORMAT-DISEÑO WEB INTERM LU17/5 19:30-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965607', '5965605', '', '2021-05-01', '2021-07-01', 'NOCHE', '19:30-21:30/19:30-21:30', 'LUNES-MIERCOLES', 0, 0, 'ESPERA', '2021-04-20', '2021-INFORMAT-DISEÑO WEB INTERM LU17/5 19:30-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965623', '5940174', '', '2021-06-01', '2021-09-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2021-04-20', '2021-CIE-CALIDAD INDUSTRIAL SA 19/6 9 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965625', '5940178', '', '2021-06-01', '2021-09-01', 'MAÑANA', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2021-04-20', '2021-CIE-CALIDAD INDUSTRIAL SA 19/6 9 HS-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5962988', '5903961', '', '2021-05-10', '2021-05-31', 'NOCHE', '18:00-21:00', 'LUNES', 0, 0, 'ESPERA', '2021-04-12', '2021-INFORMAT-EXCEL BASICO ONLINE LU10/518H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965699', '5903810', '', '2021-07-01', '2021-10-01', 'NOCHE', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2021-04-20', '2021-ADMIN-MARKETING PROM Y VENTA-SA 17/7 9H-1PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5965701', '5903814', '', '2021-07-01', '2021-10-01', 'NOCHE', '09:00-12:00', 'SABADO', 0, 0, 'ESPERA', '2021-04-20', '2021-ADMIN-MARKETING PROM Y VENTA-SA 17/7 9H-CUOTA', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5966264', '5966262', '', '2021-05-01', '2021-12-31', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 0, 'ESPERA', '2021-04-22', '2021-DIPLOMATUR-BARRIOS CERRADOS-MI 5/5 18H-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5966272', '5966270', '', '2021-05-01', '2021-12-31', 'NOCHE', '18:00-20:00', 'MIERCOLES', 0, 0, 'ESPERA', '2021-04-22', '2021-DIPLOMATUR-BARRIOS CERRADOS-MI 5/5 18H-CUOTAS', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5966676', '5141383', '', '2021-05-14', '2021-06-18', 'NOCHE', '', '', 0, 0, 'EJECUCION', '2021-04-23', '2021-SEMINARIO INTEGRADOR', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5966674', '5141383', '', '2021-07-21', '2021-08-31', 'NOCHE', '', '', 0, 0, 'EJECUCION', '2021-04-23', '2021- DIRECCION DE OPERACIONES', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5969135', '5926469', '', '2021-07-01', '2021-08-01', 'NOCHE', '09:00-13:00', 'MARTES', 0, 0, 'ESPERA', '2021-04-29', '2021-ADMIN-COMMUNITY MANAGER-MA 13/7 9 HS-1 PAGO', NULL);
INSERT INTO "public"."carrerascursosalta" VALUES ('5969141', '5926473', '', '2021-07-01', '2021-08-01', 'NOCHE', '09:00-13:00', 'MARTES', 0, 0, 'ESPERA', '2021-04-29', '2021-ADMIN-COMMUNITY MANAGER-MA 13/7 9 HS-CUOTAS', NULL);

-- ----------------------------
-- Table structure for ingresos
-- ----------------------------
DROP TABLE IF EXISTS "public"."ingresos";
CREATE TABLE "public"."ingresos" (
  "ingr_idingreso" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_fecha" date NOT NULL,
  "ingr_hora" time(6) NOT NULL,
  "ingr_tipocomp" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_nrocomp" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_idalumclie" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_cuit" varchar(13) COLLATE "pg_catalog"."default",
  "ingr_razon" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_domicilio" varchar(50) COLLATE "pg_catalog"."default",
  "ingr_localidad" varchar(50) COLLATE "pg_catalog"."default",
  "ingr_condicioniva" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_importetotal" float8 NOT NULL,
  "ingr_importepago" float8 NOT NULL,
  "ingr_idsubcuenta" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_estado" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_anulado" varchar(1) COLLATE "pg_catalog"."default" NOT NULL,
  "ingr_observaciones" varchar(300) COLLATE "pg_catalog"."default",
  "ingr_obserdetapago" varchar(150) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ingresos
-- ----------------------------
INSERT INTO "public"."ingresos" VALUES ('5792653', '2020-08-10', '11:18:19', 'FC_CDO', '0008-00055622', '5703800', '', 'CHAVERO EDUARDO ANGEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5792784', '2020-08-10', '15:14:42', 'FC_CDO', '0021-00004010', '5703812', '', 'ACOSTA , MIGUEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '7/8-43597');
INSERT INTO "public"."ingresos" VALUES ('5793866', '2020-08-13', '14:23:54', 'FC_CDO', '0021-00004128', '5703704', '', 'VILLARREAL , ANALIA LAURA', '', '', 'CONSUMIDOR FINAL', 8000, 8000, '2618', 'PAGO', '0', '', '20/7-42885 Y 11/8-43885');
INSERT INTO "public"."ingresos" VALUES ('5795623', '2020-08-25', '10:01:29', 'FC_CDO', '0008-00055933', '5703800', '', 'CHAVERO EDUARDO ANGEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5811826', '2020-09-01', '14:47:58', 'FC_CDO', '0021-00004274', '5703812', '', 'ACOSTA , MIGUEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5833658', '2020-09-10', '09:46:39', 'FC_CDO', '0008-00056352', '5703800', '', 'CHAVERO EDUARDO ANGEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5835707', '2020-09-17', '14:28:23', 'FC_CDO', '0021-00004694', '5703812', '', 'ACOSTA , MIGUEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '15/9-44922');
INSERT INTO "public"."ingresos" VALUES ('5835853', '2020-09-18', '10:06:24', 'FC_CDO', '0008-00056569', '5703704', '', 'VILLARREAL ANALIA LAURA', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5854094', '2020-10-08', '14:53:21', 'FC_CDO', '0021-00004990', '5703812', '', 'ACOSTA , MIGUEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '6/10-45584');
INSERT INTO "public"."ingresos" VALUES ('5854197', '2020-10-09', '10:36:31', 'FC_CDO', '0008-00057052', '5703800', '', 'CHAVERO EDUARDO ANGEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5860847', '2020-11-11', '10:41:09', 'FC_CDO', '0008-00057557', '5703800', '', 'CHAVERO EDUARDO ANGEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5861302', '2020-11-12', '14:09:04', 'FC_CDO', '0021-00005737', '5703812', '', 'ACOSTA , MIGUEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '10/11-46895');
INSERT INTO "public"."ingresos" VALUES ('5890790', '2020-12-11', '08:37:02', 'FC_CDO', '0008-00058200', '5703800', '', 'CHAVERO EDUARDO ANGEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5901229', '2020-12-14', '15:16:28', 'FC_CDO', '0021-00006319', '5703704', '', 'VILLARREAL , ANALIA LAURA', '', '', 'CONSUMIDOR FINAL', 12000, 12000, '2618', 'PAGO', '0', '', '10/12-47903');
INSERT INTO "public"."ingresos" VALUES ('5903573', '2020-12-22', '14:40:08', 'FC_CDO', '0008-00058416', '5703812', '', 'ACOSTA , MIGUEL', '', '', 'CONSUMIDOR FINAL', 4000, 4000, '2618', 'PAGO', '0', '21/12 - 48366', '');
INSERT INTO "public"."ingresos" VALUES ('5946621', '2021-03-12', '07:53:21', 'FC_CDO', '0008-00059259', '5703800', '', 'CHAVERO EDUARDO ANGEL', '', '', 'CONSUMIDOR FINAL', 4600, 4600, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5948832', '2021-03-16', '15:51:42', 'FC_CDO', '0021-00006890', '5703812', '', 'ACOSTA , MIGUEL', '', '', 'CONSUMIDOR FINAL', 4600, 4600, '2618', 'PAGO', '0', '', '13/3-49573');
INSERT INTO "public"."ingresos" VALUES ('5961856', '2021-04-08', '08:14:56', 'FC_CDO', '0008-00059998', '5703800', '', 'CHAVERO EDUARDO ANGEL', '', '', 'CONSUMIDOR FINAL', 4600, 4600, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5964162', '2021-04-14', '14:54:33', 'FC_CDO', '0008-00060261', '5608364', '', 'ABALO PRELAT , GASTON DIEGO', '', '', 'CONSUMIDOR FINAL', 9200, 9200, '2618', 'PAGO', '0', '31/03 - 49986', '');
INSERT INTO "public"."ingresos" VALUES ('5965779', '2021-04-20', '16:01:06', 'FC_CDO', '0021-00007518', '5703812', '', 'ACOSTA , MIGUEL', '', '', 'CONSUMIDOR FINAL', 4600, 4600, '2618', 'PAGO', '0', '', '19/4-50612');
INSERT INTO "public"."ingresos" VALUES ('5967543', '2021-04-26', '08:34:46', 'FC_CDO', '0008-00060486', '1428697', '', 'BRIZUELA ABEL ALEJANDRO', '', '', 'CONSUMIDOR FINAL', 13800, 13800, '2618', 'PAGO', '0', '', '');
INSERT INTO "public"."ingresos" VALUES ('5967693', '2021-04-26', '10:23:10', 'FC_CDO', '0008-00060512', '5608364', '', 'ABALO PRELAT , GASTON DIEGO', '', '', 'CONSUMIDOR FINAL', 4600, 4600, '2618', 'PAGO', '0', '21/04 - 50652', '');

-- ----------------------------
-- Table structure for ingresosdetalle
-- ----------------------------
DROP TABLE IF EXISTS "public"."ingresosdetalle";
CREATE TABLE "public"."ingresosdetalle" (
  "inde_idingredeta" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "inde_idingreso" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "inde_idsubcuenta" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "inde_descripcion" varchar(350) COLLATE "pg_catalog"."default" NOT NULL,
  "inde_importepagado" float8 NOT NULL,
  "inde_tiporelacionado" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "inde_idrelacionado" varchar(10) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of ingresosdetalle
-- ----------------------------
INSERT INTO "public"."ingresosdetalle" VALUES ('5792654', '5792653', '2618', 'TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4000, 'ALUMNO', '5786866');
INSERT INTO "public"."ingresosdetalle" VALUES ('5792785', '5792784', '2618', 'TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5786790');
INSERT INTO "public"."ingresosdetalle" VALUES ('5793867', '5793866', '2618', 'TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5787108');
INSERT INTO "public"."ingresosdetalle" VALUES ('5793868', '5793866', '2618', 'Cuota AGOSTO de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5791072');
INSERT INTO "public"."ingresosdetalle" VALUES ('5795624', '5795623', '2618', 'Cuota AGOSTO de 2020 < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4000, 'ALUMNO', '5793220');
INSERT INTO "public"."ingresosdetalle" VALUES ('5811827', '5811826', '2618', 'Cuota AGOSTO de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5790951');
INSERT INTO "public"."ingresosdetalle" VALUES ('5833659', '5833658', '2618', 'Cuota SEPTIEMBRE de 2020 < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4000, 'ALUMNO', '5811671');
INSERT INTO "public"."ingresosdetalle" VALUES ('5835708', '5835707', '2618', 'Cuota SEPTIEMBRE de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5811539');
INSERT INTO "public"."ingresosdetalle" VALUES ('5835854', '5835853', '2618', 'Cuota SEPTIEMBRE de 2020 < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4000, 'ALUMNO', '5811693');
INSERT INTO "public"."ingresosdetalle" VALUES ('5854095', '5854094', '2618', 'Cuota OCTUBRE de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5851917');
INSERT INTO "public"."ingresosdetalle" VALUES ('5854198', '5854197', '2618', 'Cuota OCTUBRE de 2020 < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4000, 'ALUMNO', '5852023');
INSERT INTO "public"."ingresosdetalle" VALUES ('5860848', '5860847', '2618', 'Cuota NOVIEMBRE de 2020 < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4000, 'ALUMNO', '5859080');
INSERT INTO "public"."ingresosdetalle" VALUES ('5861303', '5861302', '2618', 'Cuota NOVIEMBRE de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5858979');
INSERT INTO "public"."ingresosdetalle" VALUES ('5890791', '5890790', '2618', 'Cuota DICIEMBRE de 2020 < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4000, 'ALUMNO', '5886659');
INSERT INTO "public"."ingresosdetalle" VALUES ('5901230', '5901229', '2618', 'Cuota OCTUBRE de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5852045');
INSERT INTO "public"."ingresosdetalle" VALUES ('5901231', '5901229', '2618', 'Cuota NOVIEMBRE de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5859100');
INSERT INTO "public"."ingresosdetalle" VALUES ('5901232', '5901229', '2618', 'Cuota DICIEMBRE de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5886676');
INSERT INTO "public"."ingresosdetalle" VALUES ('5903574', '5903573', '2618', 'Cuota DICIEMBRE de 2020 < TECNICO SUPERIOR EN PROGRAMACION >', 4000, 'ALUMNO', '5886583');
INSERT INTO "public"."ingresosdetalle" VALUES ('5946622', '5946621', '2618', 'Cuota MARZO de 2021 < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4600, 'ALUMNO', '5945924');
INSERT INTO "public"."ingresosdetalle" VALUES ('5948833', '5948832', '2618', 'Cuota MARZO de 2021 < TECNICO SUPERIOR EN PROGRAMACION >', 4600, 'ALUMNO', '5945938');
INSERT INTO "public"."ingresosdetalle" VALUES ('5961857', '5961856', '2618', 'Cuota ABRIL de 2021 < TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO >', 4600, 'ALUMNO', '5958686');
INSERT INTO "public"."ingresosdetalle" VALUES ('5964163', '5964162', '2618', 'TECNICO UNIVERSITARIO EN PROGRAMACION < TECNICO SUPERIOR EN PROGRAMACION >', 4600, 'ALUMNO', '5947320');
INSERT INTO "public"."ingresosdetalle" VALUES ('5964164', '5964162', '2618', 'Cuota MARZO de 2021 < TECNICO SUPERIOR EN PROGRAMACION >', 4600, 'ALUMNO', '5947794');
INSERT INTO "public"."ingresosdetalle" VALUES ('5965780', '5965779', '2618', 'Cuota ABRIL de 2021 < TECNICO SUPERIOR EN PROGRAMACION >', 4600, 'ALUMNO', '5958721');
INSERT INTO "public"."ingresosdetalle" VALUES ('5967544', '5967543', '2618', 'TECNICO UNIVERSITARIO EN PROGRAMACION < TECNICO UNIV. EN PROGRAMACION-MARZO 2021-PACHECO >', 4600, 'ALUMNO', '5949176');
INSERT INTO "public"."ingresosdetalle" VALUES ('5967545', '5967543', '2618', 'Cuota MARZO de 2021 < TECNICO UNIV. EN PROGRAMACION-MARZO 2021-PACHECO >', 4600, 'ALUMNO', '5949755');
INSERT INTO "public"."ingresosdetalle" VALUES ('5967546', '5967543', '2618', 'Cuota ABRIL de 2021 < TECNICO UNIV. EN PROGRAMACION-MARZO 2021-PACHECO >', 4600, 'ALUMNO', '5959379');
INSERT INTO "public"."ingresosdetalle" VALUES ('5967694', '5967693', '2618', 'Cuota ABRIL de 2021 < TECNICO SUPERIOR EN PROGRAMACION >', 4600, 'ALUMNO', '5959194');

-- ----------------------------
-- Table structure for pagoalumnos
-- ----------------------------
DROP TABLE IF EXISTS "public"."pagoalumnos";
CREATE TABLE "public"."pagoalumnos" (
  "paal_idpagoalumno" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "paal_idalucarrcurs" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "paal_fechadeb" date NOT NULL,
  "paal_tipopago" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "paal_descripcion" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "paal_importecuota" float8 NOT NULL,
  "paal_intereses" float8 NOT NULL,
  "paal_importepago" float8 NOT NULL,
  "paal_estado" varchar(10) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of pagoalumnos
-- ----------------------------
INSERT INTO "public"."pagoalumnos" VALUES ('5786866', '5786865', '2020-07-22', 'MATRICULA', 'TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5786790', '5786789', '2020-07-22', 'MATRICULA', 'TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5787108', '5787107', '2020-07-22', 'MATRICULA', 'TECNICO UNIV. EN PROGRAMACION-AGOSTO 2020-PACHECO', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5790951', '5786789', '2020-08-04', 'CUOTA', 'Cuota AGOSTO de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5791072', '5787107', '2020-08-04', 'CUOTA', 'Cuota AGOSTO de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5793220', '5786865', '2020-08-12', 'CUOTA', 'Cuota AGOSTO de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5811539', '5786789', '2020-09-01', 'CUOTA', 'Cuota SEPTIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5811671', '5786865', '2020-09-01', 'CUOTA', 'Cuota SEPTIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5811693', '5787107', '2020-09-01', 'CUOTA', 'Cuota SEPTIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5851917', '5786789', '2020-10-01', 'CUOTA', 'Cuota OCTUBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5852023', '5786865', '2020-10-01', 'CUOTA', 'Cuota OCTUBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5852045', '5787107', '2020-10-01', 'CUOTA', 'Cuota OCTUBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5858979', '5786789', '2020-11-01', 'CUOTA', 'Cuota NOVIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5859080', '5786865', '2020-11-01', 'CUOTA', 'Cuota NOVIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5859100', '5787107', '2020-11-01', 'CUOTA', 'Cuota NOVIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5886583', '5786789', '2020-12-01', 'CUOTA', 'Cuota DICIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5886659', '5786865', '2020-12-01', 'CUOTA', 'Cuota DICIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5886676', '5787107', '2020-12-01', 'CUOTA', 'Cuota DICIEMBRE de 2020', 4000, 0, 4000, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5945930', '5787107', '2021-03-11', 'CUOTA', 'Cuota MARZO de 2021', 4600, 0, 0, 'IMPAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5945924', '5786865', '2021-03-11', 'CUOTA', 'Cuota MARZO de 2021', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5945938', '5786789', '2021-03-11', 'CUOTA', 'Cuota MARZO de 2021', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5947236', '5947235', '2021-03-13', 'MATRICULA', 'TECNICO UNIVERSITARIO EN PROGRAMACION', 4600, 0, 0, 'IMPAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5947320', '5947319', '2021-03-13', 'MATRICULA', 'TECNICO UNIVERSITARIO EN PROGRAMACION', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5947752', '5947235', '2021-03-13', 'CUOTA', 'Cuota MARZO de 2021', 4600, 0, 0, 'IMPAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5947794', '5947319', '2021-03-13', 'CUOTA', 'Cuota MARZO de 2021', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5949176', '5949175', '2021-03-17', 'MATRICULA', 'TECNICO UNIVERSITARIO EN PROGRAMACION', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5949755', '5949175', '2021-03-17', 'CUOTA', 'Cuota MARZO de 2021', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5958705', '5787107', '2021-04-01', 'CUOTA', 'Cuota ABRIL de 2021', 4600, 0, 0, 'IMPAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5958686', '5786865', '2021-04-01', 'CUOTA', 'Cuota ABRIL de 2021', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5958721', '5786789', '2021-04-01', 'CUOTA', 'Cuota ABRIL de 2021', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5959143', '5947235', '2021-04-01', 'CUOTA', 'Cuota ABRIL de 2021', 4600, 0, 0, 'IMPAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5959194', '5947319', '2021-04-01', 'CUOTA', 'Cuota ABRIL de 2021', 4600, 0, 4600, 'PAGO');
INSERT INTO "public"."pagoalumnos" VALUES ('5959379', '5949175', '2021-04-01', 'CUOTA', 'Cuota ABRIL de 2021', 4600, 0, 4600, 'PAGO');

-- ----------------------------
-- Function structure for listar_clientes_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."listar_clientes_out"("nrolegajo" varchar);
CREATE OR REPLACE FUNCTION "public"."listar_clientes_out"("nrolegajo" varchar)
  RETURNS SETOF "public"."vw_datosxalumnos" AS $BODY$
DECLARE
    reg RECORD;
BEGIN
    FOR REG IN SELECT * FROM vw_datosxalumnos WHERE Legajo=nrolegajo LOOP

       RETURN NEXT reg;
    END LOOP;
    RETURN;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for listar_xfecha_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."listar_xfecha_out"("nrolegajo" varchar, "fechaing" date);
CREATE OR REPLACE FUNCTION "public"."listar_xfecha_out"("nrolegajo" varchar, "fechaing" date)
  RETURNS SETOF "public"."vw_datosxalumnos" AS $BODY$
DECLARE
    reg RECORD;
BEGIN
    FOR REG IN SELECT * FROM vw_datosxalumnos WHERE Legajo=nrolegajo AND 
		date_part('YEAR', Fecha) = date_part('YEAR', fechaIng) AND 
		date_part('MONTH', Fecha) = date_part('MONTH',fechaIng) LOOP

       RETURN NEXT reg;
    END LOOP;
    RETURN;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- View structure for vw_datosxalumnos
-- ----------------------------
DROP VIEW IF EXISTS "public"."vw_datosxalumnos";
CREATE VIEW "public"."vw_datosxalumnos" AS  SELECT al.alum_apellido AS apellido,
    al.alum_nombre AS nombre,
    alcarcur.alcc_legajo AS legajo,
    ing.ingr_fecha AS fecha,
    ing.ingr_hora AS hora,
    ing.ingr_tipocomp AS comprobante,
    ing.ingr_nrocomp AS nrocomprombante,
    ing.ingr_estado AS estado,
    ing.ingr_importetotal AS importetotal,
    (ing.ingr_importetotal / pagal.paal_importecuota) AS cuotas
   FROM (((((alumnos al
     JOIN alumnoscarreracurso alcarcur ON (((alcarcur.alcc_idalumno)::text = (al.alum_idalumno)::text)))
     JOIN carrerascursosalta ccuralt ON (((ccuralt.ccal_idccalta)::text = (alcarcur.alcc_idccalta)::text)))
     JOIN ingresos ing ON (((ing.ingr_idalumclie)::text = (al.alum_idalumno)::text)))
     JOIN ingresosdetalle deting ON (((deting.inde_idingreso)::text = (ing.ingr_idingreso)::text)))
     JOIN pagoalumnos pagal ON (((pagal.paal_idpagoalumno)::text = (deting.inde_idrelacionado)::text)));

-- ----------------------------
-- Primary Key structure for table alumnos
-- ----------------------------
ALTER TABLE "public"."alumnos" ADD CONSTRAINT "alumnos_pkey" PRIMARY KEY ("alum_idalumno");

-- ----------------------------
-- Primary Key structure for table alumnoscarreracurso
-- ----------------------------
ALTER TABLE "public"."alumnoscarreracurso" ADD CONSTRAINT "alumnoscarreracurso_pkey" PRIMARY KEY ("alcc_idalucarrcurs");

-- ----------------------------
-- Primary Key structure for table carrerascursos
-- ----------------------------
ALTER TABLE "public"."carrerascursos" ADD CONSTRAINT "carrerascursos_pkey" PRIMARY KEY ("cacu_idcarrcurs");

-- ----------------------------
-- Primary Key structure for table carrerascursosalta
-- ----------------------------
ALTER TABLE "public"."carrerascursosalta" ADD CONSTRAINT "carrerascursosalta_pkey" PRIMARY KEY ("ccal_idccalta");

-- ----------------------------
-- Primary Key structure for table ingresos
-- ----------------------------
ALTER TABLE "public"."ingresos" ADD CONSTRAINT "ingresos_pkey" PRIMARY KEY ("ingr_idingreso");

-- ----------------------------
-- Primary Key structure for table ingresosdetalle
-- ----------------------------
ALTER TABLE "public"."ingresosdetalle" ADD CONSTRAINT "ingresosdetalle_pkey" PRIMARY KEY ("inde_idingredeta");

-- ----------------------------
-- Primary Key structure for table pagoalumnos
-- ----------------------------
ALTER TABLE "public"."pagoalumnos" ADD CONSTRAINT "pagoalumnos_pkey" PRIMARY KEY ("paal_idpagoalumno");
