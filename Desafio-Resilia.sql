
CREATE TABLE Dados (
 	id serial,
	 hotel VARCHAR(100),
	 is_canceled INT,
	 lead_time VARCHAR(100),
	 arrival_date_year VARCHAR(100),
	 arrival_date_month VARCHAR(100),
	 arrival_date_week_number VARCHAR(100),
	 arrival_date_day_of_month VARCHAR(100),
	 stays_in_weekend_nights VARCHAR(100),
	 stays_in_week_nights VARCHAR(100),
	 adults VARCHAR(100),
	 children VARCHAR(100),
	 babies VARCHAR(100),
	 meal VARCHAR(100),
	 country VARCHAR(100),
	 market_segment VARCHAR(100),
	 distribution_channel VARCHAR(100),
	 is_repeated_guest BOOL,
	 previous_cancellations VARCHAR(100),
	 previous_bookings_not_canceled VARCHAR(100),
	 reserved_room_type VARCHAR(100),
	 assigned_room_type VARCHAR(100),
	 booking_changes VARCHAR(100),
	 deposit_type VARCHAR(100),
	 agent VARCHAR(100),
	 company VARCHAR(100),
	 days_in_waiting_list  VARCHAR(100),
	 customer_type VARCHAR(50),
	 adr  FLOAT,
	 required_car_parking_spaces  VARCHAR(100),
	 total_of_special_requests VARCHAR(100),
	 reservation_status VARCHAR(50),
	 reservation_status_date  DATE
 );
 
COPY Dados(hotel,is_canceled,lead_time,arrival_date_year,arrival_date_month,arrival_date_week_number,arrival_date_day_of_month,stays_in_weekend_nights,stays_in_week_nights,adults,children,babies,meal,country,market_segment,distribution_channel,is_repeated_guest,previous_cancellations,previous_bookings_not_canceled,reserved_room_type,assigned_room_type,booking_changes,deposit_type,agent,company,days_in_waiting_list,customer_type,adr,required_car_parking_spaces,total_of_special_requests,reservation_status,reservation_status_date) FROM 'C:\Users\Public\Base - Desafio Dados.csv' DELIMITER ';' CSV HEADER;
GRANT SELECT ON Dados TO PUBLIC; 
 SELECT * FROM dados
 
	SELECT country,sum(is_canceled) FROM dados GROUP BY distinct country ORDER BY sum DESC
 	SELECT country,sum(is_canceled) FROM dados   WHERE reservation_status_date='2015-12-31' GROUP BY distinct country ORDER BY sum DESC
	SELECT reserved_room_type,count(is_canceled) FROM dados WHERE is_canceled <1 GROUP BY distinct reserved_room_type order by reserved_room_type
	SELECT reserved_room_type,count(is_canceled) FROM dados WHERE is_canceled =1 GROUP BY distinct reserved_room_type order by reserved_room_type