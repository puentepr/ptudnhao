
IF ( OBJECT_ID('sp_INSERT_YCWEBSERVICE') IS NOT NULL ) 
   DROP PROCEDURE sp_INSERT_YCWEBSERVICE
GO

CREATE PROCEDURE sp_INSERT_YCWEBSERVICE
       @username		VARCHAR(30), 
       @link            VARCHAR(200), 
       @email           VARCHAR(50)       
AS 
BEGIN      
     INSERT INTO YCWEBSERVICE
          ( 
            USERNAME                ,
            LINK                    ,
            EMAIL                   ,
            TINHTRANGYC             ,
            SOLUONGSIDCAP           ,
            SLSIDDATHANHTOAN                 
          ) 
     VALUES 
          ( 
            @username , 
			@link     , 
			@email    ,
			null,
			null,
			null                			
          ) 

END 

GO

