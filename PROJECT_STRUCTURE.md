# 📁 项目结构说明

## 🎯 项目概览

```
wechat_software/                    # 项目根目录
├── 📄 README.md                   # 项目说明文档
├── 📄 QUICK_DEPLOY.md             # 快速部署指南
├── 📄 DEPLOYMENT.md               # 详细部署文档
├── 📄 PROJECT_STRUCTURE.md        # 本文档
├── 🔧 package.json                # 前端依赖配置
├── 🔧 package-lock.json           # 前端依赖锁定
├── 🔧 tsconfig.json              # TypeScript配置
├── 🔧 babel.config.js            # Babel配置
├── 🔧 postcss.config.js          # PostCSS配置
├── 🔧 .gitignore                 # Git忽略文件
├── 🔧 .env.example               # 环境变量示例
├── 🔧 .env.production            # 生产环境配置模板
├── 🚀 dev.sh                     # 开发环境启动脚本
├── 🚀 deploy.sh                  # 生产环境部署脚本
├── 🐳 docker-compose.yml         # Docker编排文件
├── 🐳 Dockerfile.frontend        # 前端Docker配置
│
├── 📱 src/                       # 前端源码目录
│   ├── 📄 App.vue                # 应用入口组件
│   ├── 📄 main.ts                # 应用入口文件
│   ├── 📄 manifest.json          # uni-app配置
│   ├── 📄 pages.json             # 页面路由配置
│   ├── 🎨 h5.scss               # H5样式
│   ├── 🎨 uni.scss              # uni-app全局样式
│   ├── 🔧 uni.promisify.adaptor.ts # uni-app适配器
│   │
│   ├── 📱 pages/                 # 页面文件
│   │   ├── 🏠 index/             # 首页
│   │   ├── 🔐 login/             # 登录页
│   │   ├── 📝 register/          # 注册页
│   │   ├── 📚 resources/         # 资源管理
│   │   ├── 💬 discussion/        # 讨论区
│   │   ├── 🎯 activity/          # 活动管理
│   │   ├── 🔔 notification/      # 通知中心
│   │   └── 👤 profile/           # 个人中心
│   │
│   ├── 🖼️ static/                # 静态资源
│   │   ├── 🖼️ images/            # 图片资源
│   │   ├── 🎨 icons/             # 图标资源
│   │   └── 📄 logo.png           # 应用Logo
│   │
│   └── 🛠️ utils/                 # 工具函数
│       └── 📄 config.js          # 配置管理
│
├── 🖥️ backend/                   # 后端源码目录
│   ├── 📄 package.json           # 后端依赖配置
│   ├── 📄 package-lock.json      # 后端依赖锁定
│   ├── 🐳 Dockerfile             # 后端Docker配置
│   ├── 🔧 jest.config.js         # 测试配置
│   │
│   └── 📁 src/                   # 后端源码
│       ├── 📄 app.js             # 应用入口
│       ├── ⚙️ config/            # 配置文件
│       │   ├── 📄 app.js         # 应用配置
│       │   └── 📄 database.js    # 数据库配置
│       ├── 🎮 controllers/       # 控制器
│       │   └── 📄 UserController.js # 用户控制器
│       ├── 🔒 middleware/        # 中间件
│       │   ├── 📄 auth.js        # 认证中间件
│       │   ├── 📄 errorHandler.js # 错误处理
│       │   └── 📄 validators.js   # 数据验证
│       ├── 📊 models/            # 数据模型
│       │   ├── 📄 User.js        # 用户模型
│       │   ├── 📄 Resource.js    # 资源模型
│       │   ├── 📄 Activity.js    # 活动模型
│       │   ├── 📄 ResourceType.js # 资源类型模型
│       │   └── 📄 index.js       # 模型入口
│       ├── 🛣️ routes/            # 路由配置
│       │   ├── 📄 index.js       # 路由入口
│       │   └── 📄 users.js       # 用户路由
│       └── 🧪 tests/             # 测试文件
│           ├── 📄 setup.js       # 测试设置
│           ├── 🔬 unit/          # 单元测试
│           └── 🔗 integration/   # 集成测试
│
├── 🗄️ database/                  # 数据库相关
│   └── 📁 init/                  # 初始化脚本
│       └── 📄 01-create-database.sql # 数据库创建脚本
│
├── 🌐 nginx/                     # Nginx配置
│   ├── 📄 nginx.conf             # 主配置文件
│   ├── 📄 frontend.conf          # 前端配置
│   └── 📁 conf.d/                # 配置文件目录
│       └── 📄 default.conf       # 默认站点配置
│
├── 📚 doc/                       # 项目文档
│   ├── 📄 database_design.md     # 数据库设计文档
│   ├── 📄 software_design_specification.md # 软件设计说明
│   ├── 📄 softwore_requirement_specification.md # 需求规格说明
│   ├── 📄 softwore_development_plan.md # 开发计划
│   └── 📁 images/                # 文档图片
│       ├── 🖼️ architecture.jpg   # 架构图
│       ├── 🖼️ login.jpg          # 登录界面图
│       ├── 🖼️ discussion.jpg     # 讨论界面图
│       └── 🖼️ upload.jpg         # 上传界面图
│
└── 🤖 .github/                   # GitHub Actions
    └── 📁 workflows/              # 工作流配置
        ├── 📄 ci-cd.yml          # 完整CI/CD流程
        └── 📄 deploy-simple.yml   # 简化部署流程
```

## 🔧 核心配置文件

### 前端配置
- **package.json**: uni-app项目依赖和脚本
- **manifest.json**: uni-app应用配置（H5、小程序等）
- **pages.json**: 页面路由和导航配置
- **babel.config.js**: JavaScript编译配置
- **tsconfig.json**: TypeScript配置

### 后端配置
- **package.json**: Node.js后端依赖和脚本
- **app.js**: Express应用入口
- **config/**: 应用和数据库配置
- **jest.config.js**: 测试框架配置

### 部署配置
- **docker-compose.yml**: 多容器编排
- **Dockerfile.frontend**: 前端容器构建
- **backend/Dockerfile**: 后端容器构建
- **nginx/**: Web服务器配置
- **.github/workflows/**: CI/CD自动化

## 📱 页面结构

### 核心页面（已实现）
- **login**: 用户登录（手机号 + 密码）
- **register**: 用户注册（手机号作为主键）
- **index**: 应用首页

### 扩展页面（UI原型）
- **resources**: 学习资源管理
- **discussion**: 学术讨论区
- **activity**: 社团活动
- **notification**: 消息通知
- **profile**: 个人中心及相关子页面

## 🛠️ 开发工具

### 启动脚本
```bash
./dev.sh        # 启动开发环境
./deploy.sh     # 部署到生产环境
```

### npm脚本
```bash
# 前端
npm run dev:h5      # H5开发模式
npm run build:h5    # H5生产构建
npm run dev:mp-weixin # 微信小程序开发

# 后端
cd backend
npm run dev         # 开发模式
npm test           # 运行测试
npm start          # 生产模式
```

## 🎯 技术栈

### 前端
- **uni-app**: 跨平台开发框架
- **Vue.js 2.x**: 前端框架
- **SCSS**: CSS预处理器

### 后端
- **Node.js 18+**: 运行时环境
- **Express.js**: Web框架
- **Sequelize**: ORM框架
- **MySQL 8.0**: 关系型数据库
- **Redis 7**: 缓存数据库
- **JWT**: 身份认证

### 部署
- **Docker**: 容器化
- **Nginx**: 反向代理
- **GitHub Actions**: CI/CD

## 📋 开发注意事项

1. **代码规范**: 遵循项目现有的代码风格
2. **Git管理**: 查看.gitignore了解忽略规则
3. **环境配置**: 使用.env.example创建本地.env文件
4. **API调用**: 前端使用utils/config.js管理API地址
5. **数据库**: 参考doc/database_design.md了解表结构

## 🚀 部署流程

1. **开发**: 使用./dev.sh启动本地环境
2. **测试**: GitHub Actions自动运行测试
3. **构建**: 自动构建Docker镜像
4. **部署**: 自动部署到云服务器
5. **监控**: 健康检查和自动回滚

这个项目结构支持从开发到生产的完整流程，具有良好的可维护性和扩展性。