-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2021 a las 13:37:21
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbcompraensalta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditorias`
--

CREATE TABLE `auditorias` (
  `iIdAuditorias` int(11) NOT NULL,
  `dFecha` datetime DEFAULT NULL,
  `sDescripcion` varchar(400) DEFAULT NULL,
  `Usuarios_iIdUsuarios` int(11) NOT NULL,
  `TipoAuditoria_iIdTipoAuditoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritosdecompras`
--

CREATE TABLE `carritosdecompras` (
  `iIdCarritosdeCompras` int(11) NOT NULL,
  `iCantidad` int(11) DEFAULT NULL,
  `dUltimaFecha` datetime DEFAULT NULL,
  `iIdUsuarios` int(11) NOT NULL,
  `iIdProductos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `iIdCategorias` int(11) NOT NULL,
  `sNombre` varchar(100) DEFAULT NULL,
  `sDescripcion` varchar(400) DEFAULT NULL,
  `dFechaAlta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `iIdComentarios` int(11) NOT NULL,
  `sTitulo` varchar(100) DEFAULT NULL,
  `sTexto` varchar(400) DEFAULT NULL,
  `Productos_iIdProductos` int(11) NOT NULL,
  `Usuarios_iIdUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `iIdImagenes` int(11) NOT NULL,
  `sNombreArchivo` varchar(100) DEFAULT NULL,
  `sTipoExtension` varchar(50) DEFAULT NULL,
  `sPath` varchar(400) DEFAULT NULL,
  `bEliminado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `iIdMarcas` int(11) NOT NULL,
  `sNombre` varchar(100) DEFAULT NULL,
  `sDescripcion` varchar(400) DEFAULT NULL,
  `iOrden` int(11) DEFAULT NULL,
  `bPublicado` tinyint(1) DEFAULT NULL,
  `bEliminado` tinyint(1) DEFAULT NULL,
  `dFecha` datetime DEFAULT NULL,
  `Imagenes_iIdImagenes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordendetalle`
--

CREATE TABLE `ordendetalle` (
  `iIdOrdenDetalle` int(11) NOT NULL,
  `iCantidad` int(11) DEFAULT NULL,
  `fPrecio` decimal(18,2) DEFAULT NULL,
  `Ordenes_iIdOrdenes` int(11) NOT NULL,
  `Productos_iIdProductos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `iIdOrdenes` int(11) NOT NULL,
  `sNumero` varchar(50) DEFAULT NULL,
  `fTotal` decimal(18,2) DEFAULT NULL,
  `dFecha` datetime DEFAULT NULL,
  `iUltimoEstadoOrden` int(11) DEFAULT NULL,
  `iUltimoEstadoPago` int(11) DEFAULT NULL,
  `iUltimoEstadoEnvio` int(11) DEFAULT NULL,
  `Usuarios_iIdUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenhistorial`
--

CREATE TABLE `ordenhistorial` (
  `iIdOrdenHistorial` int(11) NOT NULL,
  `dFecha` datetime DEFAULT NULL,
  `iTipoEstado` int(11) DEFAULT NULL,
  `iEstado` int(11) DEFAULT NULL,
  `sHistorial` varchar(400) DEFAULT NULL,
  `bMostrarUsuario` tinyint(1) DEFAULT NULL,
  `Ordenes_iIdOrdenes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poducto_marca`
--

CREATE TABLE `poducto_marca` (
  `iIdProducto_Marca` int(11) NOT NULL,
  `iOrden` int(11) DEFAULT NULL,
  `Productos_iIdProductos` int(11) NOT NULL,
  `Marcas_iIdMarcas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `iIdProductos` int(11) NOT NULL,
  `sCodigo` varchar(50) DEFAULT NULL,
  `sNombre` varchar(100) DEFAULT NULL,
  `sDescripcion` varchar(400) DEFAULT NULL,
  `iStock` int(11) DEFAULT NULL,
  `iStockMinimo` int(11) DEFAULT NULL,
  `fPrecio` decimal(18,2) DEFAULT NULL,
  `dFecha` datetime DEFAULT NULL,
  `iIdImagenPrincipal` int(11) DEFAULT NULL,
  `bPublicado` tinyint(1) DEFAULT NULL,
  `bEliminado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_categoria`
--

CREATE TABLE `producto_categoria` (
  `iIdProducto_Categoria` int(11) NOT NULL,
  `iIdCategorias` int(11) NOT NULL,
  `iIdProductos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_imagen`
--

CREATE TABLE `producto_imagen` (
  `iIdProducto_Imagen` int(11) NOT NULL,
  `iOrden` int(11) DEFAULT NULL,
  `iIdProductos` int(11) NOT NULL,
  `iIdImagenes` int(11) NOT NULL,
  `bEliminado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `iIdProveedores` int(11) NOT NULL,
  `sRazonSocial` varchar(100) DEFAULT NULL,
  `sCUIT` varchar(15) DEFAULT NULL,
  `sDomicilio` varchar(100) DEFAULT NULL,
  `sTelefono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_compra`
--

CREATE TABLE `proveedor_compra` (
  `iIdProveedor_Compra` int(11) NOT NULL,
  `dFecha` datetime DEFAULT NULL,
  `iStock` int(11) DEFAULT NULL,
  `fCosto` decimal(18,2) DEFAULT NULL,
  `Poducto_Marca_iIdProducto_Marca` int(11) NOT NULL,
  `Proveedores_iIdProveedores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoauditoria`
--

CREATE TABLE `tipoauditoria` (
  `iIdTipoAuditoria` int(11) NOT NULL,
  `sDescripcion` varchar(100) DEFAULT NULL,
  `sAbreviatura` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `iIdUsuarios` int(11) NOT NULL,
  `sLogin` varchar(65) NOT NULL,
  `sClave` varchar(64) NOT NULL,
  `sSalt` varchar(64) DEFAULT NULL,
  `sNombre` varchar(100) NOT NULL,
  `sApellido` varchar(100) NOT NULL,
  `sEmail` varchar(100) NOT NULL,
  `sDomicilio` varchar(100) DEFAULT NULL,
  `iDNI` int(11) DEFAULT NULL,
  `sUltimoIP` varchar(100) DEFAULT NULL,
  `dFechaAlta` datetime DEFAULT NULL,
  `dUltimaFechaLogin` datetime DEFAULT NULL,
  `bEliminado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditorias`
--
ALTER TABLE `auditorias`
  ADD PRIMARY KEY (`iIdAuditorias`),
  ADD KEY `fk_Auditorias_TipoAuditoria1` (`TipoAuditoria_iIdTipoAuditoria`),
  ADD KEY `fk_Auditorias_Usuarios1` (`Usuarios_iIdUsuarios`);

--
-- Indices de la tabla `carritosdecompras`
--
ALTER TABLE `carritosdecompras`
  ADD PRIMARY KEY (`iIdCarritosdeCompras`),
  ADD KEY `fk_CarritosdeCompras_Productos1` (`iIdProductos`),
  ADD KEY `fk_CarritosdeCompras_Usuarios1` (`iIdUsuarios`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`iIdCategorias`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`iIdComentarios`),
  ADD KEY `fk_Comentarios_Productos1` (`Productos_iIdProductos`),
  ADD KEY `fk_Comentarios_Usuarios1` (`Usuarios_iIdUsuarios`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`iIdImagenes`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`iIdMarcas`),
  ADD KEY `fk_Marcas_Imagenes1` (`Imagenes_iIdImagenes`);

--
-- Indices de la tabla `ordendetalle`
--
ALTER TABLE `ordendetalle`
  ADD PRIMARY KEY (`iIdOrdenDetalle`),
  ADD KEY `fk_OrdenDetalle_Ordenes1` (`Ordenes_iIdOrdenes`),
  ADD KEY `fk_OrdenDetalle_Productos1` (`Productos_iIdProductos`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`iIdOrdenes`),
  ADD KEY `fk_Ordenes_Usuarios1` (`Usuarios_iIdUsuarios`);

--
-- Indices de la tabla `ordenhistorial`
--
ALTER TABLE `ordenhistorial`
  ADD PRIMARY KEY (`iIdOrdenHistorial`),
  ADD KEY `fk_OrdenHistorial_Ordenes1` (`Ordenes_iIdOrdenes`);

--
-- Indices de la tabla `poducto_marca`
--
ALTER TABLE `poducto_marca`
  ADD PRIMARY KEY (`iIdProducto_Marca`),
  ADD KEY `fk_Poducto_Marca_Marcas1` (`Marcas_iIdMarcas`),
  ADD KEY `fk_Poducto_Marca_Productos1` (`Productos_iIdProductos`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`iIdProductos`);

--
-- Indices de la tabla `producto_categoria`
--
ALTER TABLE `producto_categoria`
  ADD PRIMARY KEY (`iIdProducto_Categoria`),
  ADD KEY `fk_Producto_Categoria_Categorias1` (`iIdCategorias`),
  ADD KEY `fk_Producto_Categoria_Productos1` (`iIdProductos`);

--
-- Indices de la tabla `producto_imagen`
--
ALTER TABLE `producto_imagen`
  ADD PRIMARY KEY (`iIdProducto_Imagen`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`iIdProveedores`);

--
-- Indices de la tabla `proveedor_compra`
--
ALTER TABLE `proveedor_compra`
  ADD PRIMARY KEY (`iIdProveedor_Compra`),
  ADD KEY `fk_Proveedor_Compra_Poducto_Marca1` (`Poducto_Marca_iIdProducto_Marca`),
  ADD KEY `fk_Proveedor_Compra_Proveedores1` (`Proveedores_iIdProveedores`);

--
-- Indices de la tabla `tipoauditoria`
--
ALTER TABLE `tipoauditoria`
  ADD PRIMARY KEY (`iIdTipoAuditoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`iIdUsuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditorias`
--
ALTER TABLE `auditorias`
  MODIFY `iIdAuditorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carritosdecompras`
--
ALTER TABLE `carritosdecompras`
  MODIFY `iIdCarritosdeCompras` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `iIdCategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `iIdComentarios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `iIdImagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `iIdMarcas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordendetalle`
--
ALTER TABLE `ordendetalle`
  MODIFY `iIdOrdenDetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `iIdOrdenes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordenhistorial`
--
ALTER TABLE `ordenhistorial`
  MODIFY `iIdOrdenHistorial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `poducto_marca`
--
ALTER TABLE `poducto_marca`
  MODIFY `iIdProducto_Marca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `iIdProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `producto_categoria`
--
ALTER TABLE `producto_categoria`
  MODIFY `iIdProducto_Categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto_imagen`
--
ALTER TABLE `producto_imagen`
  MODIFY `iIdProducto_Imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `iIdProveedores` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor_compra`
--
ALTER TABLE `proveedor_compra`
  MODIFY `iIdProveedor_Compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoauditoria`
--
ALTER TABLE `tipoauditoria`
  MODIFY `iIdTipoAuditoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `iIdUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auditorias`
--
ALTER TABLE `auditorias`
  ADD CONSTRAINT `fk_Auditorias_TipoAuditoria1` FOREIGN KEY (`TipoAuditoria_iIdTipoAuditoria`) REFERENCES `tipoauditoria` (`iIdTipoAuditoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Auditorias_Usuarios1` FOREIGN KEY (`Usuarios_iIdUsuarios`) REFERENCES `usuarios` (`iIdUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `carritosdecompras`
--
ALTER TABLE `carritosdecompras`
  ADD CONSTRAINT `fk_CarritosdeCompras_Productos1` FOREIGN KEY (`iIdProductos`) REFERENCES `productos` (`iIdProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CarritosdeCompras_Usuarios1` FOREIGN KEY (`iIdUsuarios`) REFERENCES `usuarios` (`iIdUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_Comentarios_Productos1` FOREIGN KEY (`Productos_iIdProductos`) REFERENCES `productos` (`iIdProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Comentarios_Usuarios1` FOREIGN KEY (`Usuarios_iIdUsuarios`) REFERENCES `usuarios` (`iIdUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD CONSTRAINT `fk_Marcas_Imagenes1` FOREIGN KEY (`Imagenes_iIdImagenes`) REFERENCES `imagenes` (`iIdImagenes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ordendetalle`
--
ALTER TABLE `ordendetalle`
  ADD CONSTRAINT `fk_OrdenDetalle_Ordenes1` FOREIGN KEY (`Ordenes_iIdOrdenes`) REFERENCES `ordenes` (`iIdOrdenes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OrdenDetalle_Productos1` FOREIGN KEY (`Productos_iIdProductos`) REFERENCES `productos` (`iIdProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `fk_Ordenes_Usuarios1` FOREIGN KEY (`Usuarios_iIdUsuarios`) REFERENCES `usuarios` (`iIdUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ordenhistorial`
--
ALTER TABLE `ordenhistorial`
  ADD CONSTRAINT `fk_OrdenHistorial_Ordenes1` FOREIGN KEY (`Ordenes_iIdOrdenes`) REFERENCES `ordenes` (`iIdOrdenes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `poducto_marca`
--
ALTER TABLE `poducto_marca`
  ADD CONSTRAINT `fk_Poducto_Marca_Marcas1` FOREIGN KEY (`Marcas_iIdMarcas`) REFERENCES `marcas` (`iIdMarcas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Poducto_Marca_Productos1` FOREIGN KEY (`Productos_iIdProductos`) REFERENCES `productos` (`iIdProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_categoria`
--
ALTER TABLE `producto_categoria`
  ADD CONSTRAINT `fk_Producto_Categoria_Categorias1` FOREIGN KEY (`iIdCategorias`) REFERENCES `categorias` (`iIdCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Producto_Categoria_Productos1` FOREIGN KEY (`iIdProductos`) REFERENCES `productos` (`iIdProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proveedor_compra`
--
ALTER TABLE `proveedor_compra`
  ADD CONSTRAINT `fk_Proveedor_Compra_Poducto_Marca1` FOREIGN KEY (`Poducto_Marca_iIdProducto_Marca`) REFERENCES `poducto_marca` (`iIdProducto_Marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proveedor_Compra_Proveedores1` FOREIGN KEY (`Proveedores_iIdProveedores`) REFERENCES `proveedores` (`iIdProveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
