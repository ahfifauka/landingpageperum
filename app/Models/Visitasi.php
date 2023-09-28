<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Visitasi extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function agent()
    {
        return $this->belongsTo(User::class, 'agent_id');
    }
}
