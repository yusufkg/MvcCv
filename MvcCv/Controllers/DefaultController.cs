using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using MvcCv.Models.Entity;

namespace MvcCv.Controllers
{
    [AllowAnonymous]
    public class DefaultController : Controller
    {
        // GET: Default
        DbCvEntities1 db = new DbCvEntities1();

        public ActionResult Index()
        {
            var degerler = db.TblHakkimda.ToList();
            return View(degerler);
        }
        public PartialViewResult Deneyim()
        {
            var deneyimler = db.TblDeneyimlerim.ToList();

            return PartialView(deneyimler);
        }

        public PartialViewResult SosyalMedya()
            {
                var sosyalmedya = db.TblSosyalMedya.Where(x=>x.Durum==true).ToList();

                return PartialView(sosyalmedya);
            }

        public PartialViewResult Egitimlerim()
        {
            var egitimler = db.TblEgitimlerim.ToList();

            return PartialView(egitimler);
        }
        public PartialViewResult Yeteneklerim()
        {
            var yetenekler = db.TblYeteneklerim.ToList();

            return PartialView(yetenekler);
        }
        public PartialViewResult Hobilerim()
        {
            var hobiler = db.TblHobilerim.ToList();

            return PartialView(hobiler);
        }
        public PartialViewResult Sertifikalar()
        {
            var sertifikalar = db.TblSertifikalarim.ToList();

            return PartialView(sertifikalar);
        }

        [HttpGet]
        public PartialViewResult iletisim()
        {
            return PartialView();
          }

        [HttpPost]
        public PartialViewResult iletisim(Tbliletisim t)
        {
            t.Tarih = DateTime.Parse(DateTime.Now.ToLongTimeString());
            db.Tbliletisim.Add(t);
            db.SaveChanges();
            return PartialView();
        }
        public PartialViewResult havadurumu()
        {
            string api = "1a287a20eb1a77d95e3c9eea181631be";
            string connection = "https://api.openweathermap.org/data/2.5/weather?q=ankara&mode=xml&lang=tr&units=metric&appid="+api;
            XDocument weather = XDocument.Load(connection);
            ViewBag.v1 = weather.Descendants("temperature").ElementAt(0).Attribute("value").Value;
            return PartialView();
        }

    }
}