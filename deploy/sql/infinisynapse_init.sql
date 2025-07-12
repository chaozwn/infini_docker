-- MySQL dump 10.13  Distrib 9.1.0, for macos14.7 (arm64)
--
-- Host: 127.0.0.1    Database: infinisynapse
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ai_byzer`
--

DROP TABLE IF EXISTS `ai_byzer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_byzer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `enabled` smallint NOT NULL DEFAULT '1',
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_4f9a8068b69999d5abe539fed8` (`name`),
  KEY `FK_df67d92674143ce2d0adfa761e6` (`user_id`),
  CONSTRAINT `FK_df67d92674143ce2d0adfa761e6` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_byzer`
--

LOCK TABLES `ai_byzer` WRITE;
/*!40000 ALTER TABLE `ai_byzer` DISABLE KEYS */;
INSERT INTO `ai_byzer` VALUES (1,'2025-06-09 23:25:52.788505','2025-06-15 16:39:48.000000','main','http://infini-sql:9003',1,1);
/*!40000 ALTER TABLE `ai_byzer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_category`
--

DROP TABLE IF EXISTS `ai_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_category`
--

LOCK TABLES `ai_category` WRITE;
/*!40000 ALTER TABLE `ai_category` DISABLE KEYS */;
INSERT INTO `ai_category` VALUES (5,'2025-06-10 16:17:22.480906','2025-06-10 16:17:22.480906','RAG经典案例');
INSERT INTO `ai_category` VALUES (6,'2025-06-10 16:49:46.797718','2025-06-10 16:49:46.797718','LLM经典案例');
INSERT INTO `ai_category` VALUES (7,'2025-06-10 17:10:00.290624','2025-06-10 17:10:00.290624','跨源合并计算');
INSERT INTO `ai_category` VALUES (8,'2025-06-15 19:01:55.611588','2025-06-15 19:01:55.611588','异常自动校验纠正案例');
INSERT INTO `ai_category` VALUES (9,'2025-06-15 19:02:27.259457','2025-06-15 19:02:27.259457','AI发散思考案例');
/*!40000 ALTER TABLE `ai_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_database`
--

DROP TABLE IF EXISTS `ai_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_database` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `enabled` smallint NOT NULL DEFAULT '1',
  `rag_names` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_44f6584927de07e215ee4107a2` (`name`),
  KEY `FK_f67eb492de69a9f93da0423fdef` (`user_id`),
  CONSTRAINT `FK_f67eb492de69a9f93da0423fdef` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_database`
--

LOCK TABLES `ai_database` WRITE;
/*!40000 ALTER TABLE `ai_database` DISABLE KEYS */;
INSERT INTO `ai_database` VALUES (12,'2025-06-12 11:46:57.463648','2025-07-12 16:33:17.000000','student_social_data','file',0,'[]','{\"file_type\":\"csv\",\"file_system\":\"file\",\"file_path\":\"/app/datas/students_social_media_addiction.csv\"}',1,'这是学生的社交数据');
INSERT INTO `ai_database` VALUES (13,'2025-06-15 10:08:54.302745','2025-07-12 16:33:17.000000','dim_product','file',0,'[]','{\"file_type\":\"csv\",\"file_system\":\"file\",\"file_path\":\"/app/datas/dim_product.csv\"}',1,'产品数据的维度表');
INSERT INTO `ai_database` VALUES (14,'2025-06-15 10:09:51.894631','2025-07-12 16:33:17.000000','dim_user','file',0,'[]','{\"file_type\":\"csv\",\"file_system\":\"file\",\"file_path\":\"/app/datas/dim_user.csv\"}',1,'用户维度数据');
INSERT INTO `ai_database` VALUES (15,'2025-06-15 10:10:16.303894','2025-07-12 16:33:17.000000','fact_order','file',0,'[]','{\"file_type\":\"csv\",\"file_system\":\"file\",\"file_path\":\"/app/datas/fact_order.csv\"}',1,'订单的事实表');
INSERT INTO `ai_database` VALUES (16,'2025-06-15 18:42:18.207021','2025-07-12 16:33:17.000000','comment_test','mysql',0,'[]','{\"mysql_host\":\"mysql\",\"mysql_port\":3306,\"mysql_username\":\"root\",\"mysql_password\":\"infinisynapse@123\",\"mysql_database\":\"infinisynapse\"}',1,'这是comment的测试数据');
INSERT INTO `ai_database` VALUES (17,'2025-06-16 18:16:14.130279','2025-07-12 16:33:17.000000','afm_monthly','file',0,'[]','{\"file_type\":\"excel\",\"file_system\":\"file\",\"file_path\":\"/app/datas/AFM_monthly_data_test_data.xlsx\"}',1,'这是afm monthly的数据');
/*!40000 ALTER TABLE `ai_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_rag`
--

DROP TABLE IF EXISTS `ai_rag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_rag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `key` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_rag`
--

LOCK TABLES `ai_rag` WRITE;
/*!40000 ALTER TABLE `ai_rag` DISABLE KEYS */;
INSERT INTO `ai_rag` VALUES (46,'2025-06-15 19:19:15.537564','2025-07-08 14:13:20.000000','rags','{\"black_monkey\":{\"name\":\"black_monkey\",\"model\":\"deepseek_v3\",\"description\":\"这是黑神话的rag，可以回答相关知识\",\"recall_model\":\"deepseek_v3\",\"chunk_model\":\"deepseek_v3\",\"qa_model\":\"deepseek_v3\",\"tokenizer_path\":\"\",\"enable_local_image_host\":false,\"doc_dir\":\"/app/datas/rag/黑神话\",\"rag_doc_filter_relevance\":2,\"host\":\"0.0.0.0\",\"port\":8001,\"disable_inference_enhance\":true,\"inference_deep_thought\":false,\"enable_hybrid_index\":false,\"agentic\":false,\"hybrid_index_max_output_tokens\":1000000,\"without_contexts\":false,\"product_type\":\"lite\",\"full_text_ratio\":0.7,\"segment_ratio\":0.2,\"rag_context_window_limit\":56000,\"status\":\"stopped\"},\"infini_synapse_builtin_rag\":{\"name\":\"infini_synapse_builtin_rag\",\"model\":\"deepseek_v3\",\"description\":\"infiniSynapse内置的rag，记录历史的聊天和执行计划。\",\"recall_model\":\"deepseek_v3\",\"chunk_model\":\"deepseek_v3\",\"qa_model\":\"deepseek_v3\",\"tokenizer_path\":\"\",\"enable_local_image_host\":false,\"doc_dir\":\"/app/datas/rag/buildin\",\"rag_doc_filter_relevance\":2,\"host\":\"127.0.0.1\",\"port\":8002,\"disable_inference_enhance\":true,\"inference_deep_thought\":false,\"enable_hybrid_index\":false,\"agentic\":false,\"hybrid_index_max_output_tokens\":1000000,\"without_contexts\":false,\"product_type\":\"lite\",\"full_text_ratio\":0.7,\"segment_ratio\":0.2,\"rag_context_window_limit\":56000,\"status\":\"stopped\"}}');
INSERT INTO `ai_rag` VALUES (54,'2025-06-27 23:17:40.942145','2025-06-27 23:19:55.000000','rag_out_black_monkey','2025-06-27 15:17:40.940 | WARNING  | autocoder.rag.long_context_rag:<module>:43 - Please install auto-coder-pro to enhance llm compute ability\n\n2025-06-27 15:17:41.266 | INFO     | autocoder.auto_coder_rag:main:651 - Generated RAG build name: fa4d4308a8f32c467bc51c73802184bf\n\n\n    [1;32m\n      _     _     __  __       _   _    _  _____ _____     _______   ____      _    ____ \n     | |   | |   |  \\/  |     | \\ | |  / \\|_   _|_ _\\ \\   / / ____| |  _ \\    / \\  / ___|\n     | |   | |   | |\\/| |_____|  \\| | / _ \\ | |  | | \\ \\ / /|  _|   | |_) |  / _ \\| |  _ \n     | |___| |___| |  | |_____| |\\  |/ ___ \\| |  | |  \\ V / | |___  |  _ <  / ___ \\ |_| |\n     |_____|_____|_|  |_|     |_| \\_/_/   \\_\\_| |___|  \\_/  |_____| |_| \\_\\/_/   \\_\\____|\n                                                                            v0.1.397\n    [0m\n\n2025-06-27 15:17:41.670 | INFO     | autocoder.rag.long_context_rag:__init__:119 - Monitor mode: False\n\n2025-06-27 15:17:41.680 | INFO     | autocoder.common.file_monitor.monitor:__init__:113 - FileMonitor singleton initialized for root directory: /app/datas/rag/黑神话\n2025-06-27 15:17:41.680 | INFO     | autocoder.common.file_monitor.monitor:register:189 - Registered callback for literal path: /app/datas/rag/黑神话\n2025-06-27 15:17:41.680 | INFO     | autocoder.common.file_monitor.monitor:start:340 - Starting file monitor...\n\n2025-06-27 15:17:41.685 | INFO     | autocoder.common.file_monitor.monitor:_monitor_loop:290 - File monitor loop started for /app/datas/rag/黑神话...\n\n2025-06-27 15:17:41.685 | INFO     | autocoder.common.file_monitor.monitor:start:345 - File monitor started in background thread.\n2025-06-27 15:17:41.692 | INFO     | autocoder.rag.cache.simple_cache:__init__:126 - Started file monitor for /app/datas/rag/黑神话\n\n[INFO][2025-06-27 15:17:41][api_server.py:265] - ByzerLLM API server version 0.1.190\n[INFO][2025-06-27 15:17:41][api_server.py:266] - args: host=\'0.0.0.0\' port=8001 workers=4 uvicorn_log_level=\'info\' allow_credentials=False allowed_origins=[\'*\'] allowed_methods=[\'*\'] allowed_headers=[\'*\'] api_key=\'\' served_model_name=\'\' prompt_template=\'\' response_role=\'assistant\' ssl_keyfile=\'\' ssl_certfile=\'\' doc_dir=\'/app/datas/rag/黑神话\' tokenizer_path=\'/usr/local/lib/python3.11/dist-packages/autocoder/data/tokenizer.json\' max_static_path_length=3000 enable_nginx_x_accel=False\n[INFO][2025-06-27 15:17:41][api_server.py:270] - Maximum static file path length: 3000\n[INFO][2025-06-27 15:17:41][api_server.py:288] - Static files root directory: /app/datas/rag/黑神话\n\nINFO:     Started server process [397]\n\nINFO:     Waiting for application startup.\n\nINFO:     Application startup complete.\n\nINFO:     Uvicorn running on http://0.0.0.0:8001 (Press CTRL+C to quit)\n\nINFO:     Shutting down\n\nINFO:     Waiting for application shutdown.\nINFO:     Application shutdown complete.\nINFO:     Finished server process [397]\n');
INSERT INTO `ai_rag` VALUES (55,'2025-06-27 23:24:43.217113','2025-06-27 23:24:43.000000','models','[{\"name\":\"deepseek_r1_chat\",\"description\":\"DeepSeek Reasoner is for design/review\",\"model_name\":\"deepseek-reasoner\",\"model_type\":\"saas/openai\",\"base_url\":\"https://api.deepseek.com/v1\",\"api_key\":\"\",\"is_reasoning\":true,\"input_price\":0,\"output_price\":0,\"average_speed\":0},{\"name\":\"deepseek_chat\",\"description\":\"DeepSeek Chat is for coding\",\"model_name\":\"deepseek-chat\",\"model_type\":\"saas/openai\",\"base_url\":\"https://api.deepseek.com/v1\",\"api_key\":\"\",\"is_reasoning\":false,\"input_price\":0,\"output_price\":0,\"average_speed\":0},{\"name\":\"o1\",\"description\":\"o1 is for design/review\",\"model_name\":\"o1-2024-12-17\",\"model_type\":\"saas/openai\",\"base_url\":\"https://api.openai.com/v1\",\"api_key\":\"\",\"is_reasoning\":true,\"input_price\":0,\"output_price\":0,\"average_speed\":0},{\"name\":\"deepseek_v3\",\"description\":\"Auto created By InfiniSynapse\",\"model_name\":\"deepseek-v3\",\"model_type\":\"saas/openai\",\"base_url\":\"https://dashscope.aliyuncs.com/compatible-mode/v1\",\"api_key\":\"sk-72e2f821439f4360a44f72f52b4dbf92\",\"is_reasoning\":false,\"register_udf\":false,\"support_type\":[\"text\"],\"input_price\":0,\"output_price\":0,\"average_speed\":0}]');
INSERT INTO `ai_rag` VALUES (56,'2025-06-27 23:24:43.233038','2025-06-27 23:24:43.233038','models_with_command','{\"deepseek_v3\":{\"status\":\"running\",\"product_type\":\"lite\",\"is_reasoning\":false,\"register_udf\":false,\"support_type\":[\"text\"],\"input_price\":0,\"output_price\":0,\"deploy_command\":{\"pretrained_model_type\":\"saas/openai\",\"cpus_per_worker\":0.001,\"gpus_per_worker\":1,\"num_workers\":1,\"worker_concurrency\":null,\"infer_params\":{\"sass.base_url\":\"https://dashscope.aliyuncs.com/compatible-mode/v1\",\"sass.api_key\":\"sk-72e2f821439f4360a44f72f52b4dbf92\",\"sass.model\":\"deepseek-v3\"},\"model\":\"deepseek_v3\",\"model_path\":null,\"infer_backend\":null},\"undeploy_command\":\"byzerllm undeploy --model deepseek_v3 --force\"}}');
INSERT INTO `ai_rag` VALUES (59,'2025-07-02 10:46:11.242077','2025-07-02 10:47:10.000000','rag_out_infini_synapse_builtin_rag','2025-07-02 02:46:11.239 | WARNING  | autocoder.rag.long_context_rag:<module>:43 - Please install auto-coder-pro to enhance llm compute ability\n\n2025-07-02 02:46:11.739 | INFO     | autocoder.auto_coder_rag:main:651 - Generated RAG build name: 2001f03397fdf146745be091ddbb47cd\n\n\n    [1;32m\n      _     _     __  __       _   _    _  _____ _____     _______   ____      _    ____ \n     | |   | |   |  \\/  |     | \\ | |  / \\|_   _|_ _\\ \\   / / ____| |  _ \\    / \\  / ___|\n     | |   | |   | |\\/| |_____|  \\| | / _ \\ | |  | | \\ \\ / /|  _|   | |_) |  / _ \\| |  _ \n     | |___| |___| |  | |_____| |\\  |/ ___ \\| |  | |  \\ V / | |___  |  _ <  / ___ \\ |_| |\n     |_____|_____|_|  |_|     |_| \\_/_/   \\_\\_| |___|  \\_/  |_____| |_| \\_\\/_/   \\_\\____|\n                                                                            v0.1.397\n    [0m\n\n2025-07-02 02:46:12.151 | INFO     | autocoder.rag.long_context_rag:__init__:119 - Monitor mode: False\n\n2025-07-02 02:46:12.167 | INFO     | autocoder.common.file_monitor.monitor:_monitor_loop:290 - File monitor loop started for /app/datas/rag/buildin...\n\n[INFO][2025-07-02 02:46:12][api_server.py:265] - ByzerLLM API server version 0.1.190\n[INFO][2025-07-02 02:46:12][api_server.py:266] - args: host=\'127.0.0.1\' port=8002 workers=4 uvicorn_log_level=\'info\' allow_credentials=False allowed_origins=[\'*\'] allowed_methods=[\'*\'] allowed_headers=[\'*\'] api_key=\'\' served_model_name=\'\' prompt_template=\'\' response_role=\'assistant\' ssl_keyfile=\'\' ssl_certfile=\'\' doc_dir=\'/app/datas/rag/buildin\' tokenizer_path=\'/usr/local/lib/python3.11/dist-packages/autocoder/data/tokenizer.json\' max_static_path_length=3000 enable_nginx_x_accel=False\n[INFO][2025-07-02 02:46:12][api_server.py:270] - Maximum static file path length: 3000\n[INFO][2025-07-02 02:46:12][api_server.py:288] - Static files root directory: /app/datas/rag/buildin\n\nINFO:     Waiting for application startup.\n\nINFO:     Application startup complete.\n\nINFO:     Uvicorn running on http://127.0.0.1:8002 (Press CTRL+C to quit)\n\n2025-07-02 02:46:31.136 | INFO     | autocoder.rag.long_context_rag:_stream_chat_oai:442 - Query: 请提供关于afm(自动化财务管理)的任务背景和常见分析维度\n\nPrefix image URLs with http://127.0.0.1:8002/static/\n\n[object Promise] only_contexts: False\n\n2025-07-02 02:46:47.822 | INFO     | autocoder.rag.doc_filter:filter_docs_with_progress:154 - Submitted 1 document filtering tasks to thread pool\n\n2025-07-02 02:46:49.240 | INFO     | autocoder.rag.doc_filter:filter_docs_with_progress:307 - === DocFilter Complete ===\n  * Total time: 1.43s\n  * Documents processed: 1/1\n  * Relevant documents: 1 (threshold: 2)\n  * Average processing time: 1.42s\n  * Average queue time: 0.00s\n  * Total input tokens: 563\n  * Total generated tokens: 3\n2025-07-02 02:46:49.241 | INFO     | autocoder.rag.doc_filter:filter_docs_with_progress:319 - Top 5 relevant documents:\n  * ##File: /app/datas/rag/buildin/infini_summary_builtin/1751276761696.md (Score: 3.0)\n\n2025-07-02 02:46:49.259 | INFO     | autocoder.rag.long_context_rag:_generate_sream:641 - === LLM Request ===\n  * Target model: deepseek_v3\n  * Total tokens: 370\n2025-07-02 02:46:49.259 | INFO     | autocoder.rag.long_context_rag:_generate_sream:647 - Start to send to model deepseek_v3 with 370 tokens\n\n2025-07-02 02:47:10.191 | INFO     | autocoder.common.save_formatted_log:save_formatted_log:119 - 日志已保存至: /app/datas/rag/buildin/.auto-coder/logs/agentic/20250702_024710_879ecff8-3088-441b-95a4-39d9fa9aa8ed_rag_conversation.md\n\n2025-07-02 02:47:10.211 | INFO     | autocoder.rag.long_context_rag:_print_rag_stats:1095 - === (RAG 执行统计信息) ===\n查询内容: 请提供关于afm(自动化财务管理)的任务背景和常见分析维度\n\nPrefix image URLs with http://127.0.0.1:8002/static/\n\n[object Promise...\n总令牌使用: 1518 令牌\n  * 输入令牌总数: 1186\n  * 生成令牌总数: 332\n  * 总成本: 0.000000\n  * 总耗时: 39.04 秒\n\n阶段统计:\n  1. 文档检索阶段:\n     - 模型: deepseek_v3\n     - 输入令牌: 563\n     - 生成令牌: 3\n     - 阶段总计: 566\n     - 阶段成本: 0.000000\n     - 阶段耗时: 18.10 秒\n\n  2. 文档分块阶段:\n     - 模型: deepseek_v3\n     - 输入令牌: 0\n     - 生成令牌: 0\n     - 阶段总计: 0\n     - 阶段成本: 0.000000\n     - 阶段耗时: 0.01 秒\n\n  3. 答案生成阶段:\n     - 模型: deepseek_v3\n     - 输入令牌: 623\n     - 生成令牌: 329\n     - 阶段总计: 952\n     - 阶段成本: 0.000000\n     - 阶段耗时: 20.93 秒\n\n  4. 其他阶段 1:\n     - 模型: deepseek_v3\n     - 输入令牌: 428\n     - 生成令牌: 205\n     - 阶段总计: 633\n     - 阶段成本: 0.000000\n     - 阶段耗时: 0.00 秒\n\n令牌分布百分比:\n  - 文档检索: 37.3%\n  - 文档分块: 0.0%\n  - 答案生成: 62.7%\n  - 其他阶段 1: 41.7%\n\n耗时分布百分比:\n  - 文档检索: 46.4%\n  - 文档分块: 0.0%\n  - 答案生成: 53.6%\n\n成本分布百分比:\n  - 文档检索: 0.0%\n  - 文档分块: 0.0%\n  - 答案生成: 0.0%\n\n\n2025-07-02 02:47:10.271 | INFO     | autocoder.rag.cache.simple_cache:trigger_update:244 - files_to_process: []\n2025-07-02 02:47:10.271 | INFO     | autocoder.rag.cache.simple_cache:trigger_update:245 - deleted_files: set()\n\n2025-07-02 02:47:10.373 | INFO     | autocoder.rag.cache.simple_cache:trigger_update:244 - files_to_process: []\n2025-07-02 02:47:10.373 | INFO     | autocoder.rag.cache.simple_cache:trigger_update:245 - deleted_files: set()\n');
/*!40000 ALTER TABLE `ai_rag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_setting`
--

DROP TABLE IF EXISTS `ai_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `key` varchar(255) NOT NULL,
  `value` text,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a79f17a59a94e74476d8992757f` (`user_id`),
  CONSTRAINT `FK_a79f17a59a94e74476d8992757f` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_setting`
--

LOCK TABLES `ai_setting` WRITE;
/*!40000 ALTER TABLE `ai_setting` DISABLE KEYS */;
INSERT INTO `ai_setting` VALUES (71,'2025-06-15 00:22:39.685714','2025-06-15 00:24:14.000000','planActSeparateModelsSetting','true',1);
INSERT INTO `ai_setting` VALUES (72,'2025-06-15 00:23:33.499794','2025-06-15 00:23:33.499794','deepSeekApiKey',NULL,1);
INSERT INTO `ai_setting` VALUES (73,'2025-06-15 00:23:33.500277','2025-07-08 14:13:31.000000','apiModelId','deepseek-v3',1);
INSERT INTO `ai_setting` VALUES (74,'2025-06-15 00:23:33.501219','2025-07-08 14:13:31.000000','apiProvider','deepseek-aliyun',1);
INSERT INTO `ai_setting` VALUES (75,'2025-06-15 00:23:33.501484','2025-07-12 16:32:23.320870','deepSeekAliyunKey','',1);
INSERT INTO `ai_setting` VALUES (76,'2025-06-15 00:23:33.502850','2025-06-15 00:23:33.502850','apiKey',NULL,1);
INSERT INTO `ai_setting` VALUES (77,'2025-06-15 00:23:33.502908','2025-06-16 20:32:19.000000','openAiModelId','Pro/deepseek-ai/DeepSeek-V3',1);
INSERT INTO `ai_setting` VALUES (78,'2025-06-15 00:23:33.503009','2025-06-15 00:23:33.503009','azureApiVersion',NULL,1);
INSERT INTO `ai_setting` VALUES (79,'2025-06-15 00:23:33.503353','2025-06-15 00:23:33.503353','openAiBaseUrl','https://api.siliconflow.cn/v1',1);
INSERT INTO `ai_setting` VALUES (80,'2025-06-15 00:23:33.503843','2025-06-15 00:23:33.503843','anthropicBaseUrl',NULL,1);
INSERT INTO `ai_setting` VALUES (81,'2025-06-15 00:23:33.504205','2025-07-12 16:32:23.313893','qwenApiKey','',1);
INSERT INTO `ai_setting` VALUES (82,'2025-06-15 00:23:33.510478','2025-06-15 00:24:12.000000','openAiModelInfo','{\"maxTokens\":-1,\"contextWindow\":128000,\"supportsImages\":true,\"supportsPromptCache\":false,\"inputPrice\":0,\"outputPrice\":0,\"temperature\":0}',1);
INSERT INTO `ai_setting` VALUES (83,'2025-06-15 00:23:33.510627','2025-06-15 00:23:33.510627','openAiNativeApiKey',NULL,1);
INSERT INTO `ai_setting` VALUES (84,'2025-06-15 00:23:33.510705','2025-07-12 16:32:23.317623','openAiApiKey','',1);
INSERT INTO `ai_setting` VALUES (85,'2025-06-15 00:23:33.511013','2025-06-15 00:23:33.511013','qwenApiLine','china',1);
INSERT INTO `ai_setting` VALUES (86,'2025-06-15 00:23:33.516285','2025-06-15 00:23:33.516285','customInstructions','',1);
INSERT INTO `ai_setting` VALUES (87,'2025-06-15 00:24:17.006624','2025-06-15 00:24:17.006624','previousModeApiProvider','openai',1);
INSERT INTO `ai_setting` VALUES (88,'2025-06-15 00:24:17.015267','2025-06-15 00:24:17.015267','previousModeThinkingBudgetTokens','0',1);
INSERT INTO `ai_setting` VALUES (89,'2025-06-15 00:24:17.023212','2025-06-16 20:32:19.000000','previousModeModelId','Pro/deepseek-ai/DeepSeek-R1',1);
INSERT INTO `ai_setting` VALUES (90,'2025-06-15 00:24:17.027540','2025-06-15 00:24:17.027540','previousModeModelInfo','{\"maxTokens\":-1,\"contextWindow\":128000,\"supportsImages\":true,\"supportsPromptCache\":false,\"inputPrice\":0,\"outputPrice\":0,\"temperature\":0}',1);
INSERT INTO `ai_setting` VALUES (91,'2025-06-15 00:24:17.032004','2025-06-16 20:32:19.000000','chatSettings','{\"mode\":\"act\"}',1);
INSERT INTO `ai_setting` VALUES (92,'2025-06-15 00:24:24.027300','2025-06-15 00:24:24.027300','thinkingBudgetTokens','0',1);
INSERT INTO `ai_setting` VALUES (93,'2025-06-15 00:39:06.013219','2025-06-15 00:39:08.000000','autoApprovalSettings','{\"enabled\":true,\"actions\":{\"useMcp\":true,\"useSandbox\":true,\"useRag\":true,\"useDatabase\":true},\"maxRequests\":20,\"enableNotifications\":false}',1);
/*!40000 ALTER TABLE `ai_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_task`
--

DROP TABLE IF EXISTS `ai_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_task` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `taskInfo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `uiMessage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `apiConversationHistory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a91372bb14a79404391fb1f8170` (`user_id`),
  CONSTRAINT `FK_a91372bb14a79404391fb1f8170` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_task`
--

LOCK TABLES `ai_task` WRITE;
/*!40000 ALTER TABLE `ai_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_task_category_mapping`
--

DROP TABLE IF EXISTS `ai_task_category_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_task_category_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `task_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fefd446255e7558882b64996262` (`task_id`),
  KEY `FK_990f7013bddb243eb54ab1a8729` (`category_id`),
  CONSTRAINT `FK_990f7013bddb243eb54ab1a8729` FOREIGN KEY (`category_id`) REFERENCES `ai_category` (`id`),
  CONSTRAINT `FK_fefd446255e7558882b64996262` FOREIGN KEY (`task_id`) REFERENCES `ai_task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_task_category_mapping`
--

LOCK TABLES `ai_task_category_mapping` WRITE;
/*!40000 ALTER TABLE `ai_task_category_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_task_category_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,1707996695540,'InitData1707996695540');
INSERT INTO `migrations` VALUES (2,1717007831711,'UpdateTable2001717007831711');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_captcha_log`
--

DROP TABLE IF EXISTS `sys_captcha_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_captcha_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_captcha_log`
--

LOCK TABLES `sys_captcha_log` WRITE;
/*!40000 ALTER TABLE `sys_captcha_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_captcha_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `IDX_2c363c25cf99bcaab3a7f389ba` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'sys_user_initPassword','初始密码','创建管理员账号的初始密码','2023-11-10 00:31:44.154921','2025-03-16 18:44:33.828772','123456');
INSERT INTO `sys_config` VALUES (2,'sys_api_token','API Token','用于请求 @ApiToken 的控制器','2023-11-10 00:31:44.154921','2025-03-16 18:44:33.833235','nest-admin');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orderNo` int DEFAULT '0',
  `mpath` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '',
  `parentId` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `create_by` int DEFAULT NULL COMMENT '创建者',
  `update_by` int DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_c75280b01c49779f2323536db67` (`parentId`) USING BTREE,
  CONSTRAINT `FK_c75280b01c49779f2323536db67` FOREIGN KEY (`parentId`) REFERENCES `sys_dept` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (1,'华东分部',1,'1.',NULL,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
INSERT INTO `sys_dept` VALUES (2,'研发部',1,'1.2.',1,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
INSERT INTO `sys_dept` VALUES (3,'市场部',2,'1.3.',1,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
INSERT INTO `sys_dept` VALUES (4,'商务部',3,'1.4.',1,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
INSERT INTO `sys_dept` VALUES (5,'财务部',4,'1.5.',1,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
INSERT INTO `sys_dept` VALUES (6,'华南分部',2,'6.',NULL,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
INSERT INTO `sys_dept` VALUES (7,'西北分部',3,'7.',NULL,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
INSERT INTO `sys_dept` VALUES (8,'研发部',1,'6.8.',6,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
INSERT INTO `sys_dept` VALUES (9,'市场部',1,'6.9.',6,'2023-11-10 00:31:43.996025','2023-11-10 00:31:44.008709',NULL,NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `create_by` int NOT NULL COMMENT '创建者',
  `update_by` int NOT NULL COMMENT '更新者',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_d112365748f740ee260b65ce91` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_item`
--

DROP TABLE IF EXISTS `sys_dict_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `create_by` int DEFAULT NULL COMMENT '创建者',
  `update_by` int DEFAULT NULL COMMENT '更新者',
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order` int DEFAULT NULL COMMENT '字典项排序',
  `status` tinyint NOT NULL DEFAULT '1',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `orderNo` int DEFAULT NULL COMMENT '字典项排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_item`
--

LOCK TABLES `sys_dict_item` WRITE;
/*!40000 ALTER TABLE `sys_dict_item` DISABLE KEYS */;
INSERT INTO `sys_dict_item` VALUES (1,'2024-01-29 01:24:51.846135','2024-01-29 02:23:19.000000',1,1,'男','1',0,1,'性别男',1,3);
INSERT INTO `sys_dict_item` VALUES (2,'2024-01-29 01:32:58.458741','2024-01-29 01:58:20.000000',1,1,'女','0',1,1,'性别女',1,2);
INSERT INTO `sys_dict_item` VALUES (3,'2024-01-29 01:59:17.805394','2024-01-29 14:37:18.000000',1,1,'人妖王','3',NULL,1,'安布里奥·伊万科夫',1,0);
INSERT INTO `sys_dict_item` VALUES (5,'2024-01-29 02:13:01.782466','2024-01-29 02:13:01.782466',1,1,'显示','1',NULL,1,'显示菜单',2,0);
INSERT INTO `sys_dict_item` VALUES (6,'2024-01-29 02:13:31.134721','2024-01-29 02:13:31.134721',1,1,'隐藏','0',NULL,1,'隐藏菜单',2,0);
/*!40000 ALTER TABLE `sys_dict_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `create_by` int DEFAULT NULL COMMENT '创建者',
  `update_by` int DEFAULT NULL COMMENT '更新者',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_74d0045ff7fab9f67adc0b1bda` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'2024-01-28 08:19:12.777447','2024-02-08 13:05:10.000000',1,1,'性别',1,'性别单选','sys_user_gender');
INSERT INTO `sys_dict_type` VALUES (2,'2024-01-28 08:38:41.235185','2024-01-29 02:11:33.000000',1,1,'菜单显示状态',1,'菜单显示状态','sys_show_hide');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_login_log`
--

DROP TABLE IF EXISTS `sys_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_login_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ua` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_3029712e0df6a28edaee46fd470` (`user_id`),
  CONSTRAINT `FK_3029712e0df6a28edaee46fd470` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_login_log`
--

LOCK TABLES `sys_login_log` WRITE;
/*!40000 ALTER TABLE `sys_login_log` DISABLE KEYS */;
INSERT INTO `sys_login_log` VALUES (1,'172.28.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 13:57:04.629468','2025-06-08 13:57:04.629468',1);
INSERT INTO `sys_login_log` VALUES (2,'192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 14:24:31.426164','2025-06-08 14:24:31.426164',1);
INSERT INTO `sys_login_log` VALUES (3,'192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 14:28:46.031359','2025-06-08 14:28:46.031359',1);
INSERT INTO `sys_login_log` VALUES (4,'192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 14:33:06.862543','2025-06-08 14:33:06.862543',1);
INSERT INTO `sys_login_log` VALUES (5,'192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 14:38:15.227749','2025-06-08 14:38:15.227749',1);
INSERT INTO `sys_login_log` VALUES (6,'192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 14:39:24.814116','2025-06-08 14:39:24.814116',1);
INSERT INTO `sys_login_log` VALUES (7,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 14:53:08.407855','2025-06-08 14:53:08.407855',1);
INSERT INTO `sys_login_log` VALUES (8,'192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 14:56:14.177023','2025-06-08 14:56:14.177023',1);
INSERT INTO `sys_login_log` VALUES (9,'192.168.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 15:10:55.345571','2025-06-08 15:10:55.345571',1);
INSERT INTO `sys_login_log` VALUES (10,'192.168.16.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 15:25:59.073310','2025-06-08 15:25:59.073310',1);
INSERT INTO `sys_login_log` VALUES (11,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 20:18:37.956082','2025-06-08 20:18:37.956082',1);
INSERT INTO `sys_login_log` VALUES (12,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 20:19:24.019700','2025-06-08 20:19:24.019700',1);
INSERT INTO `sys_login_log` VALUES (13,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 20:21:28.213383','2025-06-08 20:21:28.213383',1);
INSERT INTO `sys_login_log` VALUES (14,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 20:22:02.014299','2025-06-08 20:22:02.014299',1);
INSERT INTO `sys_login_log` VALUES (15,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 20:33:45.948364','2025-06-08 20:33:45.948364',1);
INSERT INTO `sys_login_log` VALUES (16,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 20:43:24.058765','2025-06-08 20:43:24.058765',1);
INSERT INTO `sys_login_log` VALUES (17,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 20:47:46.258016','2025-06-08 20:47:46.258016',1);
INSERT INTO `sys_login_log` VALUES (18,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-08 21:50:51.907537','2025-06-08 21:50:51.907537',1);
INSERT INTO `sys_login_log` VALUES (19,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-09 10:25:13.519132','2025-06-09 10:25:13.519132',1);
INSERT INTO `sys_login_log` VALUES (20,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-09 10:39:25.256509','2025-06-09 10:39:25.256509',1);
INSERT INTO `sys_login_log` VALUES (21,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-09 10:45:58.165917','2025-06-09 10:45:58.165917',1);
INSERT INTO `sys_login_log` VALUES (22,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-09 10:53:07.240756','2025-06-09 10:53:07.240756',1);
INSERT INTO `sys_login_log` VALUES (23,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-09 18:59:44.762687','2025-06-09 18:59:44.762687',1);
INSERT INTO `sys_login_log` VALUES (24,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-10 19:27:03.833291','2025-06-10 19:27:03.833291',1);
INSERT INTO `sys_login_log` VALUES (25,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 11:57:44.847158','2025-06-11 11:57:44.847158',1);
INSERT INTO `sys_login_log` VALUES (26,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 12:03:43.347492','2025-06-11 12:03:43.347492',1);
INSERT INTO `sys_login_log` VALUES (27,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 13:01:24.805605','2025-06-11 13:01:24.805605',1);
INSERT INTO `sys_login_log` VALUES (28,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 14:45:04.023625','2025-06-11 14:45:04.023625',1);
INSERT INTO `sys_login_log` VALUES (29,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 15:47:06.353326','2025-06-11 15:47:06.353326',1);
INSERT INTO `sys_login_log` VALUES (30,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 15:50:18.843490','2025-06-11 15:50:18.843490',1);
INSERT INTO `sys_login_log` VALUES (31,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 15:51:19.115543','2025-06-11 15:51:19.115543',1);
INSERT INTO `sys_login_log` VALUES (32,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 16:12:53.110794','2025-06-11 16:12:53.110794',1);
INSERT INTO `sys_login_log` VALUES (33,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 16:42:30.960826','2025-06-11 16:42:30.960826',1);
INSERT INTO `sys_login_log` VALUES (34,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-11 16:58:30.383882','2025-06-11 16:58:30.383882',1);
INSERT INTO `sys_login_log` VALUES (35,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-12 00:00:09.834650','2025-06-12 00:00:09.834650',1);
INSERT INTO `sys_login_log` VALUES (36,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-12 10:17:17.684397','2025-06-12 10:17:17.684397',1);
INSERT INTO `sys_login_log` VALUES (37,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-12 11:28:09.210098','2025-06-12 11:28:09.210098',1);
INSERT INTO `sys_login_log` VALUES (38,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-12 14:33:07.995759','2025-06-12 14:33:07.995759',1);
INSERT INTO `sys_login_log` VALUES (39,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-12 15:31:13.009653','2025-06-12 15:31:13.009653',1);
INSERT INTO `sys_login_log` VALUES (40,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-12 22:39:48.443309','2025-06-12 22:39:48.443309',1);
INSERT INTO `sys_login_log` VALUES (41,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-12 22:53:41.215496','2025-06-12 22:53:41.215496',1);
INSERT INTO `sys_login_log` VALUES (42,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-13 09:28:48.265584','2025-06-13 09:28:48.265584',1);
INSERT INTO `sys_login_log` VALUES (43,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-13 11:26:53.781454','2025-06-13 11:26:53.781454',1);
INSERT INTO `sys_login_log` VALUES (44,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-13 20:47:30.612156','2025-06-13 20:47:30.612156',1);
INSERT INTO `sys_login_log` VALUES (45,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-14 14:39:32.493000','2025-06-14 14:39:32.493000',1);
INSERT INTO `sys_login_log` VALUES (46,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-14 14:48:09.696391','2025-06-14 14:48:09.696391',1);
INSERT INTO `sys_login_log` VALUES (47,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-15 09:58:33.362137','2025-06-15 09:58:33.362137',1);
INSERT INTO `sys_login_log` VALUES (48,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-15 17:21:08.504010','2025-06-15 17:21:08.504010',1);
INSERT INTO `sys_login_log` VALUES (49,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-15 18:27:10.549596','2025-06-15 18:27:10.549596',1);
INSERT INTO `sys_login_log` VALUES (50,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-15 18:40:30.774666','2025-06-15 18:40:30.774666',1);
INSERT INTO `sys_login_log` VALUES (51,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-15 19:00:05.017174','2025-06-15 19:00:05.017174',1);
INSERT INTO `sys_login_log` VALUES (52,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-15 19:18:40.704963','2025-06-15 19:18:40.704963',1);
INSERT INTO `sys_login_log` VALUES (53,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-15 21:47:37.839637','2025-06-15 21:47:37.839637',1);
INSERT INTO `sys_login_log` VALUES (54,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-15 22:06:46.715867','2025-06-15 22:06:46.715867',1);
INSERT INTO `sys_login_log` VALUES (55,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-16 13:24:33.917174','2025-06-16 13:24:33.917174',1);
INSERT INTO `sys_login_log` VALUES (56,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-16 17:47:55.191641','2025-06-16 17:47:55.191641',1);
INSERT INTO `sys_login_log` VALUES (57,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-16 17:49:33.946014','2025-06-16 17:49:33.946014',1);
INSERT INTO `sys_login_log` VALUES (58,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-16 20:25:19.298329','2025-06-16 20:25:19.298329',1);
INSERT INTO `sys_login_log` VALUES (59,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-17 12:04:40.735258','2025-06-17 12:04:40.735258',1);
INSERT INTO `sys_login_log` VALUES (60,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-18 11:35:58.474111','2025-06-18 11:35:58.474111',1);
INSERT INTO `sys_login_log` VALUES (61,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-18 20:23:01.831290','2025-06-18 20:23:01.831290',1);
INSERT INTO `sys_login_log` VALUES (62,'192.168.48.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36','内网IP',NULL,'2025-06-23 13:09:18.261762','2025-06-23 13:09:18.261762',1);
/*!40000 ALTER TABLE `sys_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `order_no` int DEFAULT '0',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keep_alive` tinyint NOT NULL DEFAULT '1',
  `show` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_ext` tinyint NOT NULL DEFAULT '0',
  `ext_open_mode` tinyint NOT NULL DEFAULT '1',
  `active_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_by` int DEFAULT NULL COMMENT '创建者',
  `update_by` int DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,NULL,'/system','系统管理','',0,'ant-design:setting-outlined',254,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (2,1,'/system/user','用户管理','system:user:list',1,'ant-design:user-outlined',0,'system/user/index',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (3,1,'/system/role','角色管理','system:role:list',1,'ep:user',1,'system/role/index',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (4,1,'/system/menu','菜单管理','system:menu:list',1,'ep:menu',2,'system/menu/index',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (20,2,NULL,'新增','system:user:create',2,'',0,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (21,2,'','删除','system:user:delete',2,'',0,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (22,2,'','更新','system:user:update',2,'',0,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (23,2,'','查询','system:user:read',2,'',0,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (24,3,'','新增','system:role:create',2,'',0,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (25,3,'','删除','system:role:delete',2,'',0,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (26,3,'','修改','system:role:update',2,'',0,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (27,3,'','查询','system:role:read',2,'',0,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (28,4,NULL,'新增','system:menu:create',2,NULL,0,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (29,4,NULL,'删除','system:menu:delete',2,NULL,0,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (30,4,'','修改','system:menu:update',2,'',0,'',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (31,4,NULL,'查询','system:menu:read',2,NULL,0,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (48,NULL,'/tool','系统工具',NULL,0,'ant-design:tool-outlined',254,'',0,1,1,'2023-11-10 00:31:44.023393','2025-07-12 14:49:29.000000',0,1,NULL,NULL,1);
INSERT INTO `sys_menu` VALUES (51,48,'/tool/storage','存储管理','tool:storage:list',1,'ant-design:appstore-outlined',2,'tool/storage/index',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (52,51,NULL,'文件上传','upload:upload',2,'',0,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (53,51,NULL,'文件删除','tool:storage:delete',2,'',2,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (54,2,NULL,'修改密码','system:user:password',2,'',5,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (56,1,'/system/dict-type','字典管理','system:dict-type:list',1,'ant-design:book-outlined',4,'system/dict-type/index',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (57,56,NULL,'新增','system:dict-type:create',2,'',1,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (58,56,NULL,'更新','system:dict-type:update',2,'',2,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (59,56,NULL,'删除','system:dict-type:delete',2,'',3,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (60,56,NULL,'查询','system:dict-type:info',2,'',4,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (61,1,'/system/dept','部门管理','system:dept:list',1,'ant-design:deployment-unit-outlined',3,'system/dept/index',0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (62,61,NULL,'新增','system:dept:create',2,'',1,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (63,61,NULL,'更新','system:dept:update',2,'',2,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (64,61,NULL,'删除','system:dept:delete',2,'',3,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (65,61,NULL,'查询','system:dept:read',2,'',4,NULL,0,1,1,'2023-11-10 00:31:44.023393','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (86,1,'/param-config','参数配置','system:param-config:list',1,'ep:edit',255,'system/param-config/index',0,1,1,'2024-01-10 17:34:52.569663','2024-01-19 02:11:27.000000',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (87,86,NULL,'查询','system:param-config:read',2,'',255,NULL,0,1,1,'2024-01-10 17:39:20.983241','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (88,86,NULL,'新增','system:param-config:create',2,'',255,NULL,0,1,1,'2024-01-10 17:39:57.543510','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (89,86,NULL,'更新','system:param-config:update',2,'',255,NULL,0,1,1,'2024-01-10 17:40:27.355944','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (92,86,NULL,'删除','system:param-config:delete',2,'',255,NULL,0,1,1,'2024-01-10 17:57:32.059887','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (107,1,'system/dict-item/:id','字典项管理','system:dict-item:list',1,'ant-design:facebook-outlined',255,'system/dict-item/index',0,0,1,'2024-01-28 09:21:17.409532','2024-01-30 13:09:47.000000',0,1,'字典管理',NULL,NULL);
INSERT INTO `sys_menu` VALUES (108,107,NULL,'新增','system:dict-item:create',2,'',255,NULL,0,1,1,'2024-01-28 09:22:39.401758','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (109,107,NULL,'更新','system:dict-item:update',2,'',255,NULL,0,1,1,'2024-01-28 09:26:43.911886','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (110,107,NULL,'删除','system:dict-item:delete',2,'',255,NULL,0,1,1,'2024-01-28 09:27:28.535225','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (111,107,NULL,'查询','system:dict-item:info',2,'',255,NULL,0,1,1,'2024-01-28 09:27:43.894820','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (115,NULL,'netdisk','网盘管理',NULL,0,'ant-design:cloud-server-outlined',255,NULL,0,0,1,'2024-02-10 08:00:02.394616','2025-06-03 13:54:30.000000',0,1,NULL,NULL,1);
INSERT INTO `sys_menu` VALUES (116,115,'manage','文件管理','netdisk:manage:list',1,'',252,'netdisk/manage',0,1,1,'2024-02-10 08:03:49.837348','2024-02-10 09:34:41.000000',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (117,116,NULL,'创建文件或文件夹','netdisk:manage:create',2,'',255,NULL,0,1,1,'2024-02-10 08:40:22.317257','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (118,116,NULL,'查看文件','netdisk:manage:read',2,'',255,NULL,0,1,1,'2024-02-10 08:41:22.008015','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (119,116,NULL,'更新','netdisk:manage:update',2,'',255,NULL,0,1,1,'2024-02-10 08:41:50.691643','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (120,116,NULL,'删除','netdisk:manage:delete',2,'',255,NULL,0,1,1,'2024-02-10 08:42:09.480601','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (121,116,NULL,'获取文件上传token','netdisk:manage:token',2,'',255,NULL,0,1,1,'2024-02-10 08:42:57.688104','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (122,116,NULL,'添加文件备注','netdisk:manage:mark',2,'',255,NULL,0,1,1,'2024-02-10 08:43:40.117321','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (123,116,NULL,'下载文件','netdisk:manage:download',2,'',255,NULL,0,1,1,'2024-02-10 08:44:01.338984','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (124,116,NULL,'重命名文件或文件夹','netdisk:manage:rename',2,'',255,NULL,0,1,1,'2024-02-10 08:44:27.233379','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (125,116,NULL,'复制文件或文件夹','netdisk:manage:copy',2,'',255,NULL,0,1,1,'2024-02-10 08:44:44.725391','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (126,116,NULL,'剪切文件或文件夹','netdisk:manage:cut',2,'',255,NULL,0,1,1,'2024-02-10 08:45:21.660511','2024-02-28 22:05:52.102649',0,1,NULL,NULL,NULL);
INSERT INTO `sys_menu` VALUES (127,115,'overview','网盘概览','netdisk:overview:desc',1,'',254,'netdisk/overview',0,1,1,'2024-02-10 09:32:56.981190','2024-02-10 09:34:18.000000',0,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色标识',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `default` tinyint DEFAULT NULL,
  `create_by` int DEFAULT NULL COMMENT '创建者',
  `update_by` int DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `IDX_223de54d6badbe43a5490450c3` (`name`) USING BTREE,
  UNIQUE KEY `IDX_05edc0a51f41bb16b7d8137da9` (`value`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'admin','管理员','超级管理员',1,'2023-11-10 00:31:44.058463','2024-01-28 21:08:39.000000',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menus`
--

DROP TABLE IF EXISTS `sys_role_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menus` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `IDX_35ce749b04d57e226d059e0f63` (`role_id`),
  KEY `IDX_2b95fdc95b329d66c18f5baed6` (`menu_id`),
  CONSTRAINT `FK_2b95fdc95b329d66c18f5baed6d` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_35ce749b04d57e226d059e0f633` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menus`
--

LOCK TABLES `sys_role_menus` WRITE;
/*!40000 ALTER TABLE `sys_role_menus` DISABLE KEYS */;
INSERT INTO `sys_role_menus` VALUES (1,1);
INSERT INTO `sys_role_menus` VALUES (1,2);
INSERT INTO `sys_role_menus` VALUES (1,3);
INSERT INTO `sys_role_menus` VALUES (1,4);
INSERT INTO `sys_role_menus` VALUES (1,20);
INSERT INTO `sys_role_menus` VALUES (1,21);
INSERT INTO `sys_role_menus` VALUES (1,22);
INSERT INTO `sys_role_menus` VALUES (1,23);
INSERT INTO `sys_role_menus` VALUES (1,24);
INSERT INTO `sys_role_menus` VALUES (1,25);
INSERT INTO `sys_role_menus` VALUES (1,26);
INSERT INTO `sys_role_menus` VALUES (1,27);
INSERT INTO `sys_role_menus` VALUES (1,28);
INSERT INTO `sys_role_menus` VALUES (1,29);
INSERT INTO `sys_role_menus` VALUES (1,30);
INSERT INTO `sys_role_menus` VALUES (1,31);
INSERT INTO `sys_role_menus` VALUES (1,48);
INSERT INTO `sys_role_menus` VALUES (1,51);
INSERT INTO `sys_role_menus` VALUES (1,52);
INSERT INTO `sys_role_menus` VALUES (1,53);
INSERT INTO `sys_role_menus` VALUES (1,54);
INSERT INTO `sys_role_menus` VALUES (1,56);
INSERT INTO `sys_role_menus` VALUES (1,57);
INSERT INTO `sys_role_menus` VALUES (1,58);
INSERT INTO `sys_role_menus` VALUES (1,59);
INSERT INTO `sys_role_menus` VALUES (1,60);
INSERT INTO `sys_role_menus` VALUES (1,61);
INSERT INTO `sys_role_menus` VALUES (1,62);
INSERT INTO `sys_role_menus` VALUES (1,63);
INSERT INTO `sys_role_menus` VALUES (1,64);
INSERT INTO `sys_role_menus` VALUES (1,65);
INSERT INTO `sys_role_menus` VALUES (1,86);
INSERT INTO `sys_role_menus` VALUES (1,87);
INSERT INTO `sys_role_menus` VALUES (1,88);
INSERT INTO `sys_role_menus` VALUES (1,89);
INSERT INTO `sys_role_menus` VALUES (1,92);
INSERT INTO `sys_role_menus` VALUES (1,107);
INSERT INTO `sys_role_menus` VALUES (1,108);
INSERT INTO `sys_role_menus` VALUES (1,109);
INSERT INTO `sys_role_menus` VALUES (1,110);
INSERT INTO `sys_role_menus` VALUES (1,111);
/*!40000 ALTER TABLE `sys_role_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_task`
--

DROP TABLE IF EXISTS `sys_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `limit` int DEFAULT '0',
  `cron` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `every` int DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `job_opts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `IDX_ef8e5ab5ef2fe0ddb1428439ef` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_task`
--

LOCK TABLES `sys_task` WRITE;
/*!40000 ALTER TABLE `sys_task` DISABLE KEYS */;
INSERT INTO `sys_task` VALUES (2,'定时清空登录日志','LogClearJob.clearLoginLog',0,0,NULL,NULL,0,'0 0 3 ? * 1',0,'','{\"count\":1,\"key\":\"__default__:2:::0 0 3 ? * 1\",\"cron\":\"0 0 3 ? * 1\",\"jobId\":2}','定时清空登录日志','2023-11-10 00:31:44.197779','2025-02-18 16:36:48.000000');
INSERT INTO `sys_task` VALUES (3,'定时清空任务日志','LogClearJob.clearTaskLog',0,0,NULL,NULL,0,'0 0 3 ? * 1',0,'','{\"count\":1,\"key\":\"__default__:3:::0 0 3 ? * 1\",\"cron\":\"0 0 3 ? * 1\",\"jobId\":3}','定时清空任务日志','2023-11-10 00:31:44.197779','2025-05-06 11:18:27.000000');
INSERT INTO `sys_task` VALUES (4,'访问百度首页','HttpRequestJob.handle',0,0,NULL,NULL,1,'* * * * * ?',NULL,'{\"url\":\"https://www.baidu.com\",\"method\":\"get\"}',NULL,'访问百度首页','2023-11-10 00:31:44.197779','2023-11-10 00:31:44.206935');
INSERT INTO `sys_task` VALUES (5,'发送邮箱','EmailJob.send',0,0,NULL,NULL,-1,'0 0 0 1 * ?',NULL,'{\"subject\":\"这是标题\",\"to\":\"zeyu57@163.com\",\"content\":\"这是正文\"}',NULL,'每月发送邮箱','2023-11-10 00:31:44.197779','2023-11-10 00:31:44.206935');
/*!40000 ALTER TABLE `sys_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_task_log`
--

DROP TABLE IF EXISTS `sys_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_task_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `consume_time` int DEFAULT '0',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_f4d9c36052fdb188ff5c089454b` (`task_id`),
  CONSTRAINT `FK_f4d9c36052fdb188ff5c089454b` FOREIGN KEY (`task_id`) REFERENCES `sys_task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_task_log`
--

LOCK TABLES `sys_task_log` WRITE;
/*!40000 ALTER TABLE `sys_task_log` DISABLE KEYS */;
INSERT INTO `sys_task_log` VALUES (1,3,1,NULL,0,'2025-03-24 03:02:20.146984','2025-03-24 03:02:20.146984');
/*!40000 ALTER TABLE `sys_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `psalt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint DEFAULT '1',
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `IDX_9e7164b2f1ea1348bc0eb0a7da` (`username`) USING BTREE,
  KEY `FK_96bde34263e2ae3b46f011124ac` (`dept_id`),
  CONSTRAINT `FK_96bde34263e2ae3b46f011124ac` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','a11571e778ee85e82caae2d980952546','https://thirdqq.qlogo.cn/g?b=qq&s=100&nk=1743369777','xxxxxx@qq.com','10086','管理员','xQYCspvFb8cAW6GG1pOoUGTLqsuUSO3d',1,'1743369777','2023-11-10 00:31:44.104382','2025-07-12 14:53:04.000000','bqy',1);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_roles`
--

DROP TABLE IF EXISTS `sys_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_96311d970191a044ec048011f4` (`user_id`),
  KEY `IDX_6d61c5b3f76a3419d93a421669` (`role_id`),
  CONSTRAINT `FK_6d61c5b3f76a3419d93a4216695` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FK_96311d970191a044ec048011f44` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_roles`
--

LOCK TABLES `sys_user_roles` WRITE;
/*!40000 ALTER TABLE `sys_user_roles` DISABLE KEYS */;
INSERT INTO `sys_user_roles` VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_comment`
--

DROP TABLE IF EXISTS `test_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_comment` (
  `id` int DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_comment`
--

LOCK TABLES `test_comment` WRITE;
/*!40000 ALTER TABLE `test_comment` DISABLE KEYS */;
INSERT INTO `test_comment` VALUES (1,'真是一次愉快的购物体验');
INSERT INTO `test_comment` VALUES (2,'这里卖假货');
INSERT INTO `test_comment` VALUES (3,'商家态度好');
INSERT INTO `test_comment` VALUES (4,'优惠真大');
INSERT INTO `test_comment` VALUES (1,'送货真慢');
/*!40000 ALTER TABLE `test_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_storage`
--

DROP TABLE IF EXISTS `tool_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_storage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名',
  `fileName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实文件名',
  `ext_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_storage`
--

LOCK TABLES `tool_storage` WRITE;
/*!40000 ALTER TABLE `tool_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access_tokens`
--

DROP TABLE IF EXISTS `user_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_access_tokens` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime NOT NULL COMMENT '令牌过期时间',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '令牌创建时间',
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e9d9d0c303432e4e5e48c1c3e90` (`user_id`),
  CONSTRAINT `FK_e9d9d0c303432e4e5e48c1c3e90` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access_tokens`
--

LOCK TABLES `user_access_tokens` WRITE;
/*!40000 ALTER TABLE `user_access_tokens` DISABLE KEYS */;
INSERT INTO `user_access_tokens` VALUES ('0c73b4b6-2abe-4d85-84cc-5f801c2a7934','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTIzMDg0MjUsImV4cCI6MTc1MjM5NDgyNX0.aAcnogm5lfAY0ZTFVTIfKysyr5oPMSRXMEgYc7g_2LQ','2025-07-13 16:20:26','2025-07-12 16:20:25.539728',1);
INSERT INTO `user_access_tokens` VALUES ('1132de39-3f47-4c31-8791-f0591e42e27f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk5ODYzMjAsImV4cCI6MTc1MDA3MjcyMH0.kvFb_y0BiZjB9T14DTH48BcEUEq6pXjAQliQiFYei7M','2025-06-16 19:18:41','2025-06-15 19:18:40.683607',1);
INSERT INTO `user_access_tokens` VALUES ('21c552e7-bee7-40e0-bfaa-0ee61b7cc361','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTAwNzY3MTksImV4cCI6MTc1MDE2MzExOX0.FF7AGLsFMpfu4fHl3V5wmQ8ko4MC5rxAkhgW_Qdu9JA','2025-06-17 20:25:19','2025-06-16 20:25:19.271420',1);
INSERT INTO `user_access_tokens` VALUES ('2a76cca6-03e7-4074-8eb3-804d00661fa5','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk5OTY0MDYsImV4cCI6MTc1MDA4MjgwNn0.2AkQgOnMcMh2OG1O39tmdIu6g-KlpVT50Imjbi8c9Ls','2025-06-16 22:06:47','2025-06-15 22:06:46.686719',1);
INSERT INTO `user_access_tokens` VALUES ('2c685fb7-0d0d-4505-a77f-76f4cb42d777','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTAwNTE0NzMsImV4cCI6MTc1MDEzNzg3M30.b6HbiMrITN7eX2igGlqKqcdawqlUL4K5wqja6Ej-h2I','2025-06-17 13:24:34','2025-06-16 13:24:33.895327',1);
INSERT INTO `user_access_tokens` VALUES ('2d4b50e2-55e1-4e75-bb6d-4d24d6bba687','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk5NzkyNjgsImV4cCI6MTc1MDA2NTY2OH0.cs_2h-67Yiiat0GDqG39Wo2fBLft7K_BoKnnTt1ehG8','2025-06-16 17:21:08','2025-06-15 17:21:08.484071',1);
INSERT INTO `user_access_tokens` VALUES ('2d4d5aba-e36c-4025-bb27-8331accac35b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTAwNjcyNzUsImV4cCI6MTc1MDE1MzY3NX0.7kg4J7rWApjRvWx1GvwkJMulFVdfu3Dy6r2SS3qH83A','2025-06-17 17:47:55','2025-06-16 17:47:55.166997',1);
INSERT INTO `user_access_tokens` VALUES ('3647ae6e-fd62-473f-8a1d-4a5b9cc80c68','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk5ODUyMDQsImV4cCI6MTc1MDA3MTYwNH0.1g2WQGutww3BmPj43LnM3SX2hpLfifEzRTtPZ2McBZE','2025-06-16 19:00:05','2025-06-15 19:00:04.992687',1);
INSERT INTO `user_access_tokens` VALUES ('38865aad-5012-42c3-8f30-a7edbfdeb34e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk5NTI3MTMsImV4cCI6MTc1MDAzOTExM30.aNzogaIUCO3n1yC7uEVNGvAIe357dJRcoT22eMvGK3w','2025-06-16 09:58:33','2025-06-15 09:58:33.311296',1);
INSERT INTO `user_access_tokens` VALUES ('3cb25f85-1d47-494d-a712-938cacd1a600','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTE5NTUxNjUsImV4cCI6MTc1MjA0MTU2NX0.LNG4aeoQkrxko9BSmzaFSxNL1YDcRi-BWKbeMi43E8w','2025-07-09 14:12:46','2025-07-08 14:12:45.643075',1);
INSERT INTO `user_access_tokens` VALUES ('41aa76a7-4a34-4955-89ad-463e3e6e34f6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTEyNzY3NTIsImV4cCI6MTc1MTM2MzE1Mn0.EQlU4o54FSdvKgB0XpruEcyqYgY__JkHHUpozM0fcE8','2025-07-01 17:45:53','2025-06-30 17:45:52.621475',1);
INSERT INTO `user_access_tokens` VALUES ('4a870df5-4ece-4e0a-9ca7-9c6ff0be3730','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTE0MzgxMjQsImV4cCI6MTc1MTUyNDUyNH0.hSnFsPfiYgLYuya50uETfdxDBEhQeK-xc_E3ZDIqLFs','2025-07-03 14:35:25','2025-07-02 14:35:24.944754',1);
INSERT INTO `user_access_tokens` VALUES ('4c73447b-88eb-4788-8980-6ce8085efea0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk5OTUyNTcsImV4cCI6MTc1MDA4MTY1N30.qKuqYmFigAZ4R_eGnw0w1hL4E-gyeWgRcT_1zH3V1Dw','2025-06-16 21:47:38','2025-06-15 21:47:37.815901',1);
INSERT INTO `user_access_tokens` VALUES ('53c20c5e-4e8c-40f8-a1ed-28eb1391470a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk4ODM2ODksImV4cCI6MTc0OTk3MDA4OX0.UUXxHUp4uiqGi57SZ0Yqj3_PCzZyUcdxxnp6yT3a4lU','2025-06-15 14:48:10','2025-06-14 14:48:09.662992',1);
INSERT INTO `user_access_tokens` VALUES ('56d57ee0-9630-48e8-a4cc-898f4dba6a15','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTA2NTUzNTgsImV4cCI6MTc1MDc0MTc1OH0.QbTeg73wOENuN9wkJGQictz1FC7Y_PaGpDEvgoQDRVo','2025-06-24 13:09:18','2025-06-23 13:09:18.229496',1);
INSERT INTO `user_access_tokens` VALUES ('56e72d0f-ecfa-4647-b414-2488830f2ac3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTIzMDI5MjcsImV4cCI6MTc1MjM4OTMyN30.Wu2j3pD2N_X8NSa3J-NLI77ddhEvmgTt5S123mqBxmI','2025-07-13 14:48:48','2025-07-12 14:48:47.902882',1);
INSERT INTO `user_access_tokens` VALUES ('5d07cbf4-a0c1-462d-9e3e-563b92726051','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTAyMTc3NTgsImV4cCI6MTc1MDMwNDE1OH0._S4SA7vnukFYhHLxymgIDgySrcbnYMOaBx-5TQ-9xy0','2025-06-19 11:35:58','2025-06-18 11:35:58.450177',1);
INSERT INTO `user_access_tokens` VALUES ('61ce1658-64c2-48c3-a290-c03497418cb4','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTAwNjczNzMsImV4cCI6MTc1MDE1Mzc3M30.hawbRV2NDjHN2tV7GJkJ2Mq_lZrLtH2rzjqLm2jzMco','2025-06-17 17:49:34','2025-06-16 17:49:33.929354',1);
INSERT INTO `user_access_tokens` VALUES ('69b3cae4-30ad-48ef-b37a-0a1d56e8f844','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTIzMDg3MjcsImV4cCI6MTc1MjM5NTEyN30.TqraYuGjw2xFRbrAsdvtolJW6v2fUUTbLfjCA14OxlI','2025-07-13 16:25:28','2025-07-12 16:25:27.913696',1);
INSERT INTO `user_access_tokens` VALUES ('6d0eeef8-b5b4-45e8-bede-23fa6b18e662','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk4ODMxNzIsImV4cCI6MTc0OTk2OTU3Mn0.IBKV5O5lJWGtBcb_E9E6vAFX2S7Zb-qEL8d3i7J8v9U','2025-06-15 14:39:32','2025-06-14 14:39:32.442650',1);
INSERT INTO `user_access_tokens` VALUES ('6fd3b415-c0b6-4081-af73-1d1fea020e15','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTEwMzczNTYsImV4cCI6MTc1MTEyMzc1Nn0.k1rg_jiU_35yvJhlU6ovKDBiXd3SzOV2covqrbiRIHA','2025-06-28 23:15:57','2025-06-27 23:15:56.703450',1);
INSERT INTO `user_access_tokens` VALUES ('70c32604-4a97-41ec-8255-848ba3eebded','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTIzMDY4MjEsImV4cCI6MTc1MjM5MzIyMX0.QYfRLKTQS8x8l-PIzEWuBe6lM5P3ftbUCHEA2R4NgkY','2025-07-13 15:53:41','2025-07-12 15:53:41.480582',1);
INSERT INTO `user_access_tokens` VALUES ('72702eba-78ba-41c6-8cbc-b503d8f5cfca','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTA4Mjc2OTksImV4cCI6MTc1MDkxNDA5OX0.5VRZoyKeKXs-KGB7BASUySquShFvIDz946hJbFoesH8','2025-06-26 13:01:39','2025-06-25 13:01:39.036062',1);
INSERT INTO `user_access_tokens` VALUES ('807c7a9e-34af-4d8d-84d8-7c2cf7350ebc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk5ODQwMzAsImV4cCI6MTc1MDA3MDQzMH0.FxUxw_E9RZTlEn2aljycZD03OcArMF3-QUAp4CE4QJU','2025-06-16 18:40:31','2025-06-15 18:40:30.752218',1);
INSERT INTO `user_access_tokens` VALUES ('808002ac-337c-4ca3-a3d8-2927d4a90c9d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTE0MjQzMzMsImV4cCI6MTc1MTUxMDczM30.QjnukJpwMq3MghurhltjwULXV_cL2pU5KTr-gRFHDAQ','2025-07-03 10:45:33','2025-07-02 10:45:33.487274',1);
INSERT INTO `user_access_tokens` VALUES ('8c04fd26-b3df-4a77-82d4-a5a43351c522','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTIzMDkwMjAsImV4cCI6MTc1MjM5NTQyMH0.183bd3xcfytKKdpP36tdlbAagyhDOjw0w2a-L3iyqX0','2025-07-13 16:30:20','2025-07-12 16:30:20.099010',1);
INSERT INTO `user_access_tokens` VALUES ('a657c80f-a392-4f2c-af58-94af08a6569d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTAxMzMwODAsImV4cCI6MTc1MDIxOTQ4MH0.7CAXsH-kpjwFITr0m5jTQQyjP29YXSC2voHH8EcKOj4','2025-06-18 12:04:41','2025-06-17 12:04:40.711873',1);
INSERT INTO `user_access_tokens` VALUES ('b8886137-555e-4c6c-90fe-69277e9bb4af','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDk5ODMyMzAsImV4cCI6MTc1MDA2OTYzMH0.p5O7KOIneHnrpOBd6KghOw404b3VzqkDpyGzjU_4IPw','2025-06-16 18:27:11','2025-06-15 18:27:10.526437',1);
INSERT INTO `user_access_tokens` VALUES ('d1140167-1c38-48ad-90fd-554583988993','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTIzMDg1OTAsImV4cCI6MTc1MjM5NDk5MH0.4ksILTL03lbNbQrZZxbkfvn5iWuFXMiqlbULOQ_k1Sw','2025-07-13 16:23:11','2025-07-12 16:23:10.679735',1);
INSERT INTO `user_access_tokens` VALUES ('e744548b-8d44-42ae-b9d7-659aaf612db7','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NTAyNDkzODEsImV4cCI6MTc1MDMzNTc4MX0.0MJmbAi6yRuZVYGXLWHnWgT6ezTETvDOHADVsD_VvUA','2025-06-19 20:23:02','2025-06-18 20:23:01.806179',1);
/*!40000 ALTER TABLE `user_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_refresh_tokens`
--

DROP TABLE IF EXISTS `user_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_refresh_tokens` (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime NOT NULL COMMENT '令牌过期时间',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '令牌创建时间',
  `accessTokenId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_1dfd080c2abf42198691b60ae3` (`accessTokenId`),
  CONSTRAINT `FK_1dfd080c2abf42198691b60ae39` FOREIGN KEY (`accessTokenId`) REFERENCES `user_access_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_refresh_tokens`
--

LOCK TABLES `user_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `user_refresh_tokens` DISABLE KEYS */;
INSERT INTO `user_refresh_tokens` VALUES ('0192968f-2369-4c24-af0b-21ad050bc98c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiMW5WWnVwaXNyaGRKdjVzU2xDVnYtIiwiaWF0IjoxNzUwMDUxNDczLCJleHAiOjE3NTAxMzc4NzN9.bP8Yyf355yBLIWnbid0fQKRd8a0j4tzQSrmAdHsNJE8','2025-07-16 13:24:34','2025-06-16 13:24:33.904366','2c685fb7-0d0d-4505-a77f-76f4cb42d777');
INSERT INTO `user_refresh_tokens` VALUES ('1133a3be-8ebc-47f3-bc3d-86b9e9d13413','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiU29ISGgwSUZzNkd1Y1dwV21YR0pFIiwiaWF0IjoxNzUxMjc2NzUyLCJleHAiOjE3NTEzNjMxNTJ9.Tn78Nmo065P-gH_c-cJpvEVMeDpi4g7R3-sAq4bJxk4','2025-07-30 17:45:53','2025-06-30 17:45:52.630207','41aa76a7-4a34-4955-89ad-463e3e6e34f6');
INSERT INTO `user_refresh_tokens` VALUES ('187c8d33-3729-4ba7-a6ef-9e528756e9b9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoic0tUT0FfY3lVTUxadGk2clVyLUxkIiwiaWF0IjoxNzUyMzA4NDI1LCJleHAiOjE3NTIzOTQ4MjV9.B8aVbxetP6bfb3KL7f4KcCdpuHCBGqjoXfoOuH2M7Us','2025-08-11 16:20:26','2025-07-12 16:20:25.545184','0c73b4b6-2abe-4d85-84cc-5f801c2a7934');
INSERT INTO `user_refresh_tokens` VALUES ('1e850b34-dc3e-4e9c-9dd0-ef7d6e9c3bed','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiTW9pRHhHNWxyNi1vWDctUVNBVVFvIiwiaWF0IjoxNzQ5OTg1MjA0LCJleHAiOjE3NTAwNzE2MDR9.fHCBmrDThBMmXh2A6DwU0e2P8uuZTyoT--Yz2stk0rA','2025-07-15 19:00:05','2025-06-15 19:00:05.001576','3647ae6e-fd62-473f-8a1d-4a5b9cc80c68');
INSERT INTO `user_refresh_tokens` VALUES ('21918a6e-0c44-41aa-9909-ddcd48bee6d2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiM1ZMNnFqY3U2YVpGNTdZLTg2SjhfIiwiaWF0IjoxNzQ5OTg2MzIwLCJleHAiOjE3NTAwNzI3MjB9.TIircycyLaKPEnokeJrediSb_eZuqxa967LMpMbh0DI','2025-07-15 19:18:41','2025-06-15 19:18:40.691730','1132de39-3f47-4c31-8791-f0591e42e27f');
INSERT INTO `user_refresh_tokens` VALUES ('37ffaa3a-6887-4310-9865-8ff8b1677403','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiU3c3RjNrUHFYWGpFUzZCODFqQXdLIiwiaWF0IjoxNzUwODI3Njk5LCJleHAiOjE3NTA5MTQwOTl9.k4Yzf4NA8bEJ_FmTedgeUVQiY6tq0ln_YV0-8S15T5M','2025-07-25 13:01:39','2025-06-25 13:01:39.044046','72702eba-78ba-41c6-8cbc-b503d8f5cfca');
INSERT INTO `user_refresh_tokens` VALUES ('39351f0b-ccc5-407f-ad4d-abe705513fbb','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoid29aZzhhV0NKOE9WanNJc0g0SkdjIiwiaWF0IjoxNzQ5ODgzMTcyLCJleHAiOjE3NDk5Njk1NzJ9.7jUCqhP77lQcdZ7sIMI3p1qS0M6EILT6tUWnaYYEj-o','2025-07-14 14:39:32','2025-06-14 14:39:32.460951','6d0eeef8-b5b4-45e8-bede-23fa6b18e662');
INSERT INTO `user_refresh_tokens` VALUES ('3a934abe-132f-41e6-944f-bd9c8f4d808c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiMjJBZWd3MlZncWlUSm05V0FmN2w0IiwiaWF0IjoxNzUyMzAyOTI3LCJleHAiOjE3NTIzODkzMjd9.bihadP5QVoAp8idqoRKkiXzjP884ZT1tHAbsYr2I_Js','2025-08-11 14:48:48','2025-07-12 14:48:47.911924','56e72d0f-ecfa-4647-b414-2488830f2ac3');
INSERT INTO `user_refresh_tokens` VALUES ('3cf11e59-9eea-4a0b-8c61-9e2f46e6198f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoibFBNWUc4dzhxalptVG52Wk9pUVJxIiwiaWF0IjoxNzQ5OTgzMjMwLCJleHAiOjE3NTAwNjk2MzB9.k2VImxOhg-HTwoaP-I_Yh0_LbfqWYzn6MYBX-UDW72g','2025-07-15 18:27:11','2025-06-15 18:27:10.534863','b8886137-555e-4c6c-90fe-69277e9bb4af');
INSERT INTO `user_refresh_tokens` VALUES ('4fc55113-2cc6-44fd-a874-7ff094edd6e9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiTnJFRHlBd3RBWDJQTS0xMEFqVHVqIiwiaWF0IjoxNzUyMzA4NzI3LCJleHAiOjE3NTIzOTUxMjd9.2ZmQKNOFibDKPVBuwtsXhWVWFH5Tm50U_C80Uodonjs','2025-08-11 16:25:28','2025-07-12 16:25:27.919269','69b3cae4-30ad-48ef-b37a-0a1d56e8f844');
INSERT INTO `user_refresh_tokens` VALUES ('593ffdc7-4e6b-41df-ae61-25fbd4f475fd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiSjRoNmRmRnlRMThHalA4c2F5RVU0IiwiaWF0IjoxNzUwMjQ5MzgxLCJleHAiOjE3NTAzMzU3ODF9.Uz5rq4G49zfKd6R_JQ17D9uXTzj02iTqM2nW8Fhlz4M','2025-07-18 20:23:02','2025-06-18 20:23:01.816421','e744548b-8d44-42ae-b9d7-659aaf612db7');
INSERT INTO `user_refresh_tokens` VALUES ('5d38f266-afb3-4044-aa93-8ce1beef853b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiNXJUSmxGOXpydHoyZDlyeHZxampzIiwiaWF0IjoxNzUwMDY3MzczLCJleHAiOjE3NTAxNTM3NzN9.y3BaeSzAxVzQdSwrKONuWu24z2QDiSxQ8VrcdvJp74c','2025-07-16 17:49:34','2025-06-16 17:49:33.934627','61ce1658-64c2-48c3-a290-c03497418cb4');
INSERT INTO `user_refresh_tokens` VALUES ('63fad77c-a4cf-4f5d-b23b-5de030a106b4','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiN18weUhZTUpQSy1Ib0NsT0pIZEpRIiwiaWF0IjoxNzUwMTMzMDgwLCJleHAiOjE3NTAyMTk0ODB9.dALnR1Xdd62R9LxXE4XVyY63sJ_Lnr794pRPTlu_I0E','2025-07-17 12:04:41','2025-06-17 12:04:40.721758','a657c80f-a392-4f2c-af58-94af08a6569d');
INSERT INTO `user_refresh_tokens` VALUES ('6c1925c0-b7ab-40e2-8dd9-eeb27b18f381','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiZE41aXNQR2FRQW1YQVBpZVJrcGZrIiwiaWF0IjoxNzUxNDM4MTI0LCJleHAiOjE3NTE1MjQ1MjR9.2Eq9lYW2thrGwo324tzCpR4ntQgAZh6xMzo3KJs2fjU','2025-08-01 14:35:25','2025-07-02 14:35:24.952860','4a870df5-4ece-4e0a-9ca7-9c6ff0be3730');
INSERT INTO `user_refresh_tokens` VALUES ('70848a7a-c008-4fd6-bbd6-fba92b02ed0e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiZlJkZ3NUU2ExdmdzdWZ1V1RBTDBkIiwiaWF0IjoxNzUwMDY3Mjc1LCJleHAiOjE3NTAxNTM2NzV9.3QP66iZX6tVI9IERXtt8-Meob3xB0xEyyJ8hOzvWMQQ','2025-07-16 17:47:55','2025-06-16 17:47:55.176926','2d4d5aba-e36c-4025-bb27-8331accac35b');
INSERT INTO `user_refresh_tokens` VALUES ('788ec979-4b9b-4bfd-9182-bce40050f189','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiekhrcUZDZTBBRkNBWDZXdHNRNTNpIiwiaWF0IjoxNzUwMjE3NzU4LCJleHAiOjE3NTAzMDQxNTh9.395klTDoauNpLPx2JcVPuA7kh6vI47dPew1Qy3bXBIM','2025-07-18 11:35:58','2025-06-18 11:35:58.459288','5d07cbf4-a0c1-462d-9e3e-563b92726051');
INSERT INTO `user_refresh_tokens` VALUES ('7edc06ed-2e3e-4c43-b951-4ff49113e816','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiczUtU09BY1gxV2psdFhzY2tscENXIiwiaWF0IjoxNzQ5OTg0MDMwLCJleHAiOjE3NTAwNzA0MzB9.exPJNPRah4YXceA0B8H-FCc-DsQUB9RBz-NynYYmLvk','2025-07-15 18:40:31','2025-06-15 18:40:30.760342','807c7a9e-34af-4d8d-84d8-7c2cf7350ebc');
INSERT INTO `user_refresh_tokens` VALUES ('813bbe76-c9aa-485e-8314-0a48561c9e55','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiQ0tNLTlGNU5mSFRNQWFFQ2hPMmJXIiwiaWF0IjoxNzQ5OTk2NDA2LCJleHAiOjE3NTAwODI4MDZ9.RzDSpgBznVobGivoQHrsfRJOV7bimRLa0pzCH0yC1zk','2025-07-15 22:06:47','2025-06-15 22:06:46.697830','2a76cca6-03e7-4074-8eb3-804d00661fa5');
INSERT INTO `user_refresh_tokens` VALUES ('84c03e85-40bd-4ff6-a56b-d5c53ad18d52','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiZWNIX0NDSWw3N3YwQmM0eWpoTEZXIiwiaWF0IjoxNzQ5ODgzNjg5LCJleHAiOjE3NDk5NzAwODl9.RN6NP2EBFkph7UO9Jm_RibDaULzyR0BE6ITNWnCLJzw','2025-07-14 14:48:10','2025-06-14 14:48:09.673442','53c20c5e-4e8c-40f8-a1ed-28eb1391470a');
INSERT INTO `user_refresh_tokens` VALUES ('961a838f-d763-465a-9e61-256de21dfbf3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiX1ZCMVEwOURyeXFFMkF2NnRCbVpDIiwiaWF0IjoxNzUxNDI0MzMzLCJleHAiOjE3NTE1MTA3MzN9.xd7Av6dtk8_ogWWRj2me_8WoCWAnVeKhYxSrTIJqShI','2025-08-01 10:45:33','2025-07-02 10:45:33.495997','808002ac-337c-4ca3-a3d8-2927d4a90c9d');
INSERT INTO `user_refresh_tokens` VALUES ('9cdab2b9-3944-4393-bb78-664397399e1c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiSzlpYnZaTUljdF84QjJnMi1tRk5fIiwiaWF0IjoxNzUxMDM3MzU2LCJleHAiOjE3NTExMjM3NTZ9.2_PLMatylF9i12NJ3GltZJM1t7zTixoADQpbsuW63Ro','2025-07-27 23:15:57','2025-06-27 23:15:56.711006','6fd3b415-c0b6-4081-af73-1d1fea020e15');
INSERT INTO `user_refresh_tokens` VALUES ('a6a4d2a6-f46b-4f7c-a4c1-595d91b7dc49','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiRDhxRXVVbFN0NG5wMHRIY1hlODdxIiwiaWF0IjoxNzUxOTU1MTY1LCJleHAiOjE3NTIwNDE1NjV9.3A2Zv2_fnua8vvdtnTUOB749z5jhesYF09ex2mfZ6q4','2025-08-07 14:12:46','2025-07-08 14:12:45.649620','3cb25f85-1d47-494d-a712-938cacd1a600');
INSERT INTO `user_refresh_tokens` VALUES ('b3ca4fe1-ba72-479e-93d5-096c72fcb2dc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiN1RTTEFxVC05eGtxcS1xY2JZUTNMIiwiaWF0IjoxNzUyMzA2ODIxLCJleHAiOjE3NTIzOTMyMjF9.D-E28mTDWb9VunG8LgujDNo0uvuLKnqqaSg427om19Y','2025-08-11 15:53:41','2025-07-12 15:53:41.488459','70c32604-4a97-41ec-8255-848ba3eebded');
INSERT INTO `user_refresh_tokens` VALUES ('b85fc13d-efbe-4dc3-a645-065e7e7a5277','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiQ0xsOWI1dHA1YllJV0JPRXRsMEktIiwiaWF0IjoxNzUwNjU1MzU4LCJleHAiOjE3NTA3NDE3NTh9.NFSOSAKPASEpju73ejnCv2w-UoEDJEeIVU80YnybWxQ','2025-07-23 13:09:18','2025-06-23 13:09:18.247792','56d57ee0-9630-48e8-a4cc-898f4dba6a15');
INSERT INTO `user_refresh_tokens` VALUES ('c2d57246-2d95-4edd-b19f-9c0e21386226','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoieVVYbVRFeHJKdEQzdzhqM3NBMmhpIiwiaWF0IjoxNzQ5OTc5MjY4LCJleHAiOjE3NTAwNjU2Njh9.JehuUh7C7BNsiL3c5bKj1nCKHYaxtlbyzZM-c91SYoQ','2025-07-15 17:21:08','2025-06-15 17:21:08.490089','2d4b50e2-55e1-4e75-bb6d-4d24d6bba687');
INSERT INTO `user_refresh_tokens` VALUES ('c3dc0c52-c457-4f4e-bb97-c1a22319a478','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiaWx4S0xQZndEbElJMDl0WmJxRXJ1IiwiaWF0IjoxNzUyMzA5MDIwLCJleHAiOjE3NTIzOTU0MjB9.CHGievvwCjaRb9els1dATlNkVF3n7YbfZL3uQN5Mhhc','2025-08-11 16:30:20','2025-07-12 16:30:20.105104','8c04fd26-b3df-4a77-82d4-a5a43351c522');
INSERT INTO `user_refresh_tokens` VALUES ('d7a102c1-cd5f-4b60-9b08-75a811f2478c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiemNwWjBHY1ZtYkxHSE5UZllNaTZyIiwiaWF0IjoxNzQ5OTUyNzEzLCJleHAiOjE3NTAwMzkxMTN9.XzwiNEOpa22rO0EMBqKP1pgx6exu5YM3xicXsgYJmTg','2025-07-15 09:58:33','2025-06-15 09:58:33.330361','38865aad-5012-42c3-8f30-a7edbfdeb34e');
INSERT INTO `user_refresh_tokens` VALUES ('d846fdf0-3a37-4578-9b66-d373b4fe36b2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiMmowUmpCakxkbTY4ZldfWkd2anRRIiwiaWF0IjoxNzQ5OTk1MjU3LCJleHAiOjE3NTAwODE2NTd9.hgzWCtClJmACnBymSWM2VYshY98phKJcv5tqWLirvRQ','2025-07-15 21:47:38','2025-06-15 21:47:37.824342','4c73447b-88eb-4788-8980-6ce8085efea0');
INSERT INTO `user_refresh_tokens` VALUES ('d92be862-9f0c-43d1-8bcb-215fd470093a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiOGE0eHZEeEExMW5ocVZlVUFDdVRPIiwiaWF0IjoxNzUyMzA4NTkwLCJleHAiOjE3NTIzOTQ5OTB9.yMkk0oTTcS_I7QJCJyTutTrbRnYWpxKvAv8N2cx_wcs','2025-08-11 16:23:11','2025-07-12 16:23:10.688519','d1140167-1c38-48ad-90fd-554583988993');
INSERT INTO `user_refresh_tokens` VALUES ('dd33f6d8-f6d8-46e9-9e78-70876661cc87','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiaEtXUjAwSkVqbVVVb19MT1hiTzZQIiwiaWF0IjoxNzUwMDc2NzE5LCJleHAiOjE3NTAxNjMxMTl9.WQI_Rs9tYa7dVbx9ZQDvyEXWK0d6JRZ6fTNzuwL4h4Y','2025-07-16 20:25:19','2025-06-16 20:25:19.282258','21c552e7-bee7-40e0-bfaa-0ee61b7cc361');
/*!40000 ALTER TABLE `user_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-12 16:34:08
