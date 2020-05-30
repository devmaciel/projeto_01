-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Maio-2020 às 01:16
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_01`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.agenda`
--

CREATE TABLE `tb_admin.agenda` (
  `id` int(11) NOT NULL,
  `tarefa` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.agenda`
--

INSERT INTO `tb_admin.agenda` (`id`, `tarefa`, `data`) VALUES
(1, 'Teste', '2020-05-29'),
(2, 'teste2', '2020-05-28'),
(3, 'fazer chat online', '2020-05-27'),
(4, 'teste', '2020-05-27'),
(5, 'teste', '2020-05-23'),
(6, 'teste2', '2020-05-27'),
(7, 'teste3', '2020-05-26'),
(8, 'aa', '2020-05-29'),
(9, 'denovo', '2020-05-27'),
(10, 'TESTE4', '2020-05-28'),
(11, 'testeee', '2020-05-29'),
(12, 'teste do subadmin', '2020-05-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.chat`
--

CREATE TABLE `tb_admin.chat` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.chat`
--

INSERT INTO `tb_admin.chat` (`id`, `id_user`, `mensagem`) VALUES
(1, 1, 'teste'),
(2, 1, 'teste 2'),
(3, 3, 'Beleza, para logar com esta conta, é \"subadmin subadmin\"');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.online`
--

CREATE TABLE `tb_admin.online` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ultima_acao` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.online`
--

INSERT INTO `tb_admin.online` (`id`, `ip`, `ultima_acao`, `token`) VALUES
(41, '::1', '2020-05-29 20:00:55', '5ed1915280f02'),
(42, '::1', '2020-05-29 20:15:16', '5ed19431a9e5e');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `img`, `nome`, `cargo`) VALUES
(1, 'admin', 'admin', '5e25f56f10340.jpg', 'João Pedro Maciel', 2),
(3, 'subadmin', 'subadmin', '5ed190f13ffc6.jpg', 'Joojs', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.visitas`
--

CREATE TABLE `tb_admin.visitas` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.visitas`
--

INSERT INTO `tb_admin.visitas` (`id`, `ip`, `dia`) VALUES
(30, '::1', '2020-05-29'),
(31, '::1', '2020-05-29'),
(32, '::1', '2020-05-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.categorias`
--

CREATE TABLE `tb_site.categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.categorias`
--

INSERT INTO `tb_site.categorias` (`id`, `nome`, `slug`, `order_id`) VALUES
(3, 'Geral', 'geral', 3),
(4, 'Games', 'games', 4),
(5, 'Esportes', 'esportes', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.comentarios`
--

CREATE TABLE `tb_site.comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `comentario` text NOT NULL,
  `noticia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.comentarios`
--

INSERT INTO `tb_site.comentarios` (`id`, `nome`, `comentario`, `noticia_id`) VALUES
(1, 'Guilherme C. Grillo', 'Olá mundo!', 7),
(2, 'João da silva', 'Outro comentário!', 7),
(3, 'João Pedro Maciel', 'Teste', 8),
(4, 'João Pedro Maciel', 'Teste 2', 8),
(5, 'João Pedro Maciel', 'Teste 2', 8),
(6, 'João Pedro Maciel', 'teste', 9),
(7, 'João Pedro Maciel', 'teste2', 9),
(8, 'João Pedro Maciel', 'teste2', 9),
(9, 'João Pedro Maciel', 'teste', 8),
(10, 'João Pedro Maciel', 'teste', 8),
(11, 'João Pedro Maciel', 'só mais um teste para garantir', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.config`
--

CREATE TABLE `tb_site.config` (
  `titulo` varchar(255) NOT NULL,
  `nome_autor` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `icone1` varchar(255) NOT NULL,
  `descricao1` text NOT NULL,
  `icone2` varchar(255) NOT NULL,
  `descricao2` text NOT NULL,
  `icone3` varchar(255) NOT NULL,
  `descricao3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.config`
--

INSERT INTO `tb_site.config` (`titulo`, `nome_autor`, `descricao`, `icone1`, `descricao1`, `icone2`, `descricao2`, `icone3`, `descricao3`) VALUES
('Projeto_01', 'João Pedro Maciel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam. Cras vel augue nec diam tempus efficitur. Aliquam et posuere libero. Integer malesuada justo sit amet ullamcorper pretium. Phasellus pellentesque tincidunt congue. Aliquam dictum ipsum aliquam, elementum massa quis, viverra nibh.\r\n\r\nDuis in hendrerit felis. Aliquam consequat augue quis urna aliquam, id tempor arcu lacinia. Donec egestas leo porttitor lacus laoreet varius. Nam ut pellentesque sapien. Pellentesque placerat dignissim rutrum. Praesent ex mauris, fringilla in tempor id, pharetra nec nibh. Curabitur a ligula sapien. Maecenas condimentum pellentesque fermentum. Fusce blandit lobortis erat, eu mattis metus convallis eleifend. Integer tincidunt ac arcu ut feugiat. Aliquam ac est interdum massa gravida tincidunt a ac leo. Maecenas elit magna, tempus ut eleifend a, sollicitudin et arcu. Aliquam sed tempor velit, at pulvinar tortor. Vestibulum eu lorem sit amet risus porta fringilla ut in nisl.', 'fa fa-css3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam.', 'fa fa-html5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi ege', 'fa fa-gg-circle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.depoimentos`
--

CREATE TABLE `tb_site.depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `depoimento` text NOT NULL,
  `data` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.depoimentos`
--

INSERT INTO `tb_site.depoimentos` (`id`, `nome`, `depoimento`, `data`, `order_id`) VALUES
(8, 'Guilherme Maciel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices nibh ac dictum dignissim. Sed et nibh est. Morbi vestibulum erat in dapibus facilisis. Aliquam et venenatis lacus. Quisque dapibus lorem eget quam finibus, in gravida diam elementum. Nulla facilisi. Curabitur vitae ex eget sapien interdum efficitur at sed lorem.', '19/09/2019', 11),
(9, 'João Rosa', 'Nunc vel lorem semper dui consequat aliquam. Vivamus libero massa, cursus semper nunc sed, consequat pulvinar velit. Nullam molestie aliquam pellentesque. Ut id suscipit metus. Morbi et ornare diam, ac commodo mi. Quisque accumsan, nulla ac condimentum ullamcorper, odio lectus suscipit nibh, at vulputate lacus mauris vel orci.', '28/05/2020', 9),
(10, 'Mario Rocha', 'Nunc quis ornare tortor, suscipit faucibus metus. Integer maximus turpis at dolor tristique, pulvinar pretium ipsum sodales. Mauris non vestibulum odio. Nulla lobortis ex eu massa porttitor dapibus.', '23/03/1995', 10),
(13, 'Joao', 'outro depoimento editado', '25/05/1993', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.noticias`
--

CREATE TABLE `tb_site.noticias` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `capa` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.noticias`
--

INSERT INTO `tb_site.noticias` (`id`, `categoria_id`, `data`, `titulo`, `conteudo`, `capa`, `slug`, `order_id`) VALUES
(8, 3, '2020-05-28', 'Programador FullStack', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu elementum dolor. Nulla sollicitudin dignissim eros, maximus accumsan arcu. Sed posuere, risus id ultrices condimentum, magna odio hendrerit metus, ut malesuada massa felis id nisi. Nunc condimentum rutrum magna ut dapibus. Phasellus dapibus nibh sit amet justo euismod, sit amet convallis mi facilisis. Vestibulum arcu massa, pretium eu finibus sit amet, ultrices eget mi. Proin ultrices pellentesque ligula, non vestibulum enim consequat et.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu elementum dolor. Nulla sollicitudin dignissim eros, maximus accumsan arcu. Sed posuere, risus id ultrices condimentum, magna odio hendrerit metus, ut malesuada massa felis id nisi. Nunc condimentum rutrum magna ut dapibus. Phasellus dapibus nibh sit amet justo euismod, sit amet convallis mi facilisis. Vestibulum arcu massa, pretium eu finibus sit amet, ultrices eget mi. Proin ultrices pellentesque ligula, non vestibulum enim consequat et.</span></p>', '5ed0790613be6.jpg', 'programador-fullstack', 8),
(9, 3, '2020-05-29', 'Teste 2', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Suspendisse potenti. Duis imperdiet interdum eleifend. In pharetra ex sollicitudin, pharetra augue vel, tincidunt libero. Nullam mollis quam urna, nec condimentum ex bibendum at. Proin faucibus finibus massa molestie bibendum. Praesent vulputate volutpat ligula non tincidunt. Pellentesque interdum nulla nec odio ullamcorper euismod. Maecenas lobortis pellentesque porta. Curabitur sem erat, dapibus iaculis ullamcorper nec, porta et quam. Aliquam at magna sed mi faucibus ornare id sit amet erat. Aliquam aliquam, ante sit amet ullamcorper condimentum, orci diam porta dui, non laoreet nisl justo ac tortor. Proin vel ligula laoreet, ullamcorper lectus ac, venenatis urna. Mauris facilisis orci magna, ac varius tortor porta nec. Sed in maximus orci, eu faucibus odio.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed massa nibh, euismod eget tincidunt eget, accumsan sed turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer iaculis augue eu erat vulputate luctus. Duis at arcu velit. Nullam consequat mi eget nunc aliquet dapibus. Phasellus quis augue eu ligula mollis consectetur sit amet ac metus. Proin blandit nisl nisi, non placerat mi consequat in. Nulla sit amet est eget libero egestas rutrum et sit amet nisl. Aliquam et felis sit amet sapien vulputate vulputate consequat vel risus. Mauris eget nulla turpis.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Duis et venenatis purus, tristique dictum turpis. Morbi ornare felis a ligula cursus, sed aliquet odio viverra. Nunc commodo sem at ornare vehicula. Quisque eget dolor tortor. Cras ante erat, pellentesque nec pellentesque quis, viverra eu odio. Quisque sollicitudin tortor turpis, tincidunt dictum ex commodo et. Aenean tellus mauris, convallis quis venenatis in, dapibus et tellus. Nulla et ultricies elit. In hendrerit consectetur sem quis vehicula. Nam ut mi sit amet lectus malesuada euismod quis sed urna. Sed congue porta sodales. Curabitur tristique arcu suscipit, tempor massa ut, vehicula mauris. In vehicula vitae dolor at suscipit. Donec ex justo, mollis efficitur viverra et, tristique eu nulla.</p>', '5ed07bd94cd14.jpg', 'teste-2', 14),
(10, 4, '2020-05-29', 'Lagoa Azul pra PS5', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu elementum dolor. Nulla sollicitudin dignissim eros, maximus accumsan arcu. Sed posuere, risus id ultrices condimentum, magna odio hendrerit metus, ut malesuada massa felis id nisi. Nunc condimentum rutrum magna ut dapibus. Phasellus dapibus nibh sit amet justo euismod, sit amet convallis mi facilisis. Vestibulum arcu massa, pretium eu finibus sit amet, ultrices eget mi. Proin ultrices pellentesque ligula, non vestibulum enim consequat et.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque mollis est vitae posuere vestibulum. Morbi sed tellus ac sapien pharetra porta. Nam et ultricies lacus. Proin et convallis erat, nec sagittis magna. Mauris auctor turpis mauris, vel interdum neque sagittis dignissim. Nullam nec erat est. Etiam non lectus eget magna dapibus varius. Praesent vestibulum nisi sit amet magna rutrum, vel tincidunt sem eleifend. Maecenas sodales consequat dui, in pellentesque velit aliquet eget. Quisque a vulputate elit, in convallis arcu. Nullam eu vehicula enim. Proin molestie odio in porttitor accumsan. Praesent porta urna felis. Nulla auctor, enim sollicitudin porta blandit, velit justo ultricies arcu, in ultrices diam justo non ante.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Suspendisse potenti. Duis imperdiet interdum eleifend. In pharetra ex sollicitudin, pharetra augue vel, tincidunt libero. Nullam mollis quam urna, nec condimentum ex bibendum at. Proin faucibus finibus massa molestie bibendum. Praesent vulputate volutpat ligula non tincidunt. Pellentesque interdum nulla nec odio ullamcorper euismod. Maecenas lobortis pellentesque porta. Curabitur sem erat, dapibus iaculis ullamcorper nec, porta et quam. Aliquam at magna sed mi faucibus ornare id sit amet erat. Aliquam aliquam, ante sit amet ullamcorper condimentum, orci diam porta dui, non laoreet nisl justo ac tortor. Proin vel ligula laoreet, ullamcorper lectus ac, venenatis urna. Mauris facilisis orci magna, ac varius tortor porta nec. Sed in maximus orci, eu faucibus odio.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed massa nibh, euismod eget tincidunt eget, accumsan sed turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer iaculis augue eu erat vulputate luctus. Duis at arcu velit. Nullam consequat mi eget nunc aliquet dapibus. Phasellus quis augue eu ligula mollis consectetur sit amet ac metus. Proin blandit nisl nisi, non placerat mi consequat in. Nulla sit amet est eget libero egestas rutrum et sit amet nisl. Aliquam et felis sit amet sapien vulputate vulputate consequat vel risus. Mauris eget nulla turpis.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Duis et venenatis purus, tristique dictum turpis. Morbi ornare felis a ligula cursus, sed aliquet odio viverra. Nunc commodo sem at ornare vehicula. Quisque eget dolor tortor. Cras ante erat, pellentesque nec pellentesque quis, viverra eu odio. Quisque sollicitudin tortor turpis, tincidunt dictum ex commodo et. Aenean tellus mauris, convallis quis venenatis in, dapibus et tellus. Nulla et ultricies elit. In hendrerit consectetur sem quis vehicula. Nam ut mi sit amet lectus malesuada euismod quis sed urna. Sed congue porta sodales. Curabitur tristique arcu suscipit, tempor massa ut, vehicula mauris. In vehicula vitae dolor at suscipit. Donec ex justo, mollis efficitur viverra et, tristique eu nulla.</p>', '5ed07d68863a3.jpg', 'lagoa-azul-pra-ps5', 9),
(11, 4, '2020-05-29', 'Lançamento Xbox One SS', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu elementum dolor. Nulla sollicitudin dignissim eros, maximus accumsan arcu. Sed posuere, risus id ultrices condimentum, magna odio hendrerit metus, ut malesuada massa felis id nisi. Nunc condimentum rutrum magna ut dapibus. Phasellus dapibus nibh sit amet justo euismod, sit amet convallis mi facilisis. Vestibulum arcu massa, pretium eu finibus sit amet, ultrices eget mi. Proin ultrices pellentesque ligula, non vestibulum enim consequat et.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque mollis est vitae posuere vestibulum. Morbi sed tellus ac sapien pharetra porta. Nam et ultricies lacus. Proin et convallis erat, nec sagittis magna. Mauris auctor turpis mauris, vel interdum neque sagittis dignissim. Nullam nec erat est. Etiam non lectus eget magna dapibus varius. Praesent vestibulum nisi sit amet magna rutrum, vel tincidunt sem eleifend. Maecenas sodales consequat dui, in pellentesque velit aliquet eget. Quisque a vulputate elit, in convallis arcu. Nullam eu vehicula enim. Proin molestie odio in porttitor accumsan. Praesent porta urna felis. Nulla auctor, enim sollicitudin porta blandit, velit justo ultricies arcu, in ultrices diam justo non ante.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Suspendisse potenti. Duis imperdiet interdum eleifend. In pharetra ex sollicitudin, pharetra augue vel, tincidunt libero. Nullam mollis quam urna, nec condimentum ex bibendum at. Proin faucibus finibus massa molestie bibendum. Praesent vulputate volutpat ligula non tincidunt. Pellentesque interdum nulla nec odio ullamcorper euismod. Maecenas lobortis pellentesque porta. Curabitur sem erat, dapibus iaculis ullamcorper nec, porta et quam. Aliquam at magna sed mi faucibus ornare id sit amet erat. Aliquam aliquam, ante sit amet ullamcorper condimentum, orci diam porta dui, non laoreet nisl justo ac tortor. Proin vel ligula laoreet, ullamcorper lectus ac, venenatis urna. Mauris facilisis orci magna, ac varius tortor porta nec. Sed in maximus orci, eu faucibus odio.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed massa nibh, euismod eget tincidunt eget, accumsan sed turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer iaculis augue eu erat vulputate luctus. Duis at arcu velit. Nullam consequat mi eget nunc aliquet dapibus. Phasellus quis augue eu ligula mollis consectetur sit amet ac metus. Proin blandit nisl nisi, non placerat mi consequat in. Nulla sit amet est eget libero egestas rutrum et sit amet nisl. Aliquam et felis sit amet sapien vulputate vulputate consequat vel risus. Mauris eget nulla turpis.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Duis et venenatis purus, tristique dictum turpis. Morbi ornare felis a ligula cursus, sed aliquet odio viverra. Nunc commodo sem at ornare vehicula. Quisque eget dolor tortor. Cras ante erat, pellentesque nec pellentesque quis, viverra eu odio. Quisque sollicitudin tortor turpis, tincidunt dictum ex commodo et. Aenean tellus mauris, convallis quis venenatis in, dapibus et tellus. Nulla et ultricies elit. In hendrerit consectetur sem quis vehicula. Nam ut mi sit amet lectus malesuada euismod quis sed urna. Sed congue porta sodales. Curabitur tristique arcu suscipit, tempor massa ut, vehicula mauris. In vehicula vitae dolor at suscipit. Donec ex justo, mollis efficitur viverra et, tristique eu nulla.</p>', '5ed07dbf006e1.jpg', 'lancamento-xbox-one-ss', 10),
(12, 3, '2020-05-29', '2020 Precisa ser cancelado e recomeçar novamente', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu elementum dolor. Nulla sollicitudin dignissim eros, maximus accumsan arcu. Sed posuere, risus id ultrices condimentum, magna odio hendrerit metus, ut malesuada massa felis id nisi. Nunc condimentum rutrum magna ut dapibus. Phasellus dapibus nibh sit amet justo euismod, sit amet convallis mi facilisis. Vestibulum arcu massa, pretium eu finibus sit amet, ultrices eget mi. Proin ultrices pellentesque ligula, non vestibulum enim consequat et.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque mollis est vitae posuere vestibulum. Morbi sed tellus ac sapien pharetra porta. Nam et ultricies lacus. Proin et convallis erat, nec sagittis magna. Mauris auctor turpis mauris, vel interdum neque sagittis dignissim. Nullam nec erat est. Etiam non lectus eget magna dapibus varius. Praesent vestibulum nisi sit amet magna rutrum, vel tincidunt sem eleifend. Maecenas sodales consequat dui, in pellentesque velit aliquet eget. Quisque a vulputate elit, in convallis arcu. Nullam eu vehicula enim. Proin molestie odio in porttitor accumsan. Praesent porta urna felis. Nulla auctor, enim sollicitudin porta blandit, velit justo ultricies arcu, in ultrices diam justo non ante.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Suspendisse potenti. Duis imperdiet interdum eleifend. In pharetra ex sollicitudin, pharetra augue vel, tincidunt libero. Nullam mollis quam urna, nec condimentum ex bibendum at. Proin faucibus finibus massa molestie bibendum. Praesent vulputate volutpat ligula non tincidunt. Pellentesque interdum nulla nec odio ullamcorper euismod. Maecenas lobortis pellentesque porta. Curabitur sem erat, dapibus iaculis ullamcorper nec, porta et quam. Aliquam at magna sed mi faucibus ornare id sit amet erat. Aliquam aliquam, ante sit amet ullamcorper condimentum, orci diam porta dui, non laoreet nisl justo ac tortor. Proin vel ligula laoreet, ullamcorper lectus ac, venenatis urna. Mauris facilisis orci magna, ac varius tortor porta nec. Sed in maximus orci, eu faucibus odio.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed massa nibh, euismod eget tincidunt eget, accumsan sed turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer iaculis augue eu erat vulputate luctus. Duis at arcu velit. Nullam consequat mi eget nunc aliquet dapibus. Phasellus quis augue eu ligula mollis consectetur sit amet ac metus. Proin blandit nisl nisi, non placerat mi consequat in. Nulla sit amet est eget libero egestas rutrum et sit amet nisl. Aliquam et felis sit amet sapien vulputate vulputate consequat vel risus. Mauris eget nulla turpis.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Duis et venenatis purus, tristique dictum turpis. Morbi ornare felis a ligula cursus, sed aliquet odio viverra. Nunc commodo sem at ornare vehicula. Quisque eget dolor tortor. Cras ante erat, pellentesque nec pellentesque quis, viverra eu odio. Quisque sollicitudin tortor turpis, tincidunt dictum ex commodo et. Aenean tellus mauris, convallis quis venenatis in, dapibus et tellus. Nulla et ultricies elit. In hendrerit consectetur sem quis vehicula. Nam ut mi sit amet lectus malesuada euismod quis sed urna. Sed congue porta sodales. Curabitur tristique arcu suscipit, tempor massa ut, vehicula mauris. In vehicula vitae dolor at suscipit. Donec ex justo, mollis efficitur viverra et, tristique eu nulla.</p>', '5ed07ddb673df.jpg', '2020-precisa-ser-cancelado-e-recomecar-novamente', 11),
(13, 5, '2020-05-29', 'Campeonato de futebol de botão agora é Oficial!', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu elementum dolor. Nulla sollicitudin dignissim eros, maximus accumsan arcu. Sed posuere, risus id ultrices condimentum, magna odio hendrerit metus, ut malesuada massa felis id nisi. Nunc condimentum rutrum magna ut dapibus. Phasellus dapibus nibh sit amet justo euismod, sit amet convallis mi facilisis. Vestibulum arcu massa, pretium eu finibus sit amet, ultrices eget mi. Proin ultrices pellentesque ligula, non vestibulum enim consequat et.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque mollis est vitae posuere vestibulum. Morbi sed tellus ac sapien pharetra porta. Nam et ultricies lacus. Proin et convallis erat, nec sagittis magna. Mauris auctor turpis mauris, vel interdum neque sagittis dignissim. Nullam nec erat est. Etiam non lectus eget magna dapibus varius. Praesent vestibulum nisi sit amet magna rutrum, vel tincidunt sem eleifend. Maecenas sodales consequat dui, in pellentesque velit aliquet eget. Quisque a vulputate elit, in convallis arcu. Nullam eu vehicula enim. Proin molestie odio in porttitor accumsan. Praesent porta urna felis. Nulla auctor, enim sollicitudin porta blandit, velit justo ultricies arcu, in ultrices diam justo non ante.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Suspendisse potenti. Duis imperdiet interdum eleifend. In pharetra ex sollicitudin, pharetra augue vel, tincidunt libero. Nullam mollis quam urna, nec condimentum ex bibendum at. Proin faucibus finibus massa molestie bibendum. Praesent vulputate volutpat ligula non tincidunt. Pellentesque interdum nulla nec odio ullamcorper euismod. Maecenas lobortis pellentesque porta. Curabitur sem erat, dapibus iaculis ullamcorper nec, porta et quam. Aliquam at magna sed mi faucibus ornare id sit amet erat. Aliquam aliquam, ante sit amet ullamcorper condimentum, orci diam porta dui, non laoreet nisl justo ac tortor. Proin vel ligula laoreet, ullamcorper lectus ac, venenatis urna. Mauris facilisis orci magna, ac varius tortor porta nec. Sed in maximus orci, eu faucibus odio.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed massa nibh, euismod eget tincidunt eget, accumsan sed turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer iaculis augue eu erat vulputate luctus. Duis at arcu velit. Nullam consequat mi eget nunc aliquet dapibus. Phasellus quis augue eu ligula mollis consectetur sit amet ac metus. Proin blandit nisl nisi, non placerat mi consequat in. Nulla sit amet est eget libero egestas rutrum et sit amet nisl. Aliquam et felis sit amet sapien vulputate vulputate consequat vel risus. Mauris eget nulla turpis.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Duis et venenatis purus, tristique dictum turpis. Morbi ornare felis a ligula cursus, sed aliquet odio viverra. Nunc commodo sem at ornare vehicula. Quisque eget dolor tortor. Cras ante erat, pellentesque nec pellentesque quis, viverra eu odio. Quisque sollicitudin tortor turpis, tincidunt dictum ex commodo et. Aenean tellus mauris, convallis quis venenatis in, dapibus et tellus. Nulla et ultricies elit. In hendrerit consectetur sem quis vehicula. Nam ut mi sit amet lectus malesuada euismod quis sed urna. Sed congue porta sodales. Curabitur tristique arcu suscipit, tempor massa ut, vehicula mauris. In vehicula vitae dolor at suscipit. Donec ex justo, mollis efficitur viverra et, tristique eu nulla.</p>', '5ed07e3d19e83.jpg', 'campeonato-de-futebol-de-botao-agora-e-oficial', 12),
(14, 5, '2020-05-29', 'Neymar se aposenta aos 32 anos', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu elementum dolor. Nulla sollicitudin dignissim eros, maximus accumsan arcu. Sed posuere, risus id ultrices condimentum, magna odio hendrerit metus, ut malesuada massa felis id nisi. Nunc condimentum rutrum magna ut dapibus. Phasellus dapibus nibh sit amet justo euismod, sit amet convallis mi facilisis. Vestibulum arcu massa, pretium eu finibus sit amet, ultrices eget mi. Proin ultrices pellentesque ligula, non vestibulum enim consequat et.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque mollis est vitae posuere vestibulum. Morbi sed tellus ac sapien pharetra porta. Nam et ultricies lacus. Proin et convallis erat, nec sagittis magna. Mauris auctor turpis mauris, vel interdum neque sagittis dignissim. Nullam nec erat est. Etiam non lectus eget magna dapibus varius. Praesent vestibulum nisi sit amet magna rutrum, vel tincidunt sem eleifend. Maecenas sodales consequat dui, in pellentesque velit aliquet eget. Quisque a vulputate elit, in convallis arcu. Nullam eu vehicula enim. Proin molestie odio in porttitor accumsan. Praesent porta urna felis. Nulla auctor, enim sollicitudin porta blandit, velit justo ultricies arcu, in ultrices diam justo non ante.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Suspendisse potenti. Duis imperdiet interdum eleifend. In pharetra ex sollicitudin, pharetra augue vel, tincidunt libero. Nullam mollis quam urna, nec condimentum ex bibendum at. Proin faucibus finibus massa molestie bibendum. Praesent vulputate volutpat ligula non tincidunt. Pellentesque interdum nulla nec odio ullamcorper euismod. Maecenas lobortis pellentesque porta. Curabitur sem erat, dapibus iaculis ullamcorper nec, porta et quam. Aliquam at magna sed mi faucibus ornare id sit amet erat. Aliquam aliquam, ante sit amet ullamcorper condimentum, orci diam porta dui, non laoreet nisl justo ac tortor. Proin vel ligula laoreet, ullamcorper lectus ac, venenatis urna. Mauris facilisis orci magna, ac varius tortor porta nec. Sed in maximus orci, eu faucibus odio.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed massa nibh, euismod eget tincidunt eget, accumsan sed turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer iaculis augue eu erat vulputate luctus. Duis at arcu velit. Nullam consequat mi eget nunc aliquet dapibus. Phasellus quis augue eu ligula mollis consectetur sit amet ac metus. Proin blandit nisl nisi, non placerat mi consequat in. Nulla sit amet est eget libero egestas rutrum et sit amet nisl. Aliquam et felis sit amet sapien vulputate vulputate consequat vel risus. Mauris eget nulla turpis.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Duis et venenatis purus, tristique dictum turpis. Morbi ornare felis a ligula cursus, sed aliquet odio viverra. Nunc commodo sem at ornare vehicula. Quisque eget dolor tortor. Cras ante erat, pellentesque nec pellentesque quis, viverra eu odio. Quisque sollicitudin tortor turpis, tincidunt dictum ex commodo et. Aenean tellus mauris, convallis quis venenatis in, dapibus et tellus. Nulla et ultricies elit. In hendrerit consectetur sem quis vehicula. Nam ut mi sit amet lectus malesuada euismod quis sed urna. Sed congue porta sodales. Curabitur tristique arcu suscipit, tempor massa ut, vehicula mauris. In vehicula vitae dolor at suscipit. Donec ex justo, mollis efficitur viverra et, tristique eu nulla.</p>', '5ed07e79ed7c8.jpg', 'neymar-se-aposenta-aos-32-anos', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.servicos`
--

CREATE TABLE `tb_site.servicos` (
  `id` int(11) NOT NULL,
  `servico` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.servicos`
--

INSERT INTO `tb_site.servicos` (`id`, `servico`, `order_id`) VALUES
(4, 'Proin vel dictum eros. Nunc vel dui mi. Donec imperdiet vestibulum nibh, vel eleifend felis tincidunt et. Duis venenatis eget lectus ac accumsan. Phasellus pharetra hendrerit iaculis. In quis cursus lorem. Nam maximus vitae orci ut maximus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In consectetur dapibus dui, sit amet vestibulum orci fringilla in. Quisque suscipit erat non purus tincidunt varius.', 4),
(5, 'Praesent id mollis ex. Quisque sit amet sapien non dolor egestas rhoncus. Nullam rhoncus risus orci, in pharetra nisl semper a. Etiam sollicitudin orci id nisi congue dignissim. Aenean fermentum at neque nec semper. Nunc eu libero in enim scelerisque sagittis. Maecenas in lectus eros.', 6),
(6, 'Sed fringilla arcu non ante luctus congue. Etiam porta aliquet augue vitae congue. Morbi viverra sollicitudin augue sit amet rutrum. In hac habitasse platea dictumst. Quisque pulvinar felis a mattis condimentum. Duis enim velit, egestas eu lectus ut, commodo condimentum nibh.', 7),
(7, 'Duis efficitur felis mi, pretium mattis lectus interdum nec. In sed massa vel ex pharetra malesuada. Cras id ante nec metus blandit mattis ut et nisi. Aenean non imperdiet lorem. Quisque tincidunt nibh ac turpis consectetur congue. Morbi ut purus nec ipsum dapibus faucibus. Duis id euismod odio.', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.slides`
--

CREATE TABLE `tb_site.slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.slides`
--

INSERT INTO `tb_site.slides` (`id`, `nome`, `slide`, `order_id`) VALUES
(8, 'bg-form2', '5ed0737e23dd0.jpg', 9),
(9, 'bg-form3', '5ed073d3aa380.jpg', 10),
(10, 'bg-form', '5ed071e1d41b8.jpg', 8);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_admin.agenda`
--
ALTER TABLE `tb_admin.agenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.chat`
--
ALTER TABLE `tb_admin.chat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.comentarios`
--
ALTER TABLE `tb_site.comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_admin.agenda`
--
ALTER TABLE `tb_admin.agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_admin.chat`
--
ALTER TABLE `tb_admin.chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_site.comentarios`
--
ALTER TABLE `tb_site.comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
