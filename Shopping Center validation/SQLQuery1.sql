CREATE TABLE[dbo].[Country](
	[Country] NVARCHAR(20) NOT NULL,
	CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Country]ASC)
);

INSERT INTO	Country VALUES('Egypt');

INSERT INTO	Country VALUES('France');

INSERT INTO	Country VALUES('Germany');

INSERT INTO	Country VALUES('Italy');

INSERT INTO	Country VALUES('Cananda');