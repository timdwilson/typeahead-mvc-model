
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

            return CreateTextBoxForFromAutocompleteFor<TModel, TProperty1, TProperty2>(html, valueExpression, actionName, controllerName, requestFocus, idFieldString, additionalViewData);;
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

            var additionalViewDataDictionary = HtmlHelper.ObjectToDictionary(additionalViewData);
            RouteValueDictionary defaultHtmlAttributes = new RouteValueDictionary();
            defaultHtmlAttributes.Add("class", "typeahead");
            defaultHtmlAttributes.Add("data-autocomplete-url", autocompleteUrl);
            defaultHtmlAttributes.Add("data-autocomplete-id-field", autocompleteIdField);

            IDictionary<string, object> htmlAttributes = new RouteValueDictionary();
            if (additionalViewDataDictionary.ContainsKey("htmlAttributes"))
            {
                htmlAttributes = HtmlHelper.AnonymousObjectToHtmlAttributes(additionalViewDataDictionary["htmlAttributes"]);
            }
            htmlAttributes = html.MergeHtmlAttributes(htmlAttributes, defaultHtmlAttributes);

            return html.TextBoxFor(valueExpression, htmlAttributes);
        }
        public static IDictionary<string, object> MergeHtmlAttributes(this HtmlHelper helper, object htmlAttributesObject, object defaultHtmlAttributesObject)
        {
            var concatKeys = new string[] { "class" };
            var htmlAttributesDict = htmlAttributesObject as IDictionary<string, object>;
            var defaultHtmlAttributesDict = defaultHtmlAttributesObject as IDictionary<string, object>;

            RouteValueDictionary htmlAttributes = (htmlAttributesDict != null)
                ? new RouteValueDictionary(htmlAttributesDict)
                : HtmlHelper.AnonymousObjectToHtmlAttributes(htmlAttributesObject);
            RouteValueDictionary defaultHtmlAttributes = (defaultHtmlAttributesDict != null)
                ? new RouteValueDictionary(defaultHtmlAttributesDict)
                : HtmlHelper.AnonymousObjectToHtmlAttributes(defaultHtmlAttributesObject);

            foreach (var item in htmlAttributes)
            {
                if (concatKeys.Contains(item.Key) && defaultHtmlAttributes.ContainsKey(item.Key))
                {
                    //If the existing value is not null and is not a blank string then concatenate the value else overwrite the value.
                    defaultHtmlAttributes[item.Key] = (defaultHtmlAttributes[item.Key] != null && !string.IsNullOrEmpty(defaultHtmlAttributes[item.Key].ToString()))
                        //Add the passed in values to the back of the default concat values
                        ? string.Format("{0} {1}", defaultHtmlAttributes[item.Key], item.Value)
                        //use the passed in value as is
                        : item.Value;
                }
                else
                {
                    defaultHtmlAttributes.MergeAttribute(item.Key, item.Value);
                }
            }

            return defaultHtmlAttributes;
        }
        public static void MergeAttribute(this IDictionary<string, object> attributes, string name, object value)
        {
            if (attributes.Keys.Contains(name))
                //Overwrite the existing value
                attributes[name] = value;
            else
                //Add a new value
                attributes.Add(name, value);
        }
    }
}
