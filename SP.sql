create procedure SP_insertar_alumno(
	@nombre varchar (255),
	@apellido varchar (255),
	@edad int,
	@email varchar (255),
	@dni int,
	@ciud_id int
	)
	as 
	begin
	insert into alumnos(alum_nombre,alum_apellido,alum_edad,alum_email,alum_dni,alum_ciudad_id)
	values(@nombre,@apellido, @edad, @email, @dni, @ciud_id)
	end
	exec SP_insertar_alumno 'matias','apel',15,'matiapel@gmail.com',87654321,1

create procedure SP_insertar_ciudad(
	@nombre varchar (255),
	@cod_postal int,
	@prov_id int
	)
	as
	begin
	insert into ciudad (ciud_nombre,ciud_cod_postal, ciud_provincia_id)
	values(@nombre,@cod_postal, @prov_id)
	end
	exec SP_insertar_ciudad 'Ushuaia', 2820, 1


create procedure SP_insertar_provincia(
	@nombre varchar (255),
@pais_id int
	)
	as
	begin
	insert into provincia (prov_nombre,prov_pais_id)
	values (@nombre, @pais_id)
	end
exec SP_insertar_provincia 'Tierra del Fuego',1



create procedure SP_insertar_pais(
@nombre varchar (255)
)
as
begin
insert into pais (pais_nombre)
values(@nombre)
end
exec SP_insertar_pais 'macedonia'



create procedure SP_borrar_alumno(
	@ID int
	)
	as 
	begin
	delete from alumnos where id_alum = @ID
	end
exec SP_borrar_alumno 4

create procedure SP_borrar_ciudad(
	@ID int
	)
	as 
	begin
	delete from ciudad where id_ciud=@ID
	end
exec SP_borrar_ciudad 4

create procedure SP_borrar_provincia(
	@ID int
	)
	as 
	begin
	delete from provincia where id_prov=@ID
	end
exec SP_borrar_provincia 4





create procedure SP_borrar_pais(
	@ID int
	)
	as 
	begin
	delete from pais where id_pais=@ID
	end
exec SP_borrar_pais 4


	

create procedure SP_obtener_alumno(
	@ID int)
	as 
	begin
	select *from alumnos where id_alum= @ID
	end
	exec SP_obtener_alumno 1

create procedure SP_obtener_ciudad(
	@ID int)
	as 
	begin
	select *from ciudad where id_ciud=@ID
	end
	exec SP_obtener_ciudad 1

create procedure SP_obtener_pais(
	@ID int)
	as 
	begin
	select *from pais where id_pais=@ID
	end
	exec SP_obtener_pais 1

create procedure SP_obtener_provincia(
	@ID int)
	as 
	begin
	select *from provincia where id_prov=@ID
	end
	exec SP_obtener_provincia 1





create procedure SP_obtener_alumno_todos
	as
	begin
	select *from alumno
	end


create procedure SP_obtener_ciudad_todos
	as
	begin
	select *from ciudad
	end


create procedure SP_obtener_provincia_todos
	as
	begin
	select *from provincia
	end



create procedure SP_obtener_pais_todos
	as
	begin
	select *from pais
	end



create procedure SP_actualizar_pais(
	@nombre varchar (255)
	)
	as 
	begin
	update alumnos set (pais_nombre)
	values (@nombre)
	end

create procedure SP_actualizar_provincia(
	@nombre varchar (255),
	@pais_id int
	)
	as 
	begin
	update alumnos set (prov_nombre,prov_pais_id)
	values (@nombre,@pais_id)
	end



create procedure SP_actualizar_ciudad(
	@nombre varchar (255),
	@cod_postal int
	@prov_id int
	)
	as 
	begin
	update alumnos set (ciud_nombre, ciud_cod_postal, ciud_provincia_id)
	values (@nombre,@cod_postal, @prov_id)
	end


create procedure SP_actualizar_alumno(
	@nombre varchar (255),
	@apellido varchar (255),
	@edad int,
	@email varchar (255),
	@dni int,
	@ciud_id int
	)
	as 
	begin
	update alumnos set (alum_nombre,alum_apellido,alum_edad,alum_email,alum_dni,alum_ciudad_id)
	values (@nombre,@apellido, @edad, @email, @dni, @ciud_id)
	end
