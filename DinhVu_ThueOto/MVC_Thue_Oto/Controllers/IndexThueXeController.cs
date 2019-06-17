using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_Thue_Oto.Models;

namespace MVC_Thue_Oto.Controllers
{
    public class IndexThueXeController : Controller
    {
        DB_Thue_OtoDataContext data = new DB_Thue_OtoDataContext();
        //tao doi tuong lay danh sach xe moi
        private List<XeDichVu> Layds(int count) {
            return data.XeDichVus.OrderByDescending(a => a.NgayCapNhat).Take(count).ToList();
        }
        public ActionResult Index()
        {
            var xemoi = Layds(9);
            return View(xemoi);
        }
        //tao doi tuong loai cho ngoi de sap xep theo loai
        public ActionResult LoaiChoNgoi() {
            var loaichongoi = from lcn in data.LoaiChoNgois select lcn;
            return PartialView(loaichongoi);
        }
        //tao ra doi tuong dong xe ma khach hang yeu cau
        public ActionResult LoaiHangXe() {
            var loaihangxe = from hx in data.HangXes select hx;
            return PartialView(loaihangxe);
        }
        //tao theo loai cho ngoi
        public ActionResult TheoLoaiChoNgoi(int id) {
            var x = from cn in data.XeDichVus where cn.MaChoNgoi == id select cn;
            return View(x);
        }

        //tao theo loai cac chiet xe
        public ActionResult TheoDongXe(int id) {
            var xx = from dx in data.XeDichVus where dx.MaHang == id select dx;
            return View(xx);
        }

        //tao ra trang chi tiet cac san pham
        public ActionResult ChiTietXe(int id) {
            var xxx = from ctx in data.XeDichVus where ctx.MaDVXe == id select ctx;
            return View(xxx);
        }
    }
}