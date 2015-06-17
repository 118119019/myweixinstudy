﻿using CommonService.Serilizer;
using HtmlAgilityPack;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using WebApplication1.DataAccess;


namespace WebApplication1
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var function = context.Request["funct"];
            WebParse webparse = new WebParse();
            switch (function)
            {
                case "GetNewList":
                
                    var industry = context.Request["industry"];
                    var degree = context.Request["degree"];
                    var work = context.Request["work"];
                    var regDate = context.Request["reg"];
                    var effectDate = context.Request["effect"];
                    var place = context.Request["place"];
                    var page = int.Parse(context.Request["page"]);
                    string queryPage = string.Format(
                        "'{0}','{1}','{2}','{3}','{4}','{5}'",
                        industry, degree, work, regDate, effectDate, place
                        );
                    List<WhereParam> whereList = new List<WhereParam>();
                    if (industry != "00")
                    {
                        whereList.Add(new WhereParam()
                        {
                            Where = "c.ZPA010=",
                            ParameterName = "Industry",
                            Value = industry
                        });
                    }
                    if (degree != "00")
                    {
                        whereList.Add(new WhereParam()
                        {
                            Where = "w.ZPB005=",
                            ParameterName = "Degree",
                            Value = degree
                        });
                    }
                    if (work != "0000000")
                    {
                        whereList.Add(new WhereParam()
                        {
                            Where = "w.ZPB002=",
                            ParameterName = "Work",
                            Value = work
                        });
                    }
                    if (regDate != "")
                    {
                        whereList.Add(new WhereParam()
                        {
                            Where = "w.ZPC004>=",
                            ParameterName = "regDate",
                            Value = regDate
                        });
                    }
                    if (effectDate != "")
                    {
                        whereList.Add(new WhereParam()
                        {
                            Where = "w.effectDate<=",
                            ParameterName = "effectDate",
                            Value = effectDate
                        });
                    }
                    if (effectDate != "")
                    {
                        whereList.Add(new WhereParam()
                        {
                            Where = "w.effectDate<=",
                            ParameterName = "effectDate",
                            Value = effectDate
                        });
                    }
                    if (place != "0")
                    {
                        if (place.Contains(','))
                        {
                            StringBuilder sb = new StringBuilder();
                            string[] strs = place.Split(',');
                            for (int i = 0; i < strs.Length; i++)
                            {
                                if (i != strs.Length - 1)
                                {
                                    sb.AppendFormat("'{0}',", strs[i]);
                                }
                                else
                                {
                                    sb.AppendFormat("'{0}'", strs[i]);
                                }
                            }
                            whereList.Add(new WhereParam()
                            {
                                Where = "c.ZPA018 in (",
                                ParameterName = "place)",
                                Value = sb.ToString()
                            });
                        }
                        else
                        {
                            whereList.Add(new WhereParam()
                            {
                                Where = "c.ZPA018=",
                                ParameterName = "place",
                                Value = place
                            });
                        }
                    }
                    var service = new DataAccessSerive();
                    context.Response.Write(GetJson(service.LoadEntities(queryPage, page, whereList)));
                    break;
                case "GetNewDetail":
                    context.Response.Write(webparse.LoadNewDetail(context));
                    break;
                default:
                    context.Response.Write("Hello World");
                    break;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        private string GetJson(TableJson tableJson)
        {
            return SerilizeService<TableJson>.CreateSerilizer(Serilize_Type.Json).Serilize(tableJson);
        }

    }

    public class TableJson
    {
        public List<MyLink> myLinkList { get; set; }
        public MyPage mypage { get; set; }
    }
    public class MyLink
    {
        public string Company { get; set; }
        public string Url { get; set; }
        public string Work { get; set; }
        public string Num { get; set; }
        public string Time { get; set; }
    }

    public class MyPage
    {
        public string Previous { get; set; }
        public string Next { get; set; }

        public string Desc { get; set; }
        public string SelPage { get; set; }
    }

}