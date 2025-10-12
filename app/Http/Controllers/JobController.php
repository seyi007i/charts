<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;

class HealthController extends Controller
{
    public function healthz(): JsonResponse
    {
        return response()->json(['status' => 'ok'], 200);
    }
}<?php
