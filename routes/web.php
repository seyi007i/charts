<?php
// ...existing code...
use App\Http\Controllers\HealthController;

Route::get('/healthz', [HealthController::class, 'healthz']);
// ...existing code...Route::post('/trigger-job', [\App\Http\Controllers\JobController::class, 'trigger']);