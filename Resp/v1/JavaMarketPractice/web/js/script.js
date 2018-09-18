$(document).ready(function(){
   $("#ValidarUsuario").submit(function(){
      $.post("ValidarUsuario", $("#ValidarUsuario").serialize(),function(data){
         perfil=$.trim(data);//La funcion trim sirve para remover espacios vacios(lineas, espacios, etc)
         if(perfil === "1"){//Si se trata de un administrador
            document.location.href = "menuAdministrador.jsp";
         }else{
           if(perfil === "2"){//Si se trata de un usuario normal
               document.location.href = "menuEmpleado.jsp";
           }else{
               $("#mensaje-ingreso").html("<h1>Usuario o Clave no valido </h1>");
            }
         }
      });
      return false;
   });
   $("#TestConecction").submit(function(){
      $.post("TestConecction", $("#TestConecction").serialize(),function(data){ console.log("Se creo la tabla");});
      return false;
   });
});
     
          

      
  


