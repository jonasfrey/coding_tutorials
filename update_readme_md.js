const testFolder = './';
const fs = require('fs');

var path = require('path');
var current_script_name = path.basename(__filename);

var readme = "# attention <br> this file is created dynamically with "+current_script_name+" dont edit manually <br>"; 

readme += "# generate readme<br>"
readme += "```node "+current_script_name+"```<br>"


readme += "checkout the .md files below for the tutorials <br>"
readme += "---------------<br>"

fs.readdir(testFolder, (err, files) => {
  files.forEach(file => {
    console.log(file);
    var parts = file.split(".");
    if(parts.pop().toLocaleLowerCase() == "md"){
        readme += "["+parts.join('.')+"]("+file+")<br>"
    }   

  });

  fs.writeFile('readme.md', readme, function (err) {
    if (err) return console.log(err);
  });

  
});