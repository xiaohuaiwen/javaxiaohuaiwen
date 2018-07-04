XmlSource1 = function(xml)
{
	var nodeList;
    
	for(var i=1; i<arguments.length; i++)
	{
		nodeList =  xml.getElementsByTagName(arguments[i]);		
		this[arguments[i]] = new Array();
		for (var j=0; j<nodeList.length; j++)
		{			
			this[arguments[i]][j] = new XmlNode(nodeList[j]);
		}
	}
}
XmlNode = function(node)
{
	this.nodeName = node.nodeName;
	this.data = (node.firstChild && (node.firstChild.nodeName == '#text' || node.firstChild.nodeName == '#cdata-section')) ? node.firstChild.data : '';
	this.getAttribute =
		function(attName)
		{
			return node.getAttribute(attName);
		}
	var nodeName, xmlNode;
	for (var i=0; i<node.childNodes.length; i++)
	{
		if (node.childNodes[i].nodeType == 1)
		{
			nodeName = node.childNodes[i].nodeName;
			if (this[nodeName])
			{
				if(this[nodeName] instanceof Array)
				{
					this[nodeName][this[nodeName].length] = new XmlNode(node.childNodes[i]);
				}
				else
				{
					xmlNode = this[nodeName];
					this[nodeName] = new Array();
					this[nodeName][0] = xmlNode;
					this[nodeName][1] = new XmlNode(node.childNodes[i]);
				}
			}
			else
			{
				this[nodeName] = new XmlNode(node.childNodes[i]);	
			}		
		}
	}
}
