/*
 Navicat Premium Data Transfer

 Source Server         : heron
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : heron

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 03/12/2020 23:21:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `article_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'test0', '<p><strong>Editor.md</strong>: The open source embeddable online markdown editor (component), based on CodeMirror &amp; jQuery &amp; Marked.</p><h3><a href=\"https://github.com/pandao/editor.md#features\"><path></path></a>Features</h3><ul><li>Support Standard Markdown / CommonMark and GFM (GitHub Flavored Markdown);</li><li>Full-featured: Real-time Preview, Image (cross-domain) upload, Preformatted text/Code blocks/Tables insert, Code fold, Search replace, Read only, Themes, Multi-languages, L18n, HTML entities, Code syntax highlighting...;</li><li>Markdown Extras : Support<a href=\"https://pandao.github.io/editor.md/examples/toc.html\">ToC (Table of Contents)</a>,<a href=\"https://pandao.github.io/editor.md/examples/emoji.html\">Emoji</a>,<a href=\"https://pandao.github.io/editor.md/examples/task-lists.html\">Task lists</a>,<a href=\"https://pandao.github.io/editor.md/examples/@links.html\">@Links</a>...;</li><li>Compatible with all major browsers (IE8+), compatible Zepto.js and iPad;</li><li>Support<a href=\"https://pandao.github.io/editor.md/examples/html-tags-decode.html\">decode &amp; fliter of the HTML tags &amp; attributes</a>;</li><li>Support<a href=\"https://pandao.github.io/editor.md/examples/katex.html\">TeX (LaTeX expressions, Based on KaTeX)</a>,<a href=\"https://pandao.github.io/editor.md/examples/flowchart.html\">Flowchart</a>and<a href=\"https://pandao.github.io/editor.md/examples/sequence-diagram.html\">Sequence Diagram</a>of Markdown extended syntax;</li><li>Support AMD/CMD (Require.js &amp; Sea.js) Module Loader, and Custom/define editor plugins;<hr><img src=\"https://oss.haicheng.website/20201007/20201007233738482.PNG\"><br></li></ul>', '2020-10-07 23:37:55', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (2, 'test2', ' <p><strong>Editor.md</strong>是一款开源的、可嵌入的 Markdown 在线编辑器（组件），基于 CodeMirror、jQuery 和 Marked 构建。<br></p><h4>主要特性</h4><ul><li>支持通用 Markdown / CommonMark 和 GFM (GitHub Flavored Markdown) 风格的语法，也可<a href=\"https://pandao.github.io/editor.md/examples/change-mode.html\">变身为代码编辑器</a>；</li><li>支持实时预览、图片（跨域）上传、预格式文本/代码/表格插入、代码折叠、跳转到行、搜索替换、只读模式、自定义样式主题和多语言语法高亮等功能；</li><li>支持<a href=\"https://pandao.github.io/editor.md/examples/toc.html\">ToC（Table of Contents）</a>、<a href=\"https://pandao.github.io/editor.md/examples/emoji.html\">Emoji表情</a>、<a href=\"https://pandao.github.io/editor.md/examples/task-lists.html\">Task lists</a>、<a href=\"https://pandao.github.io/editor.md/examples/@links.html\">@链接</a>等 Markdown 扩展语法；</li><li>支持 TeX 科学公式（基于<a href=\"https://pandao.github.io/editor.md/examples/katex.html\">KaTeX</a>）、流程图<a href=\"https://pandao.github.io/editor.md/examples/flowchart.html\">Flowchart</a>和<a href=\"https://pandao.github.io/editor.md/examples/sequence-diagram.html\">时序图 Sequence Diagram</a>;</li><li>支持<a href=\"https://pandao.github.io/editor.md/examples/html-tags-decode.html\">识别和解析 HTML 标签，并且支持自定义过滤标签及属性解析</a>，具有可靠的安全性和几乎无限的扩展性；</li><li>支持 AMD / CMD 模块化加载（支持<a href=\"https://pandao.github.io/editor.md/examples/use-requirejs.html\">Require.js</a>&amp;<a href=\"https://pandao.github.io/editor.md/examples/use-seajs.html\">Sea.js</a>），并且支持<a href=\"https://pandao.github.io/editor.md/examples/define-plugin.html\">自定义扩展插件</a>；</li><li>兼容主流的浏览器（IE8+）和<a href=\"https://pandao.github.io/editor.md/examples/use-zepto.html\">Zepto.js</a>，且支持 iPad 等平板设备；<hr><img src=\"https://oss.haicheng.website/20201007/20201007234014645.png\"><br></li></ul>', '2020-10-07 23:40:32', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (3, '测试', '<p>测试</p><p><img src=\"https://oss.haicheng.website/20201009/20201009181552646.png\"><br></p>', '2020-10-09 18:16:00', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (4, '测试01——title', '<p>测试01</p><p><img src=\"https://oss.haicheng.website/20201009/20201009182104897.bmp\"><br></p>', '2020-10-09 18:21:07', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (5, '测试02_title', '<p>测试02</p><h1>测试</h1><p><b>测试</b><br></p><p><b><br></b></p><p><b><font face=\"JetBrains Mono\"><i>测试</i></font></b></p><p><font color=\"#f9963b\">测试</font><b><br></b></p><p><a href=\"https://www.cnblogs.com/wangcp-2014/p/9922845.html\" target=\"_blank\">nginx</a><img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/3c/pcmoren_wu_org.png\" alt=\"[[污]]\" style=\"font-family: var(--bs-font-sans-serif); letter-spacing: -0.01em;\"><img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[[舔屏]]\" style=\"font-family: var(--bs-font-sans-serif); letter-spacing: -0.01em;\"><img class=\"eleImg\" src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/60/horse2_thumb.gif\" alt=\"[[神马]]\" style=\"font-family: var(--bs-font-sans-serif); letter-spacing: -0.01em;\"><img src=\"https://oss.haicheng.website/20201009/20201009182322608.bmp\" style=\"font-family: var(--bs-font-sans-serif); font-size: 0.875rem; letter-spacing: -0.01em;\"><font color=\"#f9963b\"><br></font></p><p><br></p><p><br></p><p>efdsssssssssssssssssssssssssssssssss</p>', '2020-10-09 18:23:27', '2020-10-11 16:15:43', 'admin', NULL);
INSERT INTO `article` VALUES (6, 'test_003', '<p>test_003</p><table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><th>表头一</th><th>表头二</th><th>表头三</th></tr><tr><td>第一</td><td>第二</td><td>第三</td></tr></tbody></table>', '2020-10-09 19:29:25', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (8, 'test111', '<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换</li></ul>', '2020-10-11 16:33:28', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (9, 'test44444', '<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换</li></ul></li></ul>', '2020-10-11 16:33:40', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (10, '43434', '<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换</li></ul></li></ul></li></ul>', '2020-10-11 16:33:49', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (11, 'r43434', '<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换</li></ul></li></ul></li></ul>', '2020-10-11 16:33:58', NULL, 'admin', NULL);
INSERT INTO `article` VALUES (12, '232', '<h2>功能特性</h2><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换<h2>功能特性</h2></li><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换<h2>功能特性</h2></li><ul><li>基于Java及Netty开发，插件化模式，高性能，高扩展性</li><li>支持mqtt协议qos0，qos1，qos2消息质量服务</li><li>支持mqtt协议cleansession，retain，will等消息服务</li><li>完整支持mqtt Topic匹配过滤</li><li>支持websocket协议</li><li>支持RocksDB进行数据本地存储，数据高可靠</li><li>支持以redis为中央存储的集群（可用其他中央存储替换</li></ul></ul></ul><p>hjhj</p>', '2020-10-11 16:34:05', '2020-12-01 22:47:25', 'admin', NULL);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'IP地址',
  `time` datetime(0) NOT NULL COMMENT '登入时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, '123', '0:0:0:0:0:0:0:1', '2020-12-02 01:22:33');
INSERT INTO `logs` VALUES (2, '123', '0:0:0:0:0:0:0:1', '2020-12-02 01:23:09');
INSERT INTO `logs` VALUES (3, '123', '0:0:0:0:0:0:0:1', '2020-12-02 01:26:01');
INSERT INTO `logs` VALUES (4, '123', '0:0:0:0:0:0:0:1', '2020-12-02 22:29:24');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL COMMENT '父菜单Id',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单对应的地址',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '权限',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_delete` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1:表示删除；0:表示未删除',
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `sort` int(100) UNSIGNED NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型；D:表示目录; M:表示菜单；B:表示按钮',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '系统管理', '', '', '2020-08-16 17:38:10', '2020-09-06 14:52:45', 0, 'fa-address-book-o', 1, 'D');
INSERT INTO `menu` VALUES (2, 1, '菜单管理', '/menu/menuPage', 'sys:menu:view', '2020-08-16 17:44:51', '2020-09-28 00:29:28', 0, NULL, 1, 'M');
INSERT INTO `menu` VALUES (15, 1, '日志管理', '/menu/menuPage', '', '2020-08-29 21:48:46', '2020-09-02 16:49:29', 1, NULL, 2, 'M');
INSERT INTO `menu` VALUES (16, 2, '查看', '', 'sys:menu:list', '2020-08-29 21:49:39', NULL, 0, NULL, 1, 'B');
INSERT INTO `menu` VALUES (17, 2, '删除', '', 'sys:menu:del', '2020-08-29 21:49:39', '2020-09-28 00:33:41', 0, NULL, 2, 'B');
INSERT INTO `menu` VALUES (18, 2, '修改', '', 'sys:menu:alter', '2020-08-29 21:49:39', NULL, 0, NULL, 1, 'B');
INSERT INTO `menu` VALUES (19, 2, '新增', '', 'sys:menu:add', '2020-08-29 21:49:39', NULL, 0, NULL, 1, 'B');
INSERT INTO `menu` VALUES (20, 0, '测试', '', '', '2020-08-30 00:59:01', '2020-09-03 23:26:15', 1, NULL, 3, 'D');
INSERT INTO `menu` VALUES (21, 1, '测试1', '/menu/menuPage', '', '2020-08-30 01:24:17', '2020-09-06 15:07:41', 1, NULL, 1, 'M');
INSERT INTO `menu` VALUES (22, 1, '测试2', '/menu/menuPage', '', '2020-08-30 01:25:11', '2020-09-06 15:07:40', 1, NULL, 1, 'M');
INSERT INTO `menu` VALUES (23, 1, '测试3', '/menu/menuPage', '', '2020-08-30 01:25:11', '2020-09-06 15:07:38', 1, NULL, 1, 'M');
INSERT INTO `menu` VALUES (24, 1, '测试4', '/menu/menuPage', '', '2020-08-30 01:25:11', '2020-09-06 15:07:37', 1, NULL, 1, 'M');
INSERT INTO `menu` VALUES (25, 1, '测试5', '/menu/menuPage', '', '2020-08-30 01:25:11', '2020-09-06 15:07:33', 1, NULL, 1, 'M');
INSERT INTO `menu` VALUES (26, 0, '目录2', '/menu/menuPage', '', '2020-08-30 01:26:06', '2020-09-02 16:50:11', 1, NULL, 1, 'D');
INSERT INTO `menu` VALUES (27, 0, '目录3', '/menu/menuPage', '', '2020-08-30 01:26:06', '2020-09-27 00:44:03', 1, NULL, 1, 'D');
INSERT INTO `menu` VALUES (28, 0, '目录4', '/menu/menuPage', '', '2020-08-30 01:26:06', '2020-09-02 16:50:07', 1, NULL, 1, 'D');
INSERT INTO `menu` VALUES (29, 0, '目录5', '/menu/menuPage', '', '2020-08-30 01:26:06', '2020-09-06 14:51:56', 1, NULL, 2, 'D');
INSERT INTO `menu` VALUES (30, 27, 'test', 'https://translate.google.cn/', '', '2020-09-02 16:47:32', '2020-09-06 15:08:22', 1, NULL, 2, 'M');
INSERT INTO `menu` VALUES (31, 0, 'test', '', '', '2020-09-06 14:53:26', '2020-09-06 15:04:57', 1, NULL, 3, 'D');
INSERT INTO `menu` VALUES (32, 31, 'test_menu', 'https://www.baidu.com/', '', '2020-09-06 14:54:07', '2020-09-06 15:04:56', 1, NULL, 4, 'M');
INSERT INTO `menu` VALUES (33, 1, '用户管理', '/userInfo/viewUsers', 'sys:user:view', '2020-09-06 15:07:27', '2020-09-06 15:18:38', 0, NULL, 1, 'M');
INSERT INTO `menu` VALUES (34, 1, '角色管理', '/role/rolePage', 'sys:role:view', '2020-09-10 23:20:49', '2020-09-27 23:32:05', 0, NULL, 4, 'M');
INSERT INTO `menu` VALUES (36, 34, '新增', '', 'sys:role:add', '2020-09-27 23:26:13', '2020-09-27 23:30:40', 0, NULL, 1, 'B');
INSERT INTO `menu` VALUES (37, 34, '删除', '', 'sys:role:del', '2020-09-27 23:29:36', '2020-09-27 23:31:19', 0, NULL, 2, 'B');
INSERT INTO `menu` VALUES (38, 34, '查看', '', 'sys:role:list', '2020-09-27 23:33:19', NULL, 0, NULL, 0, 'B');
INSERT INTO `menu` VALUES (39, 34, '查看', '', 'sys:role:list', '2020-09-27 23:33:21', '2020-09-27 23:33:35', 1, NULL, 0, 'B');
INSERT INTO `menu` VALUES (40, 34, '修改', '', 'sys:role:alter', '2020-09-27 23:34:00', '2020-09-28 00:32:34', 0, NULL, 4, 'B');
INSERT INTO `menu` VALUES (41, 33, '查看', '', 'sys:user:list', '2020-09-27 23:34:52', NULL, 0, NULL, 1, 'B');
INSERT INTO `menu` VALUES (42, 33, '删除', '', 'sys:user:del', '2020-09-27 23:35:18', NULL, 0, NULL, 2, 'B');
INSERT INTO `menu` VALUES (43, 33, '修改', '', 'sys:user:alter', '2020-09-27 23:35:35', NULL, 0, NULL, 3, 'B');
INSERT INTO `menu` VALUES (44, 33, '新增', '', 'sys:user:add', '2020-09-27 23:35:54', NULL, 0, NULL, 4, 'B');
INSERT INTO `menu` VALUES (45, 0, 'test', '', '', '2020-09-27 23:38:04', NULL, 1, NULL, 2, 'D');
INSERT INTO `menu` VALUES (46, 1, '定时任务', '/task/taskPage', 'sys:task:view', '2020-10-04 20:01:12', '2020-10-04 21:49:53', 0, NULL, 4, 'M');
INSERT INTO `menu` VALUES (47, 46, '查看', '', 'sys:task:list', '2020-10-04 21:59:45', NULL, 0, NULL, 1, 'B');
INSERT INTO `menu` VALUES (48, 46, '删除', '', 'sys:task:del', '2020-10-04 22:00:15', NULL, 0, NULL, 2, 'B');
INSERT INTO `menu` VALUES (49, 46, '修改', '', 'sys:task:alter', '2020-10-04 22:00:38', NULL, 0, NULL, 3, 'B');
INSERT INTO `menu` VALUES (50, 46, '新增', '', 'sys:task:add', '2020-10-04 22:01:32', '2020-10-04 22:01:48', 0, NULL, 4, 'B');
INSERT INTO `menu` VALUES (51, 46, '恢复', '', 'sys:task:resume', '2020-10-04 22:02:13', NULL, 0, NULL, 5, 'B');
INSERT INTO `menu` VALUES (52, 46, '暂停', '', 'sys:task:pause', '2020-10-04 22:02:32', NULL, 0, NULL, 6, 'B');
INSERT INTO `menu` VALUES (53, 0, '系统监控', '', '', '2020-10-06 00:43:03', NULL, 0, NULL, 2, 'D');
INSERT INTO `menu` VALUES (54, 53, '系统概况', '/monitor/monitorPage', 'sys:monitor:view', '2020-10-06 00:43:52', '2020-10-06 01:12:54', 0, NULL, 1, 'M');
INSERT INTO `menu` VALUES (55, 53, '内存信息', '/monitor/memoryPage', 'sys:memory:view', '2020-10-06 13:19:12', '2020-10-06 13:29:37', 0, NULL, 2, 'M');
INSERT INTO `menu` VALUES (56, 53, '虚拟机信息', '/monitor/vmPage', 'sys:vm:view', '2020-10-06 13:19:39', '2020-10-06 13:29:55', 0, NULL, 3, 'M');
INSERT INTO `menu` VALUES (57, 0, '文章管理', '', '', '2020-10-06 21:18:03', NULL, 0, NULL, 3, 'D');
INSERT INTO `menu` VALUES (58, 57, '文章列表', '/article/articleListPage', 'sys:article:list', '2020-10-06 21:21:14', '2020-10-07 23:46:21', 0, NULL, 1, 'M');
INSERT INTO `menu` VALUES (59, 57, '写文章', '/article/articlePage', 'sys:article:add', '2020-10-06 21:22:05', '2020-10-06 21:44:09', 0, NULL, 2, 'M');
INSERT INTO `menu` VALUES (60, 0, '资源管理', '', '', '2020-10-06 21:24:55', NULL, 0, NULL, 4, 'D');
INSERT INTO `menu` VALUES (61, 60, '资源列表', '/resource/resourcePage', 'sys:resource:list', '2020-10-06 21:25:58', '2020-10-23 21:10:57', 0, NULL, 1, 'M');
INSERT INTO `menu` VALUES (64, 58, '编辑', '', 'sys:article:alter', '2020-10-09 18:28:29', NULL, 0, NULL, 3, 'B');
INSERT INTO `menu` VALUES (65, 58, '删除', '', 'sys:article:del', '2020-10-09 18:28:55', NULL, 0, NULL, 4, 'B');
INSERT INTO `menu` VALUES (66, 61, '上传', '', 'sys:resource:upload', '2020-10-23 22:27:09', NULL, 0, NULL, 1, 'B');
INSERT INTO `menu` VALUES (67, 61, '删除', '', 'sys:resource:del', '2020-10-23 22:27:28', NULL, 0, NULL, 2, 'B');
INSERT INTO `menu` VALUES (68, 61, '搜索', '', 'sys:resource:search', '2020-10-23 22:27:53', NULL, 0, NULL, 3, 'B');
INSERT INTO `menu` VALUES (71, 1, '登录日志', '/logs/logsPage', 'sys:logs:list', '2020-12-02 01:12:39', '2020-12-02 01:13:06', 0, NULL, 4, 'M');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE,
  INDEX `IDX_QRTZ_FT_TRIG_INST_NAME`(`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE,
  INDEX `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY`(`SCHED_NAME`, `INSTANCE_NAME`, `REQUESTS_RECOVERY`) USING BTREE,
  INDEX `IDX_QRTZ_FT_J_G`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_JG`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_T_G`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_TG`(`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_J_REQ_RECOVERY`(`SCHED_NAME`, `REQUESTS_RECOVERY`) USING BTREE,
  INDEX `IDX_QRTZ_J_GRP`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('clusteredScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('clusteredScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('clusteredScheduler', 'ecs-kc1-large-2-linux-202006180000321606978804234', 1607008906616, 10000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `INT_PROP_1` int(11) NULL DEFAULT NULL,
  `INT_PROP_2` int(11) NULL DEFAULT NULL,
  `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
  `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PRIORITY` int(11) NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(190) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_J`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_JG`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_C`(`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE,
  INDEX `IDX_QRTZ_T_G`(`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_STATE`(`SCHED_NAME`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_N_STATE`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_N_G_STATE`(`SCHED_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_NEXT_FIRE_TIME`(`SCHED_NAME`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST`(`SCHED_NAME`, `TRIGGER_STATE`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_MISFIRE`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `resource_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `resource_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件路径',
  `resource_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件类型',
  `size` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '文件大小',
  `create_time` datetime(0) NOT NULL COMMENT '上传时间',
  `create_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上传者',
  `bucket_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储桶',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (60, 'Elephant.png', 'https://oss.haicheng.website/20201024/Elephant.png', 'png', 9506, '2020-10-24 23:48:21', 'admin', '20201024');
INSERT INTO `resource` VALUES (61, 'Java虚拟机运行时数据区.bmp', 'https://oss.haicheng.website/20201031/Java%E8%99%9A%E6%8B%9F%E6%9C%BA%E8%BF%90%E8%A1%8C%E6%97%B6%E6%95%B0%E6%8D%AE%E5%8C%BA.bmp', 'bmp', 19703, '2020-10-31 21:43:50', 'admin', '20201031');
INSERT INTO `resource` VALUES (62, 'classLoader.png', 'https://oss.haicheng.website/20201130/classLoader.png', 'png', 43300, '2020-11-30 21:20:31', 'admin', '20201130');
INSERT INTO `resource` VALUES (63, '对象在内存的存储布局.png', 'https://oss.haicheng.website/20201130/%E5%AF%B9%E8%B1%A1%E5%9C%A8%E5%86%85%E5%AD%98%E7%9A%84%E5%AD%98%E5%82%A8%E5%B8%83%E5%B1%80.png', 'png', 4253, '2020-11-30 21:20:46', 'admin', '20201130');

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `sort` int(255) UNSIGNED NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_delete` tinyint(3) UNSIGNED NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES (1, 'admin', '超级管理员', 1, '2020-09-11 23:15:27', '2020-09-11 23:15:35', 0);
INSERT INTO `role_info` VALUES (15, 'role_1', 'role_1', 2, '2020-09-25 23:40:41', '2020-09-26 12:34:36', 0);
INSERT INTO `role_info` VALUES (16, 'role_2', 'role_2', 3, '2020-09-26 02:14:06', '2020-09-26 19:22:43', 0);
INSERT INTO `role_info` VALUES (18, 'role_777', 'role_777', 5, '2020-09-26 17:33:23', '2020-10-06 20:54:58', 0);

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) UNSIGNED NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (39, 15, 1);
INSERT INTO `role_menu` VALUES (40, 15, 2);
INSERT INTO `role_menu` VALUES (41, 15, 16);
INSERT INTO `role_menu` VALUES (42, 15, 18);
INSERT INTO `role_menu` VALUES (43, 15, 19);
INSERT INTO `role_menu` VALUES (44, 15, 17);
INSERT INTO `role_menu` VALUES (45, 15, 33);
INSERT INTO `role_menu` VALUES (98, 16, 16);
INSERT INTO `role_menu` VALUES (99, 16, 18);
INSERT INTO `role_menu` VALUES (116, 18, 0);
INSERT INTO `role_menu` VALUES (117, 18, 1);
INSERT INTO `role_menu` VALUES (118, 18, 2);
INSERT INTO `role_menu` VALUES (119, 18, 33);
INSERT INTO `role_menu` VALUES (120, 18, 34);
INSERT INTO `role_menu` VALUES (121, 18, 53);
INSERT INTO `role_menu` VALUES (122, 18, 54);
INSERT INTO `role_menu` VALUES (123, 18, 55);
INSERT INTO `role_menu` VALUES (124, 18, 56);

-- ----------------------------
-- Table structure for system_monitor
-- ----------------------------
DROP TABLE IF EXISTS `system_monitor`;
CREATE TABLE `system_monitor`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `cpu_core_count` int(5) UNSIGNED NOT NULL COMMENT 'CPU 核心数',
  `cpu_sys_usage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cpu系统使用率',
  `cpu_user_usage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cpu用户使用率',
  `cpu_wait_usage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cpu当前等待率',
  `cpu_usage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cpu当前使用率',
  `memory_total` bigint(20) UNSIGNED NOT NULL COMMENT '总内存',
  `memory_used` bigint(20) UNSIGNED NOT NULL COMMENT '内存使用量',
  `memory_available` bigint(20) UNSIGNED NOT NULL COMMENT '剩余内存',
  `memory_usage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内存使用率',
  `jvm_memory_total` bigint(20) UNSIGNED NOT NULL COMMENT 'jvm内存总量',
  `jvm_memory_used` bigint(20) UNSIGNED NOT NULL COMMENT 'jvm已使用内存',
  `jvm_memory_avaliable` bigint(20) UNSIGNED NOT NULL COMMENT 'jvm剩余内存',
  `jvm_memory_usage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jvm内存使用率',
  `java_version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'java版本',
  `os_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作系统名',
  `os_arch` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统架构',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_monitor_create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统信息监控表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务描述',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `bean_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `job_status` tinyint(3) UNSIGNED NULL DEFAULT NULL COMMENT '任务状态;0:运行；1：状态；2：暂停',
  `job_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务分组',
  `create_user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (1, 'testname', 'description_info_1', '*/5 * * * * ?', 'webiste.lhc.heron.framework.quartz.jobs.LogJob', 1, 'jobGroup', 'admin', '2020-10-04 18:24:44', NULL, '2020-10-05 13:54:26');
INSERT INTO `task` VALUES (8, 'systemMonitor', 'system_monitor', '0 */1 * * * ?', 'webiste.lhc.heron.framework.quartz.jobs.MonitorJob', 0, 'system', 'admin', '2020-10-05 22:46:35', NULL, '2020-10-06 01:43:23');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '盐',
  `is_delete` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '1:表示删除；0:表示未删除',
  `enable` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '是否启用；1：表示冻结；0：表示启用',
  `avatar` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像url',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `e_mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '333', '123', '5e5d459c273c51a1e3c50bf8f438e58f6783be6a', '7dd90bfd-236b-1289-962f-82a37b297ada', 0, 0, 'https://www.haicheng.website/download/img/Elephant.png', '2020-08-16 14:48:45', '2020-09-06 21:19:07', '1234@qq.com');
INSERT INTO `user_info` VALUES (2, '444', '456', '11911ec05cbf20af4329349fe4430e14cfe00fa7', '1c676d35-6f32-cd39-2cc1-c9cf8af2af48', 1, 0, 'https://www.haicheng.website/download/img/Elephant.png', '2020-08-16 14:56:49', '2020-09-06 21:19:09', '1234@qq.com');
INSERT INTO `user_info` VALUES (3, '5555', '567', '06990ebb503bf3ae046df4fe61c1cc9c8cca42ea', 'ea6c086e-cdc9-e957-fc02-c59a808b8e57', 1, 0, '', '2020-08-16 15:24:40', '2020-09-06 20:02:41', '1234@qq.com');
INSERT INTO `user_info` VALUES (4, '4444', 'testaccount', '271bfa461532681c2928e7eb2d7a09f47bd75909', '5d906738-1f60-4eab-b730-3faac36ced99', 0, 1, NULL, '2020-09-26 15:20:49', '2020-09-26 17:28:23', NULL);
INSERT INTO `user_info` VALUES (5, NULL, '2222', 'e66d313fa02f7fd70cc450188e810cd479fe7743', '8f76a976-894e-852b-1593-ac5ce21bc72b', 1, 0, NULL, '2020-09-26 15:24:08', '2020-09-26 15:29:33', NULL);
INSERT INTO `user_info` VALUES (6, NULL, '4444', 'b4f44820340f5529141602ba4125cdd663129a4f', 'e93836ca-7387-941a-bd11-ad836daaac24', 1, 0, NULL, '2020-09-26 15:27:44', '2020-09-26 15:29:30', NULL);
INSERT INTO `user_info` VALUES (7, '333', '222', 'd20dba23e2e5eebbc5685cca26e51b09d0dfe341', '4050977e-1081-ea8b-bd44-caf61c712b9f', 1, 0, NULL, '2020-09-26 15:29:54', '2020-10-11 14:32:38', NULL);
INSERT INTO `user_info` VALUES (8, '6666', '6666', 'd4fdacdc9408e25dde8c3e05fed840be22432539', '1161d49e-0015-79f1-5ec6-f552f1ee543b', 1, 0, NULL, '2020-09-26 17:29:19', '2020-09-27 23:58:36', NULL);
INSERT INTO `user_info` VALUES (9, '777', '777', '8583fbbe0e34c8dee25ada3e056228d83b3e367c', 'ba22d298-8e46-cc33-911b-6a6cfb76d2c6', 1, 0, NULL, '2020-09-26 17:29:56', '2020-09-26 17:33:38', NULL);
INSERT INTO `user_info` VALUES (10, '888', '888', '6a15cab340f6da638e5d7df5d8be94ce70a13467', '172e30d8-f539-0f98-043c-cdd4278d7238', 0, 0, NULL, '2020-09-26 17:33:51', '2020-11-30 21:17:13', '3232132@163.com');
INSERT INTO `user_info` VALUES (11, '', '', '27cb3ca58178975d17734235d3a0e5506219ec98', 'ad6c046c-1e79-59fd-40cd-034de5eea235', 1, 0, NULL, '2020-11-30 22:15:02', '2020-12-01 22:52:48', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED NOT NULL COMMENT '角色ID',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 2, 2);
INSERT INTO `user_role` VALUES (3, 3, 3);
INSERT INTO `user_role` VALUES (4, 15, 4);
INSERT INTO `user_role` VALUES (5, 15, 5);
INSERT INTO `user_role` VALUES (6, 16, 6);
INSERT INTO `user_role` VALUES (7, 15, 7);
INSERT INTO `user_role` VALUES (8, 15, 8);
INSERT INTO `user_role` VALUES (9, 16, 9);
INSERT INTO `user_role` VALUES (10, 18, 10);
INSERT INTO `user_role` VALUES (11, 0, 11);

SET FOREIGN_KEY_CHECKS = 1;
