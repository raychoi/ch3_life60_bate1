-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2016 年 07 月 31 日 13:09
-- 伺服器版本: 10.0.17-MariaDB
-- PHP 版本： 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ch3_life_60`
--

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_actionType`
--

CREATE TABLE `ch3_life_actionType` (
  `c_at_id` int(11) UNSIGNED NOT NULL,
  `c_atc_id` int(11) UNSIGNED NOT NULL,
  `c_atc_title_en` varchar(255) DEFAULT NULL,
  `c_atc_title_tc` varchar(255) DEFAULT NULL,
  `c_atc_title_sc` varchar(255) DEFAULT NULL,
  `c_at_charge_salary` int(11) DEFAULT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_actionTypeCategory`
--

CREATE TABLE `ch3_life_actionTypeCategory` (
  `c_atc_id` int(11) UNSIGNED NOT NULL,
  `c_atc_title_en` varchar(255) DEFAULT NULL,
  `c_atc_title_tc` varchar(255) DEFAULT NULL,
  `c_atc_title_sc` varchar(255) DEFAULT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_game`
--

CREATE TABLE `ch3_life_game` (
  `c_game_id` int(11) UNSIGNED NOT NULL,
  `c_game_no` varchar(15) NOT NULL,
  `c_org_id` int(11) UNSIGNED NOT NULL,
  `c_game_title_en` varchar(255) DEFAULT NULL,
  `c_game_title_tc` varchar(255) DEFAULT NULL,
  `c_game_title_sc` varchar(255) DEFAULT NULL,
  `c_game_start_datetime` datetime DEFAULT NULL,
  `c_game_end_datetime` datetime DEFAULT NULL,
  `c_game_location` varchar(255) DEFAULT NULL,
  `c_game_description` varchar(255) DEFAULT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_gameActionRecord`
--

CREATE TABLE `ch3_life_gameActionRecord` (
  `c_gar_id` int(11) UNSIGNED NOT NULL,
  `c_gpt_id` int(11) UNSIGNED NOT NULL,
  `c_gats_id` int(11) UNSIGNED NOT NULL,
  `c_gar_result` enum('T','F') DEFAULT NULL,
  `c_gar_account_balance` int(11) DEFAULT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_gameActionTypeSetting`
--

CREATE TABLE `ch3_life_gameActionTypeSetting` (
  `c_gats_id` int(11) UNSIGNED NOT NULL,
  `c_game_id` int(11) UNSIGNED NOT NULL,
  `c_at_id` int(11) UNSIGNED NOT NULL,
  `c_gats_charge_salary` int(11) DEFAULT NULL,
  `c_gats_requirement` int(11) UNSIGNED DEFAULT NULL,
  `c_gats_desscription` varchar(255) DEFAULT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_gameParticipant`
--

CREATE TABLE `ch3_life_gameParticipant` (
  `c_gpt_id` int(11) UNSIGNED NOT NULL,
  `c_gpt_no` varchar(15) NOT NULL,
  `c_pt_id` int(11) UNSIGNED NOT NULL,
  `c_game_id` int(11) UNSIGNED NOT NULL,
  `c_gscs_id` int(11) UNSIGNED NOT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_gameSocialClassSetting`
--

CREATE TABLE `ch3_life_gameSocialClassSetting` (
  `c_gscs_id` int(11) UNSIGNED NOT NULL,
  `c_game_id` int(11) UNSIGNED NOT NULL,
  `c_sc_id` int(11) UNSIGNED NOT NULL,
  `c_gscs_preset_cash` int(11) NOT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_organization`
--

CREATE TABLE `ch3_life_organization` (
  `c_org_id` int(10) UNSIGNED NOT NULL,
  `c_org_title` varchar(255) NOT NULL,
  `c_org_address` varchar(255) DEFAULT NULL,
  `c_org_region` varchar(255) DEFAULT NULL,
  `c_org_type` enum('PS','SS','CU','SC') DEFAULT NULL COMMENT 'PS=小學, SS=中學, CU=大專大學, SC=服務中心',
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(10) UNSIGNED NOT NULL,
  `c_update_user_id` int(10) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_participant`
--

CREATE TABLE `ch3_life_participant` (
  `c_pt_id` int(11) UNSIGNED NOT NULL,
  `c_pt_no` varchar(15) DEFAULT NULL,
  `c_org_id` int(11) UNSIGNED NOT NULL,
  `c_pt_name` varchar(255) NOT NULL,
  `c_pt_first_name` varchar(255) DEFAULT NULL,
  `c_pt_last_name` varchar(255) DEFAULT NULL,
  `c_pt_dob` date DEFAULT NULL,
  `c_pt_age` varchar(10) DEFAULT NULL,
  `c_pt_gender` enum('M','F') DEFAULT NULL,
  `c_pt_grade` varchar(255) DEFAULT NULL,
  `c_pt_department` varchar(255) DEFAULT NULL,
  `c_pt_group_no` varchar(10) DEFAULT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_socialClass`
--

CREATE TABLE `ch3_life_socialClass` (
  `c_sc_id` int(11) UNSIGNED NOT NULL,
  `c_sc_title_en` varchar(255) DEFAULT NULL,
  `c_sc_title_tc` varchar(255) DEFAULT NULL,
  `c_sc_title_sc` varchar(255) DEFAULT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `ch3_life_user`
--

CREATE TABLE `ch3_life_user` (
  `c_user_id` int(11) UNSIGNED NOT NULL,
  `c_user_no` varchar(15) DEFAULT NULL,
  `c_user_login_name` varchar(100) NOT NULL,
  `c_user_login_pw` varchar(255) NOT NULL,
  `c_user_first_name` varchar(100) DEFAULT NULL,
  `c_user_last_name` varchar(100) DEFAULT NULL,
  `c_user_email` varchar(100) DEFAULT NULL,
  `c_user_access_level` enum('1','2','3') NOT NULL DEFAULT '3' COMMENT '1=Admin, 2=Operator, 3=Reader',
  `c_user_status` enum('A','D') NOT NULL DEFAULT 'D' COMMENT 'A=Active, D=Disable',
  `c_user_profile_img` varchar(255) DEFAULT NULL,
  `c_user_last_time_login` datetime DEFAULT NULL,
  `c_delete` enum('T','F') NOT NULL DEFAULT 'F',
  `c_create_user_id` int(11) UNSIGNED NOT NULL,
  `c_update_user_id` int(11) UNSIGNED DEFAULT NULL,
  `c_create_datetime` datetime NOT NULL,
  `c_update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `ch3_life_actionType`
--
ALTER TABLE `ch3_life_actionType`
  ADD PRIMARY KEY (`c_at_id`);

--
-- 資料表索引 `ch3_life_actionTypeCategory`
--
ALTER TABLE `ch3_life_actionTypeCategory`
  ADD PRIMARY KEY (`c_atc_id`);

--
-- 資料表索引 `ch3_life_game`
--
ALTER TABLE `ch3_life_game`
  ADD PRIMARY KEY (`c_game_id`);

--
-- 資料表索引 `ch3_life_gameActionRecord`
--
ALTER TABLE `ch3_life_gameActionRecord`
  ADD PRIMARY KEY (`c_gar_id`);

--
-- 資料表索引 `ch3_life_gameActionTypeSetting`
--
ALTER TABLE `ch3_life_gameActionTypeSetting`
  ADD PRIMARY KEY (`c_gats_id`);

--
-- 資料表索引 `ch3_life_gameParticipant`
--
ALTER TABLE `ch3_life_gameParticipant`
  ADD PRIMARY KEY (`c_gpt_id`);

--
-- 資料表索引 `ch3_life_gameSocialClassSetting`
--
ALTER TABLE `ch3_life_gameSocialClassSetting`
  ADD PRIMARY KEY (`c_gscs_id`);

--
-- 資料表索引 `ch3_life_organization`
--
ALTER TABLE `ch3_life_organization`
  ADD PRIMARY KEY (`c_org_id`);

--
-- 資料表索引 `ch3_life_participant`
--
ALTER TABLE `ch3_life_participant`
  ADD PRIMARY KEY (`c_pt_id`);

--
-- 資料表索引 `ch3_life_socialClass`
--
ALTER TABLE `ch3_life_socialClass`
  ADD PRIMARY KEY (`c_sc_id`);

--
-- 資料表索引 `ch3_life_user`
--
ALTER TABLE `ch3_life_user`
  ADD PRIMARY KEY (`c_user_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `ch3_life_actionType`
--
ALTER TABLE `ch3_life_actionType`
  MODIFY `c_at_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_actionTypeCategory`
--
ALTER TABLE `ch3_life_actionTypeCategory`
  MODIFY `c_atc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_game`
--
ALTER TABLE `ch3_life_game`
  MODIFY `c_game_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_gameActionRecord`
--
ALTER TABLE `ch3_life_gameActionRecord`
  MODIFY `c_gar_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_gameActionTypeSetting`
--
ALTER TABLE `ch3_life_gameActionTypeSetting`
  MODIFY `c_gats_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_gameParticipant`
--
ALTER TABLE `ch3_life_gameParticipant`
  MODIFY `c_gpt_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_gameSocialClassSetting`
--
ALTER TABLE `ch3_life_gameSocialClassSetting`
  MODIFY `c_gscs_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_organization`
--
ALTER TABLE `ch3_life_organization`
  MODIFY `c_org_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_participant`
--
ALTER TABLE `ch3_life_participant`
  MODIFY `c_pt_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_socialClass`
--
ALTER TABLE `ch3_life_socialClass`
  MODIFY `c_sc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ch3_life_user`
--
ALTER TABLE `ch3_life_user`
  MODIFY `c_user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
