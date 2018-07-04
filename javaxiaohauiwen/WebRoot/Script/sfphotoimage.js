var sfphotoimage = {};
sfphotoimage.Resize = function(image, width, height)
{
	image.removeAttribute('width');
	image.removeAttribute('height');
	var w = image.width, h = image.height;
	var scaling = w / h;
	if(width != null)
	{	
		w = image.width;
		if(w > width)
		{
			image.width = width;
			image.height = width / scaling;
		}
	}
	if(height != null)
	{	
		h = image.height;
		if(h > height)
		{
			image.width = height * scaling;			
			image.height = height;
		}
	}
}
function SetMiddle(image, height)
{
	if (typeof(image) == 'string') image = document.images[image] || document.getElementById(image);
	var div = image.parentNode;
	if(div.nodeName != "DIV")
	{
	    div = div.parentNode;
	}
	if(image.height > 0 && image.height < height)
	{
		div.style.paddingTop = (height - image.height) / 2;
	}
	else
	{
	    image.height = height;
		div.style.paddingTop = 0;
	}
}
function GetPictureThumbnailUrl(url, formatName)
{	
	if (url == null || url == '' || url.lastIndexOf('.') == -1)
	{
		return '';
	}
	else
	{
		var extend = url.substring(url.lastIndexOf('.'));
		url = url.replace(extend, '_' + formatName + extend);
		return url;
	}
}