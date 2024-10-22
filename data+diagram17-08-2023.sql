USE [master]
GO
/****** Object:  Database [mat59837_HinhLamDB]    Script Date: 8/17/2023 9:35:43 AM ******/
CREATE DATABASE [mat59837_HinhLamDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mat59837_HinhLamDB', FILENAME = N'C:\Program Files (x86)\Plesk\Databases\MSSQL\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\mat59837_HinhLamDB.mdf' , SIZE = 8192KB , MAXSIZE = 1048576KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mat59837_HinhLamDB_log', FILENAME = N'C:\Program Files (x86)\Plesk\Databases\MSSQL\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\mat59837_HinhLamDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [mat59837_HinhLamDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mat59837_HinhLamDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mat59837_HinhLamDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET  MULTI_USER 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mat59837_HinhLamDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mat59837_HinhLamDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [mat59837_HinhLamDB] SET QUERY_STORE = OFF
GO
USE [mat59837_HinhLamDB]
GO
/****** Object:  User [mat59837_khoalnm]    Script Date: 8/17/2023 9:35:43 AM ******/
CREATE USER [mat59837_khoalnm] FOR LOGIN [mat59837_khoalnm] WITH DEFAULT_SCHEMA=[mat59837_khoalnm]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [mat59837_khoalnm]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [mat59837_khoalnm]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mat59837_khoalnm]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mat59837_khoalnm]
GO
/****** Object:  Schema [mat59837_khoalnm]    Script Date: 8/17/2023 9:35:43 AM ******/
CREATE SCHEMA [mat59837_khoalnm]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateId] [nvarchar](50) NOT NULL,
	[CateName] [nvarchar](100) NOT NULL,
	[CateNameEN] [nvarchar](100) NOT NULL,
	[CateNameCN] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consult]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consult](
	[ConsultId] [nvarchar](50) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[CustomerCompany] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Contents] [ntext] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Response] [ntext] NULL,
	[ResponseStatus] [bit] NOT NULL,
	[ResponseDate] [datetime2](7) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Consult] PRIMARY KEY CLUSTERED 
(
	[ConsultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ContentID] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Contents] [ntext] NOT NULL,
	[ContentsCN] [ntext] NOT NULL,
	[ContentsEN] [ntext] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[ContentCount] [int] NOT NULL,
	[TitleCN] [nvarchar](250) NOT NULL,
	[TitleEN] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[FileId] [nvarchar](50) NOT NULL,
	[FileName] [nvarchar](150) NULL,
	[FileHref] [nvarchar](150) NULL,
	[CreateDate] [datetime2](7) NULL,
	[IsPicture] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileContent]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileContent](
	[Id] [nvarchar](50) NOT NULL,
	[FileId] [nvarchar](50) NULL,
	[ContentId] [nvarchar](50) NULL,
 CONSTRAINT [PK_FileContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileMenu]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileMenu](
	[Id] [nvarchar](50) NOT NULL,
	[FileId] [nvarchar](50) NULL,
	[MenuId] [nvarchar](50) NULL,
 CONSTRAINT [PK_FileMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileNews]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileNews](
	[Id] [nvarchar](50) NOT NULL,
	[FileId] [nvarchar](50) NULL,
	[NewsId] [nvarchar](50) NULL,
 CONSTRAINT [PK_FileNews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileSubMenu]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileSubMenu](
	[Id] [nvarchar](50) NOT NULL,
	[FileId] [nvarchar](50) NULL,
	[SubMenuId] [nvarchar](50) NULL,
 CONSTRAINT [PK_FileSubMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuId] [nvarchar](50) NOT NULL,
	[MenuName] [nvarchar](100) NOT NULL,
	[MenuNameCN] [nvarchar](100) NOT NULL,
	[MenuNameEN] [nvarchar](100) NOT NULL,
	[CateId] [nvarchar](50) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[MenuCount] [int] NOT NULL,
	[HrefLink] [nvarchar](100) NOT NULL,
	[HrefLinkCN] [nvarchar](100) NOT NULL,
	[HrefLinkEN] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuSubMenu]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuSubMenu](
	[Id] [nvarchar](450) NOT NULL,
	[MenuId] [nvarchar](50) NOT NULL,
	[SubMenuId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MenuSubMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[TitleCN] [nvarchar](150) NOT NULL,
	[TitleEN] [nvarchar](150) NOT NULL,
	[ShortDescription] [nvarchar](250) NULL,
	[ShortDescriptionEN] [nvarchar](250) NULL,
	[ShortDescriptionCN] [nvarchar](250) NULL,
	[LinkHref] [nvarchar](150) NOT NULL,
	[LinkHrefEN] [nvarchar](150) NOT NULL,
	[LinkHrefCN] [nvarchar](150) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsContent]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsContent](
	[Id] [nvarchar](50) NOT NULL,
	[NewsId] [nvarchar](50) NULL,
	[ContentId] [nvarchar](50) NULL,
 CONSTRAINT [PK_NewsContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubMenu]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenu](
	[SubMenuID] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[TitleEN] [nvarchar](100) NULL,
	[TitleCN] [nvarchar](100) NULL,
	[Description] [ntext] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[SubMenuCount] [int] NOT NULL,
	[DescriptionCN] [ntext] NOT NULL,
	[DescriptionEN] [ntext] NOT NULL,
 CONSTRAINT [PK_SubMenu] PRIMARY KEY CLUSTERED 
(
	[SubMenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubMenuContent]    Script Date: 8/17/2023 9:35:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenuContent](
	[Id] [nvarchar](450) NOT NULL,
	[SubMenuId] [nvarchar](50) NOT NULL,
	[ContentId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SubMenuContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CateId], [CateName], [CateNameEN], [CateNameCN], [CreateDate], [Status]) VALUES (N'1', N'Name1', N'Name1', N'Name1', CAST(N'2023-01-22T00:00:00.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'1', N'Lý do bạn cần dịch vụ gỡ rối sổ sách kế toán', N'Sau nhiều năm hoạt động, trải qua nhiều lần thay đổi nhân sự kế toán, bạn sẽ gặp nhiều khó khăn trong việc theo dõi sổ sách. Bạn dần cảm thấy đó là rủi ro pháp lý trong doanh nghiệp của mình. |Bạn là chủ doanh nghiệp, bạn đang lo lắng về tình hình sổ sách kế toán của doanh nghiệp mình không đúng theo quy định của pháp luật. Bạn lo lắng về sự rắc rối về các chứng từ bị thiếu sót, các chứng từ cần bổ sung, điều chỉnh. Và hơn hết bạn lo lắng về nhân viên kế toán không đủ kinh nghiệm để giải quyết các vấn đề phát sinh bất thường trong quá trình hoạt động. |Chứng từ hóa đơn tại doanh nghiệp lộn xộn, không theo hệ thống quy định, mọi vấn đề trở nên bề bộn không thể nào giải quyết được. Kế toán tại công ty thường xuyên thay đổi, không một ai chịu trách nhiệm về số liệu và giải trình các số liệu trên.', N'經過多年的經營，經歷了會計人事的多次變動，你會面臨很多賬簿跟踪的困難。您逐漸覺得這是您業務中的法律風險。 | 您是企業的老闆，您擔心您的企業會計賬簿不符合法律規定的情況。您擔心丟失文件的麻煩，需要補充和調整的文件。最重要的是，您擔心會計人員沒有足夠的經驗來解決操作過程中出現的異常問題。 | 在企業的發票單據凌亂，不按照規定的製度，所有的問題都會變得一團糟，無法解決。公司會計經常變動，以上數據及解釋均無任何誰負上責任。', N'After many years of operation, going through many changes in accounting personnel, you would face many difficulties keeping track of books. You gradually feel it is a legal risk in your business. | You are a business owner; you are worried about your business''s accounting books not following the Law. You worry about the hassle of missing documents, documents that need to be supplemented and adjusted. And most of all, you are worried about accounting staff who are not experienced enough to solve problems that arise abnormally during the operation. | Invoice documents at the enterprise are messy, not according to the prescribed system; all problems become messy and unsolvable. Accounting at the company often changes; no one is responsible for the data and explanations.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'你需要會計賬簿故障排除服務的理由', N'The reasons why you need troubleshooting accounting books service ')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'10', N'Dịch vụ Đại lý thuế tại Hinh Lam:', N'|Kê khai thuế hàng tháng, quý, năm.
|Báo cáo tình hình sử dụng hóa đơn hàng quý.
|Lập sổ sách kế toán theo các nghiệp vụ kinh tế phát sinh.
|Lập báo cáo tài chính tạm tính theo quý, năm.
|Giải trình số liệu với có quan thuế khi có yêu cầu.
|Làm việc với cơ quan thuế về các thủ tục hành chính.
|Tối ưu hóa thuế thu nhập doanh nghiệp, doanh thu, chi phí
|Quyết toán thuế GTGT, thuế TNDN, thuế TNCN.', N'|月度、季度和年度納稅申報。
|季度發票使用報告。
|根據發生的經濟交易編制會計賬簿。
|按季度和年度編制中期財務報表。
|必要時向海關當局解釋數據。
|與稅務機關有關行政程序的作業。
|優化企業所得稅、收入、費用
|增值稅、企業所得稅和個人所得稅結算。', N'|Monthly, quarterly and annual tax declarations.
|Quarterly invoice usage report.
|Prepare accounting books according to arising economic transactions.
|Prepare interim financial statements on a quarterly and annual basis.
|Explain the data to the customs authorities when required.
|Working with tax authorities on administrative procedures.
|Optimizing corporate income tax, revenue, expenses
|Finalization of VAT, CIT and PIT.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'在鑫藍稅務代理服務：', N'Tax agent service in Hinh Lam:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'11', N'Điều kiện và thủ tục hoàn thuế của dự án đầu tư ?', N'|Đang hoạt động thuộc đối tượng nộp thuế GTGT theo phương pháp khấu trừ.|Có dự án đầu tư, trừ dự án đầu tư xây dựng nhà để bán hoặc cho thuê mà không hình thành tài sản cố định hoặc các cơ sở kinh doanh thuộc diện không được hoàn thuế.|Kê khai riêng đối với dự án đầu tư.|Phải kết chuyển thuế GTGT đầu vào của dự án đầu tư để bù trừ với việc kê khai thuế GTGT của hoạt động sản xuất kinh doanh đang thực hiện.', N'|處於活躍狀態並通過扣除方法繳納增值稅。
|有投資項目，不包括未形成固定資產或不符合退稅條件的營業場所建造房屋出售或出租的投資項目。
|投資項目單獨申報。
|投資項目的進項稅額必須轉入抵扣正在開展的生產經營活動的增值稅申報。', N'|Currently operating and subject to VAT by the deduction method.
|Having investment projects, excluding investment projects to build houses for sale or rent without forming fixed assets or business establishments, is not eligible for a tax refund.
|Separate declaration for investment projects.
|The input VAT of the investment project must be transferred to offset the VAT declaration of production and business activities being carried out.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'投資項目退稅的條件和程序？', N'Conditions and procedures for a tax refund of investment projects?')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'12', N'Các bước thực hiện thủ tục thành lập công ty có vốn đầu tư nước ngoài:', N'|Xin cấp Giấy chứng nhận đăng ký đầu tư.
|Xin cấp Giấy chứng nhận đăng ký doanh nghiệp.
|Xin cấp Giấy phép kinh doanh đối với công ty bán lẻ hàng hóa trực tiếp tới người tiêu dùng, Giấy phép lập cơ sở bán lẻ hoặc Giấy phép chuyên ngành của Bộ theo các lĩnh vực hoạt động đặc thù như: Đào tạo, Lữ hành, Kiểm toán, Giáo dục, Y tế...', N'|申請投資登記證書。
|申請商業登記證書。
|為直接向消費者零售商品的公司申請營業執照、設立零售機構的執照或該部根據特定活動領域（例如：培訓、旅遊實踐、審計、教育、健康）的專業執照。', N'|Apply for an Investment Registration Certificate.
|Apply for a Business Registration Certificate.
|Apply for a business license for a company that retails goods directly to consumers, a license to set up a retail establishment or a specialized license from the Ministry according to specific areas of activity such as Training, Travel, Auditing, Legal, Medical...', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'成立越南和外國企業', N'Procedures for establishing a foreign-invested company:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'13', N'Đối với nhà đầu tư là cá nhân (do cá nhân, các cá nhân người nước ngoài góp vốn thành lập công ty tại Việt Nam).', N'|Bản sao chứng minh nhân dân, thẻ căn cước hoặc hộ chiếu (Bản sao công chứng, hợp pháp hóa lãnh sự tại cơ quan đại diện ngoại giao Việt Nam tại nước ngoài- cả quyển hộ chiếu).
|Xác nhận số dư tài khoản ngân hàng của nhà đầu tư tương ứng với vốn dự kiến đầu tư tại Việt Nam (Nếu là Ngân hàng nước ngoài xác nhận cần cung cấp bản sao công chứng, hợp pháp hóa lãnh sự tại cơ quan đại diện ngoại giao Việt Nam tại nước ngoài).
|Hợp đồng thuê trụ sở, Giấy tờ chứng minh quyền cho thuê của bên cho thuê (Giấy chứng nhận quyền sử dụng đất, Giấy phép xây dựng, Giấy chứng nhận đăng ký kinh doanhcó chức năng kinh doanh bất động sản của bên cho thuê hoặc các giấy tờ tương đương).', N'|身份證、身份證或護照複印件（經過公證的複印件，越南駐外使領館的領事認證- 包括護照整本）。
|確認投資者在越南的預期投資資金對應的銀行賬戶餘額（如果是外資銀行確認需要提供公證副本，越南駐外使領館領事認證）。 
|總公司租賃合同、出租人租賃權證明文件（土地使用權證書、施工許可證、具有出租人房地產業務功能的營業登記證書或同等文件）。', N'|Copy of identity card, identity card or passport (Notarized copy, consular legalization at Vietnamese diplomatic missions abroad - including passport).
|Confirmation of the investor''s bank account balance corresponding to the expected investment capital in Vietnam (If it is a confirmed foreign bank, it is necessary to provide a notarized, consular legalized copy at the representative office Vietnamese diplomacy abroad).
|Head office lease contract, proving documents the lessor’s right to lease (Certificates of land use rights, Construction permit, Certificate of business registration with real estate business function of the lessor or equivalent documents).', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'對於個人投資者（由個人、外國個人出資在越南設立公司）。', N'For individual investors (by individuals, foreign individuals contribute capital to establish a company in Vietnam):')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'14', N'Đối với nhà đầu tư là tổ chức (do công ty có trụ sở tại nước ngoài góp vốn, đầu tư vốn thành lập công ty tại Việt Nam).', N'|Bản sao Giấy chứng nhận thành lập hoặc tài liệu tương đương khác xác nhận tư cách pháp lý đối với nhà đầu tư (Bản sao công chứng, hợp pháp hóa lãnh sự tại cơ quan đại diện ngoại giao Việt Nam tại nước ngoài).
|Bản sao một trong các tài liệu sau: báo cáo tài chính 02 năm gần nhất của nhà đầu tư; cam kết hỗ trợ tài chính của công ty mẹ; cam kết hỗ trợ tài chính của tổ chức tài chính; bảo lãnh về năng lực tài chính của nhà đầu tư; Xác nhận số dư tài khoản ngân hàng của nhà đầu tư tương ứng với vốn dự kiến đầu tư tại Việt Nam. (Bản sao công chứng, hợp pháp hóa lãnh sự tại cơ quan đại diện ngoại giao Việt Nam tại nước ngoài).
Hộ chiếu công chứng của người đại diện theo pháp luật của công ty tại nước ngoài (Bản sao công chứng, hợp pháp hóa lãnh sự tại cơ quan đại diện ngoại giao Việt Nam tại nước ngoài).
|Hộ chiếu công chứng của giám đốc – người đại diện theo pháp luật công ty tại Việt Nam (Nếu là người nước ngoài Bản sao công chứng, hợp pháp hóa lãnh sự tại cơ quan đại diện ngoại giao Việt Nam tại nước ngoài).
Hợp đồng thuê trụ sở, Giấy tờ chứng minh quyền cho thuê của bên cho thuê (Giấy chứng nhận quyền sử dụng đất, Giấy phép xây dựng, Giấy chứng nhận đăng ký kinh doanh có chức năng kinh doanh bất động sản của bên cho thuê hoặc các giấy tờ tương đương).
|Nếu dự án có sử dụng công nghệ cần kèm theo bản giải trình về sử dụng công nghệ đối với dự án quy định gồm các nội dung: tên công nghệ, xuất xứ công nghệ, sơ đồ quy trình công nghệ; thông số kỹ thuật chính, tình trạng sử dụng của máy móc, thiết bị và dây chuyền công nghệ chính.', N'|營業執照複印件或其他同等文件確認投資者的法律地位（公證副本，越南駐外使領館領事認證）。
|以下文件之一的副本：投資者最近兩年的財務報表；對母公司財務支持的承諾；金融機構對資金支持的承諾；對投資者財務能力的保證；確認投資者在越南的預期投資資金對應|的銀行賬戶餘額（公證副本，越南駐外使領館領事認證）。
|海外公司的法定代表人的公證護照（公證副本，越南駐外使領館領事認證）。
|在越南公司的法定代表人經理的公證護照（如果是外國人，公證複印件，越南駐外使領館領事認證）。
|總公司租賃合同、出租人租賃權證明文件（土地使用權證書、施工許可證、具有出租人房地產業務功能的營業登記證書或同等文件）
項目使用技術的，需附上指定項目使用技術的說明，包括以下內容：技術名稱，技術來源，工藝流程圖；主要技術參數，主要機械，設備和工藝技術生產線的使用狀態。', N'|A copy of the Certificate of Establishment or other equivalent document certifying the legal status of the investor (Notarized copy, consular legalization at Vietnamese diplomatic missions abroad).
|A copy of one of the following documents: financial statements of the last 2 years of the investor; commitment to the financial support of the parent company; financial institution''s commitment to financial support; guarantee on the financial capacity of the investor; Confirm the investor''s bank account balance corresponding to the expected investment capital in Vietnam. (Notarized copy, consular legalization at Vietnamese diplomatic missions abroad).
|Notarized passport of the company''s legal representative in foreign countries (Notarized copy, consular legalization at Vietnamese diplomatic missions abroad).
|Notarized passport of the director - the company''s legal representative in Vietnam (If a foreigner Notarized copy, consular legalization at Vietnamese diplomatic missions abroad).
|Head office lease contract, Papers proving the lessor''s right to lease (Land use right Certificate, Construction permit, Business registration certificate with real estate business function of the lessor) or equivalent documents).
|If the project uses technology, it is necessary to attach an explanation on the use of technology for the specified project, including the following contents: technology name, technology origin, technological process diagram; the main technical parameters, the use status of the main machinery, equipment and technological lines.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'對於機構投資者（由外國公司出資，投資在越南設立公司的資金）。', N'For institutional investors (contributed by foreign-based companies, invested capital to establish a company in Vietnam):')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'15', N'Dịch vụ thành lập doanh nghiệp Việt Nam và doanh nghiệp nước ngoài:', N'|Tư vấn điều kiện thành lập công ty vốn đầu tư nước ngoài: tỷ lệ góp vốn của nhà đầu tư nước ngoài tại Việt Nam; điều kiện kinh doanh các ngành nghề; địa điểm thực hiện dự án; lưu ý các thủ tục trước và sau thành lập công ty vốn đầu tư nước ngoài.
|Tư vấn lựa chọn loại hình công ty phù hợp cho nhà đầu tư: Công ty TNHH hay Công ty cổ phần.
|Tư vấn mở tài khoản chuyển vốn, thời hạn góp vốn.
|Tư vấn hướng dẫn nhà đầu tư chuẩn bị tài liệu cần thiết để thành lập công ty có vốn đầu tư nước ngoài.
|Tư vấn, soạn thảo hồ sơ thành lập công ty cho nhà đầu tư.', N'|成立外商投資公司的條件諮詢：外國投資者在越南的出資比例；業務線的條件；項目實施地點；注意外商投資公司成立前後的程序。
|為投資者選擇合適的公司類型的諮詢：有限責任公司或股份公司。
|開立資金劃轉賬戶、出資期限的建議。
|諮詢和指導投資者準備必要的文件，以設立外商投資企業。
|為投資者諮詢、起草公司成立文件。', N'|Advising on the conditions for establishing a foreign-invested company: capital contribution ratio of foreign investors in Vietnam; conditions for business lines; project implementation location; pay attention to the procedures before and after establishing a foreign-invested company.
|Consulting to choose the right type of company for investors: limited liability company or joint-stock company.
|Advice on opening a capital transfer account, capital contribution term.
|Consulting and guiding investors to prepare necessary documents to establish a foreign-invested company.
|Consulting, drafting company establishment documents for investors.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'成立越南企業和外商企業的服務：', N'Services for establishing Vietnamese and foreign enterprises:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'16', N'Tổ chức kinh tế chuẩn bị hồ sơ theo quy định tại Điều 15 Nghị định 09/2018/NĐ-CP, bao gồm:', N'|– Đơn đề nghị điều chỉnh Giấy phép kinh doanh.
|– Trường hợp thay đổi tên, mã số doanh nghiệp, địa chỉ trụ sở chính và người đại diện theo pháp luật, trừ trường hợp chuyển địa điểm đặt trụ sở chính, chuẩn bị thêm Bản sao Giấy chứng nhận đăng ký doanh nghiệp ghi nhận nội dung điều chỉnh;', N'|– 營業執照變更申請。
|– 變更名稱、企業代碼、總公司地址和法定代表人的情況之下，除總公司所在地搬遷外，需補辦企業登記證複印件，調整內容；', N'|– An application for modification of a business license.
|– In case of change of name, enterprise code, head office address and legal representative, except in case of head office relocation, prepare an additional copy of the enterprise registration certificate. adjusted content.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'經濟組織按照第15條第09/2018/ND-CP 號議定的規定準備檔案，包括：', N'Economic organizations prepare dossiers as prescribed in Article 15 of Decree 09/2018/ND-CP, including:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'17', N'– Trường hợp thay đổi các nội dung khác của Giấy phép kinh doanh thì phải thêm một số tài liệu sau:', N'|Bản giải trình.
|Tài liệu của cơ quan thuế chứng minh không còn nợ thuế quá hạn.
|Bản sao: Giấy chứng nhận đăng ký doanh nghiệp; Giấy chứng nhận đăng ký đầu tư dự án hoạt động mua bán hàng hóa và các hoạt động liên quan trực tiếp đến mua bán hàng hóa (nếu có).', N'|解釋公文。
|稅務機關無逾期欠稅的證明文件。
|複印件：商業登記證；貨物貿易項目及與貨物購銷直接相關活動的投資登記證書（如有）。', N'|Explanatory statement.
|Documents from tax authorities proving that there are no past-due tax debts.
|Copy: Certificate of business registration; Certificate of investment registration in the project of goods trading and activities directly related to the purchase and sale of goods (if any).', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'– 營業執照其他內容如有變更，需補充以下文件：', N'– In case of changing other contents of the Business License, the following documents must be added:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'18', N'Trình tự điều chỉnh Giấy phép kinh doanh:', N'được thực hiện như thủ tục cấp mới Giấy phép kinh doanh. Cụ thể như sau:', N'作為新營業執照的簽發程序進行。具體如下：', N'This is carried out like the procedure for granting a new Business License. As follows:', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'營業執照調整程序：', N'Procedure for adjusting Business License: ')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'19', N'Bước 1: Chuẩn bị và nộp hồ sơ', N'|Tổ chức kinh tế có vốn đầu tư nước ngoài chuẩn bị hồ sơ theo quy định trên.
|Hồ sơ gửi trực tiếp hoặc qua đường bưu chính hoặc qua mạng điện tử (nếu đủ điều kiện áp dụng) đến Cơ quan cấp Giấy phép trong vòng 10 ngày làm việc kể từ ngày có Giấy chứng nhận đăng ký doanh nghiệp ghi nhận nội dung điều chỉnh.', N'|外商投資經濟組織應當按照上述規定編制資料。
|該文件直接或通過郵寄或通過電子網絡（如適用符合條件）發送至許可機構，自記錄內容的商業登記證調整之日起10 個工作日內。', N'|Foreign-invested economic organizations shall prepare dossiers according to the above provisions.
|Dossier sent directly or by post or via an electronic network (if applicable) to the licensing agency within 10 working days from the date of receipt of the enterprise registration certificate adjusted.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 4, N'第1步：準備並提交申請', N'Step 1: Prepare and submit your application')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'2', N'Chi tiết về dịch vụ gỡ rối sổ sách kế toán', N'|Kiểm tra sổ sách của doanh nghiệp.|Rà soát kiểm tra tính hợp lệ của hóa đơn, chứng từ, đánh giá lại các chứng từ cần bổ sung điều chỉnh.|Kiểm tra việc hạch toán các nghiệp vụ phát sinh, so sánh đối chiếu với các chứng từ khác như sổ phụ ngân hàng, bảng tồn kho….|Kiểm tra các báo cáo đã nộp cho cơ quan thuế (Báo cáo thuế GTGT hàng tháng, quý, Báo cáo quyết toán năm, Báo cáo tài chính năm, Báo cáo tình hình sử dụng hóa đơn, …).|Kiểm tra việc in sổ sách kế toán, phiếu thu, chi, nhập, xuất (nếu có).|Xử lý gỡ rối, hoàn thiện sổ sách cho doanh nghiệp.|Sắp xếp hóa đơn, chứng từ phù hợp cho hoạt động của từng doanh nghiệp (theo thời gian, công trình, yếu tố chi phí, …).|Điều chỉnh, bổ sung những chứng từ nghiệp vụ kế toán còn thiếu sót trong quá trình hoạt động.|Kê khai bổ sung, điều chỉnh các báo cáo đã nộp cho cơ quan thuế khi có sai sót.|Hoàn thiện toàn bộ sổ sách của doanh nghiệp như: Báo cáo tài chính, chứng từ khai thuế, chứng từ nội bộ doanh nghiệp.|Đại diện cho doanh nghiệp đứng ra giải trình số liệu đã xử lý này cho cơ quan thuế khi cần thiết.|Tư vấn dịch vụ doanh nghiệp xử lý một số vấn đề phát sinh bất thường. 
', N'|檢查企業賬簿。|審核發票和憑證的有效性，重新評估需要補充和調整的單據。|檢查所產生交易的會計工作，與銀行存摺、庫存表等其他文件進行核對比較。|檢查提交給稅務機關的報告（每月、每季度增值稅報告、年終結算報告、年度財務報表、發票使用報告等）。|檢查會計賬簿、收、支、庫存進出的票據（如有）。|處理故障排除，為企業完成賬簿。|安排發票和憑證符合每個企業的運作(按時間、工程、成本因素……）。|在運營過程中仍欠缺的會計憑證進行調整和補充。|當有錯誤時，對提交給稅務機關的報告進行補充和調整申報。|完成企業所有賬簿如：財務報表、納稅申報文件、企業內部文件。|代表企業在必要時向稅務機關解釋這些處理過的數據|諮詢業務服務以處理一些異常問題。', N'|Check the books of the business. | Review and check the validity of invoices and documents, re-evaluate documents that need to be supplemented and adjusted. | Check the accounting of arising transactions, compare and contrast with other documents such as bank sub-book, inventory table... | Check the reports submitted to the tax authorities (Monthly, quarterly VAT reports, Annual settlement reports, Annual financial statements, Invoice usage reports, ...) | Check the printing of accounting books, receipts, payments, import and export (if any) | Troubleshooting and completing books for businesses. | Arrange invoices and documents suitable for the operation of each business (by time, works, cost factors, ...) | Adjusting and supplementing accounting documents that are still lacking in the course of operation. | Additional declaring and adjusting to the submitted reports to the tax authorities when there are errors. | Complete all enterprise books such as financial statements, tax declaration documents, internal documents of the enterprise. | Representing the business to explain the processed data to the tax authorities when necessary. | Business consulting services to handle some unusual problems. | In some special cases, we have experienced staff to handle matters related to local government agencies.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'會計賬簿故障排除服務的詳細', N'Details of troubleshooting accounting books service')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'20', N'Lưu ý về số lượng hồ sơ:', N'|– Trường hợp điều chỉnh Giấy phép kinh doanh để thực hiện hoạt động quy định tại điểm a khoản 1 Điều 5 Nghị định này: 01 bộ;
|– Trường hợp điều chỉnh Giấy phép kinh doanh để thực hiện hoạt động quy định tại các điểm b, d, đ, e, g, h và i khoản 1 Điều 5 Nghị định này: 02 bộ;
|– Trường hợp điều chỉnh Giấy phép kinh doanh để thực hiện hoạt động quy định tại điểm c khoản 1 Điều 5 Nghị định này: 03 bộ.', N'|– 營業執照變更的情況執行本議定第5 條第1 款a 點規定的活動：01套；
|– 營業執照變更的情況以執行本議定第5 條第1 款b、d、đ、e、g、h 和i 點規定的活動：02 套；
|– 營業執照變更的情況以執行本議定第5 條第1 款c點規定的活動：03套；', N'|– In case of modification of a business license to carry out the activities specified at Point a, Clause 1, Article 5 of this Decree: 01 set;
|– In case of modification of a business license to carry out the activities specified at Points b, d, dd, e, g, h and i, Clause 1, Article 5 of this Decree: 02 sets;
|– In case of modification of a business license to carry out the activities specified at Point c, Clause 1, Article 5 of this Decree: 03 sets.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 5, N'關於文件數量的注意事項：', N'Note about the number of records:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'21', N'Bước 2: Tiếp nhận, xử lý hồ sơ', N'– Trong thời hạn 03 ngày làm việc kể từ ngày nhận được hồ sơ, Cơ quan cấp Giấy phép kiểm tra và yêu cầu sửa đổi, bổ sung nếu hồ sơ chưa đủ và hợp lệ.', N'– 自收到文件之日起03個工作日內，如果文件不充分和有效，發證機構應審查並要求修改和補充。', N'– Within 03 working days from the date of receipt of the dossier, the licensing agency shall examine and request amendments and supplements if the dossier is not sufficient and valid.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 6, N'第2 步：接收和處理文件', N'Step 2: Receive and process documents')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'22', N'Bước 3: Kiểm tra hồ sơ', N'|Trong thời hạn 10 ngày làm việc kể từ ngày nhận được hồ sơ đủ và hợp lệ, Cơ quan cấp Giấy phép kiểm tra việc đáp ứng điều kiện để điều chỉnh Giấy phép kinh doanh.
|– Trường hợp không đáp ứng điều kiện, Cơ quan cấp Giấy phép có văn bản trả lời và nêu rõ lý do;
|– Trường hợp đáp ứng ứng điều kiện
|+ Cơ quan cấp Giấy phép điều chỉnh Giấy phép kinh doanh để thực hiện hoạt động quy định tại điểm a khoản 1 Điều 5 Nghị định này; trường hợp từ chối điều chỉnh, phải có văn bản trả lời và nêu rõ lý do;
|+ Cơ quan cấp Giấy phép gửi hồ sơ kèm văn bản lấy ý kiến Bộ Công Thương, bộ quản lý ngành theo quy định tại điểm a hoặc b khoản 3 Điều 8 Nghị định này (Mẫu số 09 tại Phụ lục ban hành kèm theo Nghị định này).', N'|自收到完整有效的文件之日起10個工作內，發證機關工作檢查符合調整《營業執照》的條件。
|- 不符合條件的情況下，發證機關應當書面答复並說明理由；
|– 在符合條件的情況下
|+ 發證機構調整營業執照以執行本議定第5 條第1 款a 點規定的活動；拒絕調整之情況下，必須書面答复，說明理由；
|+ 發證機構附上諮詢工貿部的函文意見一起發送，依本議定第8 條第3 款a 點或b 點規定的行業管理部（附上議定發布的附錄中的第09 號表格）。', N'|Within 10 working days from the date of receipt of a complete and valid dossier, the licensing agency shall check the satisfaction of conditions for adjusting the business license.
|- In case the conditions are not satisfied, the licensing agency shall reply in writing and clearly state the reasons;
|– In case the conditions are met.
|+ The licensing agency adjusts the business license to perform the activities specified at Point a, Clause 1, Article 5 of this Decree; in case of refusal to adjust, there must be a written reply clearly stating the reason;
|+ The licensing agency shall send the dossier together with the Ministry of Industry and Trade''s written opinion and line ministries as prescribed at Point a or b, Clause 3, Article 8 of this Decree (Form No. 09 in the Appendix issued together with this Decree).', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 7, N'第 3 步：檢查資料', N'Step 3: Check profile')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'23', N'Bước 4: Giải quyết hồ sơ', N'|– Trong thời hạn 15 ngày kể từ ngày nhận được hồ sơ, Bộ Công Thương và bộ quản lý ngành căn cứ vào nội dung tương ứng quy định tại Điều 10 Nghị định này để có văn bản chấp thuận điều chỉnh Giấy phép kinh doanh; trường hợp từ chối, phải có văn bản trả lời và nêu rõ lý do mẫu số 10 tại Phụ lục ban hành kèm theo Nghị định này).
|– Trong thời hạn 03 ngày làm việc kể từ ngày nhận được văn bản chấp thuận của Bộ Công Thương và bộ quản lý ngành, Cơ quan cấp Giấy phép điều chỉnh Giấy phép kinh doanh. Trường hợp Bộ Công Thương hoặc bộ quản lý ngành có văn bản từ chối, Cơ quan cấp Giấy phép có văn bản trả lời và nêu rõ lý do.', N'|- 自收到文件之日起 15 天內，工貿部和行業管理部根據本議定第十條規定的相應內容，以調整營業執照的書面批准；在拒絕的情況下，必須有明確說明理由的書面答复（附上議定發布的附錄中的第 10 號表格）。
|– 在收到工貿部和行業管理部的書面批准之日起03 個工作日內，發證機構調整營業執照。工貿部或工貿部書面駁回之情況下，發證機構應當書面答复並說明理由。', N'|- Within 15 days from the date of receipt of the application, the Ministry of Industry and Trade and the line management ministry shall based on the corresponding contents specified in Article 10 of this Decree, issue a written approval for the adjustment of the business license; In case of refusal, there must be a written reply clearly stating the reason (form No. 10 in the Appendix to this Decree).
|– Within 03 working days from the date of receipt of written approval from the Ministry of Industry and Trade and line ministries, the licensing agency shall adjust the business license. If the Ministry of Industry and Trade or the line ministry has a written refusal, the licensing agency shall reply in writing and clearly state the reasons.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 8, N'第4步：文件結算', N'Step 4: Settlement of records')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'24', N'Bước 5: Hoàn trả Giấy phép kinh doanh đã được cấp trước đó', N'Trong thời hạn 05 ngày làm việc kể từ ngày nhận được Giấy phép kinh doanh đã được điều chỉnh, tổ chức kinh tế có vốn đầu tư nước ngoài có trách nhiệm hoàn trả Giấy phép kinh doanh đã được cấp cho Cơ quan cấp Giấy phép.', N'在收到修改後的營業執照之日起05 個工作日內，外商投資經濟組織負責將核發的營業執照退還給發證機關。', N'Within 05 working days from the adjusted business license, the foreign-invested economic organization shall return the issued business license to the licensing agency.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 9, N'第5步：返還之前頒發的營業執照', N'Step 5: Return the previously issued Business License.')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'25', N'Dịch vụ gồm các công việc sau:', N'|– Tư vấn và đưa ra các phương án sáp nhập.
|– Soạn thảo bộ hồ sơ sáp nhập công ty.
|– Nộp và nhận kết quả tại Sở Kế hoạch và Đầu tư.
|– Sửa đổi, bổ sung, giải trình bộ hồ sơ theo yêu cầu của cơ quan có thẩm quyền.
|– Nộp phí, lệ phí nhà nước.', N'|– 諮詢和提供合併方案。
|- 起草公司合併文件。
|– 在規劃和投資部提交和接收結果。
|– 應有職權機構的要求，修改、補充和解釋所設置的檔案。
|- 支付國家費用和例費。', N'|- Consulting and offering merger plans.
|- Drafting corporate merger documents.
|– Submit and receive results at the Department of Planning and Investment.
|– Amending, supplementing and explaining the dossier set at the request of the competent authority.
|- Pay state fees.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'該服務包括以下任務：', N'The service includes the following tasks:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'26', N'Lưu ý: Tạm ngưng hoạt động kinh doanh: ', N'|Trong thời gian tạm ngưng hoạt động kinh doanh, doanh nghiệp vẫn phải nộp đầy đủ các khoản thuế còn nợ. Tiếp tục thanh toán các khoản nợ, thực hiện hợp đồng đã ký với khách hàng và người lao động (nếu có), trừ trường hợp chủ nợ, khách hàng và người lao động có thỏa thuận khác.
|Trong thời gian tạm ngừng kinh doanh, doanh nghiệp không phải nộp thuế môn bài, không kê khai thuế giá trị gia tăng hàng tháng, không nộp báo cáo tài chính cuối năm
|Khi tạm ngừng kinh doanh, doanh nghiệp có thể bớt đi nỗi lo về tiền lương cho người lao động, thuế, các khoản chi khác.
Khi hết thời hạn tạm ngưng hoạt động, thì doanh nghiệp sẽ hoạt động lại bình thường, và phải đáp ứng đầy đủ các thủ tục theo doanh nghiệp bình thường.
|Trong một số trường hợp bạn không muốn tiếp tục kinh doanh thì chuyển qua làm hồ sơ giải thể doanh nghiệp.', N'|暫停營業期間，企業仍需繳納所有未繳稅款。繼續清償債務，履行與客戶和員工簽訂的合同（如有），除非債權人、客戶和員工另有約定。
|暫停營業期間，企業無需繳納營業牌照稅，無需每月申報增值稅，無需提交年終財務報表。
|暫停營業時，企業可以減少對工人工資、稅收和其他費用的擔憂。
|暫停期滿後，企業恢復正常經營，必須完全符合正常企業的程序辦理。
|在某些情況下，如果您不想繼續開展業務，您可以轉為申請解散業務。', N'|During the period of suspension of business operations, enterprises still have to pay all outstanding taxes. Continue to pay debts, perform contracts signed with customers and employees (if any) unless otherwise agreed by creditors, customers and employees.
|During the temporary suspension of business, enterprises do not have to pay license tax, declare monthly value-added tax, and submit year-end financial statements.
|When temporarily suspending business, businesses can reduce their worries about wages for employees, taxes and other expenses.
|At the end of the suspension period, the business will resume normal operations and fully meet the procedures according to standard companies.
|In some cases, if you do not want to continue your business, you can switch to filing for the dissolution of the company.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'注意：暫停營業：', N'Note: Suspending business operations:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'27', N'Giải thể doanh nghiệp là việc doanh nghiệp thực hiện thủ tục chấm dứt hoạt động kinh doanh của mình. Doanh nghiệp chỉ giải thể trong các trường hợp sau:', N'|Kết thúc thời hạn hoạt động đã ghi trong Điều lệ công ty mà không có quyết định gia hạn;
|Theo quyết định Đại hội đồng cổ đông;
|Công ty không còn đủ số lượng thành viên tối thiểu theo quy định của Luật doanh nghiệp 2014 trong thời hạn 06 tháng liên tục mà không làm thủ tục chuyển đổi loại hình doanh nghiệp;
|Bị thu hồi Giấy chứng nhận đăng ký doanh nghiệp hoặc theo quyết định của Tòa án;
|Doanh nghiệp chỉ được giải thể khi bảo đảm thanh toán hết các khoản nợ và nghĩa vụ tài sản khác và doanh nghiệp không trong quá trình giải quyết tranh chấp tại Tòa án hoặc cơ quan trọng tài.', N'|公司章程中規定的經營期限結束而沒有延期決定；

|根據股東大會的決定；

|公司按照2014年企業法規定連續6個月成員人數不足而未辦理企業類型轉換的手續；

|商業登記證被撤銷或法院判決；', N'|End of operation term stated in the company''s charter without a decision on extension;
|According to the decision of the General Meeting of Shareholders;
|The company no longer meets the minimum number of members according to the provisions of the Enterprise Law 2014 for a period of 06 consecutive months without carrying out procedures for converting the type of enterprise;
|Having the Certificate of Business Registration revoked or according to a court decision;
|An enterprise may only be dissolved when it ensures payment of all debts and other property obligations and the enterprise is not in the process of settling disputes at court or arbitration.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'企業解散，是指企業履行終止經營活動程序。企業只有在下列情況下才能解散：', N'Dissolution of an enterprise means an enterprise carrying out procedures to terminate its business activities. An enterprise shall only be dissolved in the following cases:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'28', N'null', N'|Trường hợp doanh nghiệp bị giải thể do bị thu hồi Giấy chứng nhận đăng ký doanh nghiệp thì người quản lý có liên quan và doanh nghiệp cùng liên đới chịu trách nhiệm về các khoản nợ của doanh nghiệp.
|Đối với doanh nghiệp có các đơn vị trực thuộc (chi nhánh, văn phòng đại diện, địa điểm kinh doanh) thì trước khi thực hiện thủ tục giải thể, doanh nghiệp phải làm thủ tục chấm dứt hoạt động các đơn vị trực thuộc đó.
|Với những chuyên viên có nhiều kinh nghiệm trong việc làm thủ tục giải thể công ty, tạm ngưng hoạt động, Hinh Lam sẽ tư vấn và hỗ trợ doanh nghiệp thực hiện đầy đủ và chính xác tất cả những thủ tục cần thiết trong quá trình giải thể. ', N'|企業確保所有債務和其他財產義務的清償並且企業不處於法庭或仲裁解決糾紛的過程中，才能解散。 
|因企業登記證書被撤銷而解散之情況下，相關管理人與企業對企業債務承擔連帶責任。適用於有所屬單位（分公司、辦事處、營業場所）的企業而企業在辦理解散手續前，必須辦理所屬單位終止經營的手續。 
|擁有在辦理公司解散、停業手續方面具有豐富經驗的專家，鑫藍將為企業提供諮詢和協助在解散過程中全套準確地實施所有必要的程序。', N'|If an enterprise is dissolved due to its enterprise registration certificate being revoked, the relevant manager and the enterprise are jointly responsible for its debts.
|For enterprises with affiliated units (branches, representative offices, business locations), before carrying out the dissolution procedures, the enterprise must carry out procedures for terminating the operation of those affiliated units.
|With experts who have extensive experience in carrying out procedures for company dissolution and temporary suspension of operations, Hinh Lam will advise and support businesses to fully and accurately implement all necessary procedures in the process of dissolution.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'29', N'Hệ thống kế toán là bộ phận nắm vai trò quan trọng, góp phần ổn định hệ thống tài chính, xây dựng nền tảng vững chắc cho sự phát triển của doanh nghiệp. Hệ thống kế toán phù hợp cung cấp đầy đủ thông tin cần thiết để:', N'|Hỗ trợ tối đa việc sản xuất các sản phẩm với chi phí thấp (nguyên liệu, nhân công, khấu hao,…)
|Hỗ trợ việc kinh doanh (phân loại khách hàng, hàng hóa tiêu thụ,…)
|Hỗ trợ công tác tài chính (nguồn vay, lãi suất,…)
|Hỗ trợ việc quản trị (lập báo cáo phân tích dòng tiền, doanh thu, lợi nhuận,…)', N'|最大支持以低成本生產產品（原材料、人工、折舊……）
|業務支持（客戶分類、消耗品……）
|財政支持（貸款來源、利率等）
|管理支持（製作現金流、收入、利潤等分析報告）', N'|Maximize the production of low-cost products (raw materials, labor, depreciation, ...)
|Business support (customer classification, consumable goods, ...)
|Financial support (loan sources, interest rates, ...)
|Support the administration (make an analysis report of cash flow, revenue, profit, ...)', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'會計系統是重要的組成部分，有助於穩定財務體系，為企業的發展奠定堅實的基礎。會計系統適當地提供所有必要的信息：', N'The accounting system is an important part, contributing to stabilizing the financial system and building a solid foundation for the development of the business. An appropriate accounting system provides all the information needed to:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'3', N'No title', N'Trong một số trường hợp đặc biệt, chúng tôi sẽ có nhân viên dày dặn kinh nghiệm để xử lý vấn đề liên quan đến cơ quan chính quyền sở tại.
', N'在一些特殊情況下，我們將有經驗豐富的員工來處理與地方當局有關的事務。', N'In some special cases, we have experienced staff to handle matters related to local government agencies.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'No title', N'No title')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'30', N'Quy trình xây dựng tư vấn thiết lập hệ thống kế toán:', N'|Bước 1: Xác định mục tiêu của hệ thống kế toán.
|Bước 2: Xác định các trung tâm trách nhiệm.
|Bước 3: Xây dựng hệ thống phân loại trong kế toán.
|Bước 4: Xây dựng hệ thống báo cáo.
|Bước 5: Lựa chọn phương pháp kế toán quản trị chi phí và giá thành dịch vụ.
|Bước 6: Thiết kế hệ thống chứng từ, tài khoản.
|Bước 7: Xây dựng hệ thống dự toán.
|Bước 8: Soạn thảo Quy định về thực hiện kế toán. 
|Bước 9: Triển khai hệ thống kế toán.', N'|第1 步：確定會計系統的目標。
|第2 步：確定責任中心。
|第3 步：建立會計分類系統。
|第4 步：建立報告系統。
|第5 步：選擇成本管理會計方法和服務成本。
|第6 步：設計憑證和帳戶系統。
|第7 步：建立預算系統。
|第8 步：起草會計實施條例。
|第9 步：實施會計系統', N'|Step 1: Determine the goals of the accounting system.
|Step 2: Identify responsibility centers.
|Step 3: Build a classification system in accounting.
|Step 4: Build a reporting system.
|Step 5: Select cost management accounting method and service cost.
|Step 6: Design the system of vouchers and accounts.
|Step 7: Build a budgeting system.
|Step 8: Drafting regulations on accounting implementation.
|Step 9: Deploy the accounting system.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'建立會計系統諮詢的流程：', N'The process of consulting and setting up an accounting system:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'31', N'null', N'Nếu bạn đang có bất cứ thắc mắc nào liên quan Gở rối sổ sách kế toán, dịch vụ kế toán, hoàn thuế, thành lập công ty trọn gói, dịch vụ kế toán thuế, dịch vụ hoàn thuế giá trị gia tăng, dịch vụ báo cáo thuế cuối năm và các vấn đề khác có liên quan bạn có thể liên hệ tới Hinh Lam - <span><span style="color: #0000ff;"><strong>0983</strong></span> <span style="color: #0000ff;"><strong>204 115 -0919 724 872</strong></span> </span> để được tư vấn miễn phí.', N'如果您有任何問題關於會計賬簿故障排除，會計服務，退稅，公司全面成立，稅務會計服務，增值稅退稅服務，年終報稅服務和其他相關問題，您可以聯繫鑫藍公司- <span style="color: #0000ff;"><strong>0983 204 115 -0919 724 872</strong></span> </span> 免費諮詢。', N'If you have any questions about bookkeeping, accounting services, tax refunds, entire company establishment, tax accounting services, value-added tax refund services, services year-end tax reports and other related issues, you can contact Hinh Lam - <span style="color: #0000ff;"><strong>0983 204 115 -0919 724 872</strong></span> </span> for a free consultation.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'32', N'Phần mềm kế toán được phát triển bởi một đội ngũ chuyên gia kế toán, kiểm toán, kỹ thuật viên theo yêu cầu đặc thù của các Doanh nghiệp lớn và doanh nghiệp có quy mô vừa và nhỏ khác.', N'|Hỗ trợ chuyên nghiệp
|Hướng dẫn chi tiết
|Cập nhật thường xuyên', N'|專業支持
|詳細說明
|定期更新', N'|Professional support
|Detailed instructions
|Updated frequently', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'會計軟件是根據大型企業和中小企業特殊要求，由會計、審計、技術專家組成的隊伍開發的。', N'Accounting software is developed by a team of accounting experts, auditors, technicians according to the specific requirements of large enterprises and other small and medium-sized enterprises.')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'33', N'Đối tác', N'null', N'null', N'null', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'夥伴', N'Partners')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'34', N'Đầy đủ nghiệp vụ:', N'Đáp ứng đầy đủ nghiệp vụ theo Thông tư 32/2011/TT-BTC, Thông tư 39/2014/TT-BTC và sẵn sàng đáp ứng Nghị định 119/2018/NĐ-CP, Thông tư 68/2019/TT-BTC, Nghị định 123/2020/NĐ-CP.', N'根據第 32/2011/TT-BTC號通知， 第39/2014/TT-BTC 號通知並隨時符合第119/2018/ND-CP號議定，第68/2019/TT-BTC號通知 ，第 123/2020/ND-CP號議定符合全程的專業要求。', N'Fully meeting professional requirements according to Circular 32/2011/TT-BTC, Circular 39/2014/TT-BTC and ready to meet Decree 119/2018/ND-CP, Circular 68/ 2019/TT-BTC, Decree 123/2020/ND-CP.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'全程業務：', N'Fully qualified: ')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'35', N'Quản trị toàn diện:', N'Người bán thực hiện phát hành, quản lý, báo cáo hóa đơn mọi lúc, mọi nơi qua mobile, website, desktop.', N'賣家通過手機、網站和電腦隨時隨地開具、管理和發票報告的作業。', N'Sellers issue, manage, and report invoices anytime, anywhere via mobile, website, and desktop.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'綜合管理：', N'Comprehensive management:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'36', N'An toàn, bảo mật: ', N'Phần mềm hóa đơn điện tử đầu tiên tại Việt Nam ứng dụng công nghệ Blockchain đảm bảo an toàn, bảo mật và chống làm giả hóa đơn.', N'越南第一個區塊鏈技術應用確保發票安全、保密和防偽的電子發票軟件。', N'The first e-invoice software in Vietnam that applies Blockchain technology to ensure safety, security and anti-counterfeiting of invoices.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'安全,保障：', N'Safety and security:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'37', N'null', N'Hinh Lam đồng hành cùng các nhà cung cấp hóa đơn điện tử uy tín nhất Việt Nam

', N'鑫藍伴隨越南最負盛名的電子發票供應商合作', N'Hinh Lam accompanies the most prestigious e-invoice suppliers in Vietnam.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 4, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'38', N'Đối tác', N'|Chữ ký số hoạt động theo giấy phép GP-BTTTT do Bộ Thông tin và Truyền thông cấp.
|Chữ Ký Số có hệ thống vận hành bảo mật và an ninh thông tin đáp ứng tiêu chuẩn quốc tế FIPS PUB 140-2.
|Đáp ứng hầu hết các giao dịch điện tử.', N'|根據信息和通信部頒發的 GP-BTTTT 許可證運行的數字簽名。
|數字簽名具有符合國際標準 FIPS PUB 140-2 的安全操作系統和信息安全性。
|幾乎符合各電子交易。', N'|The digital signature operates under the license GP-BTTTT issued by the Ministry of Information and Communications.
|Digital Signature has a secure operating system and information security that meets the international standard FIPS PUB 140-2.
|Meet most electronic transactions.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'夥伴', N'Partner')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'39', N'Tiện ích của chữ ký số:', N'|Nộp thuế môn bài công ty trực tuyến qua mạng.
|Dùng để kê khai Bảo hiểm xã hội.
|Dùng để kê khai làm thủ tục bên hải quan
|Dùng để kê khai thuế lên chi cục thuế', N'|通過互聯網在線支付企業牌照稅。
|用於申報社會保險。
|用於申報和辦理海關手續。
|用於向稅務部門申報稅。', N'|Pay corporate license tax online.
|Using in declaring Social Insurance.
|Using in declaring and doing customs procedures.
|Using in declaring tax to the tax office.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'數字簽名的好處：', N'Benefits of digital signatures:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'4', N'Dịch vụ kế toán trọn gói bao gồm những gì:', N'|Tiếp nhận thông tin|Tiến hành hạch toán và lập báo cáo thuế|Tiến hành trao đổi và bàn giao chứng từ hàng tháng', N'|接收信息
|進行稅務核算並編制稅務報告
|每月進行移交文件。
', N'|Receive information.|Conduct tax accounting and prepare tax reports.|Conduct monthly exchange and handover of documents.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'全套的會計服務包括：', N'Complete-Package accounting services include:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'40', N'Hồ sơ đăng ký gồm:', N'|01 Bản sao giấy đăng ký kinh doanh hoặc quyết định thành lập của đơn vị, tổ chức, doanh nghiệp.
|01 Bản sao CMND hoặc hộ chiếu người đại diện pháp lý.', N'|單位、組織或企業的商業登記證或成立決定的複印件01 份。
|法定代表人的身份證或護照複印件01 份。', N'|01 copy of business registration certificate or establishment decision of the unit, organization or enterprise.
|01 Copy of ID card or passport of the legal representative.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'註冊文件包括：', N'Registration documents include:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'41', N'Hinh Lam gửi quý khách: ', N'|Một thiết bị USB TOKEN chữ ký số.
|Một giấy chứng nhận sử dụng chứng thư số.
|Một hóa đơn VAT tương ứng với gói cước dịch vụ mà Quý khách đã đăng ký.
|Một bản hợp đồng cung cấp dịch vụ.
|Thông tin tài khoản đăng nhập gồm Tên đăng nhập và Mật khẩu của quý khách.', N'|數字簽名的 USB TOKEN 設備一個。
|使用數字證書的證書一份。
|與您登記全套服務對應的增值稅發票一份。
|提供服務合同一份。
|登錄帳戶信息包括您的用戶名和密碼。', N'|A digitally signature USB TOKEN device.
|A certificate using a digital certificate.
|A VAT invoice corresponding to the service package that you have registered.
|A contract for the provision of services.
|Login account information includes your Username and Password.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 4, N'鑫藍致您：', N'Hinh Lam will provide to you:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'42', N'Phần mềm kê khai Bảo Hiểm Xã Hội điện tử KBHXH: Giải pháp hiệu quả cho việc quản lý Bảo Hiểm Xã Hội của Doanh nghiệp:', N'Phần mềm kê khai Bảo Hiểm Xã Hội điện tử KBHXH là một công cụ đột phá giúp Doanh nghiệp thực hiện quy trình kê khai Bảo Hiểm Xã Hội một cách nhanh chóng và tiện lợi. Với KBHXH, việc quản lý các bộ hồ sơ liên quan đến Bảo Hiểm Xã Hội trở nên dễ dàng và hiệu quả hơn bao giờ hết.', N'电子社会保险申报软件KBHXH是一款突破性工具，帮助企业高效完成社会保险申报流程。通过KBHXH，管理与社会保险相关的记录变得比以往任何时候都更加轻松和高效。', N'The electronic social insurance declaration software KBHXH is a breakthrough tool that helps businesses efficiently carry out the process of declaring social insurance. With KBHXH, managing records related to Social Insurance becomes easier and more efficient than ever before.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'电子社会保险申报软件KBHXH：企业社会保险管理的有效解决方案：', N'Electronic Social Insurance Declaration Software KBHXH: An Effective Solution for Enterprise Social Insurance Management:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'43', N'Đối tượng người nước ngoài nào được cấp giấy phép lao động tại Việt Nam:', N'|Thực hiện hợp đồng lao động.
|Di chuyển trong nội bộ doanh nghiệp.
|Thực hiện các loại hợp đồng hoặc thỏa thuận về kinh tế, thương mại, tài chính, ngân hàng, bảo hiểm, khoa học kỹ thuật, văn hóa, thể thao, giáo dục, giáo dục nghề nghiệp và y tế.
|Nhà cung cấp dịch vụ theo hợp đồng.
|Chào bán dịch vụ.
|Làm việc cho tổ chức phi chính phủ nước ngoài, tổ chức quốc tế tại Việt Nam được phép hoạt động theo quy định của pháp luật Việt Nam.
|Tình nguyện viên.
|Người chịu trách nhiệm thành lập hiện diện thương mại.
|Nhà quản lý, giám đốc điều hành, chuyên gia, lao động kỹ thuật.
|Tham gia thực hiện các gói thầu, dự án tại Việt Nam.
|Thân nhân thành viên cơ quan đại diện nước ngoài tại Việt Nam được phép làm việc tại Việt Nam theo quy định tại điều ước quốc tế mà nước |Cộng hòa xã hội chủ nghĩa Việt Nam là thành viên.', N'|執行勞動合同。
|在企業內部移動。
|履行經濟、商業、金融、銀行、保險、科技、文化、體育、教育、職業教育、衛生等方面的各類合同或協議。
|根據合同服務的供應商。
|提供服務。
|為外國非政府組織工作，允許在越南的國際組織按照越南法律的規定開展營業。
|志願者。
|負責建立商業存在的人。
|經理、高管、專家、技術工人。
|參與實施在越南的投標和項目的。
|根據越南社會主義共和國簽署國際條約的規定，允許外國駐越南代表機構成員的親屬在越南工作。', N'|Execution of employment contract.
|Moving within the enterprise.
|Performing all kinds of contracts or agreements on economic, commercial, financial, banking, insurance, scientific and technical, cultural, sports, education, vocational education and health sectors.
|Contracted service provider.
|Offering services.
|Working for foreign non-governmental organizations, international organizations in Vietnam are allowed to operate following the provisions of Vietnamese Law.
|Volunteers.
|The person is responsible for establishing a commercial presence.
|Managers, executives, experts, technical workers.
|Participating in the implementation of bidding packages and projects in Vietnam.
|Relatives of members of foreign representative missions in Vietnam are allowed to work in Vietnam according to the provisions of international treaties that Vietnam is a signatory.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'在越南獲得工作許可的外國人：', N'Foreigners who are granted a work permit in Vietnam:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'44', N'Hồ sơ xin cấp giấy phép theo quy định mới bao gồm:', N'|1. Đơn đề nghị  xin cấp giấy phép lao động theo Mẫu số 11/PLI - Phụ lục 11 (Kèm theo Nghị định số 152/2020/NĐ-CP ngày 30 tháng 12 năm 2020 của Chính phủ).
|2. Giấy chứng nhận sức khỏe khám tại nước ngoài hoặc giấy khám sức khỏe khám tại Việt Nam tại các bệnh viện, phòng khám, có sở y tế đủ điều kiện theo quy định của Bộ y tế ( trong thời hạn 12 tháng).
|3. Lý lịch tư pháp của người nước ngoài cấp tại nước ngoài hoặc phiếu lý lịch số 1 được cấp tại Việt Nam (Được cấp không quá 06 tháng).
|4. Văn bản thông báo chấp thuận vị trí công việc sử dụng người lao động nước ngoài.
|5. Bản chứng thực hộ chiếu và visa của người nước ngoài.
|6. Văn bản chứng minh là quản lý, giám đốc điều hành, chuyên gia, lao động kỹ thuật, giáo viên ( Bằng đại học, giấy xác nhận kinh nghiệm làm việc nước ngoài tối thiểu là 03 năm,…)
|Ngoài ra, đối với các ngành, nghề có yêu cầu đặc biệt (cầu thủ bóng đá, phi công, bảo dưỡng máy bay) hoặc các trường hợp lao động nước ngoài cung cấp dịch vụ hoặc thực hiện hợp đồng, chào bán dịch vụ…tại Việt Nam, hồ sơ sẽ bao gồm các giấy tờ khác theo quy định của pháp luật.
|7. 02 ảnh chân dung, kích thước 4x6, phông nền trắng, không đeo kính.
|8. Các giấy tờ liên quan đến người lao động nước ngoài ( tùy từng trường hợp theo quy định: Quyết định bổ nhiệm của công ty mẹ, hợp đồng lao động, Điều lệ công ty…)
|<em>Lưu ý: Các giấy tờ được cấp ở nước ngoài hoặc được cấp bởi cơ quan Đại diện ngoại giao của nước ngoài tại Việt Nam phải được Hợp pháp hoá lãnh sự và dịch thuật công chứng ra tiếng Việt.</em>', N'|1. 根據第11 附錄- 第11/PLI 號表格之申請工作許可證的申請表（附件政府於2020 年12 月30 日第152/2020/ND-CP 號議定)。
|2. 在國外體檢的健康證明或在越南衛生部規定的醫院、診所和有資質的衛生部門進行體檢的體檢證明（12個月內）。
|3. 外國人在國外出具的司法記錄或在越南出具的1號簡歷（發行時間不超06個月內出具）。
|4. 批准聘用外籍工人工作崗位的書面通知。
|5. 外國人護照和簽證的核證副本。
|6. 證明您是經理、執行董事、專家、技術工人、教師的文件（大學學歷，至少03年的外國工作經驗證明，...）
|此外，對於有特殊要求的行業和職業（足球運動員、飛行員、飛機維修）或在越南提供服務或履行合同、提供銷售服務的外國工人的情況下，申請檔案將根據法律規定包含的其他文件。
|7.人像照片02張，尺寸4x6，白底，不戴眼鏡。
|8. 外勞相關文件（視情況而定：母公司聘任決定、勞動合同、公司章程……）
|<em>注：國外簽發或外國駐越南使領館簽發的文件必須經領事認證並公證翻譯成越南文。</em>', N'|1. An application for a work permit, made according to Form No. 11/PLI - Appendix 11 (Attached to Decree No. 152/2020/ND-CP dated December 30, 2020, Government).
|2. Health certificate of medical examination abroad or medical examination certificate of medical examination in Vietnam at hospitals, clinics or health departments that fully meet the conditions prescribed by the Ministry of Health (within 12 months).
|3. Judicial record of foreigners issued abroad or record card No. 1 issued in Vietnam (issued within 06 months).
|4. Written notice of approval of the job position employing foreign workers.
|5. Authenticated passport and visa of foreigners.
|6. Documents proving that you are a manager, executive director, expert, technical worker, teacher (University degree, Certificate of foreign working experience of at least 03 years, ...) In addition, for industries and occupations with special requirements (soccer players, pilots, aircraft maintenance) or cases where foreign workers provide services or perform contracts, offer services for sale… in Vietnam, the dossier will include other documents as prescribed by Law.)
|7. 02 portrait photos, size 4x6, white background, no glasses.
|8. Documents related to foreign workers (depending on the case as prescribed: Appointment decision of the parent company, labor contract, company charter...)
|<em>Note: Papers issued abroad or issued by diplomatic missions of foreign countries in Vietnam must be consularly consolidated and notarized translated into Vietnamese.</em>', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'新規定的許可申請文件包括：', N'An application file for a license under the new regulations includes:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'45', N'Quy trình tự chuẩn bị hồ sơ và đăng ký khá mất nhiều thời gian khi Quý khách chưa thành thạo, Công ty Hinh Lam rất hân hạnh hỗ trợ quý khách hoàn thành quá trình đăng ký giấy phép lao động cho người nước ngoài:', N'|Dịch, công chứng dịch, hợp pháp lãnh sự các tài liệu phục vụ cho việc cấp giấy phép lao động.
|Tư vấn điều kiện để được cấp giấy phép lao động tại Việt Nam.
|Hoàn thiện hồ sơ cấp giấy phép lao động tại Việt Nam cho khách hàng.
|Tư vấn các trường hợp không thuộc diện phải cấp giấy phép lao động và thực hiện thủ tục cấp xác nhận thuộc trường hợp không phải xin cấp giấy phép lao động.
|Đại diện doanh nghiệp và người lao động thực hiện thủ tục xin cấp giấy phép lao động tại cơ quan nhà nước có thẩm quyền.
|Tư vấn, hướng dẫn chuẩn bị hồ sơ cấp thẻ tạm trú cho người nước ngoài sau khi được cấp giấy phép lao động.', N'|翻譯、翻譯公證、領事認證為工作許可證簽發服務的文件。
|在越南獲得工作許可的諮詢條件。
|為客戶完成在越南的工作許可申請。
|不受工作許可限制的情況提供諮詢並辦理不需要申請工作許可的情況下授予認證的程序。
|企業和員工代表在國家有職權機構辦理申請工作許可的程序。
|諮詢和指導外國人獲得工作許可後準備發放臨時居留卡的文件。', N'|We offer translation, notarization, and help with documents for work permit issuance.
|Get advice on the requirements for obtaining a work permit in Vietnam.
|We''ll handle the application for your work permit in Vietnam.
|If you don''t need a work permit, we''ll guide you through the procedures and provide necessary confirmation.
|Let us be your representatives to apply for a work permit at the appropriate government agency.
|We''ll assist you in preparing the documents needed for a temporary residence card after obtaining your work permit.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'|翻譯、翻譯公證、領事認證為工作許可證簽發服務的文件。
|在越南獲得工作許可的諮詢條件。
|為客戶完成在越南的工作許可申請。
|不受工作許可限制的情況提供諮詢並辦理不需要申請工作許可的情況下授予認證的程序。
|企業和員工代表在國家有職權機構辦理申請工作許可的程序。
|諮詢和指導外國人獲得工作許可後準備發放臨時居留卡的文件。', N'The process of preparing documents and registering might take a long time if you are unfamiliar with the process. Hinh Lam Company is pleased to assist you to complete the process of applying for a work permit for foreigners.')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'46', N'Thủ tục xin cấp thị thực (visa) cho người nước ngoài sau khi có công văn nhập cảnh.', N'Khi có Công văn nhập cảnh, Khách hàng làm thủ tục nhập cảnh (tại Đại sứ quán hoặc Cửa khẩu quốc tế Nội Bài, Tân Sơn Nhất, Đà Nẵng…), đóng thêm lệ phí xin visa là có thể yên tâm vào Việt Nam theo đúng nhu cầu mong muốn, thủ tục bao gồm:
|Hộ chiếu gốc.
|Công văn chấp thuận thị thực bản photo.
|02 Ảnh hộ chiếu 4 cm x 6 cm.
|Đơn khai nhập cảnh theo mẫu: NA1/NG1/...
|Lệ phí cấp visa (Khách hàng nộp phí theo giá trị visa tương ứng).', N'有入境信函時，辦理入境手續的客戶（在大使館或內排，新山一，峴港國際邊境口岸...），支付額外的簽證申請費，為了能夠根據需要安全進入越南，程序包括：
|護照原件。
|證批准函復印件。
|02 護照照片 4cm x 6cm。
|入境申報表：NA1/NG1/...
|簽證簽發費（客戶根據相應簽證價值支付費用）。', N'When there is an official entry document, customers can go through immigration procedures (at the Embassy or Noi Bai international border gate, Tan Son Nhat, Da Nang ...), pay an additional fee for visa application, and enter Vietnam with peace of mind. According to the desired needs, the procedure includes:
|Original passport.
|Photocopy of the visa approval letter.
|02 Passport photo 4 cm x 6 cm.
|Entry form: NA1/NG1/...
|Visa issuance fee (Customers pay the fee according to the corresponding visa value).', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'外國人在收到入境函文後申請簽證（visa）的程序。', N'Procedures for applying for visas for foreigners after receiving a written entry:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'47', N'Trong trường hợp đến Việt Nam ngoài mục đích du lịch thì cần thêm các giấy tờ sau:', N'|Bản sao công chứng Giấy chứng nhận đăng ký kinh doanh hoặc giấy tờ có giá trị tương đương.
|Bản sao công chứng Giấy chứng nhận đăng ký mẫu dấu.', N'|商業登記證或同等文件公證副本。
|印章樣本登記證書公證副本。', N'|Notarized copy of business registration certificate or equivalent document.
|Notarized copy of seal specimen registration certificate.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'非旅遊目的來越南之情況需要以下附加文件：', N'In case of coming to Vietnam for tourism purposes, the following documents are required:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'48', N'Dịch vụ xin cấp thị thực/visa cho người nước ngoài tại Việt Nam của Công ty Hinh Lam:', N'|Hướng dẫn khách hàng chuẩn bị các loại giấy tờ, tài liệu cần thiết để xin cấp visa cho người lao động nước ngoài.
|Hoàn thiện hồ sơ xin cấp visa tại Việt Nam cho khách hàng.
|Thay mặt khách hàng thực hiện thủ tục cấp visa tại cơ quan nhà nước có thẩm quyền.', N'|指導客戶準備文件和為外勞申請簽證必要的文件。
|為客戶完成越南簽證申請。
|代表客戶在國家有職權機關辦理簽證手續。 ', N'|Guide customers to prepare necessary papers and documents to apply for a visa for foreign workers.
|Completing visa application documents in Vietnam for customers.
|On behalf of customers to carry out visa procedures at competent state agencies.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'鑫藍公司為外國人在越南的簽證/簽證申請服務：', N'Visa/visa application service for foreigners in Vietnam of Hinh Lam Company:

')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'49', N'null', N'Liên hệ ngay để có được sự hỗ trợ nhanh nhất, hiệu quả, tư vấn hoàn toàn miễn phí.', N'立即聯繫我們以獲得最快、有效的支持，完全免費的諮詢。', N'Contact us now to get the fastest, practical support, completely free consultation.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 4, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'5', N'Đối tượng phù hợp sử dụng dịch vụ này:', N'|Cần tìm một dịch vụ giúp giải quyết tất cả mọi thứ liên quan đến Luật Kế toán, thông tư, nghị định, chuẩn mực kế toán để doanh nghiệp an tâm kinh doanh không lo đụng phải vấn đề pháp lý.|Doanh nghiệp mới thành lập, không biết bắt đầu từ đâu để tránh rủi ro về sau.|Doanh nghiệp vừa và nhỏ, chưa tuyển được Kế toán có kinh nghiệm, nội bộ ít người.|Doanh nghiệp đang thuê kế toán viên bên ngoài mang hồ sơ về nhà làm, điều này rủi ro nếu đột nhiên Kế toán bất khả kháng không thể làm được tiếp.|Các công ty cần quản lý toàn bộ hệ thống kế toán cũng như dọn dẹp sổ sách, quyết toán thuế hàng tháng, quyết toán thuế cuối năm và làm việc với cơ quan thuế.', N'|需要找到一項服務來幫助解決與《會計法》、通知、法令、會計準則相關的所有問題，以便企業可以放心地開展業務，而不必擔心法律問題。|新成立的企業，不知道從哪裡開始避免未來的風險。 |中小型企業，尚未招聘有經驗的會計師，內部人員很少。|企業僱用外聘會計師帶回家作業記帳，如果突然不可抗力會計師無法繼續，這是有風險的。|公司需要管理整個會計系統以及清理賬簿，月結報稅、年終報稅和與稅務機關的工作。', N'|You need to find a service to help solve everything related to the Law on Accounting, circulars, decrees, and accounting standards to do business without worrying about legal problems.|Your newly established businesses do not know where to start to avoid risks later.|Your enterprises have not yet recruited experienced accountants, few internal staff.|Your enterprises are hiring work-from-home external accountants; this is a risky document loss if the accountant suddenly cannot continue.|Your companies need to manage the entire accounting system, clean up the books, make monthly tax finalization, year-end tax finalization, and work with tax authorities.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'適合使用本服務的對象：', N'You should use this service if:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'50', N'Dịch vụ đổi giấy phép lái xe cho người nước ngoài của Công ty Hinh Lam:', N'|Hướng dẫn khách hàng chuẩn bị các loại giấy tờ, tài liệu cần thiết để xin cấp visa cho người lao động nước ngoài.
|Hoàn thiện hồ sơ xin cấp visa tại Việt Nam cho khách hàng.
|Thay mặt khách hàng thực hiện thủ tục cấp visa tại cơ quan nhà nước có thẩm quyền.', N'|指導客戶準備文件和為外勞申請簽證必要的文件。
|為客戶完成越南簽證申請。
|代表客戶在國家有職權機關辦理簽證手續。', N'|Guiding customers to prepare necessary papers and documents to apply for a visa for foreign workers.
|Completing visa application documents in Vietnam for customers.
|On behalf of customers to carry out visa procedures at competent state agencies.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'鑫藍公司為外國人更換駕駛證服務：

', N'Service of applying for replacement driver''s license for foreigners of Hinh Lam Company:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'51', N'Hồ sơ cần chuẩn bị:', N'|Đơn đề nghị đổi giấy phép lái xe theo mẫu quy định (mẫu dùng cho người nước ngoài).
|Bản dịch giấy phép lái xe nước ngoài ra tiếng Việt được bảo chứng chất lượng dịch thuật của cơ quan Công chứng hoặc Đại sứ quán, Lãnh sự quán tại Việt Nam mà người dịch làm việc, đóng dấu giáp lai với bản sao giấy phép lái xe.', N'|根據規定申請更改駕駛執照的表格（於外國人使用的表格）。
|將外國駕照翻譯成越南語由公證機構或翻譯工作人的越南大使館或領事館保證翻譯質量，在駕駛執照副本蓋上騎縫章。', N'|An application form for changing the driving license according to the prescribed form (for foreigners).
|The translation of the foreign driver''s license into Vietnamese is guaranteed by the translation quality of the Notary Public or the Embassy or Consulate in Vietnam where the translator works, stamped adjacent to the copy of the driver''s license.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'需要準備的文件：', N'Documents to be prepared:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'52', N'null', N'Đối với người Việt Nam xuất trình hợp pháp hóa lãnh sự giấy phép lái xe hoặc bằng lái xe của nước ngoài theo quy định của pháp luật về chứng nhận lãnh sự, hợp pháp hóa lãnh sự, trừ các trường hợp được miễn trừ theo quy định của pháp luật.
|Bản sao hộ chiếu (gồm phần số hộ chiếu, họ tên và ảnh người được cấp, thời hạn sử dụng và trang thị thực nhập cảnh vào Việt Nam).
|Bản sao chụp một trong các giấy tờ sau đây: thẻ cư trú, thẻ lưu trú, thẻ tạm trú, thẻ thường trú, giấy tờ xác minh định cư lâu dài tại Việt Nam.
|2 ảnh 3×4 nền xanh như thẻ căn cước hoặc CMND.', N'越南人根據領事認證和合法化的法律出示領事認證的駕駛執照或外國駕駛執照，但本法規定豁免的情況除外。
|護照複印件（包括護照號碼、簽發人的全名和照片、有使用效期和越南入境簽證頁）。
|以下文件之一的複印件：居留卡、居留卡、臨時居留卡、永久居留卡、證明在越南長期居留的文件。
|2 張 3×4 藍色背景的照片，如身份證或公民身份證。', N'For Vietnamese, the person must produce a consular legalized driving license or foreign driver''s license by the Law on consular certification and legalization, except for cases exempted according to regulations of the Law.
|Copy of passport (including passport number, full name and photo of the issued person, expiry date and entry visa page to Vietnam).
|A photocopy of one of the following papers: residence card, residence card, temporary residence card, permanent residence card, papers verifying long-term residence in Vietnam.
|02 photos (3x4) with a green background such as an ID card or ID card.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'53', N'Điều kiện đổi giấy phép lái xe quy định như sau:', N'|Người nước ngoài có thời gian cư trú, làm việc, học tập tại Việt Nam từ 03 tháng trở lên.
|Giấy phép lái xe nước ngoài còn đủ các yếu tố cần thiết: Còn thời hạn sử dụng, hạng xe được phép điều khiển, không có biểu hiện tẩy xóa hoặc rách nát, không có sự khác biệt về nhận dạng.
|Không đổi giấy phép lái xe tạm thời của nước ngoài, giấy phép lái xe quốc tế.', N'|在越南居住、工作或學習3個月或以上的外國人。
|外國駕照仍然具有所有必要的要素：有效期、允許駕駛的車輛類別、沒有擦除或撕毀的跡象、沒有識別差異。
|不更換臨時外國駕照、國際駕照。', N'|Foreigners who have resided, worked or studied in Vietnam for 3 months or more.
|The foreign driver''s license still has all the necessary elements: the expiry date, the class of the vehicle allowed to drive, no signs of erasing or tearing, and no identification difference.
|Do not change temporary foreign driver''s license, international driving license.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 4, N'更換駕駛執照的條件​​如下：', N'Conditions for changing a driver''s license are as follows:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'54', N'null', N'Cơ quan có thẩm quyền đổi giấy phép lái xe là Tổng cục Đường bộ Việt Nam hoặc Sở Giao thông vận tải (nơi đăng ký cư trú, lưu trú, tạm trú hoặc định cư lâu dài).', N'有權更改駕駛執照的機構是越南道路局或交通部（登記為居住地、居住地、“臨時居住地”或永久居住地）。', N'The agency competent to change the driver''s license is the Directorate for Roads of Vietnam or the Department of Transport (where registered for residence, stay, temporary residence or permanent residence).

 ', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 5, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'55', N'Hiện nay, để đảm bảo thực hiện các biện pháp an toàn phòng, chống dịch Covid-19, Chính phủ Việt Nam chỉ giải quyết cho người nước ngoài là:', N'|- Nhà đầu tư.
|- Chuyên gia kỹ thuật.
|- Lao động tay nghề cao.
|- Nhà quản lý doanh nghiệp vào Việt Nam làm việc và phải đảm bảo phương án cách ly.
|- Thân nhân là cha, mẹ, vợ, chồng, con của chuyên gia nước ngoài.
|- Học sinh, sinh viên nước ngoài đang học tập tại Việt Nam.
|- Người hoặc tổ chức được các cơ quan, tổ chức tại Việt Nam mời, đón nhập cảnh.', N'- 投資者。
- 技術專家。
- 高技能外勞。
- 業務經理來越南工作，必須確保隔離計劃。
- 親屬是外國專家的父親、母親、妻子、丈夫、孩子。
- 在越南學習的外國學生，大學生。
- 由越南的機構和組織邀請，歡迎入境的個人或組織。', N'|- Investors.
|- Technical experts.
|- Skilled labor.
|- Business managers come to Vietnam to work and must ensure the isolation plan.
|- Relatives are father, mother, wife, husband and children of foreign experts.
|- International students who is studying in Vietnam.
|- Persons or organizations invited or welcomed by agencies or organizations in Vietnam.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'目前，為確保實施預防和控制 Covid-19 流行病的安全措施，越南政府只給外國人解決：', N'Currently, to ensure the implementation of safety measures to prevent and control the Covid-19 epidemic, the Vietnamese Government only deals with foreigners who are:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'56', N'null', N'|Người nước ngoài thuộc các diện đối tượng này, nếu có nhu cầu nhập cảnh Việt Nam trong thời điểm hiện nay, cần liên hệ với cơ quan, tổ chức tại Việt Nam nơi dự kiến làm việc để làm thủ tục cấp thị thực nhập cảnh theo quy định. Cục Quản lý xuất nhập cảnh sẽ xem xét, giải quyết sau khi Ủy ban nhân dân tỉnh, thành phố trực thuộc Trung ương đồng ý về việc nhập cảnh của Người nước ngoài  thuộc các diện đối tượng trên theo đề nghị của cơ quan, tổ chức tại Việt Nam.
|Việc cách ly đối với Người nước ngoài nhập cảnh Việt Nam đang thực hiện theo Hướng dẫn tại công văn số 4674/BYT-MT ngày 31/8/2020 của Bộ Y tế.', N'|屬於該對象的外國人，如果此時有需要入境越南，需要聯繫他們預定工作地點的越南機構和組織，按規定辦理入境簽發手續。應中央直屬省，市人民委員會同意後應越南機構和組織的要求屬於上述對象的外國人入境，出入境管理局將予以考慮和處理。
|根據衛生部2020 年8 月31 日發布的第4674/BYT-MT 號官方通知的指導，對入境越南的外國人進行隔離。', N'|Foreigners falling under these subject categories, if they wish to enter Vietnam at the current time, need to contact the relevant agency or organization in Vietnam where they intend to work to complete the procedures for obtaining an entry visa according to regulations. The Immigration Department will consider and handle the visa application after the Provincial People''s Committee of the Centralized Central Committee agrees on the entry of foreigners belonging to the mentioned subject categories based on the request from the agency or organization in Vietnam.
|Regarding quarantine measures for foreign visitors entering Vietnam, they are currently being implemented according to the guidelines in official letter number 4674/BYT-MT dated August 31, 2020, issued by the Ministry of Health.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'57', N'Hinh Lam cung cấp dịch vụ xin phép nhập cảnh vào Việt Nam', N'|Xin công văn chấp thuận của UBND.
|Tiến hành xin Công Văn Nhập Cảnh trên Cục xuất nhập cảnh.
|Xin công văn phương án cách ly tại trung tâm kiểm dịch quốc tế tại HCM.
|Booking vé máy bay.
|Booking khách sạn.
|Đặt xe y tế đưa đón từ sân bay về khách sạn.', N'|由人民委員會申請批准公文。
|在出入境事務處進行申請入境公文。
|在胡志明市國際檢疫中心申請隔離方案的公文。
|機票預訂。
|酒店預訂。
|預訂醫療車接送從機場到酒店。', N'|Apply for approval from the People''s Committee.
|Proceed to apply for the Immigration Official on the Immigration Department.
|Apply for dispatch of the isolation plan at the international quarantine center in Ho Chi Minh City.
|Air ticket booking.
|Hotel booking.
|Book a medical car to take you from the airport to the hotel.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'鑫蓋提供申請越南入境許可證的服務', N'Hinh Lam provides the service of applying for an entry permit to Vietnam:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'58', N'null', N'|Để tiếp tục triển khai Nghị định số 45/2020/NĐ-CP ngày 8/4/2020 của Chính phủ về thực hiện thủ tục hành chính trên môi trường điện tử; đảm bảo thực hiện đầy đủ các quy trình nghiệp vụ về giao dịch điện tử trong lĩnh vực BHXH, BHYT, BH thất nghiệp, BHXH Việt Nam vừa ban hành Công văn số 702/BHXH-CNTT về việc bổ sung hướng dẫn triển khai giao dịch điện tử đối với cá nhân.

|Theo đó, BHXH Việt Nam yêu cầu BHXH các tỉnh, thành phố trực thuộc Trung ương thực hiện các nội dung sau:

|Thứ nhất, triển khai đăng ký giao dịch điện tử cho cá nhân dưới 18 tuổi chưa có chứng minh nhân dân (CMND) hoặc thẻ căn cước công dân (CCCD).', N'|继续执行2020年4月8日关于在电子环境中实施行政程序的第45/2020/ND-CP号政府令；为了确保在社会保险、健康保险、失业保险领域全面实施电子交易的专业流程，越南社会保障刚刚为个人颁发了官方信函编号电子翻译。

|据此，越南社会保障要求各省和直辖市的社会保险机构落实以下内容：

|一是对18岁以下无身份证（ID卡）、公民身份证（CCCD）的个人实施电子交易登记。', N'|To continue implementing Decree No. 45/2020/ND-CP dated April 8, 2020 of the Government on implementing administrative procedures in the electronic environment; ensuring the full implementation of professional processes on electronic transactions in the fields of social insurance, health insurance, unemployment insurance, Vietnam Social Security has just issued Official Letter No. Electronic translation for individuals.

|Accordingly, Vietnam Social Security requires social insurance agencies of provinces and centrally-run cities to implement the following contents:

|Firstly, deploying electronic transaction registration for individuals under 18 years old without identity card (ID card).', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'59', N'null', N'Có 02 cách đăng ký, cụ thể:
|- Đăng ký thông qua tài khoản của cha hoặc mẹ hoặc người giám hộ. Lưu ý: Cha hoặc mẹ hoặc người giám hộ cần có tài khoản giao dịch điện tử với cơ quan BHXH.
|- Đăng ký trực tiếp trên Cổng Dịch vụ công của BHXH Việt Nam.', N'有两种注册方式，具体如下：

|- 通过父母或监护人的账户注册。注意：父母或监护人需要在越南社会保险机构拥有电子交易账户。

|- 直接在越南社会保险机构的在线服务门户上注册。', N'There are 2 ways to register, specifically:

|- Register through the account of the parent or guardian. Note: Parents or guardians need to have an electronic transaction account with the social insurance agency.

|- Register directly on the Public Service Portal of Vietnam Social Security.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'6', N'MỤC TIÊU:', N'Sau khi học xong chương trình, học viên có thể:|- Hiểu được các kiến thức nền tảng về kế toán doanh nghiệp. Biết cách hạch toán kế toán các nghiệp vụ kinh tế xảy ra tại doanh nghiệp. Thực hiện được việc lập chứng từ, ghi sổ kế toán và lập báo cáo tài chính.|- Hiểu được các kiến thức mới nhất về các luật thuế. Thực hiện được nghiệp vụ khai báo thuế cho doanh nghiệp liên quan đến thuế thu nhập cá nhân, thuế thu nhập doanh nghiệp và thuế giá trị gia tăng.', N'完成課程後，學生可以：|- 了解商業會計的基本知識。了解如何對企業發生的經濟交易進行會計處理。能夠辦理製作文件，會計賬簿分錄並編制財務報表。|- 了解最新的稅法知識。為個人所得稅、企業所得稅、增值稅相關業務辦理納稅申報。', N'After completing the program, students can:|- Understand the basic knowledge of business accounting. Know how to account for economic transactions occurring at the enterprise. Able to prepare vouchers, make accounting books and prepare financial statements.|- Understand the latest knowledge about tax laws. Be able to perform tax declaration for businesses related to personal income tax, corporate income tax and value-added tax.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'目標:', N'TARGET:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'60', N'null', N'

Thứ hai, tiếp tục đẩy nhanh tiến độ triển khai đăng ký giao dịch điện tử cho cá nhân với một số điểm lưu ý sau:

|- Giám đốc BHXH các tỉnh, thành phố chỉ đạo phân quyền và giao trách nhiệm cho các cán bộ của các phòng, bộ phận tham gia thực hiện việc xác minh, phê duyệt đăng ký giao dịch điện tử đối với cá nhân.

|- Tiếp nhận và lưu trữ hồ sơ đăng ký giao dịch điện tử với cơ quan BHXH của cá nhân theo đúng hướng dẫn và quy định.

|- Không thực hiện phê duyệt hồ sơ trên hệ thống khi không có đầy đủ thành phần hồ sơ theo quy định.

|- Không trả lại hồ sơ đăng ký giao dịch điện tử của cá nhân thiếu ảnh CMND, chân dung và giấy khai sinh (đối với cá nhân dưới 18 tuổi). Cán bộ tiếp nhận bổ sung khi người dân đến cơ quan BHXH để hoàn tất thủ tục đăng ký giao dịch điện tử.
<p><img src="https://baohiemxahoi.gov.vn:4545/pic/03-HD-HT-BHXH/Angiang-phucvu_20200225102558AM.jpg" alt="" /></p>

|- Không bắt buộc người dân in tờ khai khi đến cơ quan BHXH để hoàn tất thủ tục đăng ký giao dịch điện tử. Trường hợp người dân đến xác minh và phê duyệt mà không mang theo tờ khai, cán bộ tiếp nhận đề nghị người dân cung cấp thông tin số hồ sơ hoặc mã số BHXH trong tin nhắn do cơ quan BHXH Việt Nam gửi sau khi nộp hồ sơ đăng ký thành công. Thực hiện việc đối chiếu, xác minh thông tin, in tờ khai và lấy chữ ký của cá nhân đăng ký, phê duyệt, kích hoạt tài khoản và hướng dẫn người dân cài đặt, sử dụng VssID - Bảo hiểm xã hội số

|- Thực hiện tiếp nhận, xác minh, phê duyệt, hướng dẫn đối với người dân đến để hoàn tất thủ tục đăng ký giao dịch điện tử nhưng trước đó đã lựa chọn cơ quan BHXH khác lúc đăng ký trực tuyến (người dân được quyền đến bất kỳ cơ quan BHXH trong hệ thống ngành BHXH Việt Nam để hoàn tất thủ tục đăng ký).', N'第二，加快个人电子交易注册进程，并注意以下几点：

|- 社会保险机构各省市的主管指导和委托相关人员，参与个人电子交易注册的核实和批准。

|- 按照指导和规定，接收并保存个人的电子交易注册档案。

|- 在系统上不得批准不符合规定的档案。

|- 对于个人电子交易注册档案缺少身份证照片、正面照片和出生证明（18岁以下个人）的情况，不得退回档案。接待人员应当在居民前来社会保险机构补充资料以完成电子交易注册手续时进行补充。
<p><img src="https://baohiemxahoi.gov.vn:4545/pic/03-HD-HT-BHXH/Angiang-phucvu_20200225102558AM.jpg" alt="" /></p>


|- 在个人前往社会保险机构进行核实和批准时，不强制要求他们打印申请表。如果居民前来进行核实和批准但没有携带申请表，接待人员应要求其提供申请编号或社会保险号码，这些信息将在提交成功后由越南社会保险机构通过短信发送。接待人员要对信息进行核对和确认，打印申请表，然后由个人签名确认注册、批准、激活账户，并指导其安装和使用 VssID - 社会保险号码 。

|- 对于前来进行核实和批准，但在在线注册时选择了其他社会保险机构的居民，应继续接受接待、核实、批准和指导，以完成电子交易注册手续（居民有权前往越南社会保险机构系统内的任何社会保险机构以完成注册手续）。', N'Secondly, continue to accelerate the implementation of electronic transaction registration for individuals with the following points to note:

|- Directors of social insurance agencies of provinces and cities shall direct the decentralization of powers and assign responsibilities to officials of departments and divisions involved in verifying and approving registration of electronic transactions for individuals.

|- Receive and store an individual''s electronic transaction registration dossier with the social insurance agency in accordance with instructions and regulations.

|- Do not approve dossiers on the system when there are not enough components of dossiers as prescribed.

|- Do not return electronic transaction registration dossiers of individuals without ID photo, portrait and birth certificate (for individuals under 18 years old). Additional reception staff when people come to the social insurance agency to complete the registration procedure for electronic transactions.
<p><img src="https://baohiemxahoi.gov.vn:4545/pic/03-HD-HT-BHXH/Angiang-phucvu_20200225102558AM.jpg" alt="" /></p>


|- People are not required to print the declaration form when going to the social insurance agency to complete the registration procedure for electronic transactions. If people come to verify and approve without bringing the declaration, the receiving officer asks people to provide their application number or social insurance number in the message sent by the Vietnam Social Insurance agency after applying. Successful registration. Compare and verify information, print declarations and get signatures of individuals who register, approve, activate accounts and guide people to install and use VssID - Digital Social Insurance

|- Receive, verify, approve and guide people who come to complete the registration procedures for electronic transactions but have previously selected another social insurance agency when registering online (people are entitled to any social insurance agency in the system of Vietnam social insurance industry to complete the registration procedure).', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'61', N'null', N'|Thực hiện Nghị quyết của Chính phủ về việc xây dựng Chính phủ điện tử, thời gian qua, BHXH Việt Nam đã có nhiều nỗ lực cải cách thủ tục hành chính, ứng dụng công nghệ thông tin, hiện đại hóa nền hành chính, hướng tới Chính phủ điện tử trong lĩnh vực BHXH. Đến nay, BHXH Việt Nam đã hoàn thành việc cung cấp các DVC mức độ 4 cho tất các thủ tục hành chính của Ngành, đem lại nhiều tiện ích cho người dân, doanh nghiệp… Trong thời gian tới, Ngành BHXH tiếp tục nỗ lực cùng các Bộ, ngành, địa phương xây dựng Chính phủ điện tử, cung cấp ngày càng nhiều các tiện ích, giúp giảm thời gian, chi phí, đem lại sự hài lòng cho các tổ chức và cá nhân khi tham gia giao dịch với cơ quan BHXH.
|Nguồn <a href="https://baohiemxahoi.gov.vn/" target="_blank">https://baohiemxahoi.gov.vn/</a>', N'|在执行政府有关建设电子政府的决议过程中，越南社会保险机构（BHXH Việt Nam）努力进行行政手续改革，应用信息技术，现代化行政管理，朝着电子政府的方向发展。目前，越南社会保险机构已经完成为该行业所有行政手续提供4级公共服务（DVC mức độ 4），为民众和企业带来了很多便利。在未来，越南社会保险机构将继续与其他部门、机构和地方合作，建设电子政府，提供更多便利，帮助缩短时间和降低成本，以满足参与社会保险机构交易的组织和个人的需求，并让他们满意。|
|来源 <a href="https://baohiemxahoi.gov.vn/">https://baohiemxahoi.gov.vn/</a>', N'|Implementing the Government''s Resolution on building e-Government, over the past time, Vietnam Social Security has made many efforts to reform administrative procedures, apply information technology, modernize the administration to e-Government in the field of social insurance. Up to now, Vietnam Social Insurance has completed providing level 4 services for all administrative procedures of the Sector, bringing many benefits to people and businesses… In the coming time, the Social Insurance Industry will continue to make efforts. Together with ministries, branches and localities to build e-Government, providing more and more utilities, helping to reduce time and costs, and bring satisfaction to organizations and individuals when participating in transactions with social insurance agencies.
|Source <a href="https://baohiemxahoi.gov.vn/" target="_blank">https://baohiemxahoi.gov.vn/</a>', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 4, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'62', N'null', N'|Đó là một trong những nội dung tại Công điện số 786 về việc siết chặt kỷ luật, kỷ cương, tăng cường công tác quản lý hoạt động của các đơn vị trực thuộc Kiểm toán Nhà nước (KTNN) vừa được Tổng KTNN Hồ Đức Phớc ký ban hành ngày 21/7.
|Để thực hiện thắng lợi nhiệm vụ kiểm toán năm 2020, Tổng KTNN yêu cầu thủ trưởng các đơn vị tiếp tục chỉ đạo, thực hiện nghiêm quy định của KTNN; siết chặt kỷ luật, kỷ cương, tăng cường nâng cao chất lượng và hiệu quả hoạt động kiểm toán, trong đó đặc biệt chú trọng:
|Bám sát mục tiêu, trọng tâm và nội dung kiểm toán chủ yếu năm 2020 của ngành tại Công văn số 94/KTNN-TH ngày 20/1/2020 và các đề cương kiểm toán để tập trung thực hiện kế hoạch kiểm toán năm 2020 đảm bảo đúng tiến độ, nguyên tắc tổ chức kiểm toán theo phương án được duyệt; thực hiện nghiêm túc công tác theo dõi, đôn đốc, kiểm tra việc thực hiện kết luận, kiến nghị kiểm toán năm trước.
|Trong quá trình triển khai hoạt động kiểm toán, thủ trưởng các đơn vị tập trung chỉ đạo: Nâng cao chất lượng công tác khảo sát, thu thập thông tin, đánh giá rủi ro và xác định trọng yếu kiểm toán; nâng cao chất lượng và kết quả hoạt động kiểm toán; bám sát tình hình thực tế, duy trì chế độ báo cáo tiến độ và kết quả kiểm toán; tăng cường công tác kiểm soát chất lượng các cuộc kiểm toán; chú trọng việc thu thập bằng chứng kiểm toán đảm bảo các kết luận, kiến nghị chính xác, đúng quy định.
|Tăng cường quản lý, rèn luyện, nâng cao tinh thần trách nhiệm, tính chuyên nghiệp và uy tín của kiểm toán viên Nhà nước trong quá trình thực thi nhiệm vụ. Thành viên đoàn kiểm toán phải tuân thủ tuyệt đối quy tắc ứng xử của kiểm toán viên Nhà nước, quy chế hoạt động đoàn kiểm toán, chuẩn mực kiểm toán về đạo đức nghề nghiệp.
|Kiên quyết xử lý đối với các hành vi lợi dụng mối quan hệ kiểm toán để mưu cầu lợi ích riêng, như: Xin việc, xin chương trình, dự án, hợp đồng... cho người thân, gia đình.
|Nghiêm cấm việc sách nhiễu, hách dịch, vòi vĩnh, gây khó khăn, phiền hà cho đơn vị được kiểm toán; nghiêm cấm gặp gỡ đơn vị được kiểm toán ở ngoài trụ sở để bàn và giải quyết công việc nếu không có trong kế hoạch kiểm toán của đoàn kiểm toán; nghiêm cấm hành vi bỏ sót, cố tình làm sai lệch, không đầy đủ kết quả kiểm toán.
|Thủ trưởng đơn vị cần phải tăng cường kiểm tra, kiểm soát, giám sát chặt chẽ tổ kiểm toán, đoàn kiểm toán và xử lý nghiêm các hành vi vi phạm.
|Chấp hành đúng quy định báo cáo định kỳ, đột xuất với lãnh đạo KTNN khi phát hiện vụ việc, sai phạm lớn trong quá trình kiểm toán để kịp thời chỉ đạo chuyển cơ quan điều tra làm rõ; trong quá trình kiểm toán yêu cầu đơn vị giải trình kịp thời các phát hiện sau khi báo cáo lãnh đạo KTNN.
|Báo cáo định kỳ về tiến độ và kết quả kiểm toán gửi lãnh đạo KTNN phụ trách đồng thời gửi Tổng KTNN. Khi kết thúc thời gian kiểm toán tại đơn vị được kiểm toán (trước khi xét duyệt Hội đồng cấp Vụ).
|Thủ trưởng đơn vị chủ trì cuộc kiểm toán có trách nhiệm báo cáo Tổng KTNN về kết quả, kiến nghị kiểm toán của cuộc kiểm toán theo các trọng tâm, mục tiêu, nội dung kiểm toán của kế hoạch kiểm toán.
|Tổng KTNN yêu cầu thủ trưởng các đơn vị trực thuộc chỉ đạo các bộ phận có liên quan tổ chức kiểm tra, kiểm soát đảm bảo thực hiện nghiêm Quy chế chi tiêu nội bộ của đơn vị đã ban hành, trong đó tập trung kiểm soát chặt chẽ đối với các khoản kinh phí phục vụ đoàn kiểm toán đúng chế độ quy định, tiết kiệm, hiệu quả.
|Nghiêm cấm việc nhận hỗ trợ từ đơn vị được kiểm toán tiền thuê phòng nghỉ, tiền mua vé tàu, xe, máy bay, tiền ăn và chi phí khác. Thủ trưởng đơn vị chịu trách nhiệm trước Tổng KTNN khi xảy ra sai phạm của thành viên thuộc đoàn kiểm toán.
|<p>Theo Trần Quý / <a href="http://thanhtra.com.vn" target="_blank">thanhtra.com.vn</a></p>', N'|这是有关于《数字公报 786号》的内容，其中强调了加强国家审计监督机构下属单位的纪律和规范，加强对审计活动的管理。这一公报由国家审计监督机构总审计长张明华于7月21日签署发布。
|为了成功完成2020年的审计任务，国家审计监督机构要求各单位负责人继续指导和严格执行审计监督机构的规定；加强纪律和规范，提高审计工作的质量和效率，尤其要着重：
|紧密关注2020年行业主要审计目标和重点内容，这些内容已在2020年1月20日的《审计监督机构通函 94/KTNN-TH》中确定，并且根据已批准的方案按时组织审计工作；严格执行监督、督促和检查上一年度审计结论和建议的执行情况。
|在开展审计活动过程中，各单位负责人应集中指导：提高调查、信息收集、风险评估和审计重点确定的工作质量；提高审计工作的质量和结果；紧密关注实际情况，保持汇报进度和审计结果的制度；加强审计质量控制工作；重视收集审计证据，确保准确、符合规定的审计结论和建议。
|加强国家审计师的管理、培训，提高他们在履行职责过程中的责任心、专业性和信誉。审计团成员必须绝对遵守国家审计师的行为准则、审计团活动规则和职业道德标准。
|对于滥用审计关系谋取私利的行为，要坚决予以处理，如：为亲属、家人争取工作、项目、合同等。
|禁止干扰、阻挠、强求和给被审计单位带来困扰和麻烦；禁止在审计团的审计计划之外与被审计单位会面以讨论和解决工作事项；禁止有意遗漏，故意造成错误，或不完整的审计结果。
|各单位负责人必须加强对审计团、审计团队的审查、监督，严厉处理违反规定的行为。
|发现案件或在审计过程中发现重大违规行为时，应按规定定期或突击向国家审计监督机构负责领导报告，以便及时指导调查。在审计过程中，要求被审计单位及时解释发现的问题向国家审计监督机构报告。
|定期向国家审计监督机构负责领导和总审计长报告审计进度和结果。审计工作结束后（在审查委员会审查之前），单位负责人负责向国家审计监督机构报告审计结果和建议，根据审计计划的重点和目标。
|国家审计监督机构要求各下属单位的负责人指导相关部门组织检查、控制，确保执行内部支出规章制度的严格遵守，其中应重点监控为审计团提供的经费开支，确保依照规定节约使用。
|禁止接受被审计单位提供的租房费、购买火车票、汽车票、飞机票、餐费及其他费用的支持。如果审计团成员发生违规行为，单位负责人将对国家审计监督机构负责。
|<p>来源：Trần Quý / <a href="http://thanhtra.com.vn" target="_blank">thanhtra.com.vn</a></p>', N'|One of the contents in Official Dispatch No. 786 is on tightening discipline and discipline, strengthening the operation management of units under the State Audit (SAV) recently approved by State Auditor General Ho Duc Phoc signed and promulgated on 7/21.
|To successfully carry out the audit task in 2020, the State Auditor General requested the heads of the units to continue directing and strictly implementing the regulations of the State Audit; tightening discipline and discipline, enhancing the quality and efficiency of audit activities, in which special attention is paid to:
|Stick to the main audit objectives, focus and content in 2020 of the industry in Official Dispatch No. 94/KTNN-TH dated January 20, 2020, and audit outlines to focus on implementing the 2020 audit plan. Ensuring the schedule and principles of organizing the audit according to the approved plan; strictly implement monitoring, urging and inspecting the implementation of the previous year''s audit conclusions and recommendations.
|During the implementation of audit activities, the heads of the units focused on directing: Improving the quality of the survey, information collection, risk assessment and audit material identification; improve the quality and results of audit activities; keep abreast of the actual situation; maintain the reporting on progress and audit results; strengthen the quality control of audits; focus on collecting audit evidence to ensure accurate and correct conclusions and recommendations.
|Strengthening the management, training, and improving the sense of responsibility, professionalism and prestige of the State auditors in performing their duties. Members of the audit team must strictly comply with the code of conduct of the State auditor, the regulations on the operation of the audit team, and the auditing standards on professional ethics.
|Resolutely handle acts of taking advantage of the audit relationship to seek private benefits, such as: applying for jobs, programs, projects, contracts... for relatives and family.
|It is strictly forbidden to harass, be bossy, ask for help, cause difficulties and troubles for the audited unit; it is strictly forbidden to meet the audited unit outside the head office to discuss and deal with work if it is not included in the audit plan of the audit team; It is strictly forbidden to omit, intentionally falsify or incomplete audit results.
|Heads of units need to strengthen inspection, control and close supervision of audit teams and audit teams and strictly handle violations.
|To strictly comply with the regulations of periodically and irregularly reporting to the SAV leadership when detecting cases and major mistakes during the audit process to promptly direct and transfer to the investigating agency for clarification; During the audit, the unit is required to explain the findings after reporting to the SAV leadership promptly.
|Periodically report on the progress and results of the audit to the SAV leadership in charge and at the same time to the General Auditor. At the end of the audit period at the audited unit (before the Department Council''s approval).
|The head of the unit presiding over the audit is responsible for reporting to the General Auditor General on the audit results and recommendations according to the audit focus, objectives and contents of the audit plan.
|The State Auditor General requested heads of affiliated units to direct relevant departments to inspect and control to ensure strict implementation of the issued Regulations on internal expenditures of the units, which focus on controlling strictly for the expenditures to serve the audit team following the prescribed regime, economically and effectively.
|It is strictly forbidden to receive support from the audited unit for room rent, train tickets, car, plane tickets, meals and other expenses. The head of the unit is responsible to the State Auditor General for any violations committed by members of the audit team.
|<p>Acording to Trần Quý / <a href="http://thanhtra.com.vn" target="_blank">thanhtra.com.vn</a></p>
', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'63', N'null', N'|Theo quy định tại Điều 21, Thông tư số 31/2021/TT-BTC về việc áp dụng quản lý rủi ro trong quản lý hóa đơn, chứng từ, thì cơ quan thuế căn cứ danh sách người nộp thuế phân loại theo các mức rủi ro trong quản lý hóa đơn, chứng từ để áp dụng các biện pháp quản lý.
|Nội dung quan trọng này được quy định rõ tại Thông tư số 31/2021/TT-BTC về áp dụng quản lý rủi ro trong quản lý thuế do Bộ Tài chính ban hành ngày 17/5/2021.
|Theo đó, cơ quan thuế căn cứ danh sách người nộp thuế phân loại theo các mức rủi ro trong quản lý hóa đơn, chứng từ để áp dụng các biện pháp quản lý.
|Cụ thể, đối với mức rủi ro cao, đưa vào danh sách thực hiện rà soát, kiểm tra tại trụ sở của cơ quan thuế, bổ sung kế hoạch kiểm tra thanh tra tại trụ sở của người nộp thuế hàng năm theo quy định tại Luật Quản lý thuế, các văn bản hướng dẫn thi hành và các văn bản quy phạm pháp luật khác có liên quan. Trên cơ sở kết quả kiểm tra, thanh tra thực hiện chuyển hình thức sử dụng hóa đơn đang thực hiện sang thực hiện mua hóa đơn của cơ quan thuế hoặc sử dụng hóa đơn điện tử có mã của cơ quan thuế hoặc thực hiện các biện pháp quản lý hóa đơn khác theo quy định hiện hành; quyết định hình thức sử dụng hóa đơn đối với người nộp thuế sử dụng hóa đơn lần đầu.
|Trong khi đó, đối với mức rủi ro trung bình và rủi ro thấp, cần thực hiện chọn mẫu để rà soát, kiểm tra, xử lý và tăng cường hỗ trợ người nộp thuế tuân thủ tốt các quy định pháp luật về hóa đơn. Tổng cục Thuế quy định phương pháp chọn mẫu phù hợp theo yêu cầu quản lý thuế của từng địa phương, trong từng thời kỳ.
|Bên cạnh đó, Thông tư số 31/2021/TT-BTC của Bộ Tài chính cũng quy định áp dụng quản lý rủi ro trong các nghiệp vụ khác, cơ quan thuế sẽ căn cứ mức độ rủi ro trong hoạt động nghiệp vụ khác và các thông tin nghiệp vụ, cơ quan thuế quyết định áp dụng các biện pháp nghiệp vụ phù hợp theo chức năng, nhiệm vụ.', N'|根据《2021年5月17日财政部令第31/2021/TT-BTC通知》中有关应用风险管理于发票和凭证管理的规定，税务机关依据按照发票和凭证管理风险级别划分的纳税人名单来应用管理措施。
|这一重要内容明确规定在《2021年5月17日财政部令第31/2021/TT-BTC通知》中，财政部发布了关于应用风险管理于税收管理的规定。
根据这一通知，税务机关根据按照发票和凭证管理风险级别划分的纳税人名单来应用管理措施。
|具体而言，对于高风险级别，将纳入审查、检查范围，在税务机关办公地点对纳税人进行审查，按照《税收管理法》及相关实施指南和其他相关法律法规的规定，补充年度审查检|查计划。根据检查结果，税务机关会对正在使用发票的纳税人采取措施，改为使用税务机关购买的发票或者使用税务机关代码的电子发票，或按照现行规定执行其他发票管理措施；对于首次使用发票的纳税人，税务机关将决定发票使用形式。
|与此同时，对于中等和低风险级别，需要选择样本进行审查、检查、处理，并加强对纳税人遵守有关发票法律规定的支持。国家税务总局规定了适合地方税收管理要求的样本选择方法，以及各个时期的样本选择方法。
|此外，财政部令第31/2021/TT-BTC通知还规定了在其他业务中应用风险管理，税务机关将根据不同业务的风险程度和业务信息，决定应用相应的业务措施，以适应其职能和任务。
|<p>来源 / <a href="http://thanhtra.com.vn" target="_blank">thanhtra.com.vn</a></p>', N'|According to the provisions of Article 21, Circular No. 31/2021/TT-BTC on the application of risk management in the management of invoices and documents, the tax authorities shall base themselves on the list of taxpayers classified according to levels of risks in managing invoices and documents to apply management measures.
|This important content is clearly specified in Circular No. 31/2021/TT-BTC on the application of risk management in tax administration issued by the Ministry of Finance on May 17, 2021.
|Accordingly, the tax authorities shall base themselves on the list of taxpayers classified by risk levels in the management of invoices and documents to apply management measures.
|Specifically, for high-risk levels, put on the list of reviewing and inspecting at the headquarters of the tax authority, supplementing the annual plan for inspection at the taxpayer''s office as prescribed in Clause 1 of this Article. Law on Tax Administration, guiding documents and other relevant legal documents. Based on the inspection results, the inspector shall change the form of using current invoices to purchase invoices from tax authorities or use electronic invoices with tax authorities'' codes or take other measures, other invoice management methods according to current regulations; decide the form of using invoices for taxpayers for the first time.
|Meanwhile, for medium and low risk, it is necessary to carry out sampling to review, check, handle and enhance support for taxpayers to comply well with legal regulations on invoices. The General Department of Taxation shall stipulate the method of selecting samples suitable to the tax administration requirements of each locality and period.
|Besides, Circular No. 31/2021/TT-BTC of the Ministry of Finance also stipulates the application of risk management in other operations; tax authorities will base on the level of risk in other professional activities. With professional information, tax authorities decide to apply appropriate professional measures according to their functions and tasks.
|<p>Source: / <a href="https://tapchitaichinh.vn/" target="_blank">https://tapchitaichinh.vn/</a></p>', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'64', N'null', N'|Cụ thể, khoản 2 Điều 38 Luật Cư trú sửa đổi khoản 7 Điều 2 Luật BHYT năm 2008 (đã được sửa đổi vào các năm 2013, 2014, 2015 và 2018) như sau:
|Hộ gia đình tham gia BHYT là những người cùng đăng ký thường trú hoặc cùng đăng ký tạm trú tại một chỗ ở hợp pháp theo quy định của pháp luật về cư trú.
|Trong khi đó, Luật BHYT hiện nay đang quy định:
|Hộ gia đình tham gia BHYT bao gồm toàn bộ người có tên trong sổ hộ khẩu hoặc sổ tạm trú.
|Như vậy, theo quy định mới, những người thuộc diện tham gia BHYT hộ gia đình phải là những người: Cùng đăng ký thường trú hoặc cùng đăng ký tạm trú tại một chỗ ở hợp pháp, thay vì cùng Sổ hộ khẩu hoặc Sổ tạm trú như trước đây.
|Sở dĩ có sự điều chỉnh như trên là do Luật Cư trú 2020 quy định từ ngày 01/01/2023, chính thức bãi bỏ Sổ hộ khẩu, Sổ tạm trú, thay bằng việc quản lý trên Cơ sở dữ liệu quốc gia về dân cư.
|<p>Nguồn: <a href="https://baohiemxahoi.gov.vn">baohiemxahoi.gov.vn</a></p>

', N'|具体来说，根据2020年《居留法》对2008年《社会医疗保险法》（已于2013年、2014年、2015年和2018年进行修改）第38条第2款进行修改如下：
|家庭成员参加社会医疗保险是指按照居留法规定在同一合法住所进行常住或暂住登记的人员。
|然而，目前的社会医疗保险法规定如下：
|家庭成员参加社会医疗保险包括户口簿或暂住证上全部的人员。
|因此，根据新规定，家庭成员参加社会医疗保险的人员必须是符合以下条件的人员：按照居留法规定在同一合法住所进行常住或暂住登记，而不是像以前一样登记在户口簿或暂住证上。
|进行上述调整的原因是因为2020年《居留法》规定从2023年1月1日起正式废除户口簿和暂住证，改为在国家人口数据库上进行管理。
|<p>来源： <a href="https://baohiemxahoi.gov.vn">baohiemxahoi.gov.vn</a></p>', N'|Specifically, Clause 2, Article 38 of the Law on Residence amends Clause 7, Article 2 of the Law on Health Insurance in 2008 (amended in 2013, 2014, 2015 and 2018) as follows:
|Households participating in health insurance jointly register for permanent residence or register for temporary residence at a lawful residence following the law on residence.
|Meanwhile, the current Health Insurance Law stipulates:
|Households participating in health insurance include all persons named in the household registration book or temporary residence book.
|Thus, according to the new regulations, people eligible to participate in household health insurance must register for permanent residence or register for temporary residence at a lawful residence instead of the same household registration book or temporary residence book as before.
|The above adjustment is because the Law on Residence 2020 stipulates that from January 1, 2023, the household registration book and temporary residence book will be officially abolished instead of being managed on the National Database on the population. residence./.
|<p>Source: <a href="https://baohiemxahoi.gov.vn">baohiemxahoi.gov.vn</a></p>

', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'65', N'null', N'|Ban Chỉ đạo gồm 12 thành viên, trong đó, Giám đốc BHXH tỉnh Đồng Nai Phạm Minh Thành - Trưởng ban; Phó Giám đốc BHXH tỉnh Phạm Long Sơn - Phó Trưởng ban Thường trực; Trưởng phòng Truyền thông và Phát triển là Phó Trưởng ban; 09 đồng chí thành viên gồm: Chánh Văn phòng và Trưởng phòng hoặc Phó Trưởng phòng các phòng nghiệp vụ BHXH tỉnh; Ban Chỉ đạo có Tổ Giúp việc gồm 28 đồng chí được huy động từ cán bộ, viên chức thuộc các phòng nghiệp vụ BHXH tỉnh.
|Theo đó, Ban Chỉ đạo có nhiệm vụ xây dựng chi tiết kế hoạch tuyên truyền, phổ biến, hướng dẫn cài đặt ứng dụng VssID đối với các đơn vị thuộc cơ quan BHXH tỉnh quản lý. Ban Chỉ đạo theo dõi, giám sát và xử lý kịp thời các vướng mắc phát sinh của các đơn vị thuộc văn phòng BHXH tỉnh và BHXH các huyện, thành phố; giám sát công tác phối hợp giữa các phòng nghiệp vụ của BHXH tỉnh trong việc hỗ trợ, xử lý, tra cứu dữ liệu. Định kỳ báo cáo Giám đốc BHXH tỉnh về tiến độ và kết quả thực hiện.
|Tổ Giúp việc có nhiệm vụ tham mưu Ban Chỉ đạo tỉnh đề xuất các giải pháp thiết thực, linh hoạt để hỗ trợ, hướng dẫn cài đặt và sử dụng ứng dụng VssID hiệu quả; tổ chức tuyên truyền, hướng dẫn cài đặt ứng dụng VssID cho người lao động các cơ quan, đơn vị và người dân trên địa bàn tỉnh; tổng hợp số lượng người đăng ký tài khoản giao dịch điện tử với cơ quan BHXH, số hồ sơ được duyệt, số tài khoản đã đăng nhập sử dụng ứng dụng VssID; thực hiện chế độ thống kê, báo cáo số liệu và tiến độ thực hiện chỉ tiêu hàng tuần việc sử dụng ứng dụng VssID toàn tỉnh cho Ban Chỉ đạo. Nhiệm vụ cụ thể của các thành viên Tổ Giúp việc do Tổ trưởng phân công.', N'办领导组由12名成员组成，其中东奈省社会保险局局长范明城担任组长；东奈省社会保险局副局长范龙山担任常务副组长；传媒与发展科科长担任副组长；还有9名成员，包括省社会保险局办公室主任、各分管业务的科科长或副科长。办领导组设有28名助手，从省社会保险局各业务科调集干部。

根据任务，办领导组制定详细计划，宣传和指导应用VssID应用程序的单位，这些单位是由省社会保险局管辖的。办领导组监督和及时处理省社会保险局办公室和各县市社会保险局在操作过程中出现的问题；监督省社会保险局各业务科之间的协作，以支持、处理和查询数据。定期向东奈省社会保险局局长报告进度和执行结果。

助手团的任务是向省办领导组提供实际、灵活的解决方案，以有效地支持、指导VssID应用程序的安装和使用；为省内各单位的劳动者、机构和居民提供宣传和指导VssID应用程序的服务；汇总注册使用省社会保险局电子交易账户的人数，审批的档案数量，已登录并使用VssID应用程序的账户数量；执行统计制度，为办领导组提供全省VssID应用程序的数据和进度报告。助手团成员的具体任务由团长分配。', N'|The Steering Committee consists of 12 members, which, Director of Dong Nai Social Security Administration Pham Minh Thanh - Head of the Committee; Deputy Director of Provincial Social Insurance Pham Long Son - Standing Deputy Head of the Committee; The Head of Communication and Development Department is the Deputy Head of the Department; 09 members include: Chief of Office and Heads or Deputy Heads of professional departments of provincial social insurance; The Steering Committee has a Working Group of 28 comrades mobilized from officials and employees of the professional departments of the provincial social insurance.
|Accordingly, the Steering Committee is responsible for developing a detailed plan for propaganda, dissemination and installation of VssID application for units under the management of the provincial social insurance agency. The Steering Committee monitors supervises, and promptly handles arising problems of the units under the provincial social insurance offices and the social insurance authorities of districts and cities; supervise the coordination between the professional departments of the provincial social insurance agency in supporting, processing and looking up data. Periodically report to the Director of the provincial social insurance agency on the progress and results of implementation.
|The Help Team is responsible for advising the Provincial Steering Committee to propose practical and flexible solutions to support and guide the installation and effective use of VgsID application; organize propaganda and guide the installation of VssID application for employees of agencies, units and people in the province; summarizing the number of people who have registered for an electronic transaction account with the social insurance agency, the number of approved records, the number of accounts logged in using VssID application; implement the statistical regime, report data and progress towards weekly targets of using VgsID application in the whole province to the Steering Committee. The Team Leader assigns specific tasks to the members of the Working Group.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'66', N'null', N'|Thủ tướng Chính phủ vừa ký ban hành Nghị định 41/2018/NĐ-CP quy định xử phạt vi phạm hành chính trong lĩnh vực kế toán, kiểm toán độc lập, với mức phạt tiền tối đa 50 triệu đồng đối với một hành vi vi phạm hành chính của cá nhân.
|Nghị định quy định, hành vi vi phạm quy định chung về pháp luật kế toán, phạt tiền từ 10 - 20 triệu đồng đối với một trong các hành vi: Áp dụng sai quy định về chữ viết; chữ số trong kế toán; áp dụng sai quy định về đơn vị tiền tệ trong kế toán; áp dụng sai quy định về kỳ kế toán; áp dụng sai chế độ kế toán mà đơn vị thuộc đối tượng áp dụng.
|Phạt tiền từ 20 - 30 triệu đồng đối với tổ chức thực hiện hành vi ban hành, công bố chuẩn mực kế toán, chuẩn mực kiểm toán, chế độ kế toán không đúng thẩm quyền.
|Về xử phạt hành vi vi phạm quy định về chứng từ kế toán, phạt tiền từ 3 - 5 triệu đồng đối với một trong các hành vi: Mẫu chứng từ kế toán không có đầy đủ các nội dung chủ yếu theo quy định; tẩy xóa, sửa chữa chứng từ kế toán; ký chứng từ kế toán bằng mực màu đỏ, mực phai màu; ký chứng từ kế toán bằng đóng dấu chữ ký khắc sẵn; chứng từ chi tiền không ký theo từng liên.
|Phạt tiền từ 5 - 10 triệu đồng đối với một trong các hành vi sau: Lập chứng từ kế toán không đủ số liên theo quy định của mỗi loại chứng từ kế toán; ký chứng từ kế toán khi chưa ghi đủ nội dung chứng từ thuộc trách nhiệm của người ký; ký chứng từ kế toán mà không đúng thẩm quyền; chữ ký của một người không thống nhất hoặc không đúng với sổ đăng ký mẫu chữ ký; chứng từ kế toán không có đủ chữ ký theo chức danh quy định trên chứng từ; không dịch chứng từ kế toán bằng tiếng nước ngoài ra tiếng Việt theo quy định; để hư hỏng, mất mát tài liệu, chứng từ kế toán đang trong quá trình sử dụng.
|Phạt tiền từ 20 - 30 triệu đồng đối với một trong các hành vi: Giả mạo, khai man chứng từ kế toán nhưng chưa đến mức truy cứu trách nhiệm hình sự; thỏa thuận hoặc ép buộc người khác giả mạo, khai man chứng từ kế toán nhưng chưa đến mức truy cứu trách nhiệm hình sự; lập chứng từ kế toán có nội dung các liên không giống nhau trong trường hợp phải lập chứng từ kế toán có nhiều liên cho một nghiệp vụ kinh tế, tài chính phát sinh; không lập chứng từ kế toán khi nghiệp vụ kinh tế, tài chính phát sinh; lập nhiều lần chứng từ kế toán cho một nghiệp vụ kinh tế, tài chính phát sinh; thực hiện chi tiền khi chứng từ chi tiền chưa có đầy đủ chữ ký của người có thẩm quyền theo quy định của pháp luật về kế toán.
|Nghị định cũng quy định cụ thể mức phạt hành vi vi phạm quy định về lập và trình bày báo cáo tài chính. Cụ thể, phạt tiền từ 5 - 10 triệu đồng đối với một trong các hành vi: Lập báo cáo tài chính không đầy đủ nội dung hoặc không đúng biểu mẫu theo quy định; báo cáo tài chính không có chữ ký của người lập, kế toán trưởng, phụ trách kế toán hoặc người đại diện theo pháp luật của đơn vị kế toán.
|Đối với một trong các hành vi: Lập không đầy đủ các báo cáo tài chính theo quy định; áp dụng mẫu báo cáo tài chính khác với quy định của chuẩn mực và chế độ kế toán trừ trường hợp đã được Bộ Tài chính chấp thuận thì sẽ bị phạt tiền từ 10 - 20 triệu đồng.
|Phạt tiền từ 20 - 30 triệu đồng đối với một trong các hành vi sau: Không lập báo cáo tài chính theo quy định; lập báo cáo tài chính không đúng với số liệu trên sổ kế toán và chứng từ kế toán; lập và trình bày báo cáo tài chính không tuân thủ đúng chế độ kế toán và chuẩn mực kế toán.
|Phạt tiền từ 40 - 50 triệu đồng đối với một trong các hành vi sau: Giả mạo báo cáo tài chính, khai man số liệu trên báo cáo tài chính nhưng chưa đến mức truy cứu trách nhiệm hình sự; thỏa thuận hoặc ép buộc người khác giả mạo báo cáo tài chính, khai man số liệu trên báo cáo tài chính nhưng chưa đến mức truy cứu trách nhiệm hình sự; cố ý, thỏa thuận hoặc ép buộc người khác cung cấp, xác nhận thông tin, số liệu kế toán sai sự thật nhưng chưa đến mức truy cứu trách nhiệm hình sự.
|Nghị định 41/2018/NĐ-CP đã có hiệu lực thi hành từ 1/5/2018.
|<p>Theo Đức Minh <a href="https://tapchitaichinh.vn/" target="_blank">https://tapchitaichinh.vn/</a></p>', N'|《政府法令41/2018/NĐ-CP》规定了会计和独立审计领域的行政违规处罚，对个人的行政违规行为最高罚款金额为5000万越南盾。
|该法令规定，对以下其中一种行为违规的，罚款金额为1,000万至2,000万越南盾：违反有关会计法规的规定，使用错误的书写字符；在会计中使用错误的数字；在会计中使用错误的货币单位；在会计中使用错误的会计期间；使用不适用于该单位的会计政策。
|对于制定、公布会计准则、审计准则或未经授权制定会计政策的组织，罚款金额为2,000万至3,000万越南盾。
|关于违反有关会计凭证的规定，对以下其中一种行为违规的，罚款金额为300万至500万越南盾：会计凭证样式不按规定包含主要内容；涂改、修改会计凭证；用红色墨水或褪色墨水签署会计凭证；用事先刻有签名的印章签署会计凭证；支出凭证未按规定逐联签字。
|对以下其中一种行为违规的，罚款金额为500万至1,000万越南盾：制作会计凭证时未按规定填写联次；签署会计凭证时未填写签署者责任内容；签署会计凭证不符合规定的签名样式；会计凭证上无规定职务的签名；未按规定将会计凭证翻译成越南语；让会计凭证在使用过程中损坏、丢失。
|对以下其中一种行为违规的，罚款金额为2,000万至3,000万越南盾：伪造、假冒会计凭证，但未达到构成刑事责任的程度；与他人协议或强迫他人伪造、假冒会计凭证，但未达到构成刑事责任的程度；故意、与他人协议或强迫他人提供、确认不实的会计信息、数据，但未达到构成刑事责任的程度。
|《政府法令41/2018/NĐ-CP》自2018年5月1日起生效。
|<p>来源：Đức Minh <a href="https://tapchitaichinh.vn/" target="_blank">https://tapchitaichinh.vn/</a></p>', N'|The Government Decree 41/2018/NĐ-CP stipulates administrative penalties for violations in the fields of accounting and independent auditing, with a maximum fine of 50 million Vietnamese dong for administrative violations by individuals.
|The decree specifies that for one of the following violations, the fine ranges from 10 to 20 million Vietnamese dong: Violating accounting regulations regarding character writing; numbers used in accounting; currency unit in accounting; accounting period; or accounting policies not applicable to the entity.
|For organizations that issue or publish accounting standards, auditing standards, or accounting policies without authorization, the fine ranges from 20 to 30 million Vietnamese dong.
|Regarding violations related to accounting vouchers, for one of the following violations, the fine ranges from 3 to 5 million Vietnamese dong: Accounting vouchers do not contain the main content as required; tampering or altering accounting vouchers; signing accounting vouchers with red or faded ink; signing accounting vouchers with pre-engraved signatures; or failure to sign expenditure vouchers as required.
|For one of the following violations, the fine ranges from 5 to 10 million Vietnamese dong: Failure to fill in voucher serial numbers as required when making accounting vouchers; failure to fill in the signer''s responsibility content when signing accounting vouchers; signing accounting vouchers with signatures that do not comply with the prescribed signature style; signatures on accounting vouchers without specified job titles; failure to translate accounting vouchers into Vietnamese as required; damaging or losing accounting vouchers during use.
|For one of the following violations, the fine ranges from 20 to 30 million Vietnamese dong: Forgery or counterfeiting of accounting vouchers that do not reach the level of criminal liability; agreeing with others or coercing others to forge or counterfeit accounting vouchers that do not reach the level of criminal liability; intentionally, by agreement with others, or coercing others to provide or confirm false accounting information or data that does not reach the level of criminal liability.
|The Government Decree 41/2018/NĐ-CP has been in effect since May 1, 2018.
|<p>Source: Đức Minh <a href="https://tapchitaichinh.vn/" target="_blank">https://tapchitaichinh.vn/</a></p>', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'67', N'Ưu điểm của KBHXH cho Doanh nghiệp:', N'|<strong>Tiện lợi trong việc lập và quản lý hồ sơ:</strong> KBHXH cho phép Doanh nghiệp dễ dàng lập và quản lý các bộ hồ sơ theo nghiệp vụ Bảo Hiểm Xã Hội. Việc tìm kiếm, sắp xếp và cập nhật thông tin trong hồ sơ trở nên thuận tiện, giúp tiết kiệm thời gian và tăng hiệu suất làm việc.
|<strong>Kê khai và nộp hồ sơ qua mạng Internet:</strong> Một trong những điểm mạnh của KBHXH là khả năng cho phép Doanh nghiệp thực hiện quy trình kê khai và nộp hồ sơ Bảo Hiểm Xã Hội thông qua mạng Internet. Điều này giúp giảm bớt rủi ro trong việc gửi tài liệu truyền thống và tiết kiệm chi phí gửi tài liệu qua đường bưu điện.
|<strong>Kết xuất bộ hồ sơ điện tử thành bộ hồ sơ giấy:</strong> KBHXH không chỉ giới hạn việc quản lý hồ sơ điện tử mà còn hỗ trợ Doanh nghiệp kết xuất bộ hồ sơ điện tử thành bộ hồ sơ giấy. Điều này cho phép Doanh nghiệp có sự linh hoạt trong việc nộp hồ sơ trực tiếp theo cách truyền thống khi cần thiết.
|<strong>Tương thích với Cổng thông tin điện tử Bảo Hiểm Xã Hội Việt Nam:</strong> KBHXH được tích hợp tương thích với Cổng thông tin điện tử Bảo Hiểm Xã Hội Việt Nam, giúp quá trình trao đổi thông tin và dữ liệu giữa Doanh nghiệp và cơ quan Bảo Hiểm Xã Hội diễn ra thuận lợi và chính xác.', N'|<strong>方便的记录创建和管理：</strong> KBHXH使企业能够轻松创建和管理根据社会保险任务创建的记录。在记录中搜索、整理和更新信息变得方便，节省时间并提高工作效率。
|<strong>通过互联网进行申报和提交记录：</strong> KBHXH 的一个优势在于允许企业通过互联网完成社会保险记录的申报和提交流程。这有助于减少与发送传统文件相关的风险，并节省通过邮政服务发送文件的成本。
|<strong>将电子记录导出为纸质记录：</strong> KBHXH不仅限制了电子记录的管理，还支持企业将电子记录导出为纸质记录。这使得企业可以根据需要直接以传统方式提交记录。
|<strong>与越南电子社会保险门户的兼容性：</strong> KBHXH 集成了与越南电子社会保险门户的兼容性，方便而准确地促进了企业与社会保险机构之间的信息和数据交换。', N'|<strong>Convenience in record creation and management:</strong> KBHXH allows businesses to easily create and manage records according to Social Insurance tasks. Searching, arranging, and updating information in the records becomes convenient, saving time and increasing work efficiency.
|<strong>Declaration and submission of records via the Internet:</strong> One of the strengths of KBHXH is the ability to allow businesses to carry out the process of declaring and submitting Social Insurance records via the Internet. This helps reduce the risks associated with sending traditional documents and saves costs for sending documents through postal services.
|<strong>Exporting electronic records into paper records:</strong> KBHXH not only limits the management of electronic records but also supports businesses in exporting electronic records into paper records. This allows businesses the flexibility to submit records directly in the traditional way when necessary.
|<strong>Compatibility with the Electronic Social Insurance Portal of Vietnam:</strong> KBHXH is integrated to be compatible with the Electronic Social Insurance Portal of Vietnam, facilitating the exchange of information and data between businesses and the Social Insurance authorities in a convenient and accurate manner.
', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'KBHXH 对企业的优势：', N'Advantages of KBHXH for Businesses:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'68', N'Kết luận:', N'|Phần mềm kê khai Bảo Hiểm Xã Hội điện tử KBHXH là một công cụ không thể thiếu đối với Doanh nghiệp trong việc quản lý và thực hiện quy trình liên quan đến Bảo Hiểm Xã Hội. Với tính năng tiện lợi, tích hợp trực quan và khả năng tương thích vượt trội, KBHXH giúp Doanh nghiệp tiết kiệm thời gian, tối ưu hóa quy trình, và đảm bảo sự chính xác trong việc quản lý Bảo Hiểm Xã Hội.
|<i>Xem thêm: </i><a href="https://kbhxh.edu.vn/phan-mem-bao-hiem-xa-hoi-dien-tu/">Top phần mềm bảo hiểm xã hội điện tử phổ biến hiện nay</a>', N'|电子社会保险申报软件KBHXH是企业管理和执行与社会保险有关流程的不可或缺的工具。KBHXH具有用户友好的功能、直观的集成以及卓越的兼容性，有助于企业节省时间，优化流程，并确保社会保险管理的准确性。
|<i>了解更多：</i> <a href="https://kbhxh.edu.vn/phan-mem-bao-hiem-xa-hoi-dien-tu/">如今热门的电子社会保险软件排行榜</a>', N'|The electronic social insurance declaration software KBHXH is an indispensable tool for businesses in managing and executing processes related to Social Insurance. With its user-friendly features, intuitive integration, and exceptional compatibility, KBHXH helps businesses save time, optimize processes, and ensure accuracy in Social Insurance management.
|<i>Learn more:</i> <a href="https://kbhxh.edu.vn/phan-mem-bao-hiem-xa-hoi-dien-tu/">Top popular electronic social insurance software nowaday</a>
', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'结论：', N'Conclusion:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'7', N'ĐỐI TƯỢNG THEO HỌC:', N'Các học viên muốn tìm hiểu từ căn bản đến chuyên sâu về nghiệp vụ kế toán, về công việc khai báo thuế để có thể trở thành chuyên viên kế toán trong doanh nghiệp.|Các nhà quản lý doanh nghiệp, chủ cơ sở kinh doanh, các nhà đầu tư cần hiểu rõ kế toán và thuế để điều hành, quản lý công việc.|Các sinh viên chưa biết gì về kế toán, thuế hoặc cần hệ thống lại kiến thức đã học, mở rộng kiến thức thực tế để phục vụ tốt hơn cho việc học tại trường và đặc biệt là để đáp ứng nhu cầu tìm việc làm sau khi tốt nghiệp.', N'學生希望從基礎到高級學習會計專業，納稅申報，以便能夠成為商業會計師。|企業管理者、企業主、投資者需要了解會計和稅收來運營和管理的工作。|對會計、稅務一無所知或需要係統化所學知識的學生，擴展實踐知識以更好地服務於在校的學習尤其是滿足畢業後找工作的需要。', N'Students want to learn from basics to advance in accounting and tax declaration to become an accountant in business.|Business managers, business owners, investors need to understand accounting and tax to operate and manage their work.|Students who do not know anything about accounting tax or need to systemize their learned knowledge, expand their practical knowledge to serve their studies at school better, and meet the need to find a job later to graduate.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'學習對象：', N'SUBJECTS OF THE COURSE:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'8', N'NỘI DUNG CHƯƠNG TRÌNH HỌC:', N'Liên hệ: 0274 626 77 89.', N'聯繫: 0274 626 77 89.', N'Contact: 0274 626 77 89', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'課程內容：', N'COURSE CONTENT:')
INSERT [dbo].[Content] ([ContentID], [Title], [Contents], [ContentsCN], [ContentsEN], [CreatedDate], [Status], [ContentCount], [TitleCN], [TitleEN]) VALUES (N'9', N'Ưu điểm của Dịch vụ Đại lý thuế:', N'|Giúp các doanh nghiệp kê khai thuế, giảm thiểu các rủi ro về thuế.
|Giúp cập nhật văn bản thuế thường xuyên cho doanh nghiệp.
|Là cánh tay nối dài của cơ quan thuế, kề vai sát cánh cùng ngành thuế để giúp doanh nghiệp khai đúng và tránh các sai sót.
|Doanh nghiệp sẽ được quyền ký hợp đồng với công ty làm thủ tục về thuế để họ “Thay mặt doanh nghiệp kê khai, nộp thuế và chịu trách nhiệm pháp lý” về những nội dung đã được ký kết. ', N'|協助企業報稅，降低稅務風險。
|協助企業定期更新稅務文件。
|作為稅務機關的延伸臂，與稅務行業密切合作，幫助企業正確申報，避免錯誤。
|企業將有權與公司簽訂合同辦理納稅手續，使其“代為申報納稅，承擔法律責任”的內容。', N'|Help businesses declare tax, reduce tax risks.
|Help update tax documents regularly for businesses.
|As an extension of the tax authority, standing shoulder to shoulder with the tax industry to help businesses declare correctly and avoid errors.
|Enterprises will have the right to sign a contract with a company to carry out tax procedures so that they "declare and pay tax on behalf of the business and take legal responsibility" for the contents.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'稅務代理服務優勢：', N'Advantages of Tax Agent Service:')
GO
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'1', N'angiang-phucvu.png', N'/images/2021/angiang-phucvu.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'10', N'cung-cap-phan-mem-hoa-don-dien-tu-hinh-lam-misa.png', N'/images/2021/cung-cap-phan-mem-hoa-don-dien-tu-hinh-lam-misa.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'11', N'dai-ly-thue.jpg', N'/images/2021/dai-ly-thue.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'12', N'dao-tao-ke-toan-thuc-hanh.jpg', N'/images/2021/dao-tao-ke-toan-thuc-hanh.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'13', N'dieu-chinh-thay-doi-giay-phep-kinh-doanh-giay-phep-dau-tu.jpg', N'/images/2021/dieu-chinh-thay-doi-giay-phep-kinh-doanh-giay-phep-dau-tu.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'14', N'giai-the-cong-ty-tam-ngung-hoat-dong.jpg', N'/images/2021/giai-the-cong-ty-tam-ngung-hoat-dong.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'15', N'hinh-lam-cung-cap-dich-vu-ke-toan-tron-goi.jpg', N'/images/2021/hinh-lam-cung-cap-dich-vu-ke-toan-tron-goi.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'16', N'hinh-lam-ke-toan-thue.png', N'/images/2021/hinh-lam-ke-toan-thue.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'17', N'hoan-thue-gtgt-du-an.jpg', N'/images/2021/hoan-thue-gtgt-du-an.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'18', N'icon-hotline.png', N'/images/2021/icon-hotline.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'19', N'img-service-1_22.jpg', N'/images/2021/img-service-1_22.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'2', N'bhythg_.jpg', N'/images/2021/bhythg_.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'20', N'img-service-1_9.jpg', N'/images/2021/img-service-1_9.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'21', N'img-ykien-khach-hang_1_1.jpg', N'/images/2021/img-ykien-khach-hang_1_1.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'22', N'img-ykien-khach-hang_1_2.jpg', N'/images/2021/img-ykien-khach-hang_1_2.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'23', N'img-ykien-khach-hang_1_3.jpg', N'/images/2021/img-ykien-khach-hang_1_3.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'24', N'img-ykien-khach-hang_4.jpg', N'/images/2021/img-ykien-khach-hang_4.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'25', N'ke-toan-cong-ty.jpg', N'/images/2021/ke-toan-cong-ty.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'26', N'phan-mem-misa-hinh-lam.png', N'/images/2021/phan-mem-misa-hinh-lam.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'27', N'sat-nhap-cong-ty-trong-nuoc-va-cong-ty-nuoc-ngoai.jpg', N'/images/2021/sat-nhap-cong-ty-trong-nuoc-va-cong-ty-nuoc-ngoai.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'28', N'thanh-lap-doanh-nghiep-viet-nam-va-doanh-nghiep-nuoc-ngoai.jpg', N'/images/2021/thanh-lap-doanh-nghiep-viet-nam-va-doanh-nghiep-nuoc-ngoai.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'29', N'thiet-lap-tu-van-bo-phan-ke-toan-he-thong-ke-toan.jpg', N'/images/2021/thiet-lap-tu-van-bo-phan-ke-toan-he-thong-ke-toan.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'3', N'chi-phi-ban-hang.png', N'/images/2021/chi-phi-ban-hang.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'30', N'thumb-esign.png', N'/images/2021/thumb-esign.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'31', N'xin-cap-doi-giay-phep-lai-xe-cho-nguoi-nuoc-ngoai.jpg', N'/images/2021/xin-cap-doi-giay-phep-lai-xe-cho-nguoi-nuoc-ngoai.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'32', N'xin-cap-thi-thuc-cho-nguoi-nuoc-ngoai.jpg', N'/images/2021/xin-cap-thi-thuc-cho-nguoi-nuoc-ngoai.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'33', N'xin-giay-phep-lao-dong-cho-nguoi-nuoc-ngoai_1.jpg', N'/images/2021/xin-giay-phep-lao-dong-cho-nguoi-nuoc-ngoai_1.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'34', N'_n_20210521031650pm.jpg', N'/images/2021/_n_20210521031650pm.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'35', N'img-about-us.jpg', N'/images/assets/img-about-us.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'36', N'img-service.jpg', N'/image/assets/img-service.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'37', N'logo-doi-tac-hinh-lam.jpg', N'/image/assets/logo-doi-tac-hinh-lam.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'38', N'logo-list-1.png', N'/image/assets/logo-list-1.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'39', N'logo.png', N'/image/assets/logo.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'4', N'chu-ky-so-hinh-lam-2021-2.jpg', N'/images/2021/chu-ky-so-hinh-lam-2021-2.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'40', N'newlogo.png', N'/image/assets/newlogo.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'41', N'newlogo1.jpg', N'/image/assets/newlogo1.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'42', N'qr-chat.jpg', N'/images/assets/qr-chat.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'43', N'banner-inner.jpg', N'/images/b/banner-inner.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'44', N'banner-inner_1.jpg', N'/images/b/banner-inner_1.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'45', N'banner-inner_2.jpg', N'/images/b/banner-inner_2.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'46', N'banner-inner_3.jpg', N'/images/b/banner-inner_3.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'47', N'banner-inner_4.jpg', N'/images/b/banner-inner_4.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'48', N'ke-toan-hinh-lam-b5.jpg', N'/images/b/ke-toan-hinh-lam-b5.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'49', N'ke-toan-hinh-lam-b6.jpg', N'/images/b/ke-toan-hinh-lam-b6.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'5', N'chu-ky-so-hinh-lam-2021-2_1.png', N'/images/2021/chu-ky-so-hinh-lam-2021-2_1.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'50', N'ke-toan-hinh-lam-b8.jpg', N'/images/b/ke-toan-hinh-lam-b8.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'51', N'ke-toan-hinh-lam-b9.jpg', N'/images/b/ke-toan-hinh-lam-b9.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'52', N'arrow-dich-vu-hover.png', N'/images/assets/images/arrow-dich-vu-hover.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'53', N'arrow-dich-vu.png', N'/images/assets/images/arrow-dich-vu.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'54', N'icon-plus.png', N'/images/assets/images/icon-plus.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'55', N'qr-chat.jpg', N'/images/assets/images/qr-chat.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'56', N'arrow-detail-news.png', N'/images/assets/images/icon/arrow-detail-news.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'57', N'icon-email.png', N'/images/assets/images/icon/icon-email.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'58', N'icon-facebook.png', N'/images/assets/images/icon/icon-facebook.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'59', N'icon-pdf.png', N'/images/assets/images/icon/icon-pdf.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'6', N'chu-ky-so-hinh-lam.jpg', N'/images/2021/chu-ky-so-hinh-lam.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'60', N'icon-phone.png', N'/images/assets/images/icon/icon-phone.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'61', N'icon-skype.png', N'/images/assets/images/icon/icon-skype.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'62', N'icon-view-all.png', N'/images/assets/images/icon/icon-view-all.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'63', N'icon-what.png', N'/images/assets/images/icon/icon-what.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'64', N'icon-zalo.png', N'/images/assets/images/icon/icon-zalo.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'65', N'bao-cao-kiem-toan.jpg', N'/images/2021/bao-cao-kiem-toan.jpg', CAST(N'2023-07-31T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'7', N'cung-cap-dich-vu-ke-toan-tron-goi.jpg', N'/images/2021/cung-cap-dich-vu-ke-toan-tron-goi.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'8', N'cung-cap-dich-vu-xin-phep-nhap-canh-vao-viet-nam.jpg', N'/images/2021/cung-cap-dich-vu-xin-phep-nhap-canh-vao-viet-nam.jpg', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
INSERT [dbo].[File] ([FileId], [FileName], [FileHref], [CreateDate], [IsPicture], [Status]) VALUES (N'9', N'cung-cap-phan-mem-hoa-don-dien-tu-hinh-lam-2021.png', N'/images/2021/cung-cap-phan-mem-hoa-don-dien-tu-hinh-lam-2021.png', CAST(N'2023-07-31T12:50:25.8066667' AS DateTime2), 1, 1)
GO
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'1', N'20', N'1')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'10', N'29', N'10')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'11', N'26', N'11')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'12', N'9', N'12')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'13', N'5', N'13')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'14', N'19', N'14')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'15', N'33', N'15')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'16', N'32', N'16')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'17', N'31', N'17')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'18', N'8', N'18')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'2', N'7', N'2')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'3', N'12', N'3')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'4', N'11', N'4')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'5', N'17', N'5')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'6', N'28', N'6')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'7', N'13', N'7')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'8', N'27', N'8')
INSERT [dbo].[FileMenu] ([Id], [FileId], [MenuId]) VALUES (N'9', N'14', N'9')
GO
INSERT [dbo].[FileNews] ([Id], [FileId], [NewsId]) VALUES (N'1111', N'1', N'1')
INSERT [dbo].[FileNews] ([Id], [FileId], [NewsId]) VALUES (N'1211', N'3', N'2')
INSERT [dbo].[FileNews] ([Id], [FileId], [NewsId]) VALUES (N'1311', N'16', N'3')
INSERT [dbo].[FileNews] ([Id], [FileId], [NewsId]) VALUES (N'1411', N'2', N'4')
INSERT [dbo].[FileNews] ([Id], [FileId], [NewsId]) VALUES (N'1511', N'34', N'5')
INSERT [dbo].[FileNews] ([Id], [FileId], [NewsId]) VALUES (N'1611', N'25', N'6')
INSERT [dbo].[FileNews] ([Id], [FileId], [NewsId]) VALUES (N'1711', N'65', N'7')
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'1', N'Gỡ rối sổ sách kế toán, dịch vụ kế toán, hoàn thuế', N'會計賬簿、會計服務、退稅等故障排除', N'Troubleshooting accounting books', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'/dich-vu/go-roi-so-sach-ke-toan-dich-vu-ke-toan-hoan-thue/', N'/cn/services-chinese/troubleshooting-accounting-books-chinese/', N'/en/services/troubleshooting-accounting-books/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'10', N'Thiết lập, tư vấn bộ phận kế toán, hệ thống kế toán', N'設立、諮詢會計部門、會計系統', N'Setting up, consulting the accounting department, the accounting system', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 10, N'/dich-vu/thiet-lap-tu-van-bo-phan-ke-toan-he-thong-ke-toan/', N'/cn/services-chinese/setting-up-consulting-the-accounting-department-the-accounting-system-2/', N'/en/services/setting-up-consulting-the-accounting-department-the-accounting-system/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'11', N'Cung cấp phần mềm kế toán', N'提供會計軟件', N'Provide accounting software', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 11, N'/dich-vu/cung-cap-phan-mem-ke-toan/', N'/cn/services-chinese/provide-accounting-software-3/', N'/en/services/provide-accounting-software/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'12', N'Cung cấp phần mềm hoá đơn điện tử', N'提供電子發票軟件', N'Provide electronic invoice software', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 12, N'/dich-vu/cung-cap-phan-mem-hoa-don-dien-tu/', N'/cn/services-chinese/provide-electronic-invoice-software-2/', N'/en/services/provide-electronic-invoice-software/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'13', N'Cung cấp chữ ký số', N'提供數字簽名', N'Supply digital signature', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 13, N'/dich-vu/cung-cap-chu-ky-so/', N'/cn/services-chinese/supply-digital-signature/', N'/en/services/supply-digital-signature/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'14', N'Cung cấp phần mềm khai báo Bảo Hiểm Xã Hội', N'提供社會保險報告軟件', N'Supply Social Insurance reporting software', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 14, N'/dich-vu/cung-cap-phan-mem-khai-bao-bao-hiem-xa-hoi/', N'/cn/services-chinese/supply-social-insurance-reporting-software/', N'/en/services/supply-social-insurance-reporting-software/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'15', N'Xin giấy phép lao động cho người nước ngoài', N'為外國人申請工作許可證', N'Apply for work permits for foreigners', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 15, N'/dich-vu/xin-giay-phep-lao-dong-cho-nguoi-nuoc-ngoai/', N'/cn/services-chinese/apply-for-work-permit-for-foreigners/', N'/en/services/apply-for-work-permit-for-foreigners/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'16', N'Xin cấp thị thực cho người nước ngoài', N'為外國人申請簽證', N'Apply for visas for foreigners', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 16, N'/dich-vu/xin-cap-thi-thuc-cho-nguoi-nuoc-ngoai/', N'/cn/services-chinese/apply-for-visa-for-foreigners/', N'/en/services/apply-for-visa-for-foreigners/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'17', N'Xin cấp đổi giấy phép lái xe cho người nước ngoài', N'為外國人申請駕駛證', N'Apply for replacement driver''s licenses for foreigners', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 17, N'/dich-vu/xin-cap-doi-giay-phep-lai-xe-cho-nguoi-nuoc-ngoai/', N'/cn/services-chinese/apply-for-replacement-drivers-license-for-foreigners/', N'/en/services/apply-for-replacement-drivers-license-for-foreigners/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'18', N'Cung cấp dịch vụ xin phép nhập cảnh vào Việt Nam', N'提供申請越南入境許可的服務', N'Providing services of applying for entry permits to Vietnam.', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 18, N'/dich-vu/cung-cap-dich-vu-xin-phep-nhap-canh-vao-viet-nam/', N'/cn/services-chinese/providing-services-of-applying-for-entry-to-vietnam/', N'/en/services/providing-services-of-applying-for-entry-to-vietnam/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'2', N'Cung cấp dịch vụ kế toán trọn gói', N'提供全套的會計服務', N'Providing complete-package accounting service', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 2, N'/dich-vu/cung-cap-dich-vu-ke-toan-tron-goi/', N'/cn/services-chinese/providing-complete-package-accounting-service/', N'/en/services/providing-complete-package-accounting-service/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'3', N'Đào tạo kế toán thực hành', N'實務會計培訓', N'Training practical accountants', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 3, N'/dich-vu/dao-tao-ke-toan-thuc-hanh/', N'/cn/services-chinese/training-practical-accountants-chinese/', N'/en/services/training-practical-accountants/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'4', N'Đại lý thuế', N'稅務代理', N'Tax agent', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 4, N'/dich-vu/dai-ly-thue/', N'/cn/services-chinese/tax-agent-chinese/', N'/en/services/tax-agent/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'5', N'Hoàn thuế GTGT dự án', N'項目增值稅退稅', N'Conducting VAT refund by project', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 5, N'/dich-vu/hoan-thue-gtgt-du-an/', N'/cn/services-chinese/conducting-vat-refund-by-project-chinese/', N'/en/services/conducting-vat-refund-by-project/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'6', N'Thành lập doanh nghiệp Việt Nam và doanh nghiệp nước ngoài', N'成立越南和外國企業', N'Consulting business Establishment', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 6, N'/dich-vu/thanh-lap-doanh-nghiep-viet-nam-va-doanh-nghiep-nuoc-ngoai/', N'/cn/services-chinese/consulting-business-establishment/', N'/en/services/consulting-business-establishment/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'7', N'Điều chỉnh thay đổi giấy phép kinh doanh, giấy phép đầu tư', N'營業執照、投資執照的調整和變更', N'Adjusting and amending investment licenses', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 7, N'/dich-vu/dieu-chinh-thay-doi-giay-phep-kinh-doanh-giay-phep-dau-tu/', N'/cn/services-chinese/adjusting-and-amending-investment-licenses/', N'/en/services/adjusting-and-amending-investment-licenses/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'8', N'Sát Nhập công ty trong nước và công ty nước ngoài', N'合併國內外公司', N'Merging domestic and foreign companies', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 8, N'/dich-vu/sat-nhap-cong-ty-trong-nuoc-va-cong-ty-nuoc-ngoai/', N'/cn/services-chinese/merging-domestic-and-foreign-companies/', N'/en/services/merging-domestic-and-foreign-companies/')
INSERT [dbo].[Menu] ([MenuId], [MenuName], [MenuNameCN], [MenuNameEN], [CateId], [CreatedDate], [Status], [MenuCount], [HrefLink], [HrefLinkCN], [HrefLinkEN]) VALUES (N'9', N'Giải thể công ty, tạm ngưng hoạt động', N'公司解散，暫停營業', N'Dissolution of the company, suspend operations', N'1', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 9, N'/dich-vu/giai-the-cong-ty-tam-ngung-hoat-dong/', N'/cn/services-chinese/dissolution-of-the-company-suspend-operations-1/', N'/en/services/dissolution-of-the-company-suspend-operations/')
GO
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'1', N'1', N'1')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'10', N'9', N'10')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'11', N'9', N'11')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'12', N'10', N'12')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'13', N'11', N'13')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'14', N'12', N'14')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'15', N'13', N'15')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'16', N'14', N'16')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'17', N'15', N'17')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'18', N'16', N'18')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'19', N'17', N'19')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'2', N'2', N'2')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'20', N'18', N'20')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'3', N'3', N'3')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'4', N'4', N'4')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'5', N'5', N'5')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'6', N'6', N'6')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'7', N'6', N'7')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'8', N'7', N'8')
INSERT [dbo].[MenuSubMenu] ([Id], [MenuId], [SubMenuId]) VALUES (N'9', N'8', N'9')
GO
INSERT [dbo].[News] ([NewsId], [Title], [TitleCN], [TitleEN], [ShortDescription], [ShortDescriptionEN], [ShortDescriptionCN], [LinkHref], [LinkHrefEN], [LinkHrefCN], [Status], [CreateDate]) VALUES (N'1', N'BHXH Việt Nam: Triển khai đăng ký giao dịch điện tử cho cá nhân dưới 18 tuổi chưa có CMND, CCCD', N'嚴禁從被審計單位獲得支持', N'Vietnam Social Insurance: Implement electronic transaction registration for individuals under 18 years old without ID card.', N'Để tiếp tục triển khai Nghị định số 45/2020/NĐ-CP ngày 8/4/2020 của Chính phủ về thực hiện thủ tục hành chính trên môi trường điện tử...', N'To continue implementing Decree No. 45/2020/ND-CP dated April 8, 2020 of the Government on implementing administrative procedures in the electronic environment; ensuring the full implementation of', N'继续实施政府2020年4月8日颁布的45/2020/ND-CP号法令，关于在电子环境中实施行政手续；确保全面执行。。。', N'/tin-tuc/bhxh-viet-nam-trien-khai-dang-ky-giao-dich-dien-tu-cho-ca-nhan-duoi-18-tuoi-chua-co-cmnd-cccd', N'/en/news/vietnam-social-insurance-implement-electronic-transaction-registration-for-individuals-under-18-years-old-without-id-card', N'/cn/news-chinese/vietnam-social-insurance-implement-electronic-transaction-registration-for-individuals-under-18-years-old-without-id-card', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[News] ([NewsId], [Title], [TitleCN], [TitleEN], [ShortDescription], [ShortDescriptionEN], [ShortDescriptionCN], [LinkHref], [LinkHrefEN], [LinkHrefCN], [Status], [CreateDate]) VALUES (N'2', N'Nghiêm cấm việc nhận hỗ trợ từ đơn vị được kiểm toán', N'越南社會保險：為18歲以下的個人無身份證，公民身份證實施電子交易登記。', N'It is strictly forbidden to receive support from the audited entity', N'Đó là một trong những nội dung tại Công điện số 786 về việc siết chặt kỷ luật, kỷ cương, tăng cường công tác quản lý hoạt động của các đơn vị trực thuộc Kiểm toán Nhà nước (KTNN) vừa được Tổng KTNN Hồ Đức Phớc ký ban hành ngày 21/7.', N'It is one of the contents in Official Dispatch No. 786 is on tightening discipline and discipline, strengthening the operation management of units under the State Audit (SAV) recently approved by State Auditor General Ho Duc...', N'这是最近由国家审计长胡德福批准的《关于加强国家审计署（SAV）所属单位纪律和管理工作的公文》（官方函件编号786号）中的一项内容，旨在加强纪律和规范，加强对单位运营管理的监督。。。', N'/tin-tuc/nghiem-cam-viec-nhan-ho-tro-tu-don-vi-duoc-kiem-toan', N'/en/news/it-is-strictly-forbidden-to-receive-support-from-the-audited-entity', N'/cn/news-chinese/it-is-strictly-forbidden-to-receive-support-from-the-audited-entity', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[News] ([NewsId], [Title], [TitleCN], [TitleEN], [ShortDescription], [ShortDescriptionEN], [ShortDescriptionCN], [LinkHref], [LinkHrefEN], [LinkHrefCN], [Status], [CreateDate]) VALUES (N'3', N'Quy định việc áp dụng quản lý rủi ro trong quản lý hóa đơn, chứng từ', N'關於發票和憑證管理中風險管理的應用規定', N'Regulations on the application of risk management in the management of invoices and documents', N'Theo quy định tại Điều 21, Thông tư số 31/2021/TT-BTC về việc áp dụng quản lý rủi ro trong quản lý hóa đơn, chứng từ, thì cơ quan thuế căn cứ danh sách người nộp thuế...', N'According to the provisions of Article 21, Circular No. 31/2021/TT-BTC on the application of risk management in the management of invoices and documents, the tax authorities shall base themselves on the list of...', N'根据《2021年财政部通知第31/2021/TT-BTC号文件》第21条的规定，税务机关将根据《发票和文件管理中风险管理应用》的相关规定，依据名单...', N'/tin-tuc/quy-dinh-viec-ap-dung-quan-ly-rui-ro-trong-quan-ly-hoa-don-chung-tu', N'/en/news/regulations-on-the-application-of-risk-management-in-the-management-of-invoices-and-documents', N'/cn/news-chinese/egulations-on-the-application-of-risk-management-in-the-management-of-invoices-and-documents', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[News] ([NewsId], [Title], [TitleCN], [TitleEN], [ShortDescription], [ShortDescriptionEN], [ShortDescriptionCN], [LinkHref], [LinkHrefEN], [LinkHrefCN], [Status], [CreateDate]) VALUES (N'4', N'Từ 01/7/2021: Thay đổi khái niệm Hộ gia đình tham gia BHYT', N'從2021年7月1日起：改變家庭參保觀念', N'From July 1, 2021: Changing the concept of households participating in health insurance.', N'Ngày 13/11/2020, Quốc hội đã thông qua Luật Cư trú năm 2020, có hiệu lực từ ngày 01/7/2021. Luật này sửa đổi, bổ sung nội dung một số Luật khác liên quan, trong đó có Luật...', N'Specifically, Clause 2, Article 38 of the Law on Residence amends Clause 7, Article 2 of the Law on Health Insurance in 2008 (amended in 2013, 2014, 2015 and 2018) as follows...', N'2020年11月13日，国民议会通过了2020年《居住法》，该法律于2021年7月1日生效。该法律修改和补充了其他相关法律，包括...', N'/tin-tuc/tu-0172021-thay-doi-khai-niem-ho-gia-dinh-tham-gia-bhyt', N'/en/news/from-july-1-2021-changing-the-concept-of-households-participating-in-health-insurance', N'/cn/news-chinese/troubleshooting-accounting-books-accounting-services-tax-refund', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[News] ([NewsId], [Title], [TitleCN], [TitleEN], [ShortDescription], [ShortDescriptionEN], [ShortDescriptionCN], [LinkHref], [LinkHrefEN], [LinkHrefCN], [Status], [CreateDate]) VALUES (N'5', N'Đồng Nai: Thành lập Ban Chỉ đạo triển khai ứng dụng VssID', N'同奈：成立指導委員會以展開 VssID 應用程序', N'Dong Nai: Establishment of a Steering Committee for VssID application deployment', N'Theo đó, Ban Chỉ đạo có nhiệm vụ xây dựng chi tiết kế hoạch tuyên truyền, phổ biến, hướng dẫn cài đặt ứng dụng VssID đối với các đơn vị thuộc cơ quan BHXH tỉnh quản lý. Ban Chỉ đạo theo dõi, giám sát và xử lý kịp thời các vướng mắc', N'According to that, the Steering Committee is tasked with developing detailed plans for propaganda, dissemination, and guiding the installation of the VssID application for units under the management of provincial Social Insurance agencies...', N'根据该规定，指导委员会负责制定详细计划，用于宣传、传播和指导省级社会保险机构管理下属单位安装VssID应用程序的安装...', N'/tin-tuc/dong-nai-thanh-lap-ban-chi-dao-trien-khai-ung-dung-vssid', N'/en/news/dong-nai-establishment-of-a-steering-committee-for-vssid-application-deployment', N'/cn/news-chinese/dong-nai-establishment-of-a-steering-committee-for-vssid-application-deployment', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[News] ([NewsId], [Title], [TitleCN], [TitleEN], [ShortDescription], [ShortDescriptionEN], [ShortDescriptionCN], [LinkHref], [LinkHrefEN], [LinkHrefCN], [Status], [CreateDate]) VALUES (N'6', N'Cá nhân sẽ bị phạt tới 50 triệu đồng nếu vi phạm hành chính trong lĩnh vực kế toán', N'個人在會計領域的行政違規將被處以最高伍仟萬越南盾的罰款', N'Individuals will be fined up to VND 50 million for administrative violations in the field of accounting.', N'Thủ tướng Chính phủ vừa ký ban hành Nghị định 41/2018/NĐ-CP quy định xử phạt vi phạm hành chính trong lĩnh vực kế toán, kiểm toán độc lập, với mức phạt tiền tối đa 50 triệu đồng đối với một hành vi vi phạm hành chính của cá nhân.', N'The Prime Minister of the Government has recently signed and issued Decree 41/2018/ND-CP, which regulates administrative penalties in the fields of accounting and independent auditing...', N'政府总理最近签署并发布了41/2018/ND-CP法令，规定了会计和独立审计领域的行政处罚事宜...', N'/tin-tuc/ca-nhan-se-bi-phat-toi-50-trieu-dong-neu-vi-pham-hanh-chinh-trong-linh-vuc-ke-toan', N'/en/news/individuals-will-be-fined-up-to-vnd-50-million-for-administrative-violations-in-the-field-of-accounting', N'/cn/news-chinese/individuals-will-be-fined-up-to-vnd-50-million-for-administrative-violations-in-the-field-of-accounting', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[News] ([NewsId], [Title], [TitleCN], [TitleEN], [ShortDescription], [ShortDescriptionEN], [ShortDescriptionCN], [LinkHref], [LinkHrefEN], [LinkHrefCN], [Status], [CreateDate]) VALUES (N'7', N'Chất lượng kiểm toán sẽ được nâng lên', N'審計質量將得到提高', N'Audit quality will be improved.', N'Tổng Kiểm toán Nhà nước Hồ Đức Phớc khẳng định, việc cắt giảm các cuộc kiểm toán sẽ góp phần nâng cao chất lượng kiểm toán, đặc biệt sẽ đánh giá đúng, xác...', N'State Auditor General Hồ Đức Phớc affirmed that reducing the number of audits will contribute to improving the quality of auditing, especially in terms of accurate and reliable assessments...', N'国家审计长胡德福确认减少审计数量将有助于提高审计质量，特别是在准确和可靠的评估方面...', N'/tin-tuc/chat-luong-kiem-toan-se-duoc-nang-len', N'en/news/audit-quality-will-be-improved', N'/cn/news-chinese/audit-quality-will-be-improved', 1, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'1', N'1', N'58')
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'2', N'1', N'59')
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'3', N'1', N'60')
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'4', N'1', N'61')
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'5', N'2', N'62')
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'6', N'3', N'63')
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'7', N'4', N'64')
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'8', N'5', N'65')
INSERT [dbo].[NewsContent] ([Id], [NewsId], [ContentId]) VALUES (N'9', N'6', N'66')
GO
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'1', NULL, NULL, NULL, N'Kế toán là một phần quan trọng không thể thiếu trong mọi hoạt động của doanh nghiệp. Dù là doanh nghiệp mới thành lập hay là doanh nghiệp hoạt động lâu năm thì luôn cần một hệ thống kế toán đầy đủ, chính xác, an toàn và bảo mật. Để có được hệ thống kế toán như vậy cần đòi hỏi cao về nhân sự và kinh phí, và hệ thống kế toán hoàn thiện để có thể thích ứng với sự thay đổi nhanh chóng của luật pháp. Tuy nhiên yêu cầu này là bài toán khó cho các doanh nghiệp vừa và nhỏ hiện nay trên địa bàn Tp.HCM, Bình Dương, Đồng Nai.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'會計是所有商業活動的一個組成部分。無論您是新成立的企業還是長期活動的企業，您總是需要一個完整、準確、安全和保密的會計系統。擁有這樣一個會計體系，對人力和財力的要求都很高，而且要有一個能夠適應快速變化的法律的完備的會計體系。然而，這一要求對於當今胡志明市、平福、平陽和同奈的中小企業來說是一個難題.', N'Accounting is an important part of all business activities. Whether you are a newly established business or a long-time business, you always need a complete, accurate, safe and confidential accounting system. To have such an accounting system requires high human and financial requirements and a complete accounting system to adapt to rapidly changing laws. However, this requirement is a difficult problem for small and medium enterprises in Ho Chi Minh City, Binh Phuoc, Binh Duong, and Dong Nai.')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'10', N'Giải thể công ty, tạm ngưng hoạt động', N'Carrying out procedures for dissolving the company and suspending the business operation', N'公司解散，暫停營業', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'11', N'GIẢI THỂ DOANH NGHIỆP', N'ENTERPRISE DISSOLUTION', N'企業解散', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 2, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'12', N'Thiết lập, tư vấn bộ phận kế toán, hệ thống kế toán', N'Consulting and Setting up the accounting department, accounting system', N'設立、諮詢會計部門、會計系統', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'13', N'Cung cấp phần mềm kế toán', N'Supplying and installing accounting software', N'提供會計軟件', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'14', N'Cung cấp phần mềm hoá đơn điện tử', N'Supplying electronic invoice software', N'提供電子發票軟件', N'Thời kỳ hiện đại hóa, công nghệ hóa, Hóa đơn điện tử là hình thức hóa đơn đang được sử dụng rộng rãi trong các doanh nghiệp hiện nay. Nhà nước Việt Nam đã triển khai sử dụng hóa đơn điện tử thực sự là giải pháp tối ưu trong việc tiết kiệm chi phí, thời gian, nguồn nhân lực, rút ngắn các thủ tục hành chính về hóa đơn.', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'在現代化、科技化時代、電子發票是當今企業中使用最廣泛的發票形式。越南國家已實施電子發票，這確實是節省成本、時間、人力資源和縮短髮票管理程序的最佳解決方案。', N'In the era of modernization and technology, E-invoice is a form of invoice widely used in today''s businesses. The Vietnamese government has implemented e-invoices, the optimal solution for saving costs, time, human resources and shortening administrative procedures for invoices.')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'15', N'Cung cấp chữ ký số', N'Supply digital signature', N'提供數字簽名', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'16', N'Cung cấp phần mềm khai báo Bảo Hiểm Xã Hội', N'Supply Social Insurance reporting software', N'提供社會保險申報軟件', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'17', N'Xin giấy phép lao động cho người nước ngoài', N'Apply for work permits for foreigners', N'為外國人申請工作許可證', N'Thời kỳ kinh tế Việt Nam ngày càng phát triển với nền kinh tế mở, nhu cầu tuyển dụng người lao động nước ngoài vào Việt Nam làm việc ngày càng nhiều, pháp luật Việt Nam cho phép doanh nghiệp, cơ quan, tổ chức, cá nhân, nhà thầu tuyển dụng người lao động Người nước ngoài vào Việt Nam ngày một tăng cao. Để người lao động nước ngoài làm việc hợp pháp tại Việt Nam thì người lao động nước ngoài cần có giấy phép lao động. Công ty Hinh Lam thông tin cơ bản đến quý khách:', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'越南經濟日益開放的時期，需要招聘外勞進入越南的工作越來越多，越南法律允許企業、機構、組織、個人和承包商招聘外勞進入越南日益增多。為了讓外勞工人在越南合法工作，外勞工人需要有工作許可證。鑫藍向貴客提供基本信息：', N'When Vietnam''s economy is developing more and more with an open economy, the need to recruit foreign workers to Vietnam is increasing; Vietnamese Law allows businesses, agencies, organizations and individuals to work. Employees, contractors recruiting workers, foreigners entering Vietnam are increasing day by day. For foreign workers to work legally in Vietnam, foreign workers need work permits. Hinh Lam Company provides basic information to customers:')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'18', N'Xin cấp thị thực cho người nước ngoài', N'Apply for visas for foreigners', N'為外國人申請簽證', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'19', N'Xin cấp đổi giấy phép lái xe cho người nước ngoài', N'Apply for replacement driver''s licenses for foreigners', N'為外國人申請駕駛證', N'Thủ tục đổi giấy phép lái xe cho người nước ngoài được thực hiện theo quy định pháp luật. Theo đó, người nước ngoài hoặc người Việt Nam cư trú ở nước ngoài có nhu cầu lái xe ở Việt Nam nếu có giấy phép lái xe quốc gia phải làm thủ tục đổi sang giấy phép lái xe tương ứng của Việt Nam.', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'依法辦理外國人換領駕駛證手續。因此，希望在越南駕駛的外國人或居住在國外的越南人，如果持有國家駕駛證，必須辦理相應的越南駕駛執照的變更手續。', N'Procedures for replacement driver''s licenses for foreigners are carried out following the Law. Accordingly, foreigners or Vietnamese residing abroad who wish to drive in Vietnam, if they have a national driving license, must carry out procedures to change to the corresponding Vietnamese driving license.')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'2', N'Cung cấp dịch vụ kế toán trọn gói', N'Providing complete-package accounting service', N'提供全套的會計服務', N'null', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'20', N'Cung cấp dịch vụ xin phép nhập cảnh vào Việt Nam', N'Providing services of applying for entry permits to Vietnam', N'提供申請越南入境許可的服務', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'3', N'Đào tạo kế toán thực hành', N'Training practical accountants', N'實務會計培訓', N'null', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'4', N'Đại lý thuế', N'Tax agent', N'稅務代理', N'Đại lý thuế là cụm từ ra đời từ năm 2008 tại Việt Nam, là một ngành nghề trong hệ thống danh mục ngành nghề Việt Nam. Đại lý thuế là dịch vụ chuyên làm thủ tục kê khai thuế, báo cáo thuế, quyết toán thuế cho các doanh nghiệp.', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'稅務代理是2008年誕生於越南的詞組，是越南職業清單中的一個職業。稅務代理是一項專門為企業提供稅務申報程序、稅務報告和稅務終結的服務。', N'Tax agent is a phrase born in 2008 in Vietnam, is a profession in the system of Vietnamese industry lists. The tax agent specializes in tax declaration procedures, tax reports and tax finalization for businesses.')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'5', N'Hoàn thuế GTGT dự án', N'Conducting VAT refund by project', N'項目增值稅退稅', N'null', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'6', N'Thành lập doanh nghiệp Việt Nam và doanh nghiệp nước ngoài', N'Consulting business Establishment', N'成立越南和外國企業', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'7', N'Hồ sơ khách hàng cần chuẩn bị khi thành lập công ty có vốn đầu tư nước ngoài tại Việt Nam:', N'Documents that customers need to prepare when establishing a foreign-invested company in Vietnam:', N'客戶在越南設立外商投資公司時需要準備的文件：', N'null', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 2, N'null', N'null')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'8', N'Điều chỉnh thay đổi giấy phép kinh doanh, giấy phép đầu tư', N'Adjusting and amending investment licenses', N'營業執照、投資執照的調整和變更', N'Trong quá trình hoạt động kinh doanh của doanh nghiệp. Khi phát sinh những thay đổi về tình hình thực tế thì doanh nghiệp cần phải thực hiện thủ tục thay đổi giấy chứng nhận đầu tư (thay đổi thông tin trên Giấy chứng nhận đầu tư). Đồng thời doanh nghiệp phải thực hiện thủ tục thay đổi giấy chứng nhận đăng ký doanh nghiệp (thay đổi Giấy chứng nhận đăng ký doanh nghiệp) để tránh bị xử phạt vi phạm hành chính trong lĩnh vực kế hoạch đầu tư, tránh bị xử phạt sẽ gây rắc rối rất lớn cho doanh nghiệp có vốn đầu tư nước ngoài hoạt động kinh doanh tại Việt Nam trong tương lai.', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'在企業經營過程中。當實際情況發生變化時，企業需要辦理投資證變更手續（投資證資訊變更）。同時，企業必須辦理商業證變更登記手續（更改商業登記證）為避免因投資規劃領域的行政違法行為被制裁，避免被制裁，這會給日後在越南開展業務的外商投資企業造成很大麻煩。', N'In the course of business operations of the enterprise. When there are changes in the actual situation, the enterprise needs to carry out the procedures for changing the investment certificate (changing information on the investment certificate). At the same time, enterprises must carry out procedures to change the Certificate of business registration (change the Certificate of business registration) to avoid being sanctioned for administrative violations in investment planning, avoiding penalties. This will cause great trouble for foreign-invested enterprises doing business in Vietnam in the future.')
INSERT [dbo].[SubMenu] ([SubMenuID], [Title], [TitleEN], [TitleCN], [Description], [CreatedDate], [Status], [SubMenuCount], [DescriptionCN], [DescriptionEN]) VALUES (N'9', N'Sát Nhập công ty trong nước và công ty nước ngoài', N'Merging domestic and foreign companies', N'合併國內外公司', N'Với nhiều năm kinh nghiệm, chúng tôi cung cấp dịch vụ sáp nhập doanh nghiệp uy tín, nhanh chóng.', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 1, 1, N'憑藉多年的經驗，我們提供快速且信譽良好的企業合併服務。', N'With many years of experience, we provide fast and reputable business merger services.')
GO
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'1', N'1', N'1')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'10', N'4', N'10')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'11', N'5', N'11')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'12', N'6', N'12')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'13', N'7', N'13')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'14', N'7', N'14')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'15', N'7', N'15')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'16', N'8', N'16')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'17', N'8', N'17')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'18', N'8', N'18')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'19', N'8', N'19')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'2', N'1', N'2')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'20', N'8', N'20')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'21', N'8', N'21')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'22', N'8', N'22')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'23', N'8', N'23')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'24', N'8', N'24')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'25', N'9', N'25')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'26', N'10', N'26')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'27', N'11', N'27')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'28', N'11', N'28')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'29', N'12', N'29')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'3', N'1', N'3')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'30', N'12', N'30')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'31', N'12', N'31')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'32', N'13', N'32')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'33', N'13', N'33')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'34', N'14', N'34')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'35', N'14', N'35')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'36', N'14', N'36')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'37', N'14', N'37')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'38', N'15', N'38')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'39', N'15', N'39')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'4', N'2', N'4')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'40', N'15', N'40')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'41', N'15', N'41')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'42', N'16', N'42')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'43', N'17', N'43')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'44', N'17', N'44')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'45', N'17', N'45')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'46', N'18', N'46')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'47', N'18', N'47')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'48', N'18', N'48')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'49', N'18', N'49')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'5', N'2', N'5')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'50', N'19', N'50')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'51', N'19', N'51')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'52', N'19', N'52')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'53', N'19', N'53')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'54', N'19', N'54')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'55', N'20', N'55')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'56', N'20', N'56')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'57', N'20', N'57')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'58', N'16', N'67')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'59', N'16', N'68')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'6', N'3', N'6')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'7', N'3', N'7')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'8', N'3', N'8')
INSERT [dbo].[SubMenuContent] ([Id], [SubMenuId], [ContentId]) VALUES (N'9', N'4', N'9')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MenuSubMenu_MenuId]    Script Date: 8/17/2023 9:35:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_MenuSubMenu_MenuId] ON [dbo].[MenuSubMenu]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MenuSubMenu_SubMenuId]    Script Date: 8/17/2023 9:35:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_MenuSubMenu_SubMenuId] ON [dbo].[MenuSubMenu]
(
	[SubMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF__Content__Content__49C3F6B7]  DEFAULT ((0)) FOR [ContentCount]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF__Menu__MenuCount__48CFD27E]  DEFAULT ((0)) FOR [MenuCount]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF__Menu__HrefLink__5AEE82B9]  DEFAULT (N'') FOR [HrefLink]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF__Menu__HrefLinkCN__5BE2A6F2]  DEFAULT (N'') FOR [HrefLinkCN]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF__Menu__HrefLinkEN__5CD6CB2B]  DEFAULT (N'') FOR [HrefLinkEN]
GO
ALTER TABLE [dbo].[SubMenu] ADD  CONSTRAINT [DF__SubMenu__SubMenu__47DBAE45]  DEFAULT ((0)) FOR [SubMenuCount]
GO
ALTER TABLE [dbo].[SubMenu] ADD  DEFAULT (N'') FOR [DescriptionCN]
GO
ALTER TABLE [dbo].[SubMenu] ADD  DEFAULT (N'') FOR [DescriptionEN]
GO
ALTER TABLE [dbo].[FileContent]  WITH CHECK ADD  CONSTRAINT [FK_FileContent_Content] FOREIGN KEY([ContentId])
REFERENCES [dbo].[Content] ([ContentID])
GO
ALTER TABLE [dbo].[FileContent] CHECK CONSTRAINT [FK_FileContent_Content]
GO
ALTER TABLE [dbo].[FileContent]  WITH CHECK ADD  CONSTRAINT [FK_FileContent_File] FOREIGN KEY([FileId])
REFERENCES [dbo].[File] ([FileId])
GO
ALTER TABLE [dbo].[FileContent] CHECK CONSTRAINT [FK_FileContent_File]
GO
ALTER TABLE [dbo].[FileMenu]  WITH CHECK ADD  CONSTRAINT [FK_FileMenu_File1] FOREIGN KEY([FileId])
REFERENCES [dbo].[File] ([FileId])
GO
ALTER TABLE [dbo].[FileMenu] CHECK CONSTRAINT [FK_FileMenu_File1]
GO
ALTER TABLE [dbo].[FileMenu]  WITH CHECK ADD  CONSTRAINT [FK_FileMenu_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[FileMenu] CHECK CONSTRAINT [FK_FileMenu_Menu]
GO
ALTER TABLE [dbo].[FileNews]  WITH CHECK ADD  CONSTRAINT [FK_FileNews_File] FOREIGN KEY([FileId])
REFERENCES [dbo].[File] ([FileId])
GO
ALTER TABLE [dbo].[FileNews] CHECK CONSTRAINT [FK_FileNews_File]
GO
ALTER TABLE [dbo].[FileNews]  WITH CHECK ADD  CONSTRAINT [FK_FileNews_News] FOREIGN KEY([NewsId])
REFERENCES [dbo].[News] ([NewsId])
GO
ALTER TABLE [dbo].[FileNews] CHECK CONSTRAINT [FK_FileNews_News]
GO
ALTER TABLE [dbo].[FileSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_FileSubMenu_File] FOREIGN KEY([Id])
REFERENCES [dbo].[File] ([FileId])
GO
ALTER TABLE [dbo].[FileSubMenu] CHECK CONSTRAINT [FK_FileSubMenu_File]
GO
ALTER TABLE [dbo].[FileSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_FileSubMenu_SubMenu] FOREIGN KEY([SubMenuId])
REFERENCES [dbo].[SubMenu] ([SubMenuID])
GO
ALTER TABLE [dbo].[FileSubMenu] CHECK CONSTRAINT [FK_FileSubMenu_SubMenu]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Category] FOREIGN KEY([CateId])
REFERENCES [dbo].[Category] ([CateId])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Category]
GO
ALTER TABLE [dbo].[MenuSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_MenuSubMenu_Menu_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuSubMenu] CHECK CONSTRAINT [FK_MenuSubMenu_Menu_MenuId]
GO
ALTER TABLE [dbo].[MenuSubMenu]  WITH CHECK ADD  CONSTRAINT [FK_MenuSubMenu_SubMenu_SubMenuId] FOREIGN KEY([SubMenuId])
REFERENCES [dbo].[SubMenu] ([SubMenuID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuSubMenu] CHECK CONSTRAINT [FK_MenuSubMenu_SubMenu_SubMenuId]
GO
ALTER TABLE [dbo].[NewsContent]  WITH CHECK ADD  CONSTRAINT [FK_NewsContent_Content] FOREIGN KEY([ContentId])
REFERENCES [dbo].[Content] ([ContentID])
GO
ALTER TABLE [dbo].[NewsContent] CHECK CONSTRAINT [FK_NewsContent_Content]
GO
ALTER TABLE [dbo].[NewsContent]  WITH CHECK ADD  CONSTRAINT [FK_NewsContent_News] FOREIGN KEY([NewsId])
REFERENCES [dbo].[News] ([NewsId])
GO
ALTER TABLE [dbo].[NewsContent] CHECK CONSTRAINT [FK_NewsContent_News]
GO
USE [master]
GO
ALTER DATABASE [mat59837_HinhLamDB] SET  READ_WRITE 
GO
