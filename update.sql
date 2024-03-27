-- netbi.group_user definition

CREATE TABLE `group_user` (
  `group_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_user_code` varchar(50) CHARACTER SET utf8mb3 NOT NULL,
  `group_user_name` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`group_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- netbi.group_user_received_warnings definition

CREATE TABLE `group_user_received_warnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_user_id` int(11) DEFAULT NULL,
  `warning_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- netbi.user_in_group definition

CREATE TABLE `user_in_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_code` varchar(255) DEFAULT NULL,
  `group_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- netbi.config_warnings definition

CREATE TABLE `config_warnings` (
  `warning_id` int(11) NOT NULL AUTO_INCREMENT,
  `warning_code` varchar(50) DEFAULT NULL,
  `warning_name` varchar(255) DEFAULT NULL,
  `cycle` int(1) DEFAULT NULL,
  `time_sent_mail` time DEFAULT NULL,
  `last_sent_time` datetime DEFAULT NULL,
  `rule_mail` varchar(1000) DEFAULT NULL,
  `template_mail` varchar(1000) DEFAULT NULL,
  `send_to_manager_kpi` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb3 DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;