<?php

namespace App\Http\Controllers;

use App\Models\Channel;
use Illuminate\Http\Request;

class ChannelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Channel::paginate(10);
        $i = 1;
        return view('index', compact('data'))->with('i', $i);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'subscribersCount' => 'nullable|integer',
            'URL' => 'nullable|url',
        ]);

        $channel = new Channel();
        $channel->name = $request->name;
        $channel->description = $request->description;
        $channel->subscribersCount = $request->subscribersCount;
        $channel->URL = $request->URL;

        $channel->save();
        return redirect()->route('index')->with('success', 'Channel added successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Channel $channel)
    {
        return view('show', compact('channel'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Channel $channel)
    {
        return view('edit', compact('channel'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Channel $channel)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'subscribersCount' => 'nullable|integer',
            'URL' => 'nullable|url',
        ]);

        $channel = Channel::find($request->hidden_id);
        $channel->name = $request->name;
        $channel->description = $request->description;
        $channel->subscribersCount = $request->subscribersCount;
        $channel->URL = $request->URL;

        $channel->save();
        return redirect()->route('channels.index')->with('success', 'Channel data has been upddated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Channel $channel)
    {
        $channel->delete();
        return redirect()->route('channels.index')->with('success', 'Channel data deleted successfully.');
    }
}
