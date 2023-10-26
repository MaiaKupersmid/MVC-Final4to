﻿using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP_Final.Models;

namespace TP_Final.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        /*
            ViewBag.Aros = BD.ObtenerAros();
            ViewBag.Lugares = BD.ObtenerLugares();
        */
        return View();
    }

    public IActionResult Catalogo()
    {
        /*
            
        */
        return View();
    }
    
    public IActionResult Reserva()
    {
        return View();
    }

    public IActionResult Contacto()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}