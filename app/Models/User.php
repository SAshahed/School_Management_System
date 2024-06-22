<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Request;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    static public function getSingle($id)
    {
        return self::find($id);
    }

    static public function getAdmin()
    {
        $return = self::select('users.*')
                         ->where('user_type','=',1)
                         ->where('is_delete','=',0);
                         if(!empty(Request::get('name')))

                         {
                            $return =$return->where('name','like','%'.Request::get('name').'%');
                         }


                         if(!empty(Request::get('email')))

                         {
                            $return =$return->where('email','like','%'.Request::get('email').'%');
                         }
                         if(!empty(Request::get('date')))

                         {
                            $return =$return->whereDate('created_at','=', Request::get('date'));
                         }
        $return = $return->orderby('id','desc')
                         ->paginate(5);
        return $return;
    }

    static public function getStudent()
    {
        $return = self::select('users.*')
                         ->where('users.user_type','=',3)
                         ->where('users.is_delete','=',0);
                        
        $return = $return->orderby('users.id','desc')
                         ->paginate(5);
        return $return;
    }

    static public function getEmailSingle($email)
    {
        return User::where('email','=',$email)->first();
    }

    static public function getTokenSingle($remember_token)
    {
        return User::where('remember_token','=',$remember_token)->first();
    }

    public function getProfile()
    {
        if(!empty($this->profile_pic) && file_exists('upload/profile/'.$this->profile_pic))
        {
            return url('upload/profile/'.$this->profile_pic);
        }
        else 
        {
            return "";
        }
    }
}
