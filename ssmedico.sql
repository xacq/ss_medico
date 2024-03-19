-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2024 a las 02:57:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ssmedico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smm_horas`
--

CREATE TABLE `smm_horas` (
  `horasid` int(11) NOT NULL,
  `horasname` time NOT NULL,
  `horascreate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `smm_horas`
--

INSERT INTO `smm_horas` (`horasid`, `horasname`, `horascreate`) VALUES
(3, '08:00:00', '2024-03-02 16:59:37'),
(4, '08:30:00', '2024-03-06 16:03:54'),
(5, '09:00:00', '2024-03-18 18:17:57'),
(6, '09:30:00', '2024-03-18 18:18:07'),
(7, '10:00:00', '2024-03-18 19:32:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_departamento`
--

CREATE TABLE `ssm_departamento` (
  `departamentoid` int(11) NOT NULL,
  `departamentodescripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_departamento`
--

INSERT INTO `ssm_departamento` (`departamentoid`, `departamentodescripcion`) VALUES
(1, 'Odontología'),
(2, 'Fisioterapia'),
(3, 'Cardiología'),
(4, 'Medicina'),
(5, 'Enfermeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_doctor`
--

CREATE TABLE `ssm_doctor` (
  `doctorid` int(11) NOT NULL,
  `doctoruser` int(11) NOT NULL,
  `doctornombres` varchar(100) NOT NULL,
  `doctorcorreo` varchar(255) NOT NULL,
  `doctorcedula` varchar(15) NOT NULL,
  `doctorpasport` varchar(50) NOT NULL,
  `doctortelefono` varchar(15) NOT NULL,
  `doctorcelular` varchar(15) NOT NULL,
  `doctordireccion` varchar(150) NOT NULL,
  `doctorciudad` varchar(50) NOT NULL,
  `doctorsexo` int(2) NOT NULL,
  `doctornace` date NOT NULL,
  `doctordepartamento` int(2) NOT NULL,
  `doctorespecialidad` int(2) NOT NULL,
  `doctorcreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_doctor`
--

INSERT INTO `ssm_doctor` (`doctorid`, `doctoruser`, `doctornombres`, `doctorcorreo`, `doctorcedula`, `doctorpasport`, `doctortelefono`, `doctorcelular`, `doctordireccion`, `doctorciudad`, `doctorsexo`, `doctornace`, `doctordepartamento`, `doctorespecialidad`, `doctorcreacion`) VALUES
(8, 14, 'Xavier Torres Coronel', 'xt@gmail.com', '0103824835', '0934082134923481', '09989898', '098098098', 'kjkjhkjhkjhertert', 'kjhkjhkjhk', 1, '2000-03-31', 3, 4, '2024-03-18 17:30:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_especialidad`
--

CREATE TABLE `ssm_especialidad` (
  `especialidadid` int(11) NOT NULL,
  `especialidaddescripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_especialidad`
--

INSERT INTO `ssm_especialidad` (`especialidadid`, `especialidaddescripcion`) VALUES
(1, 'Pediatría'),
(2, 'General'),
(3, 'Maternal'),
(4, 'Geriátrico'),
(5, 'Familiar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_paciente`
--

CREATE TABLE `ssm_paciente` (
  `pacienteid` int(11) NOT NULL,
  `pacienteuser` int(11) NOT NULL,
  `pacientenombres` varchar(100) NOT NULL,
  `pacientecorreo` varchar(255) NOT NULL,
  `pacientecedula` varchar(15) NOT NULL,
  `pacientepasport` varchar(50) NOT NULL,
  `pacientetelefono` varchar(11) NOT NULL,
  `pacientecelular` varchar(11) NOT NULL,
  `pacientedireccion` varchar(100) NOT NULL,
  `pacienteciudad` varchar(50) NOT NULL,
  `pacientesexo` int(2) NOT NULL,
  `pacientenace` date NOT NULL,
  `pacientecreado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_paciente`
--

INSERT INTO `ssm_paciente` (`pacienteid`, `pacienteuser`, `pacientenombres`, `pacientecorreo`, `pacientecedula`, `pacientepasport`, `pacientetelefono`, `pacientecelular`, `pacientedireccion`, `pacienteciudad`, `pacientesexo`, `pacientenace`, `pacientecreado`) VALUES
(5, 7, 'Hernan Petro', 'hp@gmail.com', '0103824835', '123131231231', '09092410980', '90098098098', 'njlknljnkjnlkjnsdfsdf', 'kjnkjnlkjn', 1, '1999-03-30', '2024-03-18 16:31:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_registro`
--

CREATE TABLE `ssm_registro` (
  `registroid` int(11) NOT NULL,
  `registrocorreo` varchar(255) NOT NULL,
  `registrodate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_registro`
--

INSERT INTO `ssm_registro` (`registroid`, `registrocorreo`, `registrodate`) VALUES
(26, 'xacq@msn.com', '2024-03-17 17:16:41'),
(27, 'xacq@msn.com', '2024-03-17 17:32:07'),
(28, 'pt@gmail.com', '2024-03-17 19:06:35'),
(29, 'xacq@msn.com', '2024-03-18 13:54:58'),
(30, 'st@gmail.com', '2024-03-18 13:59:11'),
(31, 'pt@gmail.com', '2024-03-18 14:47:21'),
(32, 'xacq@msn.com', '2024-03-18 15:29:36'),
(33, 'xacq@msn.com', '2024-03-18 15:59:05'),
(34, 'hp@gmail.com', '2024-03-18 16:33:28'),
(35, 'xacq@msn.com', '2024-03-18 16:52:50'),
(36, 'ag@gmail.com', '2024-03-18 16:59:01'),
(37, 'hp@gmail.com', '2024-03-18 17:00:23'),
(38, 'ag@gmail.com', '2024-03-18 17:01:00'),
(39, 'hp@gmail.com', '2024-03-18 17:02:59'),
(40, 'ag@gmail.com', '2024-03-18 17:04:45'),
(41, 'xacq@msn.com', '2024-03-18 17:06:50'),
(42, 'xacq@msn.com', '2024-03-18 17:18:29'),
(43, 'xt@gmail.com', '2024-03-18 17:31:32'),
(44, 'hp@gmail.com', '2024-03-18 17:47:47'),
(45, 'xt@gmail.com', '2024-03-18 17:48:15'),
(46, 'xacq@msn.com', '2024-03-18 17:52:14'),
(47, 'xt@gmail.com', '2024-03-18 18:04:21'),
(48, 'xt@gmail.com', '2024-03-18 18:08:21'),
(49, 'xt@gmail.com', '2024-03-18 18:10:01'),
(50, 'xacq@msn.com', '2024-03-18 18:11:57'),
(51, 'ernan@msn.com', '2024-03-18 18:28:32'),
(52, 'xt@gmail.com', '2024-03-18 18:33:02'),
(53, 'hp@gmail.com', '2024-03-18 18:33:18'),
(54, 'ernan@msn.com', '2024-03-18 18:37:59'),
(55, 'ernan@msn.com', '2024-03-18 18:53:15'),
(56, 'xt@gmail.com', '2024-03-18 18:56:03'),
(57, 'hp@gmail.com', '2024-03-18 18:56:28'),
(58, 'ernan@msn.com', '2024-03-18 19:24:05'),
(59, 'xt@gmail.com', '2024-03-18 19:26:46'),
(60, 'xt@gmail.com', '2024-03-18 19:28:54'),
(61, 'hp@gmail.com', '2024-03-18 19:29:49'),
(62, 'ernan@msn.com', '2024-03-18 19:33:59'),
(63, 'xt@gmail.com', '2024-03-18 19:34:58'),
(64, 'hp@gmail.com', '2024-03-18 19:35:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_sexo`
--

CREATE TABLE `ssm_sexo` (
  `sexoid` int(11) NOT NULL,
  `sexodescripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_sexo`
--

INSERT INTO `ssm_sexo` (`sexoid`, `sexodescripcion`) VALUES
(1, 'Hombre'),
(2, 'Mujer'),
(3, 'Homosexual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_tipouser`
--

CREATE TABLE `ssm_tipouser` (
  `tipouserid` int(11) NOT NULL,
  `tipouserdescripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_tipouser`
--

INSERT INTO `ssm_tipouser` (`tipouserid`, `tipouserdescripcion`) VALUES
(1, 'Administrador'),
(2, 'Medico'),
(3, 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_turnos`
--

CREATE TABLE `ssm_turnos` (
  `turnoid` int(11) NOT NULL,
  `turnopaciente` int(11) NOT NULL,
  `turnomedico` int(11) NOT NULL,
  `turnofecha` date NOT NULL,
  `turnohora` time NOT NULL,
  `turnocreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_turnos`
--

INSERT INTO `ssm_turnos` (`turnoid`, `turnopaciente`, `turnomedico`, `turnofecha`, `turnohora`, `turnocreacion`) VALUES
(7, 7, 14, '2024-03-19', '08:00:00', '2024-03-18 17:47:57'),
(8, 7, 14, '2024-03-15', '09:00:00', '2024-03-18 19:30:02'),
(9, 7, 14, '2024-03-31', '09:30:00', '2024-03-18 19:36:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ssm_user`
--

CREATE TABLE `ssm_user` (
  `id` int(11) NOT NULL,
  `usercorreo` varchar(255) NOT NULL,
  `userpassword` varchar(512) NOT NULL,
  `username` varchar(100) NOT NULL,
  `usertipo` int(11) NOT NULL,
  `userestado` int(11) NOT NULL,
  `userfechacreado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ssm_user`
--

INSERT INTO `ssm_user` (`id`, `usercorreo`, `userpassword`, `username`, `usertipo`, `userestado`, `userfechacreado`) VALUES
(1, 'ernan@msn.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 'Ernan Admin', 1, 1, '2024-02-28 13:56:45'),
(7, 'hp@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 'Hernan Petro', 3, 1, '2024-03-18 16:25:56'),
(14, 'xt@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 'Xavier Torres', 2, 1, '2024-03-18 17:30:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `smm_horas`
--
ALTER TABLE `smm_horas`
  ADD PRIMARY KEY (`horasid`);

--
-- Indices de la tabla `ssm_departamento`
--
ALTER TABLE `ssm_departamento`
  ADD PRIMARY KEY (`departamentoid`);

--
-- Indices de la tabla `ssm_doctor`
--
ALTER TABLE `ssm_doctor`
  ADD PRIMARY KEY (`doctorid`),
  ADD KEY `doctorsexo` (`doctorsexo`),
  ADD KEY `doctordepartamento` (`doctordepartamento`),
  ADD KEY `doctorespecialidad` (`doctorespecialidad`),
  ADD KEY `doctoruser` (`doctoruser`);

--
-- Indices de la tabla `ssm_especialidad`
--
ALTER TABLE `ssm_especialidad`
  ADD PRIMARY KEY (`especialidadid`);

--
-- Indices de la tabla `ssm_paciente`
--
ALTER TABLE `ssm_paciente`
  ADD PRIMARY KEY (`pacienteid`),
  ADD KEY `pacienteuser` (`pacienteuser`),
  ADD KEY `pacientesexo` (`pacientesexo`);

--
-- Indices de la tabla `ssm_registro`
--
ALTER TABLE `ssm_registro`
  ADD PRIMARY KEY (`registroid`);

--
-- Indices de la tabla `ssm_sexo`
--
ALTER TABLE `ssm_sexo`
  ADD PRIMARY KEY (`sexoid`);

--
-- Indices de la tabla `ssm_tipouser`
--
ALTER TABLE `ssm_tipouser`
  ADD PRIMARY KEY (`tipouserid`);

--
-- Indices de la tabla `ssm_turnos`
--
ALTER TABLE `ssm_turnos`
  ADD PRIMARY KEY (`turnoid`),
  ADD KEY `turnopaciente` (`turnopaciente`),
  ADD KEY `turnomedico` (`turnomedico`);

--
-- Indices de la tabla `ssm_user`
--
ALTER TABLE `ssm_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertipo` (`usertipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `smm_horas`
--
ALTER TABLE `smm_horas`
  MODIFY `horasid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ssm_departamento`
--
ALTER TABLE `ssm_departamento`
  MODIFY `departamentoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ssm_doctor`
--
ALTER TABLE `ssm_doctor`
  MODIFY `doctorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ssm_especialidad`
--
ALTER TABLE `ssm_especialidad`
  MODIFY `especialidadid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ssm_paciente`
--
ALTER TABLE `ssm_paciente`
  MODIFY `pacienteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ssm_registro`
--
ALTER TABLE `ssm_registro`
  MODIFY `registroid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `ssm_sexo`
--
ALTER TABLE `ssm_sexo`
  MODIFY `sexoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ssm_tipouser`
--
ALTER TABLE `ssm_tipouser`
  MODIFY `tipouserid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ssm_turnos`
--
ALTER TABLE `ssm_turnos`
  MODIFY `turnoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ssm_user`
--
ALTER TABLE `ssm_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ssm_doctor`
--
ALTER TABLE `ssm_doctor`
  ADD CONSTRAINT `ssm_doctor_ibfk_1` FOREIGN KEY (`doctoruser`) REFERENCES `ssm_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ssm_doctor_ibfk_2` FOREIGN KEY (`doctorsexo`) REFERENCES `ssm_sexo` (`sexoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ssm_doctor_ibfk_3` FOREIGN KEY (`doctordepartamento`) REFERENCES `ssm_departamento` (`departamentoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ssm_doctor_ibfk_4` FOREIGN KEY (`doctorespecialidad`) REFERENCES `ssm_especialidad` (`especialidadid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ssm_paciente`
--
ALTER TABLE `ssm_paciente`
  ADD CONSTRAINT `ssm_paciente_ibfk_1` FOREIGN KEY (`pacienteuser`) REFERENCES `ssm_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ssm_paciente_ibfk_2` FOREIGN KEY (`pacientesexo`) REFERENCES `ssm_sexo` (`sexoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ssm_turnos`
--
ALTER TABLE `ssm_turnos`
  ADD CONSTRAINT `ssm_turnos_ibfk_1` FOREIGN KEY (`turnopaciente`) REFERENCES `ssm_paciente` (`pacienteuser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ssm_turnos_ibfk_2` FOREIGN KEY (`turnomedico`) REFERENCES `ssm_doctor` (`doctoruser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ssm_user`
--
ALTER TABLE `ssm_user`
  ADD CONSTRAINT `ssm_user_ibfk_1` FOREIGN KEY (`usertipo`) REFERENCES `ssm_tipouser` (`tipouserid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
