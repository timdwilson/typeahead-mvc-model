# typeahead-mvc-model
Extends Twitter's typeahead.js to work with MVC 5 models

*Code written by Tim Wilson and open sourced by Provision (http://provision.org)*

This package extends upon the Twitter.Typeahead library and the Twitter.Typeahead.MVC library by hooking typeahead to MVC models. With a few configuration tweaks, you'll be connecting typeahead.js to your model in minutes!

# Screenshot

Here's a screenshot of Typeahead connected to an MVC model in action (the rest of this README walks you through creating this example):

![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/preview.png)

# Download

Download Typeahead.js for MVC 5 Models using [NuGet](https://www.nuget.org/packages/Twitter.Typeahead.MVC.Model/)

# How to Setup Twitter Typeahead.js to work with MVC Models

*(Note: to use the Entity Framework queries in this document, you will need to install the Adventure Works database from [CodePlex](https://msftdbprodsamples.codeplex.com/releases/view/55330). If you don’t need to connect to a database or have a database connection, skip ahead.  Likewise, if you already have a model you would like to connect to typeahead, skip right ahead. Finally, you can download the full source code  of this example application, including the solution file, at the bottom of this page.)*

1.	Edit ~\Views\Shared\_Layout.cshtml to load the typeahead.js bundle, Typeahead stylesheet and javascript that connects Typeahead to your MVC 5 model

	a.	Add the line to load the Typeahead stylesheet
	In ~\Views\Shared\_Layout.cshtml, add the following line before the close of the head tag:

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/typeahead_css.png)

	````html
	<link rel="stylesheet" type="text/css" href="~/Content/typeahead.css" />
	````

	b.	Add the line to load the Typeahead MVC bundle javascript and Typeahead MVC Model javascript (that connects Typeahead to your MVC model):

	In ~\Views\Shared\_Layout.cshtml, add the following line after jquery and bootstrap are both loaded:

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/typeahead_bundle.png)

	````html
		@Scripts.Render("~/bundles/typeahead")
		<script src="~/Scripts/typeahead.mvc.model.js" />
	````    
    
2.	Add a new Model to your project

	a.	Right-click on the Models folder and choose Add > New Item…

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/new_item.png)

	b.	For the Name, type HelloWorld.cs and click Add

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/add_helloworld.png)

	c.	In the Editor, add 4 new properties to the class. Hit F6 to Save and Build your project

	````c#
			public int HelloWorldId { get; set; }
			public string Message { get; set; }
			public string Person { get; set; }
			public int PersonId { get; set; }
	````

3. Add the Entity Framework for AdventureWorks2012 to your project.

	a.	Right-click on your project and choose Add > New Item…

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/new_item.png)

	b.	Choose “ADO.NET Entity Data Model”. For Name, type “AWModel.” Click Add

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/add_entity_data_model.png)

	c.	Choose “EF Designer from data…” Click Next >

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/choose_model_contents.png)

	d.	Click New Connection…

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/new_connection.png)

	e.	For Server name, type the name of the server you attached the AdventureWorks2012 database to. For “Select or enter a database name”, choose AdventureWorks2012. Click Ok

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/connection_properties.png)

	f.	For “Save connection settings in Web.Config as”, type AWEntities. Click Next >

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/awentities.png)

	g.	Expand Tables and Person. Choose Person. For Model Namespace, type AWModel. Click Finish

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/choose_person.png)

	h.	For some reason, Entity Framework does not like it when an entity’s primary key does not match the entity name. To fix this, open up AWModel.edmx

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/awmodel_edmx.png)

	i.	Rename the BusinessEntityId column to PersonId. Hit F6 to Save and Build your project

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/personid.png)

4.	Add a new Scaffolded Item to your project

	a.	Right-click on the Controllers folder and choose Add > New Scaffolded Item…

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/add_new_scaffolded.png)

	b.	Choose “MVC 5 Controller with views, using Entity Framework”. Click Add

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/add_scaffold.png)

	c.	For the Model class, choose HelloWorld ([Project Name].Models). For the Data context class, choose the data context you created earlier, AWEntities ([Project Name]). For the Controller name, HelloWorldController. Click Add

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/add_controller.png)

	*You now have a Controller, Model and View. It’s time to get to work!*

5.	Add code to the HelloWorldController to get people from the database

	a.	Open up HelloWorldController.cs

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/helloworldcontroller_cs.png)

	b.	Near the top of the file, add the using statements for Entity Framework exceptions:

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/entity_core.png)

	````c#
	using System.Data.Entity.Core;
	````

	c.	Add code to get people out of the AdventureWorks2012 database using Entity Framework:

	````c#
	private List<Autocomplete> _GetPeople(string query)
	{
		List<Autocomplete> people = new List<Autocomplete>();
		try
		{
			var results = (from p in db.People
							where (p.FirstName + " " + p.LastName).Contains(query)
							orderby p.FirstName,p.LastName
							select p).Take(10).ToList();
			foreach (var r in results)
			{
				// create objects
				Autocomplete person = new Autocomplete();

				person.Name = string.Format("{0} {1}", r.FirstName, r.LastName);
				person.Id = r.PersonId;
				people.Add(person);
			}

		}
		catch (EntityCommandExecutionException eceex)
		{
			if (eceex.InnerException != null)
			{
				throw eceex.InnerException;
			}
			throw;
		}
		catch
		{
			throw;
		}
		return people;
	}
	````

	d.	Add code to return the people in JSON format:

	````c#
	public ActionResult GetPeople(string query)
	{
		return Json(_GetPeople(query), JsonRequestBehavior.AllowGet);
	}
	````        
        
6. Add the Autocomplete (textahead) control to the Create view for the HelloWorld model

	a. Open up ~\Views\HelloWorld\Create.cshtml.

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/create_cshtml.png)

	b. Add a using statement after the @model line at the top of the file so our HtmlHelper is available in the View:

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/cshtml_using.png)

	````html
	@using WebApplication2.Models
	````

	c.	Since we are hiding the PersonId, we can remove the following code from the View:

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/remove.png)

	d.	Add the PersonId property to the view, yet hide it. This property will be auto-populated by javascript after the user selects a typeahead value

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/hidden_personid.png)

	````
	@Html.HiddenFor(model => model.PersonId)
	````

	e.	We need to change the control from EditorFor to AutocompleteFor. We also need to specify the property name, property key field, the method that Typeahead will call to get the lookup values and keys. The last parameter is false which will keep this field from stealing the focus when the page is loaded.

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/autocompletefor.png)

	````html
	@Html.AutocompleteFor(model => model.Name, model => model.PersonId, "GetPeople", "HelloWorld", false)
	````

7.	Test things out to see how they work

	a.	In HelloWorldController, set a breakpoint in the second Create() (under the [HttpPost] declaration) to inspect the results returned from web page after we test out Typeahead

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/breakpoint.png)

	b.	Open up Create.cshtml again and hit F5 to test things out

	c.	For Message, type “Hello World!” For Name, type “Anna.” It might take a second or two but the list will populate with the top 10 matches. Choose “Anna Albright” Click Create

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/preview.png)

	d. This should hit the breakpoint you set on Create()

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/breakpoint_hit.png)

	e.	Notice that, in your breakpoint, if you expand “helloWorld”, that PersonId is automatically set to 325. Neat, huh?

	![Alt text](https://raw.githubusercontent.com/timdwilson/typeahead-mvc-model/master/doc/images/watch.png)

**I will leave it to you to implement writing helloWorld back at to a database. This is an example after all :) Happy coding!**

##[Download](https://github.com/timdwilson/typeahead-mvc-model/blob/master/example/TypeaheadMvcModelExampleApp.zip?raw=true) the example application.

