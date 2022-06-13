<?php

namespace App\Policies;

use App\Models\TheLoaiModel;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class TheloaiPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\TheLoaiModel  $theloai
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, TheLoaiModel $theloai)
    {
        
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->hasAccess(['post.create']);
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\TheLoaiModel  $theloai
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, TheLoaiModel $theloai)
    {
        return $user->id === $theloai->user_id;
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\TheLoaiModel  $theloai
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, TheLoaiModel $theloai)
    {
        return $user->id === $theloai->user_id;
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\TheLoaiModel  $theloai
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, TheLoaiModel $theloai)
    {
        
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\TheLoaiModel  $theloai
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, TheLoaiModel $theloai)
    {
       
    }
}
