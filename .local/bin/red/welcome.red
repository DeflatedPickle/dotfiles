Red [
    Title: "Welcome"
    Author: "DeflatedPickle"
    Needs: 'View
]
; TODO: Run on start-up
; TODO: Center window
; TODO: Minimize to tray on close
; TODO: Provide buttons for common applications

t: form now/time
w_size: 500x350

view/flags [title "Welcome" size 500x350 origin 0x0
    a: panel [
        b: h1 t rate 1 on-time [t: form now/time b/text: t] do [b/offset/x: (w_size/x / 2) - (b/size/x / 2)] return
        l: h4 "Welcome Home" do [l/offset/x: (w_size/x / 2) - (l/size/x / 2)] return

        p: panel [space 20x0
            group-box "Social" [below
                reddit: button "Reddit" on-click [browse https://www.reddit.com/]
                youtube: button "YouTube" on-click [browse https://www.youtube.com/]
                twitter: button "Twitter" on-click [browse https://twitter.com/]
            ]

            group-box "Work" [below
                button "GitHub" on-click [browse https://github.com/]
                button "Drive" on-click [browse https://drive.google.com/drive/my-drive]
            ]
        ] do [p/offset/x: (w_size/x / 2) - (p/size/x / 2)]
    ] do [a/size/x: w_size/x a/offset/y: (w_size/y / 2) - (a/size/y / 2)]
] [no-min no-max]
