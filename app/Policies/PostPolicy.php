<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Post;
use App\Models\Role;
use App\Models\Topic;
use Illuminate\Auth\Access\HandlesAuthorization;

class PostPolicy
{
    use HandlesAuthorization;

    public function before($user, $ability)
    {
        if ($user->role_id > 2) {
            return true;
        }
    }
    /**
     * Create a new policy instance.
     *
     * @return void
     */

    public function delete(User $user, Post $post)
    {
        return $user->id === $post->user_id;
    }

}
