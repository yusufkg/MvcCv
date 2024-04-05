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
        DbCvEntities db = new DbCvEntities();
        
        public ActionResult Index()
        {
            var degerler = db.TblHakkimdas.ToList();
            return View(degerler);
        }
        public PartialViewResult Deneyim()
        {
            var deneyimler = db.TblDeneyimlerims.ToList();

            return PartialView(deneyimler);
        }

        public PartialViewResult SosyalMedya()
            {
                var sosyalmedya = db.TblSosyalMedyas.Where(x=>x.Durum==true).ToList();

                return PartialView(sosyalmedya);
            }

        public PartialViewResult Egitimlerim()
        {
            var egitimler = db.TblEgitimlerims.ToList();

            return PartialView(egitimler);
        }
        public PartialViewResult Yeteneklerim()
        {
            var yetenekler = db.TblYeteneklerims.ToList();

            return PartialView(yetenekler);
        }
        public PartialViewResult Hobilerim()
        {
            var hobiler = db.TblHobilerims.ToList();

            return PartialView(hobiler);
        }
        public PartialViewResult Sertifikalar()
        {
            var sertifikalar = db.TblSertifikalarims.ToList();

            return PartialView(sertifikalar);
        }

        [HttpGet]
        public PartialViewResult iletisim()
        {
            return PartialView();
          }

        [HttpPost]
        public PartialViewResult iletisim(Tblİletisim t)
        {
            if (!ModelState.IsValid)
            {
                return PartialView("iletisim");
            }
            t.Tarih = DateTime.Parse(DateTime.Now.ToLongTimeString());
            db.Tblİletisim.Add(t);
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