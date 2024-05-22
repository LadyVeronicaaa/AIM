<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use App\Http\Middleware\LoginMiddleware;
use App\Http\Middleware\Authenticate;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        $middleware->alias([
            'Accesslvl' => \App\Http\Middleware\LoginMiddleware::class,
            'auth' => \App\Http\Middleware\Authenticate::class,
        ]);

    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();