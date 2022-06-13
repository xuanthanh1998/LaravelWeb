<?php

namespace App\Policies;

use App\Models\LoaiTinModel;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class LoaiTinPolicy
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
     * @param  \App\Models\LoaiTinModel  $loaiTinModel
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, LoaiTinModel $loaiTinModel)
    {
        return TRUE;
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function getDanhSach(User $user)
    {
        return $user->id > 0;
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LoaiTinModel  $loaiTinModel
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function getSua(User $user, LoaiTinModel $loaitin)
    {
        return $user->id == $loaitin->user_id;
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LoaiTinModel  $loaiTinModel
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, LoaiTinModel $loaitin)
    {
        return $user->id == $loaitin->user_id;
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LoaiTinModel  $loaiTinModel
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, LoaiTinModel $loaiTinModel)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LoaiTinModel  $loaiTinModel
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, LoaiTinModel $loaiTinModel)
    {
        //
    }
}
