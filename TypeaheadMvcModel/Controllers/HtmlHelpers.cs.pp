
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Linq.Expressions;
using System.Web.Mvc;
using System.Web.Mvc.Html;

namespace $rootnamespace$.Models
{
    public static class AutocompleteHelpers
    {
        public static MvcHtmlString AutocompleteFor<TModel, TProperty1, TProperty2>(this HtmlHelper<TModel> html, Expression<Func<TModel, TProperty1>> valueExpression,
            Expression<Func<TModel, TProperty2>> idExpression, string actionName, string controllerName, bool requestFocus, object additionalViewData)
        {
            return CreateTextBoxForFromAutocompleteFor<TModel, TProperty1, TProperty2>(html, valueExpression, actionName, controllerName, requestFocus,
                idExpression.Body.ToString(), additionalViewData);
        }

        public static MvcHtmlString AutocompleteFor<TModel, TProperty1, TProperty2>(this HtmlHelper<TModel> html, Expression<Func<TModel, TProperty1>> valueExpression,
            Expression<Func<TModel, TProperty2>> idExpression, string actionName, string controllerName, bool requestFocus)
        {
            return CreateTextBoxForFromAutocompleteFor<TModel, TProperty1, TProperty2>(html, valueExpression, actionName, controllerName, requestFocus,
                idExpression.Body.ToString(), new object { });
        }

        public static MvcHtmlString AutocompleteFor<TModel, TProperty1, TProperty2>(this HtmlHelper<TModel> html, Expression<Func<TModel, TProperty1>> valueExpression,
            Expression<Func<TModel, TProperty2>> idExpression, int index, string actionName, string controllerName, bool requestFocus)
        {
            return AutocompleteFor<TModel, TProperty1, TProperty2>(html, valueExpression, idExpression, index, actionName, controllerName, requestFocus, new object { });
        }

        public static MvcHtmlString AutocompleteFor<TModel, TProperty1, TProperty2>(this HtmlHelper<TModel> html, Expression<Func<TModel, TProperty1>> valueExpression,
            Expression<Func<TModel, TProperty2>> idExpression, int index, string actionName, string controllerName, bool requestFocus, object additionalViewData)
        {
            // Get the fully qualified class name of the autocomplete id field
            string idFieldString = idExpression.Body.ToString();

            // handle if the id field is an array
            int locGetItem = idFieldString.IndexOf(".get_Item(", StringComparison.Ordinal);
            if (locGetItem > 0)
            {
                idFieldString = idFieldString.Substring(0, locGetItem);
                idFieldString += string.Format("_{0}_", index);
            }

            return CreateTextBoxForFromAutocompleteFor<TModel, TProperty1, TProperty2>(html, valueExpression, actionName, controllerName, requestFocus, idFieldString, new object { });;
        }

        private static MvcHtmlString CreateTextBoxForFromAutocompleteFor<TModel, TProperty1, TProperty2>(
            HtmlHelper<TModel> html,
            Expression<Func<TModel, TProperty1>> valueExpression, string actionName, string controllerName,
            bool requestFocus, string idFieldString, object additionalViewData)
        {
            string autocompleteUrl = UrlHelper.GenerateUrl(null, actionName, controllerName,
                null,
                html.RouteCollection,
                html.ViewContext.RequestContext,
                includeImplicitMvcValues: true);

            // We need to strip the 'model.' from the beginning
            int loc = idFieldString.IndexOf('.');
            // Also, replace the . with _ as this is done by MVC so the field name is js friendly
            string autocompleteIdField = idFieldString.Substring(loc + 1, idFieldString.Length - loc - 1)
                .Replace('.', '_');

            dynamic htmlAttributes = new ExpandoObject();

            // handle additional view data
            if (additionalViewData != null)
            {
                var additionalViewDataPropertyNamesAndValues = additionalViewData.GetType()
                    .GetProperties()
                    .Where(pi => pi.GetGetMethod() != null)
                    .Select(pi => new
                    {
                        Name = pi.Name,
                        Value = pi.GetGetMethod().Invoke(additionalViewData, null)
                    });

                foreach (var pair in additionalViewDataPropertyNamesAndValues)
                {
                    if (pair.Name == "htmlAttributes")
                    {

                        var htmlAttributesPropertyNamesAndValues = pair.Value.GetType()
                            .GetProperties()
                            .Where(pi => pi.PropertyType == typeof (string) && pi.GetGetMethod() != null)
                            .Select(pi => new
                            {
                                Name = pi.Name,
                                Value = pi.GetGetMethod().Invoke(pair.Value, null)
                            });
                        foreach (var pair2 in htmlAttributesPropertyNamesAndValues)
                        {
                            var pair2Name = pair2.Name;
							if (pair2Name.Contains("data_"))
							{
								var dataAttributeName = pair2.Name.Replace("data_", "data-");
								pair2Name = dataAttributeName;
							}
                            ((IDictionary<string, object>) htmlAttributes).Add(pair2Name, pair2.Value);
                        }
                    }
                }
            }
            // add @class if it is not there yet
            if (!((IDictionary<string, object>) htmlAttributes).ContainsKey("@class"))
            {
                htmlAttributes.@class = "";
            }

            string @class = (!((string) htmlAttributes.@class).Contains("typeahead") ? "typeahead" : "");
            ((IDictionary<string, object>) htmlAttributes).Add("data-autocomplete-url", autocompleteUrl);
            ((IDictionary<string, object>)htmlAttributes).Add("data-autocomplete-id-field", autocompleteIdField);
            htmlAttributes.@class += (!string.IsNullOrEmpty(htmlAttributes.@class) ? " " : "") + @class;

            return html.TextBoxFor(valueExpression, ((IDictionary<string, object>)htmlAttributes));
        }
    }
}
