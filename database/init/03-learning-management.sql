-- 学习管理模块初始化脚本
-- 设置正确的字符集
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET CHARACTER SET utf8mb4;

USE wechat_education;

-- 插入测试学习计划
INSERT IGNORE INTO study_plans (plan_id, user_phone, title, description, start_date, end_date, status, progress_percent, plan_type, priority, created_at, updated_at) VALUES
('100000001', '13800138002', '前端开发学习计划', '系统学习Vue.js、React等前端技术栈，掌握现代前端开发技能', '2025-06-01', '2025-08-31', 'active', 65, '前端开发', 'high', NOW(), NOW()),
('100000002', '13800138002', '算法练习计划', '通过LeetCode等平台提升算法和数据结构能力', '2025-06-15', '2025-07-15', 'active', 40, '算法练习', 'medium', NOW(), NOW()),
('100000003', '13800138003', '软件工程期末复习', '准备软件工程课程期末考试，系统复习相关知识点', '2025-06-10', '2025-06-30', 'active', 80, '考试复习', 'high', NOW(), NOW());

-- 插入测试学习任务
INSERT IGNORE INTO study_tasks (task_id, plan_id, title, description, deadline, priority, status, estimated_hours, actual_hours, tags, created_at, updated_at) VALUES
('200000001', '100000001', '学习Vue.js基础', '掌握Vue.js组件、指令、生命周期等基础概念', '2025-06-15', 'high', 'completed', 20, 22, '["Vue.js", "前端", "组件"]', NOW(), NOW()),
('200000002', '100000001', '实践Vue项目', '开发一个完整的Vue.js单页应用项目', '2025-07-01', 'high', 'in_progress', 40, 15, '["Vue.js", "实践", "项目"]', NOW(), NOW()),
('200000003', '100000001', '学习React基础', '掌握React组件、Hooks、状态管理等核心概念', '2025-07-15', 'medium', 'pending', 25, 0, '["React", "前端", "Hooks"]', NOW(), NOW()),
('200000004', '100000002', '数组和字符串算法', '练习数组和字符串相关的经典算法题目', '2025-06-25', 'high', 'in_progress', 15, 8, '["算法", "数组", "字符串"]', NOW(), NOW()),
('200000005', '100000002', '链表和树算法', '掌握链表和二叉树的常见操作和遍历方法', '2025-07-05', 'medium', 'pending', 20, 0, '["算法", "链表", "二叉树"]', NOW(), NOW()),
('200000006', '100000003', '软件开发生命周期', '复习软件开发各阶段的理论知识和实践方法', '2025-06-20', 'high', 'completed', 8, 9, '["软件工程", "SDLC", "理论"]', NOW(), NOW()),
('200000007', '100000003', '设计模式复习', '复习常用的设计模式及其应用场景', '2025-06-25', 'medium', 'in_progress', 12, 5, '["设计模式", "软件工程"]', NOW(), NOW());

-- 插入子任务
INSERT IGNORE INTO sub_tasks (task_id, title, completed, sort_order, created_at, updated_at) VALUES
('200000001', 'Vue实例和模板语法', true, 1, NOW(), NOW()),
('200000001', '组件基础与通信', true, 2, NOW(), NOW()),
('200000001', '指令系统学习', true, 3, NOW(), NOW()),
('200000001', '生命周期钩子', false, 4, NOW(), NOW()),
('200000002', '项目初始化与环境搭建', true, 1, NOW(), NOW()),
('200000002', '路由配置与页面结构', true, 2, NOW(), NOW()),
('200000002', '状态管理（Vuex）', false, 3, NOW(), NOW()),
('200000002', 'API接口集成', false, 4, NOW(), NOW()),
('200000002', '项目部署与优化', false, 5, NOW(), NOW()),
('200000004', '双指针技巧', true, 1, NOW(), NOW()),
('200000004', '滑动窗口算法', true, 2, NOW(), NOW()),
('200000004', '字符串匹配算法', false, 3, NOW(), NOW()),
('200000006', '需求分析阶段', true, 1, NOW(), NOW()),
('200000006', '系统设计阶段', true, 2, NOW(), NOW()),
('200000006', '编码实现阶段', true, 3, NOW(), NOW()),
('200000006', '测试阶段', false, 4, NOW(), NOW()),
('200000007', '单例模式', true, 1, NOW(), NOW()),
('200000007', '工厂模式', true, 2, NOW(), NOW()),
('200000007', '观察者模式', false, 3, NOW(), NOW());

-- 插入学习记录
INSERT IGNORE INTO study_records (user_phone, plan_id, task_id, resource_id, activity_type, duration_minutes, experience_gained, study_date, created_at) VALUES
('13800138002', '100000001', '200000001', '123456789', 'resource_view', 120, 10, '2025-06-20', NOW()),
('13800138002', '100000001', '200000001', NULL, 'task_complete', 180, 25, '2025-06-20', NOW()),
('13800138002', '100000001', '200000002', '123456792', 'resource_view', 90, 8, '2025-06-21', NOW()),
('13800138002', '100000002', '200000004', NULL, 'plan_create', 0, 15, '2025-06-15', NOW()),
('13800138002', '100000002', '200000004', NULL, 'task_complete', 150, 20, '2025-06-22', NOW()),
('13800138003', '100000003', '200000006', '123456791', 'resource_view', 60, 5, '2025-06-18', NOW()),
('13800138003', '100000003', '200000006', NULL, 'task_complete', 120, 18, '2025-06-19', NOW()),
('13800138003', '100000003', '200000007', NULL, 'plan_create', 0, 12, '2025-06-10', NOW()),
('13800138002', NULL, NULL, '123456790', 'resource_download', 30, 8, '2025-06-23', NOW()),
('13800138003', NULL, NULL, '100000002', 'discussion_join', 45, 12, '2025-06-24', NOW());

-- 插入学习目标
INSERT IGNORE INTO study_goals (goal_id, user_phone, title, description, target_value, current_value, unit, goal_type, deadline, status, created_at, updated_at) VALUES
('300000001', '13800138002', '本月学习时长', '每月保持至少80小时的学习时间', 80, 45, '小时', 'monthly', '2025-06-30', 'active', NOW(), NOW()),
('300000002', '13800138002', '完成Vue.js课程', '完成前端开发计划中的Vue.js相关任务', 12, 8, '个', 'custom', '2025-07-15', 'active', NOW(), NOW()),
('300000003', '13800138002', '参与讨论次数', '积极参与社区讨论，提升交流能力', 20, 15, '次', 'monthly', '2025-06-30', 'active', NOW(), NOW()),
('300000004', '13800138003', '每周学习天数', '保持每周至少5天的学习频率', 5, 4, '天', 'weekly', '2025-06-30', 'active', NOW(), NOW()),
('300000005', '13800138003', '完成期末复习', '完成软件工程期末复习的所有任务', 8, 6, '个', 'custom', '2025-06-30', 'active', NOW(), NOW());

-- 插入用户成就记录
INSERT IGNORE INTO user_achievements (user_phone, achievement_type, achievement_name, description, icon, earned_at) VALUES
('13800138002', 'learning', '初学者', '完成首次学习记录', '🌱', DATE_SUB(NOW(), INTERVAL 10 DAY)),
('13800138002', 'learning', '勤奋学者', '连续学习7天', '📚', DATE_SUB(NOW(), INTERVAL 3 DAY)),
('13800138002', 'plan', '计划达人', '创建第一个学习计划', '📋', DATE_SUB(NOW(), INTERVAL 15 DAY)),
('13800138003', 'learning', '初学者', '完成首次学习记录', '🌱', DATE_SUB(NOW(), INTERVAL 12 DAY)),
('13800138003', 'task', '任务完成者', '完成10个学习任务', '✅', DATE_SUB(NOW(), INTERVAL 5 DAY)),
('13800138002', 'discussion', '讨论达人', '参与10次社区讨论', '💬', DATE_SUB(NOW(), INTERVAL 2 DAY));

-- 更新用户等级和经验
INSERT IGNORE INTO user_levels (user_phone, level, experience, next_level_exp, updated_at) VALUES
('13800138002', 3, 280, 400, NOW()),
('13800138003', 2, 150, 300, NOW()),
('13800138001', 1, 50, 100, NOW());