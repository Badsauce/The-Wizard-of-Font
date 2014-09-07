function renderFlowNode(id)
{
	$.get("flowchart/"+id,function( data ){
		//select elements
		var question = $('#question');
		var buttonHolder = $('#button-holder');

		//clear the button holder
		buttonHolder.empty()

		//Fill new objects
		question.text(data.question);

		var colSize;

		switch(data.options.length){
			case 3:
				colSize = 4;
				break;
		}

		for(var i = 0; i < data.options.length; i++)
		{
			var newButton = $("<button></button>");
			newButton.attr("class","btn btn-default btn-lg");
			newButton.text(data.options[i].name);			
			newButton.attr("onClick","renderFlowNode("+data.options[i].payloadID+")");

			buttonHolder.append(newButton);
		}
	})
}
