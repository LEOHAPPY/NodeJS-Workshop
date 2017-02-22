
/*
 * GET photos listing.
 */
exports.list = function(req, res){

  var pg = req.url;

  req.getConnection(function(err,connection){
       
      var query = connection.query('SELECT * FROM photo',function(err,rows)
      {
        if(err)
          console.log("Error Selecting : %s ",err );
     
        res.render('pages/photos',{page: pg, page_title:"photos - Node.js", data:rows});
      });
  });
};

exports.details = function(req, res){
    
    var id = req.params.id;
    console.log(id);

    req.getConnection(function(err,connection){
       
        var query = connection.query('SELECT * FROM photo WHERE id = ?',[id],function(err,rows)
        {         
            if(err)
                console.log("Error Selecting : %s ",err );
            
                console.log(rows);
            res.render('pages/detailsPage',{page_title:"Edit photo - Node.js",data:rows});        
        });
    }); 
};

exports.add = function(req, res){
  res.render('pages/addPage',{page_title:"Add photo - Node.js"});
};

/*
 * Save the photo
 */
exports.save = function(req,res){

    var input = JSON.parse(JSON.stringify(req.body));
    console.log(input);

    req.getConnection(function (err, connection) {
        
      if (err)
        console.log("Error establishing connection: %s", err);

      var data = {
          path          : input.path,
          name          : input.name,
          description   : input.description,
          author        : input.author,
          category      : input.category
      };
        
      var query = connection.query("INSERT INTO photo SET ? ",data, function(err, rows)
      {
        if (err)
          console.log("Error inserting : %s ",err );
         
        res.redirect('/photos'); 
      });
    });
};

exports.edit = function(req, res){
    
    var id = req.params.id;
    console.log(id);
    req.getConnection(function(err,connection){
       
        var query = connection.query('SELECT * FROM photo WHERE id = ?',[id],function(err,rows)
        {         
            if(err)
                console.log("Error Selecting : %s ",err );
            
            console.log(rows);
            res.render('pages/editPage',
            {page_title:"Edit photo - Node.js",
            data:rows});        
        });
    }); 
};

exports.save_edit = function(req,res){
    
    var input = JSON.parse(JSON.stringify(req.body));
    var id = req.params.id;
    console.log(id);
    req.getConnection(function (err, connection) {
        
        var data = {
          path          : input.path,
          name          : input.name,
          description   : input.description,
          author        : input.author,
          category      : input.category
      };
        console.log(data);
        connection.query("UPDATE photo set ? WHERE id = ? ",[data,id], function(err, rows)
        {
          if (err)
              console.log("Error Updating : %s ",err );
         
          res.redirect('/photos');
        });
    });
};


exports.delete_photo = function(req,res){
          
     var id = req.params.id;
    
     req.getConnection(function (err, connection) {
        
        connection.query("DELETE FROM photo  WHERE id = ? ",[id], function(err, rows)
        {
          if(err)
            console.log("Error deleting : %s ",err );
            
          res.redirect('/photos'); 
        });
     });
};


