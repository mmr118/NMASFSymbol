//
//  SFSymbol+Internal.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

internal extension SFSymbol {

    var rawString: String {

        switch self {
            case .square_and_arrow_up: return "square.and.arrow.up"
            case .square_and_arrow_up_fill: return "square.and.arrow.up.fill"
            case .square_and_arrow_up_circle: return "square.and.arrow.up.circle"
            case .square_and_arrow_up_circle_fill: return "square.and.arrow.up.circle.fill"
            case .square_and_arrow_up_trianglebadge_exclamationmark: return "square.and.arrow.up.trianglebadge.exclamationmark"
            case .square_and_arrow_down: return "square.and.arrow.down"
            case .square_and_arrow_down_fill: return "square.and.arrow.down.fill"
            case .square_and_arrow_up_on_square: return "square.and.arrow.up.on.square"
            case .square_and_arrow_up_on_square_fill: return "square.and.arrow.up.on.square.fill"
            case .square_and_arrow_down_on_square: return "square.and.arrow.down.on.square"
            case .square_and_arrow_down_on_square_fill: return "square.and.arrow.down.on.square.fill"
            case .rectangle_portrait_and_arrow_right: return "rectangle.portrait.and.arrow.right"
            case .rectangle_portrait_and_arrow_right_fill: return "rectangle.portrait.and.arrow.right.fill"
            case .pencil: return "pencil"
            case .pencil_circle: return "pencil.circle"
            case .pencil_circle_fill: return "pencil.circle.fill"
            case .pencil_slash: return "pencil.slash"
            case .square_and_pencil: return "square.and.pencil"
            case .rectangle_and_pencil_and_ellipsis: return "rectangle.and.pencil.and.ellipsis"
            case .scribble: return "scribble"
            case .scribble_variable: return "scribble.variable"
            case .highlighter: return "highlighter"
            case .pencil_and_outline: return "pencil.and.outline"
            case .pencil_tip: return "pencil.tip"
            case .pencil_tip_crop_circle: return "pencil.tip.crop.circle"
            case .pencil_tip_crop_circle_badge_plus: return "pencil.tip.crop.circle.badge.plus"
            case .pencil_tip_crop_circle_badge_minus: return "pencil.tip.crop.circle.badge.minus"
            case .pencil_tip_crop_circle_badge_arrow_forward: return "pencil.tip.crop.circle.badge.arrow.forward"
            case .lasso: return "lasso"
            case .lasso_and_sparkles: return "lasso.and.sparkles"
            case .trash: return "trash"
            case .trash_fill: return "trash.fill"
            case .trash_circle: return "trash.circle"
            case .trash_circle_fill: return "trash.circle.fill"
            case .trash_square: return "trash.square"
            case .trash_square_fill: return "trash.square.fill"
            case .trash_slash: return "trash.slash"
            case .trash_slash_fill: return "trash.slash.fill"
            case .trash_slash_circle: return "trash.slash.circle"
            case .trash_slash_circle_fill: return "trash.slash.circle.fill"
            case .trash_slash_square: return "trash.slash.square"
            case .trash_slash_square_fill: return "trash.slash.square.fill"
            case .folder: return "folder"
            case .folder_fill: return "folder.fill"
            case .folder_circle: return "folder.circle"
            case .folder_circle_fill: return "folder.circle.fill"
            case .folder_badge_plus: return "folder.badge.plus"
            case .folder_fill_badge_plus: return "folder.fill.badge.plus"
            case .folder_badge_minus: return "folder.badge.minus"
            case .folder_fill_badge_minus: return "folder.fill.badge.minus"
            case .folder_badge_questionmark: return "folder.badge.questionmark"
            case .folder_fill_badge_questionmark: return "folder.fill.badge.questionmark"
            case .folder_badge_person_crop: return "folder.badge.person.crop"
            case .folder_fill_badge_person_crop: return "folder.fill.badge.person.crop"
            case .square_grid_3x1_folder_badge_plus: return "square.grid.3x1.folder.badge.plus"
            case .square_grid_3x1_folder_fill_badge_plus: return "square.grid.3x1.folder.fill.badge.plus"
            case .folder_badge_gearshape: return "folder.badge.gearshape"
            case .folder_fill_badge_gearshape: return "folder.fill.badge.gearshape"
            case .plus_rectangle_on_folder: return "plus.rectangle.on.folder"
            case .plus_rectangle_on_folder_fill: return "plus.rectangle.on.folder.fill"
            case .questionmark_folder: return "questionmark.folder"
            case .questionmark_folder_fill: return "questionmark.folder.fill"
            case .paperplane: return "paperplane"
            case .paperplane_fill: return "paperplane.fill"
            case .paperplane_circle: return "paperplane.circle"
            case .paperplane_circle_fill: return "paperplane.circle.fill"
            case .tray: return "tray"
            case .tray_fill: return "tray.fill"
            case .tray_circle: return "tray.circle"
            case .tray_circle_fill: return "tray.circle.fill"
            case .tray_and_arrow_up: return "tray.and.arrow.up"
            case .tray_and_arrow_up_fill: return "tray.and.arrow.up.fill"
            case .tray_and_arrow_down: return "tray.and.arrow.down"
            case .tray_and_arrow_down_fill: return "tray.and.arrow.down.fill"
            case .tray_2: return "tray.2"
            case .tray_2_fill: return "tray.2.fill"
            case .tray_full: return "tray.full"
            case .tray_full_fill: return "tray.full.fill"
            case .externaldrive: return "externaldrive"
            case .externaldrive_fill: return "externaldrive.fill"
            case .externaldrive_badge_plus: return "externaldrive.badge.plus"
            case .externaldrive_fill_badge_plus: return "externaldrive.fill.badge.plus"
            case .externaldrive_badge_minus: return "externaldrive.badge.minus"
            case .externaldrive_fill_badge_minus: return "externaldrive.fill.badge.minus"
            case .externaldrive_badge_checkmark: return "externaldrive.badge.checkmark"
            case .externaldrive_fill_badge_checkmark: return "externaldrive.fill.badge.checkmark"
            case .externaldrive_badge_xmark: return "externaldrive.badge.xmark"
            case .externaldrive_fill_badge_xmark: return "externaldrive.fill.badge.xmark"
            case .externaldrive_badge_person_crop: return "externaldrive.badge.person.crop"
            case .externaldrive_fill_badge_person_crop: return "externaldrive.fill.badge.person.crop"
            case .externaldrive_badge_icloud: return "externaldrive.badge.icloud"
            case .externaldrive_fill_badge_icloud: return "externaldrive.fill.badge.icloud"
            case .externaldrive_badge_wifi: return "externaldrive.badge.wifi"
            case .externaldrive_fill_badge_wifi: return "externaldrive.fill.badge.wifi"
            case .externaldrive_badge_timemachine: return "externaldrive.badge.timemachine"
            case .externaldrive_fill_badge_timemachine: return "externaldrive.fill.badge.timemachine"
            case .internaldrive: return "internaldrive"
            case .internaldrive_fill: return "internaldrive.fill"
            case .opticaldiscdrive: return "opticaldiscdrive"
            case .opticaldiscdrive_fill: return "opticaldiscdrive.fill"
            case .externaldrive_connected_to_line_below: return "externaldrive.connected.to.line.below"
            case .externaldrive_connected_to_line_below_fill: return "externaldrive.connected.to.line.below.fill"
            case .archivebox: return "archivebox"
            case .archivebox_fill: return "archivebox.fill"
            case .archivebox_circle: return "archivebox.circle"
            case .archivebox_circle_fill: return "archivebox.circle.fill"
            case .xmark_bin: return "xmark.bin"
            case .xmark_bin_fill: return "xmark.bin.fill"
            case .xmark_bin_circle: return "xmark.bin.circle"
            case .xmark_bin_circle_fill: return "xmark.bin.circle.fill"
            case .arrow_up_bin: return "arrow.up.bin"
            case .arrow_up_bin_fill: return "arrow.up.bin.fill"
            case .doc: return "doc"
            case .doc_fill: return "doc.fill"
            case .doc_circle: return "doc.circle"
            case .doc_circle_fill: return "doc.circle.fill"
            case .doc_badge_plus: return "doc.badge.plus"
            case .doc_fill_badge_plus: return "doc.fill.badge.plus"
            case .doc_badge_gearshape: return "doc.badge.gearshape"
            case .doc_badge_gearshape_fill: return "doc.badge.gearshape.fill"
            case .doc_badge_ellipsis: return "doc.badge.ellipsis"
            case .doc_fill_badge_ellipsis: return "doc.fill.badge.ellipsis"
            case .lock_doc: return "lock.doc"
            case .lock_doc_fill: return "lock.doc.fill"
            case .arrow_up_doc: return "arrow.up.doc"
            case .arrow_up_doc_fill: return "arrow.up.doc.fill"
            case .arrow_down_doc: return "arrow.down.doc"
            case .arrow_down_doc_fill: return "arrow.down.doc.fill"
            case .doc_text: return "doc.text"
            case .doc_text_fill: return "doc.text.fill"
            case .doc_zipper: return "doc.zipper"
            case .doc_on_doc: return "doc.on.doc"
            case .doc_on_doc_fill: return "doc.on.doc.fill"
            case .doc_on_clipboard: return "doc.on.clipboard"
            case .arrow_right_doc_on_clipboard: return "arrow.right.doc.on.clipboard"
            case .arrow_up_doc_on_clipboard: return "arrow.up.doc.on.clipboard"
            case .arrow_triangle_2_circlepath_doc_on_clipboard: return "arrow.triangle.2.circlepath.doc.on.clipboard"
            case .doc_on_clipboard_fill: return "doc.on.clipboard.fill"
            case .doc_richtext: return "doc.richtext"
            case .doc_richtext_fill: return "doc.richtext.fill"
            case .doc_plaintext: return "doc.plaintext"
            case .doc_plaintext_fill: return "doc.plaintext.fill"
            case .doc_append: return "doc.append"
            case .doc_append_fill: return "doc.append.fill"
            case .doc_text_below_ecg: return "doc.text.below.ecg"
            case .doc_text_below_ecg_fill: return "doc.text.below.ecg.fill"
            case .chart_bar_doc_horizontal: return "chart.bar.doc.horizontal"
            case .chart_bar_doc_horizontal_fill: return "chart.bar.doc.horizontal.fill"
            case .list_bullet_rectangle_portrait: return "list.bullet.rectangle.portrait"
            case .list_bullet_rectangle_portrait_fill: return "list.bullet.rectangle.portrait.fill"
            case .doc_text_magnifyingglass: return "doc.text.magnifyingglass"
            case .list_bullet_rectangle: return "list.bullet.rectangle"
            case .list_bullet_rectangle_fill: return "list.bullet.rectangle.fill"
            case .list_dash_header_rectangle: return "list.dash.header.rectangle"
            case .terminal: return "terminal"
            case .terminal_fill: return "terminal.fill"
            case .note: return "note"
            case .note_text: return "note.text"
            case .note_text_badge_plus: return "note.text.badge.plus"
            case .calendar: return "calendar"
            case .calendar_circle: return "calendar.circle"
            case .calendar_circle_fill: return "calendar.circle.fill"
            case .calendar_badge_plus: return "calendar.badge.plus"
            case .calendar_badge_minus: return "calendar.badge.minus"
            case .calendar_badge_clock: return "calendar.badge.clock"
            case .calendar_badge_exclamationmark: return "calendar.badge.exclamationmark"
            case .calendar_day_timeline_left: return "calendar.day.timeline.left"
            case .calendar_day_timeline_right: return "calendar.day.timeline.right"
            case .calendar_day_timeline_leading: return "calendar.day.timeline.leading"
            case .calendar_day_timeline_trailing: return "calendar.day.timeline.trailing"
            case .arrowshape_turn_up_left: return "arrowshape.turn.up.left"
            case .arrowshape_turn_up_left_fill: return "arrowshape.turn.up.left.fill"
            case .arrowshape_turn_up_left_circle: return "arrowshape.turn.up.left.circle"
            case .arrowshape_turn_up_left_circle_fill: return "arrowshape.turn.up.left.circle.fill"
            case .arrowshape_turn_up_backward: return "arrowshape.turn.up.backward"
            case .arrowshape_turn_up_backward_fill: return "arrowshape.turn.up.backward.fill"
            case .arrowshape_turn_up_backward_circle: return "arrowshape.turn.up.backward.circle"
            case .arrowshape_turn_up_backward_circle_fill: return "arrowshape.turn.up.backward.circle.fill"
            case .arrowshape_turn_up_right: return "arrowshape.turn.up.right"
            case .arrowshape_turn_up_right_fill: return "arrowshape.turn.up.right.fill"
            case .arrowshape_turn_up_right_circle: return "arrowshape.turn.up.right.circle"
            case .arrowshape_turn_up_right_circle_fill: return "arrowshape.turn.up.right.circle.fill"
            case .arrowshape_turn_up_forward: return "arrowshape.turn.up.forward"
            case .arrowshape_turn_up_forward_fill: return "arrowshape.turn.up.forward.fill"
            case .arrowshape_turn_up_forward_circle: return "arrowshape.turn.up.forward.circle"
            case .arrowshape_turn_up_forward_circle_fill: return "arrowshape.turn.up.forward.circle.fill"
            case .arrowshape_turn_up_left_2: return "arrowshape.turn.up.left.2"
            case .arrowshape_turn_up_left_2_fill: return "arrowshape.turn.up.left.2.fill"
            case .arrowshape_turn_up_left_2_circle: return "arrowshape.turn.up.left.2.circle"
            case .arrowshape_turn_up_left_2_circle_fill: return "arrowshape.turn.up.left.2.circle.fill"
            case .arrowshape_turn_up_backward_2: return "arrowshape.turn.up.backward.2"
            case .arrowshape_turn_up_backward_2_fill: return "arrowshape.turn.up.backward.2.fill"
            case .arrowshape_turn_up_backward_2_circle: return "arrowshape.turn.up.backward.2.circle"
            case .arrowshape_turn_up_backward_2_circle_fill: return "arrowshape.turn.up.backward.2.circle.fill"
            case .arrowshape_zigzag_right: return "arrowshape.zigzag.right"
            case .arrowshape_zigzag_right_fill: return "arrowshape.zigzag.right.fill"
            case .arrowshape_zigzag_forward: return "arrowshape.zigzag.forward"
            case .arrowshape_zigzag_forward_fill: return "arrowshape.zigzag.forward.fill"
            case .arrowshape_bounce_right: return "arrowshape.bounce.right"
            case .arrowshape_bounce_right_fill: return "arrowshape.bounce.right.fill"
            case .arrowshape_bounce_forward: return "arrowshape.bounce.forward"
            case .arrowshape_bounce_forward_fill: return "arrowshape.bounce.forward.fill"
            case .book: return "book"
            case .book_fill: return "book.fill"
            case .book_circle: return "book.circle"
            case .book_circle_fill: return "book.circle.fill"
            case .books_vertical: return "books.vertical"
            case .books_vertical_fill: return "books.vertical.fill"
            case .books_vertical_circle: return "books.vertical.circle"
            case .books_vertical_circle_fill: return "books.vertical.circle.fill"
            case .book_closed: return "book.closed"
            case .book_closed_fill: return "book.closed.fill"
            case .book_closed_circle: return "book.closed.circle"
            case .book_closed_circle_fill: return "book.closed.circle.fill"
            case .character_book_closed: return "character.book.closed"
            case .character_book_closed_fill: return "character.book.closed.fill"
            case .text_book_closed: return "text.book.closed"
            case .text_book_closed_fill: return "text.book.closed.fill"
            case .menucard: return "menucard"
            case .menucard_fill: return "menucard.fill"
            case .greetingcard: return "greetingcard"
            case .greetingcard_fill: return "greetingcard.fill"
            case .magazine: return "magazine"
            case .magazine_fill: return "magazine.fill"
            case .newspaper: return "newspaper"
            case .newspaper_fill: return "newspaper.fill"
            case .newspaper_circle: return "newspaper.circle"
            case .newspaper_circle_fill: return "newspaper.circle.fill"
            case .heart_text_square: return "heart.text.square"
            case .heart_text_square_fill: return "heart.text.square.fill"
            case .square_text_square: return "square.text.square"
            case .square_text_square_fill: return "square.text.square.fill"
            case .doc_text_image: return "doc.text.image"
            case .doc_text_image_fill: return "doc.text.image.fill"
            case .bookmark: return "bookmark"
            case .bookmark_fill: return "bookmark.fill"
            case .bookmark_circle: return "bookmark.circle"
            case .bookmark_circle_fill: return "bookmark.circle.fill"
            case .bookmark_square: return "bookmark.square"
            case .bookmark_square_fill: return "bookmark.square.fill"
            case .bookmark_slash: return "bookmark.slash"
            case .bookmark_slash_fill: return "bookmark.slash.fill"
            case .rosette: return "rosette"
            case .graduationcap: return "graduationcap"
            case .graduationcap_fill: return "graduationcap.fill"
            case .graduationcap_circle: return "graduationcap.circle"
            case .graduationcap_circle_fill: return "graduationcap.circle.fill"
            case .ticket: return "ticket"
            case .ticket_fill: return "ticket.fill"
            case .paperclip: return "paperclip"
            case .paperclip_circle: return "paperclip.circle"
            case .paperclip_circle_fill: return "paperclip.circle.fill"
            case .paperclip_badge_ellipsis: return "paperclip.badge.ellipsis"
            case .rectangle_and_paperclip: return "rectangle.and.paperclip"
            case .rectangle_dashed_and_paperclip: return "rectangle.dashed.and.paperclip"
            case .link: return "link"
            case .link_circle: return "link.circle"
            case .link_circle_fill: return "link.circle.fill"
            case .link_badge_plus: return "link.badge.plus"
            case .personalhotspot: return "personalhotspot"
            case .personalhotspot_circle: return "personalhotspot.circle"
            case .personalhotspot_circle_fill: return "personalhotspot.circle.fill"
            case .lineweight: return "lineweight"
            case .person: return "person"
            case .person_fill: return "person.fill"
            case .person_fill_turn_right: return "person.fill.turn.right"
            case .person_fill_turn_down: return "person.fill.turn.down"
            case .person_fill_turn_left: return "person.fill.turn.left"
            case .person_fill_checkmark: return "person.fill.checkmark"
            case .person_fill_xmark: return "person.fill.xmark"
            case .person_fill_questionmark: return "person.fill.questionmark"
            case .person_circle: return "person.circle"
            case .person_circle_fill: return "person.circle.fill"
            case .person_badge_plus: return "person.badge.plus"
            case .person_fill_badge_plus: return "person.fill.badge.plus"
            case .person_badge_minus: return "person.badge.minus"
            case .person_fill_badge_minus: return "person.fill.badge.minus"
            case .person_badge_clock: return "person.badge.clock"
            case .person_badge_clock_fill: return "person.badge.clock.fill"
            case .shareplay: return "shareplay"
            case .shareplay_slash: return "shareplay.slash"
            case .rectangle_inset_filled_and_person_filled: return "rectangle.inset.filled.and.person.filled"
            case .person_and_arrow_left_and_arrow_right: return "person.and.arrow.left.and.arrow.right"
            case .person_fill_and_arrow_left_and_arrow_right: return "person.fill.and.arrow.left.and.arrow.right"
            case .person_2: return "person.2"
            case .person_2_fill: return "person.2.fill"
            case .person_2_circle: return "person.2.circle"
            case .person_2_circle_fill: return "person.2.circle.fill"
            case .person_wave_2: return "person.wave.2"
            case .person_wave_2_fill: return "person.wave.2.fill"
            case .person_2_wave_2: return "person.2.wave.2"
            case .person_2_wave_2_fill: return "person.2.wave.2.fill"
            case .person_3: return "person.3"
            case .person_3_fill: return "person.3.fill"
            case .person_3_sequence: return "person.3.sequence"
            case .person_3_sequence_fill: return "person.3.sequence.fill"
            case .lanyardcard: return "lanyardcard"
            case .lanyardcard_fill: return "lanyardcard.fill"
            case .person_crop_circle: return "person.crop.circle"
            case .person_crop_circle_fill: return "person.crop.circle.fill"
            case .person_crop_circle_badge_plus: return "person.crop.circle.badge.plus"
            case .person_crop_circle_fill_badge_plus: return "person.crop.circle.fill.badge.plus"
            case .person_crop_circle_badge_minus: return "person.crop.circle.badge.minus"
            case .person_crop_circle_fill_badge_minus: return "person.crop.circle.fill.badge.minus"
            case .person_crop_circle_badge_checkmark: return "person.crop.circle.badge.checkmark"
            case .person_crop_circle_fill_badge_checkmark: return "person.crop.circle.fill.badge.checkmark"
            case .person_crop_circle_badge_xmark: return "person.crop.circle.badge.xmark"
            case .person_crop_circle_fill_badge_xmark: return "person.crop.circle.fill.badge.xmark"
            case .person_crop_circle_badge_questionmark: return "person.crop.circle.badge.questionmark"
            case .person_crop_circle_badge_questionmark_fill: return "person.crop.circle.badge.questionmark.fill"
            case .person_crop_circle_badge_exclamationmark: return "person.crop.circle.badge.exclamationmark"
            case .person_crop_circle_badge_exclamationmark_fill: return "person.crop.circle.badge.exclamationmark.fill"
            case .person_crop_circle_badge_moon: return "person.crop.circle.badge.moon"
            case .person_crop_circle_badge_moon_fill: return "person.crop.circle.badge.moon.fill"
            case .person_crop_circle_badge_clock: return "person.crop.circle.badge.clock"
            case .person_crop_circle_badge_clock_fill: return "person.crop.circle.badge.clock.fill"
            case .person_crop_circle_badge: return "person.crop.circle.badge"
            case .person_crop_circle_badge_fill: return "person.crop.circle.badge.fill"
            case .person_crop_square: return "person.crop.square"
            case .person_crop_square_fill: return "person.crop.square.fill"
            case .person_crop_artframe: return "person.crop.artframe"
            case .photo_artframe: return "photo.artframe"
            case .person_crop_rectangle_stack: return "person.crop.rectangle.stack"
            case .person_crop_rectangle_stack_fill: return "person.crop.rectangle.stack.fill"
            case .person_2_crop_square_stack: return "person.2.crop.square.stack"
            case .person_2_crop_square_stack_fill: return "person.2.crop.square.stack.fill"
            case .person_crop_rectangle: return "person.crop.rectangle"
            case .person_crop_rectangle_fill: return "person.crop.rectangle.fill"
            case .arrow_up_and_person_rectangle_portrait: return "arrow.up.and.person.rectangle.portrait"
            case .arrow_up_and_person_rectangle_turn_right: return "arrow.up.and.person.rectangle.turn.right"
            case .arrow_up_and_person_rectangle_turn_left: return "arrow.up.and.person.rectangle.turn.left"
            case .person_crop_square_filled_and_at_rectangle: return "person.crop.square.filled.and.at.rectangle"
            case .person_crop_square_filled_and_at_rectangle_fill: return "person.crop.square.filled.and.at.rectangle.fill"
            case .square_and_at_rectangle: return "square.and.at.rectangle"
            case .square_and_at_rectangle_fill: return "square.and.at.rectangle.fill"
            case .person_text_rectangle: return "person.text.rectangle"
            case .person_text_rectangle_fill: return "person.text.rectangle.fill"
            case .command_circle: return "command.circle"
            case .command_circle_fill: return "command.circle.fill"
            case .command_square: return "command.square"
            case .command_square_fill: return "command.square.fill"
            case .clear_fill: return "clear.fill"
            case .delete_left_fill: return "delete.left.fill"
            case .delete_backward: return "delete.backward"
            case .delete_backward_fill: return "delete.backward.fill"
            case .delete_right_fill: return "delete.right.fill"
            case .delete_forward: return "delete.forward"
            case .delete_forward_fill: return "delete.forward.fill"
            case .shift_fill: return "shift.fill"
            case .capslock_fill: return "capslock.fill"
            case .restart: return "restart"
            case .restart_circle: return "restart.circle"
            case .restart_circle_fill: return "restart.circle.fill"
            case .sleep: return "sleep"
            case .sleep_circle: return "sleep.circle"
            case .sleep_circle_fill: return "sleep.circle.fill"
            case .wake: return "wake"
            case .wake_circle: return "wake.circle"
            case .wake_circle_fill: return "wake.circle.fill"
            case .power_circle: return "power.circle"
            case .power_circle_fill: return "power.circle.fill"
            case .power_dotted: return "power.dotted"
            case .alternatingcurrent: return "alternatingcurrent"
            case .dot_arrowtriangles_up_right_down_left_circle: return "dot.arrowtriangles.up.right.down.left.circle"
            case .globe: return "globe"
            case .globe_badge_chevron_backward: return "globe.badge.chevron.backward"
            case .network: return "network"
            case .network_badge_shield_half_filled: return "network.badge.shield.half.filled"
            case .globe_americas: return "globe.americas"
            case .globe_americas_fill: return "globe.americas.fill"
            case .globe_europe_africa: return "globe.europe.africa"
            case .globe_europe_africa_fill: return "globe.europe.africa.fill"
            case .globe_asia_australia: return "globe.asia.australia"
            case .globe_asia_australia_fill: return "globe.asia.australia.fill"
            case .sun_min: return "sun.min"
            case .sun_min_fill: return "sun.min.fill"
            case .sun_max: return "sun.max"
            case .sun_max_fill: return "sun.max.fill"
            case .sun_max_circle: return "sun.max.circle"
            case .sun_max_circle_fill: return "sun.max.circle.fill"
            case .sunrise: return "sunrise"
            case .sunrise_fill: return "sunrise.fill"
            case .sunset: return "sunset"
            case .sunset_fill: return "sunset.fill"
            case .sun_and_horizon: return "sun.and.horizon"
            case .sun_and_horizon_fill: return "sun.and.horizon.fill"
            case .sun_dust: return "sun.dust"
            case .sun_dust_fill: return "sun.dust.fill"
            case .sun_haze: return "sun.haze"
            case .sun_haze_fill: return "sun.haze.fill"
            case .moon: return "moon"
            case .moon_circle: return "moon.circle"
            case .moon_circle_fill: return "moon.circle.fill"
            case .zzz: return "zzz"
            case .moon_zzz: return "moon.zzz"
            case .moon_zzz_fill: return "moon.zzz.fill"
            case .sparkle: return "sparkle"
            case .sparkles: return "sparkles"
            case .moon_stars: return "moon.stars"
            case .moon_stars_fill: return "moon.stars.fill"
            case .cloud: return "cloud"
            case .cloud_fill: return "cloud.fill"
            case .cloud_drizzle: return "cloud.drizzle"
            case .cloud_drizzle_fill: return "cloud.drizzle.fill"
            case .cloud_rain: return "cloud.rain"
            case .cloud_rain_fill: return "cloud.rain.fill"
            case .cloud_heavyrain: return "cloud.heavyrain"
            case .cloud_heavyrain_fill: return "cloud.heavyrain.fill"
            case .cloud_fog: return "cloud.fog"
            case .cloud_fog_fill: return "cloud.fog.fill"
            case .cloud_hail: return "cloud.hail"
            case .cloud_hail_fill: return "cloud.hail.fill"
            case .cloud_snow: return "cloud.snow"
            case .cloud_snow_fill: return "cloud.snow.fill"
            case .cloud_sleet: return "cloud.sleet"
            case .cloud_sleet_fill: return "cloud.sleet.fill"
            case .cloud_bolt: return "cloud.bolt"
            case .cloud_bolt_fill: return "cloud.bolt.fill"
            case .cloud_bolt_rain: return "cloud.bolt.rain"
            case .cloud_bolt_rain_fill: return "cloud.bolt.rain.fill"
            case .cloud_sun: return "cloud.sun"
            case .cloud_sun_fill: return "cloud.sun.fill"
            case .cloud_sun_rain: return "cloud.sun.rain"
            case .cloud_sun_rain_fill: return "cloud.sun.rain.fill"
            case .cloud_sun_bolt: return "cloud.sun.bolt"
            case .cloud_sun_bolt_fill: return "cloud.sun.bolt.fill"
            case .cloud_moon: return "cloud.moon"
            case .cloud_moon_fill: return "cloud.moon.fill"
            case .cloud_moon_rain: return "cloud.moon.rain"
            case .cloud_moon_rain_fill: return "cloud.moon.rain.fill"
            case .cloud_moon_bolt: return "cloud.moon.bolt"
            case .cloud_moon_bolt_fill: return "cloud.moon.bolt.fill"
            case .smoke: return "smoke"
            case .smoke_fill: return "smoke.fill"
            case .wind: return "wind"
            case .wind_snow: return "wind.snow"
            case .snowflake_circle: return "snowflake.circle"
            case .snowflake_circle_fill: return "snowflake.circle.fill"
            case .tornado: return "tornado"
            case .tropicalstorm: return "tropicalstorm"
            case .hurricane: return "hurricane"
            case .thermometer_sun: return "thermometer.sun"
            case .thermometer_sun_fill: return "thermometer.sun.fill"
            case .thermometer_snowflake: return "thermometer.snowflake"
            case .thermometer: return "thermometer"
            case .aqi_low: return "aqi.low"
            case .aqi_medium: return "aqi.medium"
            case .aqi_high: return "aqi.high"
            case .humidity: return "humidity"
            case .humidity_fill: return "humidity.fill"
            case .umbrella: return "umbrella"
            case .flame: return "flame"
            case .flame_fill: return "flame.fill"
            case .flame_circle: return "flame.circle"
            case .flame_circle_fill: return "flame.circle.fill"
            case .light_min: return "light.min"
            case .light_max: return "light.max"
            case .rays: return "rays"
            case .slowmo: return "slowmo"
            case .timelapse: return "timelapse"
            case .cursorarrow_rays: return "cursorarrow.rays"
            case .cursorarrow: return "cursorarrow"
            case .cursorarrow_square: return "cursorarrow.square"
            case .cursorarrow_and_square_on_square_dashed: return "cursorarrow.and.square.on.square.dashed"
            case .cursorarrow_click: return "cursorarrow.click"
            case .cursorarrow_click_2: return "cursorarrow.click.2"
            case .contextualmenu_and_cursorarrow: return "contextualmenu.and.cursorarrow"
            case .filemenu_and_cursorarrow: return "filemenu.and.cursorarrow"
            case .filemenu_and_selection: return "filemenu.and.selection"
            case .dot_circle_and_hand_point_up_left_fill: return "dot.circle.and.hand.point.up.left.fill"
            case .dot_circle_and_cursorarrow: return "dot.circle.and.cursorarrow"
            case .cursorarrow_motionlines: return "cursorarrow.motionlines"
            case .cursorarrow_motionlines_click: return "cursorarrow.motionlines.click"
            case .cursorarrow_click_badge_clock: return "cursorarrow.click.badge.clock"
            case .keyboard: return "keyboard"
            case .keyboard_fill: return "keyboard.fill"
            case .keyboard_badge_ellipsis: return "keyboard.badge.ellipsis"
            case .keyboard_chevron_compact_down: return "keyboard.chevron.compact.down"
            case .keyboard_chevron_compact_left: return "keyboard.chevron.compact.left"
            case .keyboard_onehanded_left: return "keyboard.onehanded.left"
            case .keyboard_onehanded_right: return "keyboard.onehanded.right"
            case .rectangle_3_group: return "rectangle.3.group"
            case .rectangle_3_group_fill: return "rectangle.3.group.fill"
            case .square_grid_3x2: return "square.grid.3x2"
            case .square_grid_3x2_fill: return "square.grid.3x2.fill"
            case .rectangle_grid_3x2: return "rectangle.grid.3x2"
            case .rectangle_grid_3x2_fill: return "rectangle.grid.3x2.fill"
            case .square_grid_2x2: return "square.grid.2x2"
            case .square_grid_2x2_fill: return "square.grid.2x2.fill"
            case .rectangle_grid_2x2: return "rectangle.grid.2x2"
            case .rectangle_grid_2x2_fill: return "rectangle.grid.2x2.fill"
            case .square_grid_3x1_below_line_grid_1x2: return "square.grid.3x1.below.line.grid.1x2"
            case .square_grid_3x1_below_line_grid_1x2_fill: return "square.grid.3x1.below.line.grid.1x2.fill"
            case .square_grid_4x3_fill: return "square.grid.4x3.fill"
            case .rectangle_grid_1x2: return "rectangle.grid.1x2"
            case .rectangle_grid_1x2_fill: return "rectangle.grid.1x2.fill"
            case .circle_grid_2x2: return "circle.grid.2x2"
            case .circle_grid_2x2_fill: return "circle.grid.2x2.fill"
            case .circle_grid_3x3: return "circle.grid.3x3"
            case .circle_grid_3x3_fill: return "circle.grid.3x3.fill"
            case .circle_grid_3x3_circle: return "circle.grid.3x3.circle"
            case .circle_grid_3x3_circle_fill: return "circle.grid.3x3.circle.fill"
            case .square_grid_3x3: return "square.grid.3x3"
            case .square_grid_3x3_fill: return "square.grid.3x3.fill"
            case .square_grid_3x3_topleft_filled: return "square.grid.3x3.topleft.filled"
            case .square_grid_3x3_topmiddle_filled: return "square.grid.3x3.topmiddle.filled"
            case .square_grid_3x3_topright_filled: return "square.grid.3x3.topright.filled"
            case .square_grid_3x3_middleleft_filled: return "square.grid.3x3.middleleft.filled"
            case .square_grid_3x3_middle_filled: return "square.grid.3x3.middle.filled"
            case .square_grid_3x3_middleright_filled: return "square.grid.3x3.middleright.filled"
            case .square_grid_3x3_bottomleft_filled: return "square.grid.3x3.bottomleft.filled"
            case .square_grid_3x3_bottommiddle_filled: return "square.grid.3x3.bottommiddle.filled"
            case .square_grid_3x3_bottomright_filled: return "square.grid.3x3.bottomright.filled"
            case .circle_hexagongrid: return "circle.hexagongrid"
            case .circle_hexagongrid_fill: return "circle.hexagongrid.fill"
            case .circle_hexagongrid_circle: return "circle.hexagongrid.circle"
            case .circle_hexagongrid_circle_fill: return "circle.hexagongrid.circle.fill"
            case .circle_hexagonpath: return "circle.hexagonpath"
            case .circle_hexagonpath_fill: return "circle.hexagonpath.fill"
            case .circle_grid_cross: return "circle.grid.cross"
            case .circle_grid_cross_fill: return "circle.grid.cross.fill"
            case .circle_grid_cross_left_filled: return "circle.grid.cross.left.filled"
            case .circle_grid_cross_up_filled: return "circle.grid.cross.up.filled"
            case .circle_grid_cross_right_filled: return "circle.grid.cross.right.filled"
            case .circle_grid_cross_down_filled: return "circle.grid.cross.down.filled"
            case .seal: return "seal"
            case .seal_fill: return "seal.fill"
            case .checkmark_seal: return "checkmark.seal"
            case .checkmark_seal_fill: return "checkmark.seal.fill"
            case .xmark_seal: return "xmark.seal"
            case .xmark_seal_fill: return "xmark.seal.fill"
            case .exclamationmark_triangle_fill: return "exclamationmark.triangle.fill"
            case .drop: return "drop"
            case .drop_fill: return "drop.fill"
            case .drop_circle: return "drop.circle"
            case .drop_circle_fill: return "drop.circle.fill"
            case .drop_triangle: return "drop.triangle"
            case .drop_triangle_fill: return "drop.triangle.fill"
            case .play: return "play"
            case .play_fill: return "play.fill"
            case .play_circle: return "play.circle"
            case .play_circle_fill: return "play.circle.fill"
            case .play_square: return "play.square"
            case .play_square_fill: return "play.square.fill"
            case .play_rectangle: return "play.rectangle"
            case .play_rectangle_fill: return "play.rectangle.fill"
            case .play_slash: return "play.slash"
            case .play_slash_fill: return "play.slash.fill"
            case .pause: return "pause"
            case .pause_fill: return "pause.fill"
            case .pause_circle: return "pause.circle"
            case .pause_circle_fill: return "pause.circle.fill"
            case .pause_rectangle: return "pause.rectangle"
            case .pause_rectangle_fill: return "pause.rectangle.fill"
            case .stop: return "stop"
            case .stop_fill: return "stop.fill"
            case .stop_circle: return "stop.circle"
            case .stop_circle_fill: return "stop.circle.fill"
            case .record_circle: return "record.circle"
            case .record_circle_fill: return "record.circle.fill"
            case .playpause: return "playpause"
            case .playpause_fill: return "playpause.fill"
            case .backward: return "backward"
            case .backward_fill: return "backward.fill"
            case .backward_circle: return "backward.circle"
            case .backward_circle_fill: return "backward.circle.fill"
            case .forward: return "forward"
            case .forward_fill: return "forward.fill"
            case .forward_circle: return "forward.circle"
            case .forward_circle_fill: return "forward.circle.fill"
            case .backward_end: return "backward.end"
            case .backward_end_fill: return "backward.end.fill"
            case .forward_end: return "forward.end"
            case .forward_end_fill: return "forward.end.fill"
            case .backward_end_alt: return "backward.end.alt"
            case .backward_end_alt_fill: return "backward.end.alt.fill"
            case .forward_end_alt: return "forward.end.alt"
            case .forward_end_alt_fill: return "forward.end.alt.fill"
            case .backward_frame: return "backward.frame"
            case .backward_frame_fill: return "backward.frame.fill"
            case .forward_frame: return "forward.frame"
            case .forward_frame_fill: return "forward.frame.fill"
            case .eject_fill: return "eject.fill"
            case .eject_circle: return "eject.circle"
            case .eject_circle_fill: return "eject.circle.fill"
            case .mount: return "mount"
            case .mount_fill: return "mount.fill"
            case .memories: return "memories"
            case .memories_badge_plus: return "memories.badge.plus"
            case .memories_badge_minus: return "memories.badge.minus"
            case .shuffle: return "shuffle"
            case .shuffle_circle: return "shuffle.circle"
            case .shuffle_circle_fill: return "shuffle.circle.fill"
            case .repeat: return "repeat"
            case .repeat_circle: return "repeat.circle"
            case .repeat_circle_fill: return "repeat.circle.fill"
            case .repeat_1: return "repeat.1"
            case .repeat_1_circle: return "repeat.1.circle"
            case .repeat_1_circle_fill: return "repeat.1.circle.fill"
            case .infinity: return "infinity"
            case .infinity_circle: return "infinity.circle"
            case .infinity_circle_fill: return "infinity.circle.fill"
            case .megaphone: return "megaphone"
            case .megaphone_fill: return "megaphone.fill"
            case .speaker: return "speaker"
            case .speaker_fill: return "speaker.fill"
            case .speaker_circle: return "speaker.circle"
            case .speaker_circle_fill: return "speaker.circle.fill"
            case .speaker_slash: return "speaker.slash"
            case .speaker_slash_fill: return "speaker.slash.fill"
            case .speaker_slash_circle: return "speaker.slash.circle"
            case .speaker_slash_circle_fill: return "speaker.slash.circle.fill"
            case .speaker_zzz: return "speaker.zzz"
            case .speaker_zzz_fill: return "speaker.zzz.fill"
            case .speaker_wave_1: return "speaker.wave.1"
            case .speaker_wave_1_fill: return "speaker.wave.1.fill"
            case .speaker_wave_2: return "speaker.wave.2"
            case .speaker_wave_2_fill: return "speaker.wave.2.fill"
            case .speaker_wave_2_circle: return "speaker.wave.2.circle"
            case .speaker_wave_2_circle_fill: return "speaker.wave.2.circle.fill"
            case .speaker_wave_3: return "speaker.wave.3"
            case .speaker_wave_3_fill: return "speaker.wave.3.fill"
            case .speaker_badge_exclamationmark: return "speaker.badge.exclamationmark"
            case .speaker_badge_exclamationmark_fill: return "speaker.badge.exclamationmark.fill"
            case .badge_plus_radiowaves_right: return "badge.plus.radiowaves.right"
            case .badge_plus_radiowaves_forward: return "badge.plus.radiowaves.forward"
            case .music_note: return "music.note"
            case .music_note_list: return "music.note.list"
            case .music_quarternote_3: return "music.quarternote.3"
            case .music_mic: return "music.mic"
            case .music_mic_circle: return "music.mic.circle"
            case .music_mic_circle_fill: return "music.mic.circle.fill"
            case .arrow_rectanglepath: return "arrow.rectanglepath"
            case .goforward: return "goforward"
            case .gobackward: return "gobackward"
            case .goforward_5: return "goforward.5"
            case .gobackward_5: return "gobackward.5"
            case .goforward_10: return "goforward.10"
            case .gobackward_10: return "gobackward.10"
            case .goforward_15: return "goforward.15"
            case .gobackward_15: return "gobackward.15"
            case .goforward_30: return "goforward.30"
            case .gobackward_30: return "gobackward.30"
            case .goforward_45: return "goforward.45"
            case .gobackward_45: return "gobackward.45"
            case .goforward_60: return "goforward.60"
            case .gobackward_60: return "gobackward.60"
            case .goforward_75: return "goforward.75"
            case .gobackward_75: return "gobackward.75"
            case .goforward_90: return "goforward.90"
            case .gobackward_90: return "gobackward.90"
            case .goforward_plus: return "goforward.plus"
            case .gobackward_minus: return "gobackward.minus"
            case .swift: return "swift"
            case .magnifyingglass: return "magnifyingglass"
            case .magnifyingglass_circle: return "magnifyingglass.circle"
            case .magnifyingglass_circle_fill: return "magnifyingglass.circle.fill"
            case .plus_magnifyingglass: return "plus.magnifyingglass"
            case .minus_magnifyingglass: return "minus.magnifyingglass"
            case ._1_magnifyingglass: return "1.magnifyingglass"
            case .arrow_up_left_and_down_right_magnifyingglass: return "arrow.up.left.and.down.right.magnifyingglass"
            case .text_magnifyingglass: return "text.magnifyingglass"
            case .sparkle_magnifyingglass: return "sparkle.magnifyingglass"
            case .location_magnifyingglass: return "location.magnifyingglass"
            case .loupe: return "loupe"
            case .mic: return "mic"
            case .mic_fill: return "mic.fill"
            case .mic_circle: return "mic.circle"
            case .mic_circle_fill: return "mic.circle.fill"
            case .mic_square: return "mic.square"
            case .mic_square_fill: return "mic.square.fill"
            case .mic_slash: return "mic.slash"
            case .mic_slash_fill: return "mic.slash.fill"
            case .mic_slash_circle: return "mic.slash.circle"
            case .mic_slash_circle_fill: return "mic.slash.circle.fill"
            case .mic_badge_plus: return "mic.badge.plus"
            case .mic_fill_badge_plus: return "mic.fill.badge.plus"
            case .line_diagonal: return "line.diagonal"
            case .line_diagonal_arrow: return "line.diagonal.arrow"
            case .circle_slash: return "circle.slash"
            case .circle_slash_fill: return "circle.slash.fill"
            case .smallcircle_filled_circle_fill: return "smallcircle.filled.circle.fill"
            case .circle_dashed: return "circle.dashed"
            case .circle_dashed_inset_filled: return "circle.dashed.inset.filled"
            case .circle_dotted: return "circle.dotted"
            case .circlebadge: return "circlebadge"
            case .circlebadge_fill: return "circlebadge.fill"
            case .circlebadge_2: return "circlebadge.2"
            case .circlebadge_2_fill: return "circlebadge.2.fill"
            case .smallcircle_circle_fill: return "smallcircle.circle.fill"
            case .target: return "target"
            case .capsule: return "capsule"
            case .capsule_fill: return "capsule.fill"
            case .capsule_lefthalf_filled: return "capsule.lefthalf.filled"
            case .capsule_righthalf_filled: return "capsule.righthalf.filled"
            case .capsule_tophalf_filled: return "capsule.tophalf.filled"
            case .capsule_bottomhalf_filled: return "capsule.bottomhalf.filled"
            case .capsule_inset_filled: return "capsule.inset.filled"
            case .capsule_portrait: return "capsule.portrait"
            case .capsule_portrait_fill: return "capsule.portrait.fill"
            case .capsule_portrait_lefthalf_filled: return "capsule.portrait.lefthalf.filled"
            case .capsule_portrait_righthalf_filled: return "capsule.portrait.righthalf.filled"
            case .capsule_portrait_tophalf_filled: return "capsule.portrait.tophalf.filled"
            case .capsule_portrait_bottomhalf_filled: return "capsule.portrait.bottomhalf.filled"
            case .capsule_portrait_inset_filled: return "capsule.portrait.inset.filled"
            case .oval: return "oval"
            case .oval_fill: return "oval.fill"
            case .oval_lefthalf_filled: return "oval.lefthalf.filled"
            case .oval_righthalf_filled: return "oval.righthalf.filled"
            case .oval_tophalf_filled: return "oval.tophalf.filled"
            case .oval_bottomhalf_filled: return "oval.bottomhalf.filled"
            case .oval_inset_filled: return "oval.inset.filled"
            case .oval_portrait: return "oval.portrait"
            case .oval_portrait_fill: return "oval.portrait.fill"
            case .oval_portrait_lefthalf_filled: return "oval.portrait.lefthalf.filled"
            case .oval_portrait_righthalf_filled: return "oval.portrait.righthalf.filled"
            case .oval_portrait_tophalf_filled: return "oval.portrait.tophalf.filled"
            case .oval_portrait_bottomhalf_filled: return "oval.portrait.bottomhalf.filled"
            case .oval_portrait_inset_filled: return "oval.portrait.inset.filled"
            case .square_slash: return "square.slash"
            case .square_slash_fill: return "square.slash.fill"
            case .square_inset_filled: return "square.inset.filled"
            case .square_split_2x1: return "square.split.2x1"
            case .square_split_2x1_fill: return "square.split.2x1.fill"
            case .square_split_1x2_fill: return "square.split.1x2.fill"
            case .square_split_2x2_fill: return "square.split.2x2.fill"
            case .square_split_diagonal_2x2_fill: return "square.split.diagonal.2x2.fill"
            case .square_split_diagonal: return "square.split.diagonal"
            case .square_split_diagonal_fill: return "square.split.diagonal.fill"
            case .dot_square_fill: return "dot.square.fill"
            case .circle_square: return "circle.square"
            case .circle_square_fill: return "circle.square.fill"
            case .square_dashed: return "square.dashed"
            case .square_dashed_inset_filled: return "square.dashed.inset.filled"
            case .plus_square_dashed: return "plus.square.dashed"
            case .questionmark_square_dashed: return "questionmark.square.dashed"
            case .square_on_square: return "square.on.square"
            case .square_fill_on_square_fill: return "square.fill.on.square.fill"
            case .square_filled_on_square: return "square.filled.on.square"
            case .hand_raised_square_on_square: return "hand.raised.square.on.square"
            case .hand_raised_square_on_square_fill: return "hand.raised.square.on.square.fill"
            case .sparkles_square_filled_on_square: return "sparkles.square.filled.on.square"
            case .square_on_square_dashed: return "square.on.square.dashed"
            case .plus_square_on_square: return "plus.square.on.square"
            case .plus_square_fill_on_square_fill: return "plus.square.fill.on.square.fill"
            case .square_on_circle: return "square.on.circle"
            case .square_fill_on_circle_fill: return "square.fill.on.circle.fill"
            case .r_square_on_square: return "r.square.on.square"
            case .r_square_on_square_fill: return "r.square.on.square.fill"
            case .j_square_on_square: return "j.square.on.square"
            case .j_square_on_square_fill: return "j.square.on.square.fill"
            case .h_square_on_square: return "h.square.on.square"
            case .h_square_on_square_fill: return "h.square.on.square.fill"
            case .square_stack: return "square.stack"
            case .square_stack_fill: return "square.stack.fill"
            case .squareshape: return "squareshape"
            case .squareshape_fill: return "squareshape.fill"
            case .squareshape_dashed_squareshape: return "squareshape.dashed.squareshape"
            case .squareshape_squareshape_dashed: return "squareshape.squareshape.dashed"
            case .dot_squareshape: return "dot.squareshape"
            case .dot_squareshape_fill: return "dot.squareshape.fill"
            case .app: return "app"
            case .app_fill: return "app.fill"
            case .rectangle: return "rectangle"
            case .rectangle_fill: return "rectangle.fill"
            case .rectangle_slash: return "rectangle.slash"
            case .rectangle_slash_fill: return "rectangle.slash.fill"
            case .rectangle_lefthalf_filled: return "rectangle.lefthalf.filled"
            case .rectangle_righthalf_filled: return "rectangle.righthalf.filled"
            case .rectangle_leadinghalf_filled: return "rectangle.leadinghalf.filled"
            case .rectangle_trailinghalf_filled: return "rectangle.trailinghalf.filled"
            case .rectangle_tophalf_filled: return "rectangle.tophalf.filled"
            case .rectangle_bottomhalf_filled: return "rectangle.bottomhalf.filled"
            case .rectangle_split_2x1: return "rectangle.split.2x1"
            case .rectangle_split_2x1_fill: return "rectangle.split.2x1.fill"
            case .rectangle_split_2x1_slash: return "rectangle.split.2x1.slash"
            case .rectangle_split_2x1_slash_fill: return "rectangle.split.2x1.slash.fill"
            case .rectangle_split_1x2: return "rectangle.split.1x2"
            case .rectangle_split_1x2_fill: return "rectangle.split.1x2.fill"
            case .rectangle_split_3x1: return "rectangle.split.3x1"
            case .rectangle_split_3x1_fill: return "rectangle.split.3x1.fill"
            case .rectangle_split_2x2: return "rectangle.split.2x2"
            case .rectangle_split_2x2_fill: return "rectangle.split.2x2.fill"
            case .tablecells: return "tablecells"
            case .tablecells_fill: return "tablecells.fill"
            case .tablecells_badge_ellipsis: return "tablecells.badge.ellipsis"
            case .tablecells_fill_badge_ellipsis: return "tablecells.fill.badge.ellipsis"
            case .rectangle_split_3x3: return "rectangle.split.3x3"
            case .rectangle_inset_filled: return "rectangle.inset.filled"
            case .rectangle_tophalf_inset_filled: return "rectangle.tophalf.inset.filled"
            case .rectangle_bottomhalf_inset_filled: return "rectangle.bottomhalf.inset.filled"
            case .rectangle_lefthalf_inset_filled: return "rectangle.lefthalf.inset.filled"
            case .rectangle_righthalf_inset_filled: return "rectangle.righthalf.inset.filled"
            case .rectangle_leadinghalf_inset_filled: return "rectangle.leadinghalf.inset.filled"
            case .rectangle_trailinghalf_inset_filled: return "rectangle.trailinghalf.inset.filled"
            case .rectangle_lefthalf_inset_filled_arrow_left: return "rectangle.lefthalf.inset.filled.arrow.left"
            case .rectangle_righthalf_inset_filled_arrow_right: return "rectangle.righthalf.inset.filled.arrow.right"
            case .rectangle_leadinghalf_inset_filled_arrow_leading: return "rectangle.leadinghalf.inset.filled.arrow.leading"
            case .rectangle_trailinghalf_inset_filled_arrow_trailing: return "rectangle.trailinghalf.inset.filled.arrow.trailing"
            case .rectangle_topthird_inset_filled: return "rectangle.topthird.inset.filled"
            case .rectangle_bottomthird_inset_filled: return "rectangle.bottomthird.inset.filled"
            case .rectangle_leftthird_inset_filled: return "rectangle.leftthird.inset.filled"
            case .rectangle_rightthird_inset_filled: return "rectangle.rightthird.inset.filled"
            case .rectangle_leadingthird_inset_filled: return "rectangle.leadingthird.inset.filled"
            case .rectangle_trailingthird_inset_filled: return "rectangle.trailingthird.inset.filled"
            case .rectangle_center_inset_filled: return "rectangle.center.inset.filled"
            case .rectangle_center_inset_filled_badge_plus: return "rectangle.center.inset.filled.badge.plus"
            case .rectangle_inset_topleft_filled: return "rectangle.inset.topleft.filled"
            case .rectangle_inset_topright_filled: return "rectangle.inset.topright.filled"
            case .rectangle_inset_topleading_filled: return "rectangle.inset.topleading.filled"
            case .rectangle_inset_toptrailing_filled: return "rectangle.inset.toptrailing.filled"
            case .rectangle_inset_bottomleft_filled: return "rectangle.inset.bottomleft.filled"
            case .rectangle_inset_bottomright_filled: return "rectangle.inset.bottomright.filled"
            case .rectangle_inset_bottomleading_filled: return "rectangle.inset.bottomleading.filled"
            case .rectangle_inset_bottomtrailing_filled: return "rectangle.inset.bottomtrailing.filled"
            case .rectangle_on_rectangle: return "rectangle.on.rectangle"
            case .rectangle_fill_on_rectangle_fill: return "rectangle.fill.on.rectangle.fill"
            case .rectangle_on_rectangle_circle: return "rectangle.on.rectangle.circle"
            case .rectangle_on_rectangle_circle_fill: return "rectangle.on.rectangle.circle.fill"
            case .rectangle_on_rectangle_square: return "rectangle.on.rectangle.square"
            case .rectangle_on_rectangle_square_fill: return "rectangle.on.rectangle.square.fill"
            case .rectangle_inset_filled_on_rectangle: return "rectangle.inset.filled.on.rectangle"
            case .rectangle_on_rectangle_slash: return "rectangle.on.rectangle.slash"
            case .rectangle_on_rectangle_slash_fill: return "rectangle.on.rectangle.slash.fill"
            case .rectangle_on_rectangle_slash_circle: return "rectangle.on.rectangle.slash.circle"
            case .rectangle_on_rectangle_slash_circle_fill: return "rectangle.on.rectangle.slash.circle.fill"
            case .play_rectangle_on_rectangle: return "play.rectangle.on.rectangle"
            case .play_rectangle_on_rectangle_fill: return "play.rectangle.on.rectangle.fill"
            case .play_rectangle_on_rectangle_circle: return "play.rectangle.on.rectangle.circle"
            case .play_rectangle_on_rectangle_circle_fill: return "play.rectangle.on.rectangle.circle.fill"
            case .plus_rectangle_on_rectangle: return "plus.rectangle.on.rectangle"
            case .plus_rectangle_fill_on_rectangle_fill: return "plus.rectangle.fill.on.rectangle.fill"
            case .rectangle_portrait: return "rectangle.portrait"
            case .rectangle_portrait_fill: return "rectangle.portrait.fill"
            case .rectangle_portrait_slash: return "rectangle.portrait.slash"
            case .rectangle_portrait_slash_fill: return "rectangle.portrait.slash.fill"
            case .rectangle_portrait_lefthalf_filled: return "rectangle.portrait.lefthalf.filled"
            case .rectangle_portrait_righthalf_filled: return "rectangle.portrait.righthalf.filled"
            case .rectangle_portrait_tophalf_filled: return "rectangle.portrait.tophalf.filled"
            case .rectangle_portrait_bottomhalf_filled: return "rectangle.portrait.bottomhalf.filled"
            case .rectangle_portrait_inset_filled: return "rectangle.portrait.inset.filled"
            case .rectangle_portrait_tophalf_inset_filled: return "rectangle.portrait.tophalf.inset.filled"
            case .rectangle_portrait_bottomhalf_inset_filled: return "rectangle.portrait.bottomhalf.inset.filled"
            case .rectangle_portrait_lefthalf_inset_filled: return "rectangle.portrait.lefthalf.inset.filled"
            case .rectangle_portrait_righthalf_inset_filled: return "rectangle.portrait.righthalf.inset.filled"
            case .rectangle_portrait_leadinghalf_inset_filled: return "rectangle.portrait.leadinghalf.inset.filled"
            case .rectangle_portrait_trailinghalf_inset_filled: return "rectangle.portrait.trailinghalf.inset.filled"
            case .rectangle_portrait_topthird_inset_filled: return "rectangle.portrait.topthird.inset.filled"
            case .rectangle_portrait_bottomthird_inset_filled: return "rectangle.portrait.bottomthird.inset.filled"
            case .rectangle_portrait_leftthird_inset_filled: return "rectangle.portrait.leftthird.inset.filled"
            case .rectangle_portrait_rightthird_inset_filled: return "rectangle.portrait.rightthird.inset.filled"
            case .rectangle_portrait_leadingthird_inset_filled: return "rectangle.portrait.leadingthird.inset.filled"
            case .rectangle_portrait_trailingthird_inset_filled: return "rectangle.portrait.trailingthird.inset.filled"
            case .rectangle_portrait_center_inset_filled: return "rectangle.portrait.center.inset.filled"
            case .rectangle_portrait_topleft_inset_filled: return "rectangle.portrait.topleft.inset.filled"
            case .rectangle_portrait_topright_inset_filled: return "rectangle.portrait.topright.inset.filled"
            case .rectangle_portrait_topleading_inset_filled: return "rectangle.portrait.topleading.inset.filled"
            case .rectangle_portrait_toptrailing_inset_filled: return "rectangle.portrait.toptrailing.inset.filled"
            case .rectangle_portrait_bottomleft_inset_filled: return "rectangle.portrait.bottomleft.inset.filled"
            case .rectangle_portrait_bottomright_inset_filled: return "rectangle.portrait.bottomright.inset.filled"
            case .rectangle_portrait_bottomleading_inset_filled: return "rectangle.portrait.bottomleading.inset.filled"
            case .rectangle_portrait_bottomtrailing_inset_filled: return "rectangle.portrait.bottomtrailing.inset.filled"
            case .rectangle_portrait_on_rectangle_portrait: return "rectangle.portrait.on.rectangle.portrait"
            case .rectangle_portrait_on_rectangle_portrait_fill: return "rectangle.portrait.on.rectangle.portrait.fill"
            case .rectangle_portrait_on_rectangle_portrait_slash: return "rectangle.portrait.on.rectangle.portrait.slash"
            case .rectangle_portrait_on_rectangle_portrait_slash_fill: return "rectangle.portrait.on.rectangle.portrait.slash.fill"
            case .rectangle_portrait_split_2x1: return "rectangle.portrait.split.2x1"
            case .rectangle_portrait_split_2x1_fill: return "rectangle.portrait.split.2x1.fill"
            case .rectangle_portrait_split_2x1_slash: return "rectangle.portrait.split.2x1.slash"
            case .rectangle_portrait_split_2x1_slash_fill: return "rectangle.portrait.split.2x1.slash.fill"
            case .triangle_fill: return "triangle.fill"
            case .triangle_tophalf_filled: return "triangle.tophalf.filled"
            case .triangle_bottomhalf_filled: return "triangle.bottomhalf.filled"
            case .triangle_inset_filled: return "triangle.inset.filled"
            case .diamond: return "diamond"
            case .diamond_fill: return "diamond.fill"
            case .diamond_circle: return "diamond.circle"
            case .diamond_circle_fill: return "diamond.circle.fill"
            case .diamond_inset_filled: return "diamond.inset.filled"
            case .octagon: return "octagon"
            case .octagon_fill: return "octagon.fill"
            case .octagon_lefthalf_filled: return "octagon.lefthalf.filled"
            case .octagon_righthalf_filled: return "octagon.righthalf.filled"
            case .octagon_tophalf_filled: return "octagon.tophalf.filled"
            case .octagon_bottomhalf_filled: return "octagon.bottomhalf.filled"
            case .hexagon_lefthalf_filled: return "hexagon.lefthalf.filled"
            case .hexagon_righthalf_filled: return "hexagon.righthalf.filled"
            case .hexagon_tophalf_filled: return "hexagon.tophalf.filled"
            case .hexagon_bottomhalf_filled: return "hexagon.bottomhalf.filled"
            case .pentagon: return "pentagon"
            case .pentagon_fill: return "pentagon.fill"
            case .pentagon_lefthalf_filled: return "pentagon.lefthalf.filled"
            case .pentagon_righthalf_filled: return "pentagon.righthalf.filled"
            case .pentagon_tophalf_filled: return "pentagon.tophalf.filled"
            case .pentagon_bottomhalf_filled: return "pentagon.bottomhalf.filled"
            case .heart: return "heart"
            case .heart_fill: return "heart.fill"
            case .heart_circle: return "heart.circle"
            case .heart_circle_fill: return "heart.circle.fill"
            case .heart_square: return "heart.square"
            case .heart_square_fill: return "heart.square.fill"
            case .heart_rectangle: return "heart.rectangle"
            case .heart_rectangle_fill: return "heart.rectangle.fill"
            case .heart_slash: return "heart.slash"
            case .heart_slash_fill: return "heart.slash.fill"
            case .heart_slash_circle: return "heart.slash.circle"
            case .heart_slash_circle_fill: return "heart.slash.circle.fill"
            case .bolt_heart: return "bolt.heart"
            case .bolt_heart_fill: return "bolt.heart.fill"
            case .arrow_up_heart: return "arrow.up.heart"
            case .arrow_up_heart_fill: return "arrow.up.heart.fill"
            case .arrow_down_heart: return "arrow.down.heart"
            case .arrow_down_heart_fill: return "arrow.down.heart.fill"
            case .arrow_clockwise_heart: return "arrow.clockwise.heart"
            case .arrow_clockwise_heart_fill: return "arrow.clockwise.heart.fill"
            case .rhombus: return "rhombus"
            case .rhombus_fill: return "rhombus.fill"
            case .star_leadinghalf_filled: return "star.leadinghalf.filled"
            case .star_circle: return "star.circle"
            case .star_circle_fill: return "star.circle.fill"
            case .star_square: return "star.square"
            case .star_square_fill: return "star.square.fill"
            case .star_slash: return "star.slash"
            case .star_slash_fill: return "star.slash.fill"
            case .line_horizontal_star_fill_line_horizontal: return "line.horizontal.star.fill.line.horizontal"
            case .flag: return "flag"
            case .flag_fill: return "flag.fill"
            case .flag_circle: return "flag.circle"
            case .flag_circle_fill: return "flag.circle.fill"
            case .flag_square: return "flag.square"
            case .flag_square_fill: return "flag.square.fill"
            case .flag_slash: return "flag.slash"
            case .flag_slash_fill: return "flag.slash.fill"
            case .flag_slash_circle: return "flag.slash.circle"
            case .flag_slash_circle_fill: return "flag.slash.circle.fill"
            case .flag_badge_ellipsis: return "flag.badge.ellipsis"
            case .flag_badge_ellipsis_fill: return "flag.badge.ellipsis.fill"
            case .flag_2_crossed: return "flag.2.crossed"
            case .flag_2_crossed_fill: return "flag.2.crossed.fill"
            case .flag_filled_and_flag_crossed: return "flag.filled.and.flag.crossed"
            case .flag_and_flag_filled_crossed: return "flag.and.flag.filled.crossed"
            case .location: return "location"
            case .location_fill: return "location.fill"
            case .location_circle: return "location.circle"
            case .location_circle_fill: return "location.circle.fill"
            case .location_square: return "location.square"
            case .location_square_fill: return "location.square.fill"
            case .location_slash: return "location.slash"
            case .location_slash_fill: return "location.slash.fill"
            case .location_north: return "location.north"
            case .location_north_fill: return "location.north.fill"
            case .location_north_circle: return "location.north.circle"
            case .location_north_circle_fill: return "location.north.circle.fill"
            case .location_north_line: return "location.north.line"
            case .location_north_line_fill: return "location.north.line.fill"
            case .sensor_tag_radiowaves_forward: return "sensor.tag.radiowaves.forward"
            case .sensor_tag_radiowaves_forward_fill: return "sensor.tag.radiowaves.forward.fill"
            case .airtag_radiowaves_forward: return "airtag.radiowaves.forward"
            case .airtag_radiowaves_forward_fill: return "airtag.radiowaves.forward.fill"
            case .airtag: return "airtag"
            case .airtag_fill: return "airtag.fill"
            case .bell: return "bell"
            case .bell_fill: return "bell.fill"
            case .bell_circle: return "bell.circle"
            case .bell_circle_fill: return "bell.circle.fill"
            case .bell_square: return "bell.square"
            case .bell_square_fill: return "bell.square.fill"
            case .bell_slash: return "bell.slash"
            case .bell_slash_fill: return "bell.slash.fill"
            case .bell_slash_circle: return "bell.slash.circle"
            case .bell_slash_circle_fill: return "bell.slash.circle.fill"
            case .bell_and_waveform: return "bell.and.waveform"
            case .bell_and_waveform_fill: return "bell.and.waveform.fill"
            case .bell_badge: return "bell.badge"
            case .bell_badge_fill: return "bell.badge.fill"
            case .bell_badge_circle: return "bell.badge.circle"
            case .bell_badge_circle_fill: return "bell.badge.circle.fill"
            case .tag: return "tag"
            case .tag_fill: return "tag.fill"
            case .tag_circle: return "tag.circle"
            case .tag_circle_fill: return "tag.circle.fill"
            case .tag_square: return "tag.square"
            case .tag_square_fill: return "tag.square.fill"
            case .tag_slash: return "tag.slash"
            case .tag_slash_fill: return "tag.slash.fill"
            case .bolt: return "bolt"
            case .bolt_fill: return "bolt.fill"
            case .bolt_circle: return "bolt.circle"
            case .bolt_circle_fill: return "bolt.circle.fill"
            case .bolt_square: return "bolt.square"
            case .bolt_square_fill: return "bolt.square.fill"
            case .bolt_ring_closed: return "bolt.ring.closed"
            case .bolt_shield: return "bolt.shield"
            case .bolt_shield_fill: return "bolt.shield.fill"
            case .bolt_slash: return "bolt.slash"
            case .bolt_slash_fill: return "bolt.slash.fill"
            case .bolt_slash_circle: return "bolt.slash.circle"
            case .bolt_slash_circle_fill: return "bolt.slash.circle.fill"
            case .bolt_badge_a: return "bolt.badge.a"
            case .bolt_badge_a_fill: return "bolt.badge.a.fill"
            case .bolt_horizontal: return "bolt.horizontal"
            case .bolt_horizontal_fill: return "bolt.horizontal.fill"
            case .bolt_horizontal_circle: return "bolt.horizontal.circle"
            case .bolt_horizontal_circle_fill: return "bolt.horizontal.circle.fill"
            case .eye: return "eye"
            case .eye_fill: return "eye.fill"
            case .eye_circle: return "eye.circle"
            case .eye_circle_fill: return "eye.circle.fill"
            case .eye_square: return "eye.square"
            case .eye_square_fill: return "eye.square.fill"
            case .eye_slash: return "eye.slash"
            case .eye_slash_fill: return "eye.slash.fill"
            case .eye_slash_circle: return "eye.slash.circle"
            case .eye_slash_circle_fill: return "eye.slash.circle.fill"
            case .eye_trianglebadge_exclamationmark: return "eye.trianglebadge.exclamationmark"
            case .eye_trianglebadge_exclamationmark_fill: return "eye.trianglebadge.exclamationmark.fill"
            case .tshirt: return "tshirt"
            case .tshirt_fill: return "tshirt.fill"
            case .eyes: return "eyes"
            case .eyes_inverse: return "eyes.inverse"
            case .eyebrow: return "eyebrow"
            case .nose: return "nose"
            case .nose_fill: return "nose.fill"
            case .mustache: return "mustache"
            case .mustache_fill: return "mustache.fill"
            case .mouth: return "mouth"
            case .mouth_fill: return "mouth.fill"
            case .eyeglasses: return "eyeglasses"
            case .facemask: return "facemask"
            case .facemask_fill: return "facemask.fill"
            case .brain_head_profile: return "brain.head.profile"
            case .brain: return "brain"
            case .icloud: return "icloud"
            case .icloud_fill: return "icloud.fill"
            case .icloud_circle: return "icloud.circle"
            case .icloud_circle_fill: return "icloud.circle.fill"
            case .icloud_square: return "icloud.square"
            case .icloud_square_fill: return "icloud.square.fill"
            case .icloud_slash: return "icloud.slash"
            case .icloud_slash_fill: return "icloud.slash.fill"
            case .exclamationmark_icloud: return "exclamationmark.icloud"
            case .exclamationmark_icloud_fill: return "exclamationmark.icloud.fill"
            case .checkmark_icloud: return "checkmark.icloud"
            case .checkmark_icloud_fill: return "checkmark.icloud.fill"
            case .xmark_icloud: return "xmark.icloud"
            case .xmark_icloud_fill: return "xmark.icloud.fill"
            case .link_icloud: return "link.icloud"
            case .link_icloud_fill: return "link.icloud.fill"
            case .bolt_horizontal_icloud: return "bolt.horizontal.icloud"
            case .bolt_horizontal_icloud_fill: return "bolt.horizontal.icloud.fill"
            case .person_icloud: return "person.icloud"
            case .person_icloud_fill: return "person.icloud.fill"
            case .lock_icloud: return "lock.icloud"
            case .lock_icloud_fill: return "lock.icloud.fill"
            case .key_icloud: return "key.icloud"
            case .key_icloud_fill: return "key.icloud.fill"
            case .arrow_clockwise_icloud: return "arrow.clockwise.icloud"
            case .arrow_clockwise_icloud_fill: return "arrow.clockwise.icloud.fill"
            case .arrow_counterclockwise_icloud: return "arrow.counterclockwise.icloud"
            case .arrow_counterclockwise_icloud_fill: return "arrow.counterclockwise.icloud.fill"
            case .icloud_and_arrow_down: return "icloud.and.arrow.down"
            case .icloud_and_arrow_down_fill: return "icloud.and.arrow.down.fill"
            case .icloud_and_arrow_up: return "icloud.and.arrow.up"
            case .icloud_and_arrow_up_fill: return "icloud.and.arrow.up.fill"
            case .flashlight_off_fill: return "flashlight.off.fill"
            case .flashlight_on_fill: return "flashlight.on.fill"
            case .camera: return "camera"
            case .camera_fill: return "camera.fill"
            case .camera_circle: return "camera.circle"
            case .camera_circle_fill: return "camera.circle.fill"
            case .camera_shutter_button: return "camera.shutter.button"
            case .camera_shutter_button_fill: return "camera.shutter.button.fill"
            case .camera_badge_ellipsis: return "camera.badge.ellipsis"
            case .camera_fill_badge_ellipsis: return "camera.fill.badge.ellipsis"
            case .arrow_triangle_2_circlepath_camera: return "arrow.triangle.2.circlepath.camera"
            case .arrow_triangle_2_circlepath_camera_fill: return "arrow.triangle.2.circlepath.camera.fill"
            case .camera_on_rectangle: return "camera.on.rectangle"
            case .camera_on_rectangle_fill: return "camera.on.rectangle.fill"
            case .message: return "message"
            case .message_fill: return "message.fill"
            case .message_circle: return "message.circle"
            case .message_circle_fill: return "message.circle.fill"
            case .message_and_waveform: return "message.and.waveform"
            case .message_and_waveform_fill: return "message.and.waveform.fill"
            case .arrow_up_message: return "arrow.up.message"
            case .arrow_up_message_fill: return "arrow.up.message.fill"
            case .plus_message: return "plus.message"
            case .plus_message_fill: return "plus.message.fill"
            case .bubble_right: return "bubble.right"
            case .bubble_right_fill: return "bubble.right.fill"
            case .bubble_right_circle: return "bubble.right.circle"
            case .bubble_right_circle_fill: return "bubble.right.circle.fill"
            case .bubble_left: return "bubble.left"
            case .bubble_left_fill: return "bubble.left.fill"
            case .bubble_left_circle: return "bubble.left.circle"
            case .bubble_left_circle_fill: return "bubble.left.circle.fill"
            case .exclamationmark_bubble: return "exclamationmark.bubble"
            case .exclamationmark_bubble_fill: return "exclamationmark.bubble.fill"
            case .exclamationmark_bubble_circle: return "exclamationmark.bubble.circle"
            case .exclamationmark_bubble_circle_fill: return "exclamationmark.bubble.circle.fill"
            case .quote_opening: return "quote.opening"
            case .quote_closing: return "quote.closing"
            case .quote_bubble: return "quote.bubble"
            case .quote_bubble_fill: return "quote.bubble.fill"
            case .star_bubble: return "star.bubble"
            case .star_bubble_fill: return "star.bubble.fill"
            case .character_bubble: return "character.bubble"
            case .character_bubble_fill: return "character.bubble.fill"
            case .text_bubble: return "text.bubble"
            case .text_bubble_fill: return "text.bubble.fill"
            case .captions_bubble: return "captions.bubble"
            case .captions_bubble_fill: return "captions.bubble.fill"
            case .plus_bubble: return "plus.bubble"
            case .plus_bubble_fill: return "plus.bubble.fill"
            case .checkmark_bubble: return "checkmark.bubble"
            case .checkmark_bubble_fill: return "checkmark.bubble.fill"
            case .rectangle_3_group_bubble_left: return "rectangle.3.group.bubble.left"
            case .rectangle_3_group_bubble_left_fill: return "rectangle.3.group.bubble.left.fill"
            case .ellipsis_bubble: return "ellipsis.bubble"
            case .ellipsis_bubble_fill: return "ellipsis.bubble.fill"
            case .ellipsis_vertical_bubble: return "ellipsis.vertical.bubble"
            case .ellipsis_vertical_bubble_fill: return "ellipsis.vertical.bubble.fill"
            case .phone_bubble_left: return "phone.bubble.left"
            case .phone_bubble_left_fill: return "phone.bubble.left.fill"
            case .video_bubble_left: return "video.bubble.left"
            case .video_bubble_left_fill: return "video.bubble.left.fill"
            case .bubble_middle_bottom: return "bubble.middle.bottom"
            case .bubble_middle_bottom_fill: return "bubble.middle.bottom.fill"
            case .bubble_middle_top: return "bubble.middle.top"
            case .bubble_middle_top_fill: return "bubble.middle.top.fill"
            case .bubble_left_and_bubble_right: return "bubble.left.and.bubble.right"
            case .bubble_left_and_bubble_right_fill: return "bubble.left.and.bubble.right.fill"
            case .bubble_left_and_exclamationmark_bubble_right: return "bubble.left.and.exclamationmark.bubble.right"
            case .bubble_left_and_exclamationmark_bubble_right_fill: return "bubble.left.and.exclamationmark.bubble.right.fill"
            case .phone: return "phone"
            case .phone_fill: return "phone.fill"
            case .phone_circle: return "phone.circle"
            case .phone_circle_fill: return "phone.circle.fill"
            case .phone_badge_plus: return "phone.badge.plus"
            case .phone_fill_badge_plus: return "phone.fill.badge.plus"
            case .phone_connection: return "phone.connection"
            case .phone_fill_connection: return "phone.fill.connection"
            case .phone_and_waveform: return "phone.and.waveform"
            case .phone_and_waveform_fill: return "phone.and.waveform.fill"
            case .phone_arrow_up_right: return "phone.arrow.up.right"
            case .phone_fill_arrow_up_right: return "phone.fill.arrow.up.right"
            case .phone_arrow_down_left: return "phone.arrow.down.left"
            case .phone_fill_arrow_down_left: return "phone.fill.arrow.down.left"
            case .phone_arrow_right: return "phone.arrow.right"
            case .phone_fill_arrow_right: return "phone.fill.arrow.right"
            case .phone_down: return "phone.down"
            case .phone_down_fill: return "phone.down.fill"
            case .phone_down_circle: return "phone.down.circle"
            case .phone_down_circle_fill: return "phone.down.circle.fill"
            case .teletype: return "teletype"
            case .teletype_circle: return "teletype.circle"
            case .teletype_circle_fill: return "teletype.circle.fill"
            case .teletype_answer: return "teletype.answer"
            case .teletype_answer_circle: return "teletype.answer.circle"
            case .teletype_answer_circle_fill: return "teletype.answer.circle.fill"
            case .video: return "video"
            case .video_fill: return "video.fill"
            case .video_circle: return "video.circle"
            case .video_circle_fill: return "video.circle.fill"
            case .video_square: return "video.square"
            case .video_square_fill: return "video.square.fill"
            case .video_slash: return "video.slash"
            case .video_slash_fill: return "video.slash.fill"
            case .video_badge_plus: return "video.badge.plus"
            case .video_fill_badge_plus: return "video.fill.badge.plus"
            case .video_badge_checkmark: return "video.badge.checkmark"
            case .video_fill_badge_checkmark: return "video.fill.badge.checkmark"
            case .video_badge_ellipsis: return "video.badge.ellipsis"
            case .video_fill_badge_ellipsis: return "video.fill.badge.ellipsis"
            case .video_and_waveform: return "video.and.waveform"
            case .video_and_waveform_fill: return "video.and.waveform.fill"
            case .arrow_up_right_video: return "arrow.up.right.video"
            case .arrow_up_right_video_fill: return "arrow.up.right.video.fill"
            case .arrow_down_left_video: return "arrow.down.left.video"
            case .arrow_down_left_video_fill: return "arrow.down.left.video.fill"
            case .questionmark_video: return "questionmark.video"
            case .questionmark_video_fill: return "questionmark.video.fill"
            case .envelope: return "envelope"
            case .envelope_fill: return "envelope.fill"
            case .envelope_circle: return "envelope.circle"
            case .envelope_circle_fill: return "envelope.circle.fill"
            case .envelope_arrow_triangle_branch: return "envelope.arrow.triangle.branch"
            case .envelope_arrow_triangle_branch_fill: return "envelope.arrow.triangle.branch.fill"
            case .envelope_open: return "envelope.open"
            case .envelope_open_fill: return "envelope.open.fill"
            case .envelope_badge: return "envelope.badge"
            case .envelope_badge_fill: return "envelope.badge.fill"
            case .envelope_badge_shield_half_filled: return "envelope.badge.shield.half.filled"
            case .envelope_badge_shield_half_filled_fill: return "envelope.badge.shield.half.filled.fill"
            case .mail_stack: return "mail.stack"
            case .mail_stack_fill: return "mail.stack.fill"
            case .mail: return "mail"
            case .mail_fill: return "mail.fill"
            case .mail_and_text_magnifyingglass: return "mail.and.text.magnifyingglass"
            case .rectangle_and_text_magnifyingglass: return "rectangle.and.text.magnifyingglass"
            case .arrow_up_right_and_arrow_down_left_rectangle: return "arrow.up.right.and.arrow.down.left.rectangle"
            case .arrow_up_right_and_arrow_down_left_rectangle_fill: return "arrow.up.right.and.arrow.down.left.rectangle.fill"
            case .gear: return "gear"
            case .gear_circle: return "gear.circle"
            case .gear_circle_fill: return "gear.circle.fill"
            case .gear_badge_checkmark: return "gear.badge.checkmark"
            case .gear_badge_xmark: return "gear.badge.xmark"
            case .gear_badge_questionmark: return "gear.badge.questionmark"
            case .gearshape: return "gearshape"
            case .gearshape_fill: return "gearshape.fill"
            case .gearshape_circle: return "gearshape.circle"
            case .gearshape_circle_fill: return "gearshape.circle.fill"
            case .gearshape_2: return "gearshape.2"
            case .gearshape_2_fill: return "gearshape.2.fill"
            case .signature: return "signature"
            case .line_3_crossed_swirl_circle: return "line.3.crossed.swirl.circle"
            case .line_3_crossed_swirl_circle_fill: return "line.3.crossed.swirl.circle.fill"
            case .scissors: return "scissors"
            case .scissors_circle: return "scissors.circle"
            case .scissors_circle_fill: return "scissors.circle.fill"
            case .scissors_badge_ellipsis: return "scissors.badge.ellipsis"
            case .ellipsis: return "ellipsis"
            case .ellipsis_circle: return "ellipsis.circle"
            case .ellipsis_circle_fill: return "ellipsis.circle.fill"
            case .ellipsis_rectangle: return "ellipsis.rectangle"
            case .ellipsis_rectangle_fill: return "ellipsis.rectangle.fill"
            case .bag: return "bag"
            case .bag_fill: return "bag.fill"
            case .bag_circle: return "bag.circle"
            case .bag_circle_fill: return "bag.circle.fill"
            case .bag_badge_plus: return "bag.badge.plus"
            case .bag_fill_badge_plus: return "bag.fill.badge.plus"
            case .bag_badge_minus: return "bag.badge.minus"
            case .bag_fill_badge_minus: return "bag.fill.badge.minus"
            case .cart: return "cart"
            case .cart_fill: return "cart.fill"
            case .cart_circle: return "cart.circle"
            case .cart_circle_fill: return "cart.circle.fill"
            case .cart_badge_plus: return "cart.badge.plus"
            case .cart_fill_badge_plus: return "cart.fill.badge.plus"
            case .cart_badge_minus: return "cart.badge.minus"
            case .cart_fill_badge_minus: return "cart.fill.badge.minus"
            case .creditcard: return "creditcard"
            case .creditcard_fill: return "creditcard.fill"
            case .creditcard_circle: return "creditcard.circle"
            case .creditcard_circle_fill: return "creditcard.circle.fill"
            case .creditcard_and_123: return "creditcard.and.123"
            case .creditcard_trianglebadge_exclamationmark: return "creditcard.trianglebadge.exclamationmark"
            case .giftcard: return "giftcard"
            case .giftcard_fill: return "giftcard.fill"
            case .wallet_pass: return "wallet.pass"
            case .wallet_pass_fill: return "wallet.pass.fill"
            case .wand_and_rays: return "wand.and.rays"
            case .wand_and_rays_inverse: return "wand.and.rays.inverse"
            case .wand_and_stars: return "wand.and.stars"
            case .wand_and_stars_inverse: return "wand.and.stars.inverse"
            case .crop: return "crop"
            case .crop_rotate: return "crop.rotate"
            case .dial_min: return "dial.min"
            case .dial_min_fill: return "dial.min.fill"
            case .dial_max: return "dial.max"
            case .dial_max_fill: return "dial.max.fill"
            case .gyroscope: return "gyroscope"
            case .nosign: return "nosign"
            case .gauge: return "gauge"
            case .gauge_badge_plus: return "gauge.badge.plus"
            case .gauge_badge_minus: return "gauge.badge.minus"
            case .speedometer: return "speedometer"
            case .barometer: return "barometer"
            case .metronome: return "metronome"
            case .metronome_fill: return "metronome.fill"
            case .amplifier: return "amplifier"
            case .dice: return "dice"
            case .dice_fill: return "dice.fill"
            case .die_face_1_fill: return "die.face.1.fill"
            case .die_face_2_fill: return "die.face.2.fill"
            case .die_face_3_fill: return "die.face.3.fill"
            case .die_face_4_fill: return "die.face.4.fill"
            case .die_face_5_fill: return "die.face.5.fill"
            case .die_face_6_fill: return "die.face.6.fill"
            case .square_grid_3x3_square: return "square.grid.3x3.square"
            case .pianokeys: return "pianokeys"
            case .pianokeys_inverse: return "pianokeys.inverse"
            case .tuningfork: return "tuningfork"
            case .paintbrush: return "paintbrush"
            case .paintbrush_fill: return "paintbrush.fill"
            case .paintbrush_pointed: return "paintbrush.pointed"
            case .paintbrush_pointed_fill: return "paintbrush.pointed.fill"
            case .bandage: return "bandage"
            case .bandage_fill: return "bandage.fill"
            case .ruler: return "ruler"
            case .ruler_fill: return "ruler.fill"
            case .level: return "level"
            case .level_fill: return "level.fill"
            case .lines_measurement_horizontal: return "lines.measurement.horizontal"
            case .wrench: return "wrench"
            case .wrench_fill: return "wrench.fill"
            case .hammer: return "hammer"
            case .hammer_fill: return "hammer.fill"
            case .hammer_circle: return "hammer.circle"
            case .hammer_circle_fill: return "hammer.circle.fill"
            case .screwdriver: return "screwdriver"
            case .screwdriver_fill: return "screwdriver.fill"
            case .eyedropper: return "eyedropper"
            case .eyedropper_halffull: return "eyedropper.halffull"
            case .eyedropper_full: return "eyedropper.full"
            case .wrench_and_screwdriver: return "wrench.and.screwdriver"
            case .wrench_and_screwdriver_fill: return "wrench.and.screwdriver.fill"
            case .applescript: return "applescript"
            case .applescript_fill: return "applescript.fill"
            case .scroll: return "scroll"
            case .scroll_fill: return "scroll.fill"
            case .stethoscope: return "stethoscope"
            case .stethoscope_circle: return "stethoscope.circle"
            case .stethoscope_circle_fill: return "stethoscope.circle.fill"
            case .printer: return "printer"
            case .printer_fill: return "printer.fill"
            case .printer_filled_and_paper: return "printer.filled.and.paper"
            case .printer_dotmatrix: return "printer.dotmatrix"
            case .printer_dotmatrix_fill: return "printer.dotmatrix.fill"
            case .printer_dotmatrix_filled_and_paper: return "printer.dotmatrix.filled.and.paper"
            case .scanner: return "scanner"
            case .scanner_fill: return "scanner.fill"
            case .faxmachine: return "faxmachine"
            case .briefcase: return "briefcase"
            case .briefcase_fill: return "briefcase.fill"
            case .briefcase_circle: return "briefcase.circle"
            case .briefcase_circle_fill: return "briefcase.circle.fill"
            case .case: return "case"
            case .case_fill: return "case.fill"
            case .latch_2_case: return "latch.2.case"
            case .latch_2_case_fill: return "latch.2.case.fill"
            case .cross_case: return "cross.case"
            case .cross_case_fill: return "cross.case.fill"
            case .suitcase: return "suitcase"
            case .suitcase_fill: return "suitcase.fill"
            case .suitcase_cart: return "suitcase.cart"
            case .suitcase_cart_fill: return "suitcase.cart.fill"
            case .theatermasks: return "theatermasks"
            case .theatermasks_fill: return "theatermasks.fill"
            case .theatermasks_circle: return "theatermasks.circle"
            case .theatermasks_circle_fill: return "theatermasks.circle.fill"
            case .puzzlepiece_extension: return "puzzlepiece.extension"
            case .puzzlepiece_extension_fill: return "puzzlepiece.extension.fill"
            case .puzzlepiece: return "puzzlepiece"
            case .puzzlepiece_fill: return "puzzlepiece.fill"
            case .homekit: return "homekit"
            case .house: return "house"
            case .house_fill: return "house.fill"
            case .house_circle: return "house.circle"
            case .house_circle_fill: return "house.circle.fill"
            case .music_note_house: return "music.note.house"
            case .music_note_house_fill: return "music.note.house.fill"
            case .building_columns: return "building.columns"
            case .building_columns_fill: return "building.columns.fill"
            case .building_columns_circle: return "building.columns.circle"
            case .building_columns_circle_fill: return "building.columns.circle.fill"
            case .signpost_left: return "signpost.left"
            case .signpost_left_fill: return "signpost.left.fill"
            case .signpost_right: return "signpost.right"
            case .signpost_right_fill: return "signpost.right.fill"
            case .square_split_bottomrightquarter: return "square.split.bottomrightquarter"
            case .square_split_bottomrightquarter_fill: return "square.split.bottomrightquarter.fill"
            case .building: return "building"
            case .building_fill: return "building.fill"
            case .building_2: return "building.2"
            case .building_2_fill: return "building.2.fill"
            case .building_2_crop_circle: return "building.2.crop.circle"
            case .building_2_crop_circle_fill: return "building.2.crop.circle.fill"
            case .lock: return "lock"
            case .lock_fill: return "lock.fill"
            case .lock_circle: return "lock.circle"
            case .lock_circle_fill: return "lock.circle.fill"
            case .lock_square: return "lock.square"
            case .lock_square_fill: return "lock.square.fill"
            case .lock_square_stack: return "lock.square.stack"
            case .lock_square_stack_fill: return "lock.square.stack.fill"
            case .lock_rectangle: return "lock.rectangle"
            case .lock_rectangle_fill: return "lock.rectangle.fill"
            case .lock_rectangle_stack: return "lock.rectangle.stack"
            case .lock_rectangle_stack_fill: return "lock.rectangle.stack.fill"
            case .lock_rectangle_on_rectangle: return "lock.rectangle.on.rectangle"
            case .lock_rectangle_on_rectangle_fill: return "lock.rectangle.on.rectangle.fill"
            case .lock_shield: return "lock.shield"
            case .lock_shield_fill: return "lock.shield.fill"
            case .lock_slash: return "lock.slash"
            case .lock_slash_fill: return "lock.slash.fill"
            case .lock_open: return "lock.open"
            case .lock_open_fill: return "lock.open.fill"
            case .lock_rotation: return "lock.rotation"
            case .lock_rotation_open: return "lock.rotation.open"
            case .key: return "key"
            case .key_fill: return "key.fill"
            case .wifi: return "wifi"
            case .wifi_circle: return "wifi.circle"
            case .wifi_circle_fill: return "wifi.circle.fill"
            case .wifi_square: return "wifi.square"
            case .wifi_square_fill: return "wifi.square.fill"
            case .wifi_slash: return "wifi.slash"
            case .wifi_exclamationmark: return "wifi.exclamationmark"
            case .pin: return "pin"
            case .pin_fill: return "pin.fill"
            case .pin_circle: return "pin.circle"
            case .pin_circle_fill: return "pin.circle.fill"
            case .pin_square: return "pin.square"
            case .pin_square_fill: return "pin.square.fill"
            case .pin_slash: return "pin.slash"
            case .pin_slash_fill: return "pin.slash.fill"
            case .mappin: return "mappin"
            case .mappin_circle: return "mappin.circle"
            case .mappin_circle_fill: return "mappin.circle.fill"
            case .mappin_square: return "mappin.square"
            case .mappin_square_fill: return "mappin.square.fill"
            case .mappin_slash: return "mappin.slash"
            case .mappin_slash_circle: return "mappin.slash.circle"
            case .mappin_slash_circle_fill: return "mappin.slash.circle.fill"
            case .mappin_and_ellipse: return "mappin.and.ellipse"
            case .map: return "map"
            case .map_fill: return "map.fill"
            case .map_circle: return "map.circle"
            case .map_circle_fill: return "map.circle.fill"
            case .safari: return "safari"
            case .safari_fill: return "safari.fill"
            case .move_3d: return "move.3d"
            case .scale_3d: return "scale.3d"
            case .rotate_3d: return "rotate.3d"
            case .torus: return "torus"
            case .rotate_left: return "rotate.left"
            case .rotate_left_fill: return "rotate.left.fill"
            case .rotate_right: return "rotate.right"
            case .rotate_right_fill: return "rotate.right.fill"
            case .selection_pin_in_out: return "selection.pin.in.out"
            case .powerplug: return "powerplug"
            case .powerplug_fill: return "powerplug.fill"
            case .timeline_selection: return "timeline.selection"
            case .cpu: return "cpu"
            case .cpu_fill: return "cpu.fill"
            case .memorychip: return "memorychip"
            case .memorychip_fill: return "memorychip.fill"
            case .opticaldisc: return "opticaldisc"
            case .display: return "display"
            case .lock_display: return "lock.display"
            case .lock_open_display: return "lock.open.display"
            case .display_and_arrow_down: return "display.and.arrow.down"
            case .display_trianglebadge_exclamationmark: return "display.trianglebadge.exclamationmark"
            case .display_2: return "display.2"
            case .desktopcomputer: return "desktopcomputer"
            case .lock_desktopcomputer: return "lock.desktopcomputer"
            case .lock_open_desktopcomputer: return "lock.open.desktopcomputer"
            case .desktopcomputer_and_arrow_down: return "desktopcomputer.and.arrow.down"
            case .desktopcomputer_trianglebadge_exclamationmark: return "desktopcomputer.trianglebadge.exclamationmark"
            case .pc: return "pc"
            case .macpro_gen1: return "macpro.gen1"
            case .macpro_gen1_fill: return "macpro.gen1.fill"
            case .macpro_gen2: return "macpro.gen2"
            case .macpro_gen2_fill: return "macpro.gen2.fill"
            case .macpro_gen3: return "macpro.gen3"
            case .macpro_gen3_fill: return "macpro.gen3.fill"
            case .macpro_gen3_server: return "macpro.gen3.server"
            case .server_rack: return "server.rack"
            case .xserve: return "xserve"
            case .laptopcomputer: return "laptopcomputer"
            case .lock_laptopcomputer: return "lock.laptopcomputer"
            case .lock_open_laptopcomputer: return "lock.open.laptopcomputer"
            case .laptopcomputer_and_arrow_down: return "laptopcomputer.and.arrow.down"
            case .laptopcomputer_trianglebadge_exclamationmark: return "laptopcomputer.trianglebadge.exclamationmark"
            case .laptopcomputer_and_iphone: return "laptopcomputer.and.iphone"
            case .ipad_and_iphone: return "ipad.and.iphone"
            case .macmini: return "macmini"
            case .macmini_fill: return "macmini.fill"
            case .airport_express: return "airport.express"
            case .airport_extreme: return "airport.extreme"
            case .airport_extreme_tower: return "airport.extreme.tower"
            case .ipod: return "ipod"
            case .ipodshuffle_gen1: return "ipodshuffle.gen1"
            case .ipodshuffle_gen2: return "ipodshuffle.gen2"
            case .ipodshuffle_gen3: return "ipodshuffle.gen3"
            case .ipodshuffle_gen4: return "ipodshuffle.gen4"
            case .ipodtouch: return "ipodtouch"
            case .ipodtouch_slash: return "ipodtouch.slash"
            case .ipodtouch_landscape: return "ipodtouch.landscape"
            case .flipphone: return "flipphone"
            case .candybarphone: return "candybarphone"
            case .iphone_homebutton: return "iphone.homebutton"
            case .iphone_homebutton_circle: return "iphone.homebutton.circle"
            case .iphone_homebutton_circle_fill: return "iphone.homebutton.circle.fill"
            case .iphone_homebutton_landscape: return "iphone.homebutton.landscape"
            case .iphone_homebutton_radiowaves_left_and_right: return "iphone.homebutton.radiowaves.left.and.right"
            case .iphone_homebutton_radiowaves_left_and_right_circle: return "iphone.homebutton.radiowaves.left.and.right.circle"
            case .iphone_homebutton_radiowaves_left_and_right_circle_fill: return "iphone.homebutton.radiowaves.left.and.right.circle.fill"
            case .iphone_homebutton_slash: return "iphone.homebutton.slash"
            case .iphone_homebutton_slash_circle: return "iphone.homebutton.slash.circle"
            case .iphone_homebutton_slash_circle_fill: return "iphone.homebutton.slash.circle.fill"
            case .iphone_homebutton_badge_play: return "iphone.homebutton.badge.play"
            case .iphone: return "iphone"
            case .iphone_circle: return "iphone.circle"
            case .iphone_circle_fill: return "iphone.circle.fill"
            case .iphone_landscape: return "iphone.landscape"
            case .iphone_radiowaves_left_and_right: return "iphone.radiowaves.left.and.right"
            case .iphone_radiowaves_left_and_right_circle: return "iphone.radiowaves.left.and.right.circle"
            case .iphone_radiowaves_left_and_right_circle_fill: return "iphone.radiowaves.left.and.right.circle.fill"
            case .iphone_slash: return "iphone.slash"
            case .iphone_slash_circle: return "iphone.slash.circle"
            case .iphone_slash_circle_fill: return "iphone.slash.circle.fill"
            case .iphone_badge_play: return "iphone.badge.play"
            case .lock_iphone: return "lock.iphone"
            case .lock_open_iphone: return "lock.open.iphone"
            case .iphone_and_arrow_forward: return "iphone.and.arrow.forward"
            case .arrow_turn_up_forward_iphone: return "arrow.turn.up.forward.iphone"
            case .arrow_turn_up_forward_iphone_fill: return "arrow.turn.up.forward.iphone.fill"
            case .iphone_rear_camera: return "iphone.rear.camera"
            case .apps_iphone: return "apps.iphone"
            case .apps_iphone_badge_plus: return "apps.iphone.badge.plus"
            case .apps_iphone_landscape: return "apps.iphone.landscape"
            case .platter_filled_top_iphone: return "platter.filled.top.iphone"
            case .platter_filled_bottom_iphone: return "platter.filled.bottom.iphone"
            case .platter_filled_top_and_arrow_up_iphone: return "platter.filled.top.and.arrow.up.iphone"
            case .platter_filled_bottom_and_arrow_down_iphone: return "platter.filled.bottom.and.arrow.down.iphone"
            case .platter_2_filled_iphone: return "platter.2.filled.iphone"
            case .platter_2_filled_iphone_landscape: return "platter.2.filled.iphone.landscape"
            case .iphone_smartbatterycase_gen2: return "iphone.smartbatterycase.gen2"
            case .iphone_smartbatterycase_gen1: return "iphone.smartbatterycase.gen1"
            case .ipad_homebutton: return "ipad.homebutton"
            case .ipad_homebutton_badge_play: return "ipad.homebutton.badge.play"
            case .ipad_homebutton_landscape: return "ipad.homebutton.landscape"
            case .ipad_homebutton_landscape_badge_play: return "ipad.homebutton.landscape.badge.play"
            case .ipad: return "ipad"
            case .ipad_badge_play: return "ipad.badge.play"
            case .lock_ipad: return "lock.ipad"
            case .lock_open_ipad: return "lock.open.ipad"
            case .ipad_and_arrow_forward: return "ipad.and.arrow.forward"
            case .ipad_landscape: return "ipad.landscape"
            case .ipad_landscape_badge_play: return "ipad.landscape.badge.play"
            case .ipad_rear_camera: return "ipad.rear.camera"
            case .apps_ipad: return "apps.ipad"
            case .apps_ipad_landscape: return "apps.ipad.landscape"
            case .platter_2_filled_ipad: return "platter.2.filled.ipad"
            case .platter_2_filled_ipad_landscape: return "platter.2.filled.ipad.landscape"
            case .applepencil: return "applepencil"
            case .magicmouse: return "magicmouse"
            case .magicmouse_fill: return "magicmouse.fill"
            case .computermouse: return "computermouse"
            case .computermouse_fill: return "computermouse.fill"
            case .applewatch: return "applewatch"
            case .applewatch_watchface: return "applewatch.watchface"
            case .exclamationmark_applewatch: return "exclamationmark.applewatch"
            case .lock_applewatch: return "lock.applewatch"
            case .lock_open_applewatch: return "lock.open.applewatch"
            case .applewatch_radiowaves_left_and_right: return "applewatch.radiowaves.left.and.right"
            case .applewatch_slash: return "applewatch.slash"
            case .applewatch_side_right: return "applewatch.side.right"
            case .watchface_applewatch_case: return "watchface.applewatch.case"
            case .applewatch_case_inset_filled: return "applewatch.case.inset.filled"
            case .platter_filled_top_applewatch_case: return "platter.filled.top.applewatch.case"
            case .platter_filled_bottom_applewatch_case: return "platter.filled.bottom.applewatch.case"
            case .platter_top_applewatch_case: return "platter.top.applewatch.case"
            case .platter_bottom_applewatch_case: return "platter.bottom.applewatch.case"
            case .digitalcrown_arrow_clockwise: return "digitalcrown.arrow.clockwise"
            case .digitalcrown_arrow_clockwise_fill: return "digitalcrown.arrow.clockwise.fill"
            case .digitalcrown_arrow_counterclockwise: return "digitalcrown.arrow.counterclockwise"
            case .digitalcrown_arrow_counterclockwise_fill: return "digitalcrown.arrow.counterclockwise.fill"
            case .digitalcrown_press: return "digitalcrown.press"
            case .digitalcrown_press_fill: return "digitalcrown.press.fill"
            case .digitalcrown_horizontal_arrow_clockwise: return "digitalcrown.horizontal.arrow.clockwise"
            case .digitalcrown_horizontal_arrow_clockwise_fill: return "digitalcrown.horizontal.arrow.clockwise.fill"
            case .digitalcrown_horizontal_arrow_counterclockwise: return "digitalcrown.horizontal.arrow.counterclockwise"
            case .digitalcrown_horizontal_arrow_counterclockwise_fill: return "digitalcrown.horizontal.arrow.counterclockwise.fill"
            case .digitalcrown_horizontal_press: return "digitalcrown.horizontal.press"
            case .digitalcrown_horizontal_press_fill: return "digitalcrown.horizontal.press.fill"
            case .airpodsmax: return "airpodsmax"
            case .beats_headphones: return "beats.headphones"
            case .headphones: return "headphones"
            case .headphones_circle: return "headphones.circle"
            case .headphones_circle_fill: return "headphones.circle.fill"
            case .earbuds: return "earbuds"
            case .earbuds_case: return "earbuds.case"
            case .earbuds_case_fill: return "earbuds.case.fill"
            case .earpods: return "earpods"
            case .airpods: return "airpods"
            case .airpod_right: return "airpod.right"
            case .airpod_left: return "airpod.left"
            case .airpods_chargingcase: return "airpods.chargingcase"
            case .airpods_chargingcase_fill: return "airpods.chargingcase.fill"
            case .airpods_chargingcase_wireless: return "airpods.chargingcase.wireless"
            case .airpods_chargingcase_wireless_fill: return "airpods.chargingcase.wireless.fill"
            case .airpodspro: return "airpodspro"
            case .airpodpro_right: return "airpodpro.right"
            case .airpodpro_left: return "airpodpro.left"
            case .airpodspro_chargingcase_wireless: return "airpodspro.chargingcase.wireless"
            case .airpodspro_chargingcase_wireless_fill: return "airpodspro.chargingcase.wireless.fill"
            case .airpods_gen3: return "airpods.gen3"
            case .airpod_gen3_right: return "airpod.gen3.right"
            case .airpod_gen3_left: return "airpod.gen3.left"
            case .airpods_gen3_chargingcase_wireless: return "airpods.gen3.chargingcase.wireless"
            case .airpods_gen3_chargingcase_wireless_fill: return "airpods.gen3.chargingcase.wireless.fill"
            case .beats_earphones: return "beats.earphones"
            case .beats_powerbeatspro: return "beats.powerbeatspro"
            case .beats_powerbeatspro_right: return "beats.powerbeatspro.right"
            case .beats_powerbeatspro_left: return "beats.powerbeatspro.left"
            case .beats_powerbeats: return "beats.powerbeats"
            case .beats_powerbeats3: return "beats.powerbeats3"
            case .beats_studiobuds: return "beats.studiobuds"
            case .beats_studiobud_left: return "beats.studiobud.left"
            case .beats_studiobud_right: return "beats.studiobud.right"
            case .beats_studiobuds_chargingcase: return "beats.studiobuds.chargingcase"
            case .beats_studiobuds_chargingcase_fill: return "beats.studiobuds.chargingcase.fill"
            case .beats_fit_pro: return "beats.fit.pro"
            case .beats_fit_pro_left: return "beats.fit.pro.left"
            case .beats_fit_pro_right: return "beats.fit.pro.right"
            case .beats_fit_pro_chargingcase: return "beats.fit.pro.chargingcase"
            case .beats_fit_pro_chargingcase_fill: return "beats.fit.pro.chargingcase.fill"
            case .beats_powerbeatspro_chargingcase: return "beats.powerbeatspro.chargingcase"
            case .beats_powerbeatspro_chargingcase_fill: return "beats.powerbeatspro.chargingcase.fill"
            case .homepodmini: return "homepodmini"
            case .homepodmini_fill: return "homepodmini.fill"
            case .homepodmini_2: return "homepodmini.2"
            case .homepodmini_2_fill: return "homepodmini.2.fill"
            case .homepod_and_homepodmini: return "homepod.and.homepodmini"
            case .homepod_and_homepodmini_fill: return "homepod.and.homepodmini.fill"
            case .hifispeaker_and_homepodmini: return "hifispeaker.and.homepodmini"
            case .hifispeaker_and_homepodmini_fill: return "hifispeaker.and.homepodmini.fill"
            case .homepod: return "homepod"
            case .homepod_fill: return "homepod.fill"
            case .homepod_2: return "homepod.2"
            case .homepod_2_fill: return "homepod.2.fill"
            case .hifispeaker_and_homepod: return "hifispeaker.and.homepod"
            case .hifispeaker_and_homepod_fill: return "hifispeaker.and.homepod.fill"
            case .hifispeaker: return "hifispeaker"
            case .hifispeaker_fill: return "hifispeaker.fill"
            case .hifispeaker_2: return "hifispeaker.2"
            case .hifispeaker_2_fill: return "hifispeaker.2.fill"
            case .appletv: return "appletv"
            case .appletv_fill: return "appletv.fill"
            case .homepod_and_appletv: return "homepod.and.appletv"
            case .homepod_and_appletv_fill: return "homepod.and.appletv.fill"
            case .homepodmini_and_appletv: return "homepodmini.and.appletv"
            case .homepodmini_and_appletv_fill: return "homepodmini.and.appletv.fill"
            case .hifispeaker_and_appletv: return "hifispeaker.and.appletv"
            case .hifispeaker_and_appletv_fill: return "hifispeaker.and.appletv.fill"
            case .appletvremote_gen1: return "appletvremote.gen1"
            case .appletvremote_gen1_fill: return "appletvremote.gen1.fill"
            case .appletvremote_gen2: return "appletvremote.gen2"
            case .appletvremote_gen2_fill: return "appletvremote.gen2.fill"
            case .appletvremote_gen3: return "appletvremote.gen3"
            case .appletvremote_gen3_fill: return "appletvremote.gen3.fill"
            case .appletvremote_gen4: return "appletvremote.gen4"
            case .appletvremote_gen4_fill: return "appletvremote.gen4.fill"
            case .magsafe_batterypack: return "magsafe.batterypack"
            case .magsafe_batterypack_fill: return "magsafe.batterypack.fill"
            case .mediastick: return "mediastick"
            case .cable_connector: return "cable.connector"
            case .cable_connector_horizontal: return "cable.connector.horizontal"
            case .radio: return "radio"
            case .radio_fill: return "radio.fill"
            case .tv: return "tv"
            case .tv_fill: return "tv.fill"
            case .tv_inset_filled: return "tv.inset.filled"
            case .tv_circle: return "tv.circle"
            case .tv_circle_fill: return "tv.circle.fill"
            case .sparkles_tv: return "sparkles.tv"
            case .sparkles_tv_fill: return "sparkles.tv.fill"
            case ._4k_tv: return "4k.tv"
            case ._4k_tv_fill: return "4k.tv.fill"
            case .music_note_tv: return "music.note.tv"
            case .music_note_tv_fill: return "music.note.tv.fill"
            case .play_tv: return "play.tv"
            case .play_tv_fill: return "play.tv.fill"
            case .photo_tv: return "photo.tv"
            case .tv_and_hifispeaker_fill: return "tv.and.hifispeaker.fill"
            case .tv_and_mediabox: return "tv.and.mediabox"
            case .airplayvideo: return "airplayvideo"
            case .airplayvideo_circle: return "airplayvideo.circle"
            case .airplayvideo_circle_fill: return "airplayvideo.circle.fill"
            case .airplayvideo_badge_exclamationmark: return "airplayvideo.badge.exclamationmark"
            case .airplayaudio: return "airplayaudio"
            case .airplayaudio_circle: return "airplayaudio.circle"
            case .airplayaudio_circle_fill: return "airplayaudio.circle.fill"
            case .airplayaudio_badge_exclamationmark: return "airplayaudio.badge.exclamationmark"
            case .dot_radiowaves_left_and_right: return "dot.radiowaves.left.and.right"
            case .dot_radiowaves_right: return "dot.radiowaves.right"
            case .dot_radiowaves_forward: return "dot.radiowaves.forward"
            case .wave_3_left: return "wave.3.left"
            case .wave_3_left_circle: return "wave.3.left.circle"
            case .wave_3_left_circle_fill: return "wave.3.left.circle.fill"
            case .wave_3_backward: return "wave.3.backward"
            case .wave_3_backward_circle: return "wave.3.backward.circle"
            case .wave_3_backward_circle_fill: return "wave.3.backward.circle.fill"
            case .wave_3_right: return "wave.3.right"
            case .wave_3_right_circle: return "wave.3.right.circle"
            case .wave_3_right_circle_fill: return "wave.3.right.circle.fill"
            case .wave_3_forward: return "wave.3.forward"
            case .wave_3_forward_circle: return "wave.3.forward.circle"
            case .wave_3_forward_circle_fill: return "wave.3.forward.circle.fill"
            case .dot_radiowaves_up_forward: return "dot.radiowaves.up.forward"
            case .antenna_radiowaves_left_and_right: return "antenna.radiowaves.left.and.right"
            case .antenna_radiowaves_left_and_right_slash: return "antenna.radiowaves.left.and.right.slash"
            case .antenna_radiowaves_left_and_right_circle: return "antenna.radiowaves.left.and.right.circle"
            case .antenna_radiowaves_left_and_right_circle_fill: return "antenna.radiowaves.left.and.right.circle.fill"
            case .pip: return "pip"
            case .pip_fill: return "pip.fill"
            case .pip_exit: return "pip.exit"
            case .pip_enter: return "pip.enter"
            case .pip_swap: return "pip.swap"
            case .pip_remove: return "pip.remove"
            case .rectangle_arrowtriangle_2_outward: return "rectangle.arrowtriangle.2.outward"
            case .rectangle_arrowtriangle_2_inward: return "rectangle.arrowtriangle.2.inward"
            case .rectangle_portrait_arrowtriangle_2_outward: return "rectangle.portrait.arrowtriangle.2.outward"
            case .rectangle_portrait_arrowtriangle_2_inward: return "rectangle.portrait.arrowtriangle.2.inward"
            case .rectangle_2_swap: return "rectangle.2.swap"
            case .guitars: return "guitars"
            case .guitars_fill: return "guitars.fill"
            case .airplane_circle: return "airplane.circle"
            case .airplane_circle_fill: return "airplane.circle.fill"
            case .airplane_arrival: return "airplane.arrival"
            case .airplane_departure: return "airplane.departure"
            case .car: return "car"
            case .car_fill: return "car.fill"
            case .car_circle: return "car.circle"
            case .car_circle_fill: return "car.circle.fill"
            case .bolt_car: return "bolt.car"
            case .bolt_car_fill: return "bolt.car.fill"
            case .bolt_car_circle: return "bolt.car.circle"
            case .bolt_car_circle_fill: return "bolt.car.circle.fill"
            case .car_2: return "car.2"
            case .car_2_fill: return "car.2.fill"
            case .bus: return "bus"
            case .bus_fill: return "bus.fill"
            case .bus_doubledecker: return "bus.doubledecker"
            case .bus_doubledecker_fill: return "bus.doubledecker.fill"
            case .tram: return "tram"
            case .tram_fill: return "tram.fill"
            case .tram_circle: return "tram.circle"
            case .tram_circle_fill: return "tram.circle.fill"
            case .tram_fill_tunnel: return "tram.fill.tunnel"
            case .cablecar: return "cablecar"
            case .cablecar_fill: return "cablecar.fill"
            case .ferry: return "ferry"
            case .ferry_fill: return "ferry.fill"
            case .car_ferry: return "car.ferry"
            case .car_ferry_fill: return "car.ferry.fill"
            case .train_side_front_car: return "train.side.front.car"
            case .train_side_middle_car: return "train.side.middle.car"
            case .train_side_rear_car: return "train.side.rear.car"
            case .bicycle: return "bicycle"
            case .bicycle_circle: return "bicycle.circle"
            case .bicycle_circle_fill: return "bicycle.circle.fill"
            case .scooter: return "scooter"
            case .parkingsign: return "parkingsign"
            case .parkingsign_circle: return "parkingsign.circle"
            case .parkingsign_circle_fill: return "parkingsign.circle.fill"
            case .fuelpump: return "fuelpump"
            case .fuelpump_fill: return "fuelpump.fill"
            case .fuelpump_circle: return "fuelpump.circle"
            case .fuelpump_circle_fill: return "fuelpump.circle.fill"
            case .fanblades: return "fanblades"
            case .fanblades_fill: return "fanblades.fill"
            case .bed_double: return "bed.double"
            case .bed_double_fill: return "bed.double.fill"
            case .bed_double_circle: return "bed.double.circle"
            case .bed_double_circle_fill: return "bed.double.circle.fill"
            case .lungs: return "lungs"
            case .lungs_fill: return "lungs.fill"
            case .allergens: return "allergens"
            case .pills: return "pills"
            case .pills_fill: return "pills.fill"
            case .pills_circle: return "pills.circle"
            case .pills_circle_fill: return "pills.circle.fill"
            case .testtube_2: return "testtube.2"
            case .ivfluid_bag: return "ivfluid.bag"
            case .ivfluid_bag_fill: return "ivfluid.bag.fill"
            case .cross_vial: return "cross.vial"
            case .cross_vial_fill: return "cross.vial.fill"
            case .cross: return "cross"
            case .cross_fill: return "cross.fill"
            case .cross_circle: return "cross.circle"
            case .cross_circle_fill: return "cross.circle.fill"
            case .hare: return "hare"
            case .hare_fill: return "hare.fill"
            case .tortoise: return "tortoise"
            case .tortoise_fill: return "tortoise.fill"
            case .pawprint: return "pawprint"
            case .pawprint_fill: return "pawprint.fill"
            case .pawprint_circle: return "pawprint.circle"
            case .pawprint_circle_fill: return "pawprint.circle.fill"
            case .ant: return "ant"
            case .ant_fill: return "ant.fill"
            case .ant_circle: return "ant.circle"
            case .ant_circle_fill: return "ant.circle.fill"
            case .ladybug: return "ladybug"
            case .ladybug_fill: return "ladybug.fill"
            case .leaf: return "leaf"
            case .leaf_fill: return "leaf.fill"
            case .leaf_circle: return "leaf.circle"
            case .leaf_circle_fill: return "leaf.circle.fill"
            case .leaf_arrow_triangle_circlepath: return "leaf.arrow.triangle.circlepath"
            case .film: return "film"
            case .film_fill: return "film.fill"
            case .film_circle: return "film.circle"
            case .film_circle_fill: return "film.circle.fill"
            case .sportscourt: return "sportscourt"
            case .sportscourt_fill: return "sportscourt.fill"
            case .face_smiling: return "face.smiling"
            case .face_smiling_fill: return "face.smiling.fill"
            case .face_dashed: return "face.dashed"
            case .face_dashed_fill: return "face.dashed.fill"
            case .crown: return "crown"
            case .crown_fill: return "crown.fill"
            case .comb: return "comb"
            case .comb_fill: return "comb.fill"
            case .qrcode: return "qrcode"
            case .barcode: return "barcode"
            case .viewfinder: return "viewfinder"
            case .viewfinder_circle: return "viewfinder.circle"
            case .viewfinder_circle_fill: return "viewfinder.circle.fill"
            case .barcode_viewfinder: return "barcode.viewfinder"
            case .qrcode_viewfinder: return "qrcode.viewfinder"
            case .plus_viewfinder: return "plus.viewfinder"
            case .camera_viewfinder: return "camera.viewfinder"
            case .faceid: return "faceid"
            case .doc_viewfinder: return "doc.viewfinder"
            case .doc_viewfinder_fill: return "doc.viewfinder.fill"
            case .location_viewfinder: return "location.viewfinder"
            case .location_fill_viewfinder: return "location.fill.viewfinder"
            case .person_fill_viewfinder: return "person.fill.viewfinder"
            case .text_viewfinder: return "text.viewfinder"
            case .dot_viewfinder: return "dot.viewfinder"
            case .dot_circle_viewfinder: return "dot.circle.viewfinder"
            case .photo: return "photo"
            case .photo_fill: return "photo.fill"
            case .photo_circle: return "photo.circle"
            case .photo_circle_fill: return "photo.circle.fill"
            case .text_below_photo: return "text.below.photo"
            case .text_below_photo_fill: return "text.below.photo.fill"
            case .checkerboard_rectangle: return "checkerboard.rectangle"
            case .camera_metering_center_weighted_average: return "camera.metering.center.weighted.average"
            case .camera_metering_center_weighted: return "camera.metering.center.weighted"
            case .camera_metering_matrix: return "camera.metering.matrix"
            case .camera_metering_multispot: return "camera.metering.multispot"
            case .camera_metering_none: return "camera.metering.none"
            case .camera_metering_partial: return "camera.metering.partial"
            case .camera_metering_spot: return "camera.metering.spot"
            case .camera_metering_unknown: return "camera.metering.unknown"
            case .camera_aperture: return "camera.aperture"
            case .rectangle_dashed: return "rectangle.dashed"
            case .rectangle_dashed_badge_record: return "rectangle.dashed.badge.record"
            case .rectangle_badge_plus: return "rectangle.badge.plus"
            case .rectangle_fill_badge_plus: return "rectangle.fill.badge.plus"
            case .rectangle_badge_minus: return "rectangle.badge.minus"
            case .rectangle_fill_badge_minus: return "rectangle.fill.badge.minus"
            case .rectangle_badge_checkmark: return "rectangle.badge.checkmark"
            case .rectangle_fill_badge_checkmark: return "rectangle.fill.badge.checkmark"
            case .rectangle_badge_xmark: return "rectangle.badge.xmark"
            case .rectangle_fill_badge_xmark: return "rectangle.fill.badge.xmark"
            case .rectangle_badge_person_crop: return "rectangle.badge.person.crop"
            case .rectangle_fill_badge_person_crop: return "rectangle.fill.badge.person.crop"
            case .photo_on_rectangle: return "photo.on.rectangle"
            case .photo_fill_on_rectangle_fill: return "photo.fill.on.rectangle.fill"
            case .rectangle_on_rectangle_angled: return "rectangle.on.rectangle.angled"
            case .rectangle_fill_on_rectangle_angled_fill: return "rectangle.fill.on.rectangle.angled.fill"
            case .photo_on_rectangle_angled: return "photo.on.rectangle.angled"
            case .rectangle_stack: return "rectangle.stack"
            case .rectangle_stack_fill: return "rectangle.stack.fill"
            case .rectangle_stack_badge_plus: return "rectangle.stack.badge.plus"
            case .rectangle_stack_fill_badge_plus: return "rectangle.stack.fill.badge.plus"
            case .rectangle_stack_badge_minus: return "rectangle.stack.badge.minus"
            case .rectangle_stack_fill_badge_minus: return "rectangle.stack.fill.badge.minus"
            case .rectangle_stack_badge_person_crop: return "rectangle.stack.badge.person.crop"
            case .rectangle_stack_badge_person_crop_fill: return "rectangle.stack.badge.person.crop.fill"
            case .rectangle_stack_badge_play: return "rectangle.stack.badge.play"
            case .rectangle_stack_badge_play_fill: return "rectangle.stack.badge.play.fill"
            case .sparkles_rectangle_stack: return "sparkles.rectangle.stack"
            case .sparkles_rectangle_stack_fill: return "sparkles.rectangle.stack.fill"
            case .sidebar_left: return "sidebar.left"
            case .sidebar_right: return "sidebar.right"
            case .sidebar_leading: return "sidebar.leading"
            case .sidebar_trailing: return "sidebar.trailing"
            case .sidebar_squares_left: return "sidebar.squares.left"
            case .sidebar_squares_right: return "sidebar.squares.right"
            case .sidebar_squares_leading: return "sidebar.squares.leading"
            case .sidebar_squares_trailing: return "sidebar.squares.trailing"
            case .macwindow: return "macwindow"
            case .macwindow_badge_plus: return "macwindow.badge.plus"
            case .slider_horizontal_2_rectangle_and_arrow_triangle_2_circlepath: return "slider.horizontal.2.rectangle.and.arrow.triangle.2.circlepath"
            case .dock_rectangle: return "dock.rectangle"
            case .dock_arrow_up_rectangle: return "dock.arrow.up.rectangle"
            case .dock_arrow_down_rectangle: return "dock.arrow.down.rectangle"
            case .menubar_rectangle: return "menubar.rectangle"
            case .menubar_dock_rectangle: return "menubar.dock.rectangle"
            case .menubar_dock_rectangle_badge_record: return "menubar.dock.rectangle.badge.record"
            case .menubar_arrow_up_rectangle: return "menubar.arrow.up.rectangle"
            case .menubar_arrow_down_rectangle: return "menubar.arrow.down.rectangle"
            case .macwindow_on_rectangle: return "macwindow.on.rectangle"
            case .text_and_command_macwindow: return "text.and.command.macwindow"
            case .keyboard_macwindow: return "keyboard.macwindow"
            case .uiwindow_split_2x1: return "uiwindow.split.2x1"
            case .mosaic: return "mosaic"
            case .mosaic_fill: return "mosaic.fill"
            case .squares_below_rectangle: return "squares.below.rectangle"
            case .rectangle_split_3x3_fill: return "rectangle.split.3x3.fill"
            case .square_on_square_squareshape_controlhandles: return "square.on.square.squareshape.controlhandles"
            case .squareshape_controlhandles_on_squareshape_controlhandles: return "squareshape.controlhandles.on.squareshape.controlhandles"
            case .pano: return "pano"
            case .pano_fill: return "pano.fill"
            case .circle_grid_2x1: return "circle.grid.2x1"
            case .circle_grid_2x1_fill: return "circle.grid.2x1.fill"
            case .circle_grid_2x1_left_filled: return "circle.grid.2x1.left.filled"
            case .circle_grid_2x1_right_filled: return "circle.grid.2x1.right.filled"
            case .square_and_line_vertical_and_square: return "square.and.line.vertical.and.square"
            case .square_fill_and_line_vertical_and_square_fill: return "square.fill.and.line.vertical.and.square.fill"
            case .square_filled_and_line_vertical_and_square: return "square.filled.and.line.vertical.and.square"
            case .square_and_line_vertical_and_square_filled: return "square.and.line.vertical.and.square.filled"
            case .flowchart: return "flowchart"
            case .flowchart_fill: return "flowchart.fill"
            case .rectangle_connected_to_line_below: return "rectangle.connected.to.line.below"
            case .align_horizontal_left: return "align.horizontal.left"
            case .align_horizontal_left_fill: return "align.horizontal.left.fill"
            case .align_horizontal_center: return "align.horizontal.center"
            case .align_horizontal_center_fill: return "align.horizontal.center.fill"
            case .align_horizontal_right: return "align.horizontal.right"
            case .align_horizontal_right_fill: return "align.horizontal.right.fill"
            case .align_vertical_top: return "align.vertical.top"
            case .align_vertical_top_fill: return "align.vertical.top.fill"
            case .align_vertical_center: return "align.vertical.center"
            case .align_vertical_center_fill: return "align.vertical.center.fill"
            case .align_vertical_bottom: return "align.vertical.bottom"
            case .align_vertical_bottom_fill: return "align.vertical.bottom.fill"
            case .shield: return "shield"
            case .shield_fill: return "shield.fill"
            case .shield_lefthalf_filled: return "shield.lefthalf.filled"
            case .shield_righthalf_filled: return "shield.righthalf.filled"
            case .shield_slash: return "shield.slash"
            case .shield_slash_fill: return "shield.slash.fill"
            case .shield_lefthalf_filled_slash: return "shield.lefthalf.filled.slash"
            case .checkerboard_shield: return "checkerboard.shield"
            case .switch_2: return "switch.2"
            case .point_topleft_down_curvedto_point_bottomright_up: return "point.topleft.down.curvedto.point.bottomright.up"
            case .point_topleft_down_curvedto_point_bottomright_up_fill: return "point.topleft.down.curvedto.point.bottomright.up.fill"
            case .point_topleft_down_curvedto_point_filled_bottomright_up: return "point.topleft.down.curvedto.point.filled.bottomright.up"
            case .point_filled_topleft_down_curvedto_point_bottomright_up: return "point.filled.topleft.down.curvedto.point.bottomright.up"
            case .app_connected_to_app_below_fill: return "app.connected.to.app.below.fill"
            case .slider_horizontal_3: return "slider.horizontal.3"
            case .slider_horizontal_below_rectangle: return "slider.horizontal.below.rectangle"
            case .slider_horizontal_below_square_filled_and_square: return "slider.horizontal.below.square.filled.and.square"
            case .slider_vertical_3: return "slider.vertical.3"
            case .cube: return "cube"
            case .cube_fill: return "cube.fill"
            case .cube_transparent: return "cube.transparent"
            case .cube_transparent_fill: return "cube.transparent.fill"
            case .shippingbox: return "shippingbox"
            case .shippingbox_fill: return "shippingbox.fill"
            case .shippingbox_circle: return "shippingbox.circle"
            case .shippingbox_circle_fill: return "shippingbox.circle.fill"
            case .arkit: return "arkit"
            case .arkit_badge_xmark: return "arkit.badge.xmark"
            case .cone: return "cone"
            case .cone_fill: return "cone.fill"
            case .pyramid: return "pyramid"
            case .pyramid_fill: return "pyramid.fill"
            case .square_stack_3d_down_right: return "square.stack.3d.down.right"
            case .square_stack_3d_down_right_fill: return "square.stack.3d.down.right.fill"
            case .square_stack_3d_down_forward: return "square.stack.3d.down.forward"
            case .square_stack_3d_down_forward_fill: return "square.stack.3d.down.forward.fill"
            case .square_stack_3d_up: return "square.stack.3d.up"
            case .square_stack_3d_up_fill: return "square.stack.3d.up.fill"
            case .square_stack_3d_up_slash: return "square.stack.3d.up.slash"
            case .square_stack_3d_up_slash_fill: return "square.stack.3d.up.slash.fill"
            case .square_stack_3d_up_badge_a: return "square.stack.3d.up.badge.a"
            case .square_stack_3d_up_badge_a_fill: return "square.stack.3d.up.badge.a.fill"
            case .square_stack_3d_forward_dottedline: return "square.stack.3d.forward.dottedline"
            case .square_stack_3d_forward_dottedline_fill: return "square.stack.3d.forward.dottedline.fill"
            case .livephoto: return "livephoto"
            case .livephoto_slash: return "livephoto.slash"
            case .livephoto_badge_a: return "livephoto.badge.a"
            case .livephoto_play: return "livephoto.play"
            case .scope: return "scope"
            case .helm: return "helm"
            case .clock: return "clock"
            case .clock_fill: return "clock.fill"
            case .clock_circle: return "clock.circle"
            case .clock_circle_fill: return "clock.circle.fill"
            case .clock_badge_checkmark: return "clock.badge.checkmark"
            case .clock_badge_checkmark_fill: return "clock.badge.checkmark.fill"
            case .clock_badge_exclamationmark: return "clock.badge.exclamationmark"
            case .clock_badge_exclamationmark_fill: return "clock.badge.exclamationmark.fill"
            case .deskclock: return "deskclock"
            case .deskclock_fill: return "deskclock.fill"
            case .alarm: return "alarm"
            case .alarm_fill: return "alarm.fill"
            case .stopwatch: return "stopwatch"
            case .stopwatch_fill: return "stopwatch.fill"
            case .chart_xyaxis_line: return "chart.xyaxis.line"
            case .timer: return "timer"
            case .timer_square: return "timer.square"
            case .clock_arrow_circlepath: return "clock.arrow.circlepath"
            case .exclamationmark_arrow_circlepath: return "exclamationmark.arrow.circlepath"
            case .clock_arrow_2_circlepath: return "clock.arrow.2.circlepath"
            case .gamecontroller: return "gamecontroller"
            case .gamecontroller_fill: return "gamecontroller.fill"
            case .l_joystick: return "l.joystick"
            case .l_joystick_fill: return "l.joystick.fill"
            case .r_joystick: return "r.joystick"
            case .r_joystick_fill: return "r.joystick.fill"
            case .l_joystick_press_down: return "l.joystick.press.down"
            case .l_joystick_press_down_fill: return "l.joystick.press.down.fill"
            case .r_joystick_press_down: return "r.joystick.press.down"
            case .r_joystick_press_down_fill: return "r.joystick.press.down.fill"
            case .l_joystick_tilt_left: return "l.joystick.tilt.left"
            case .l_joystick_tilt_left_fill: return "l.joystick.tilt.left.fill"
            case .l_joystick_tilt_right: return "l.joystick.tilt.right"
            case .l_joystick_tilt_right_fill: return "l.joystick.tilt.right.fill"
            case .l_joystick_tilt_up: return "l.joystick.tilt.up"
            case .l_joystick_tilt_up_fill: return "l.joystick.tilt.up.fill"
            case .l_joystick_tilt_down: return "l.joystick.tilt.down"
            case .l_joystick_tilt_down_fill: return "l.joystick.tilt.down.fill"
            case .r_joystick_tilt_left: return "r.joystick.tilt.left"
            case .r_joystick_tilt_left_fill: return "r.joystick.tilt.left.fill"
            case .r_joystick_tilt_right: return "r.joystick.tilt.right"
            case .r_joystick_tilt_right_fill: return "r.joystick.tilt.right.fill"
            case .r_joystick_tilt_up: return "r.joystick.tilt.up"
            case .r_joystick_tilt_up_fill: return "r.joystick.tilt.up.fill"
            case .r_joystick_tilt_down: return "r.joystick.tilt.down"
            case .r_joystick_tilt_down_fill: return "r.joystick.tilt.down.fill"
            case .dpad: return "dpad"
            case .dpad_fill: return "dpad.fill"
            case .dpad_left_filled: return "dpad.left.filled"
            case .dpad_up_filled: return "dpad.up.filled"
            case .dpad_right_filled: return "dpad.right.filled"
            case .dpad_down_filled: return "dpad.down.filled"
            case .circle_circle: return "circle.circle"
            case .circle_circle_fill: return "circle.circle.fill"
            case .square_circle: return "square.circle"
            case .square_circle_fill: return "square.circle.fill"
            case .triangle_circle: return "triangle.circle"
            case .triangle_circle_fill: return "triangle.circle.fill"
            case .rectangle_roundedtop: return "rectangle.roundedtop"
            case .rectangle_roundedtop_fill: return "rectangle.roundedtop.fill"
            case .rectangle_roundedbottom: return "rectangle.roundedbottom"
            case .rectangle_roundedbottom_fill: return "rectangle.roundedbottom.fill"
            case .l_rectangle_roundedbottom: return "l.rectangle.roundedbottom"
            case .l_rectangle_roundedbottom_fill: return "l.rectangle.roundedbottom.fill"
            case .l1_rectangle_roundedbottom: return "l1.rectangle.roundedbottom"
            case .l1_rectangle_roundedbottom_fill: return "l1.rectangle.roundedbottom.fill"
            case .l2_rectangle_roundedtop: return "l2.rectangle.roundedtop"
            case .l2_rectangle_roundedtop_fill: return "l2.rectangle.roundedtop.fill"
            case .r_rectangle_roundedbottom: return "r.rectangle.roundedbottom"
            case .r_rectangle_roundedbottom_fill: return "r.rectangle.roundedbottom.fill"
            case .r1_rectangle_roundedbottom: return "r1.rectangle.roundedbottom"
            case .r1_rectangle_roundedbottom_fill: return "r1.rectangle.roundedbottom.fill"
            case .r2_rectangle_roundedtop: return "r2.rectangle.roundedtop"
            case .r2_rectangle_roundedtop_fill: return "r2.rectangle.roundedtop.fill"
            case .lb_rectangle_roundedbottom: return "lb.rectangle.roundedbottom"
            case .lb_rectangle_roundedbottom_fill: return "lb.rectangle.roundedbottom.fill"
            case .rb_rectangle_roundedbottom: return "rb.rectangle.roundedbottom"
            case .rb_rectangle_roundedbottom_fill: return "rb.rectangle.roundedbottom.fill"
            case .lt_rectangle_roundedtop: return "lt.rectangle.roundedtop"
            case .lt_rectangle_roundedtop_fill: return "lt.rectangle.roundedtop.fill"
            case .rt_rectangle_roundedtop: return "rt.rectangle.roundedtop"
            case .rt_rectangle_roundedtop_fill: return "rt.rectangle.roundedtop.fill"
            case .zl_rectangle_roundedtop: return "zl.rectangle.roundedtop"
            case .zl_rectangle_roundedtop_fill: return "zl.rectangle.roundedtop.fill"
            case .zr_rectangle_roundedtop: return "zr.rectangle.roundedtop"
            case .zr_rectangle_roundedtop_fill: return "zr.rectangle.roundedtop.fill"
            case .logo_playstation: return "logo.playstation"
            case .logo_xbox: return "logo.xbox"
            case .paintpalette: return "paintpalette"
            case .paintpalette_fill: return "paintpalette.fill"
            case .cup_and_saucer: return "cup.and.saucer"
            case .cup_and_saucer_fill: return "cup.and.saucer.fill"
            case .takeoutbag_and_cup_and_straw: return "takeoutbag.and.cup.and.straw"
            case .takeoutbag_and_cup_and_straw_fill: return "takeoutbag.and.cup.and.straw.fill"
            case .fork_knife: return "fork.knife"
            case .fork_knife_circle: return "fork.knife.circle"
            case .fork_knife_circle_fill: return "fork.knife.circle.fill"
            case .figure_walk: return "figure.walk"
            case .figure_walk_circle: return "figure.walk.circle"
            case .figure_walk_circle_fill: return "figure.walk.circle.fill"
            case .figure_walk_diamond: return "figure.walk.diamond"
            case .figure_walk_diamond_fill: return "figure.walk.diamond.fill"
            case .figure_stand: return "figure.stand"
            case .figure_stand_line_dotted_figure_stand: return "figure.stand.line.dotted.figure.stand"
            case .figure_wave: return "figure.wave"
            case .figure_wave_circle: return "figure.wave.circle"
            case .figure_wave_circle_fill: return "figure.wave.circle.fill"
            case .figure_roll: return "figure.roll"
            case .ear: return "ear"
            case .ear_badge_checkmark: return "ear.badge.checkmark"
            case .ear_trianglebadge_exclamationmark: return "ear.trianglebadge.exclamationmark"
            case .ear_and_waveform: return "ear.and.waveform"
            case .ear_fill: return "ear.fill"
            case .hearingdevice_ear: return "hearingdevice.ear"
            case .hand_raised: return "hand.raised"
            case .hand_raised_fill: return "hand.raised.fill"
            case .hand_raised_circle: return "hand.raised.circle"
            case .hand_raised_circle_fill: return "hand.raised.circle.fill"
            case .hand_raised_square: return "hand.raised.square"
            case .hand_raised_square_fill: return "hand.raised.square.fill"
            case .hand_raised_slash: return "hand.raised.slash"
            case .hand_raised_slash_fill: return "hand.raised.slash.fill"
            case .hand_thumbsup: return "hand.thumbsup"
            case .hand_thumbsup_fill: return "hand.thumbsup.fill"
            case .hand_thumbsup_circle: return "hand.thumbsup.circle"
            case .hand_thumbsup_circle_fill: return "hand.thumbsup.circle.fill"
            case .hand_thumbsdown: return "hand.thumbsdown"
            case .hand_thumbsdown_fill: return "hand.thumbsdown.fill"
            case .hand_thumbsdown_circle: return "hand.thumbsdown.circle"
            case .hand_thumbsdown_circle_fill: return "hand.thumbsdown.circle.fill"
            case .hand_point_up_left: return "hand.point.up.left"
            case .hand_point_up_left_fill: return "hand.point.up.left.fill"
            case .hand_draw: return "hand.draw"
            case .hand_draw_fill: return "hand.draw.fill"
            case .hand_tap: return "hand.tap"
            case .hand_tap_fill: return "hand.tap.fill"
            case .rectangle_and_hand_point_up_left: return "rectangle.and.hand.point.up.left"
            case .rectangle_and_hand_point_up_left_fill: return "rectangle.and.hand.point.up.left.fill"
            case .rectangle_filled_and_hand_point_up_left: return "rectangle.filled.and.hand.point.up.left"
            case .rectangle_and_hand_point_up_left_filled: return "rectangle.and.hand.point.up.left.filled"
            case .hand_point_left: return "hand.point.left"
            case .hand_point_left_fill: return "hand.point.left.fill"
            case .hand_point_right: return "hand.point.right"
            case .hand_point_right_fill: return "hand.point.right.fill"
            case .hand_point_up: return "hand.point.up"
            case .hand_point_up_fill: return "hand.point.up.fill"
            case .hand_point_up_braille: return "hand.point.up.braille"
            case .hand_point_up_braille_fill: return "hand.point.up.braille.fill"
            case .hand_point_down: return "hand.point.down"
            case .hand_point_down_fill: return "hand.point.down.fill"
            case .hand_wave: return "hand.wave"
            case .hand_wave_fill: return "hand.wave.fill"
            case .hands_clap: return "hands.clap"
            case .hands_clap_fill: return "hands.clap.fill"
            case .hands_sparkles: return "hands.sparkles"
            case .hands_sparkles_fill: return "hands.sparkles.fill"
            case .rectangle_compress_vertical: return "rectangle.compress.vertical"
            case .rectangle_expand_vertical: return "rectangle.expand.vertical"
            case .rectangle_and_arrow_up_right_and_arrow_down_left: return "rectangle.and.arrow.up.right.and.arrow.down.left"
            case .rectangle_and_arrow_up_right_and_arrow_down_left_slash: return "rectangle.and.arrow.up.right.and.arrow.down.left.slash"
            case .square_2_stack_3d: return "square.2.stack.3d"
            case .square_2_stack_3d_top_filled: return "square.2.stack.3d.top.filled"
            case .square_2_stack_3d_bottom_filled: return "square.2.stack.3d.bottom.filled"
            case .square_3_layers_3d_down_right: return "square.3.layers.3d.down.right"
            case .square_3_layers_3d_down_right_slash: return "square.3.layers.3d.down.right.slash"
            case .square_3_layers_3d_down_left: return "square.3.layers.3d.down.left"
            case .square_3_layers_3d_down_left_slash: return "square.3.layers.3d.down.left.slash"
            case .square_3_layers_3d_down_forward: return "square.3.layers.3d.down.forward"
            case .square_3_layers_3d_down_backward: return "square.3.layers.3d.down.backward"
            case .square_3_stack_3d: return "square.3.stack.3d"
            case .square_3_stack_3d_slash: return "square.3.stack.3d.slash"
            case .square_3_stack_3d_top_filled: return "square.3.stack.3d.top.filled"
            case .square_3_stack_3d_middle_filled: return "square.3.stack.3d.middle.filled"
            case .square_3_stack_3d_bottom_filled: return "square.3.stack.3d.bottom.filled"
            case .cylinder: return "cylinder"
            case .cylinder_fill: return "cylinder.fill"
            case .cylinder_split_1x2: return "cylinder.split.1x2"
            case .cylinder_split_1x2_fill: return "cylinder.split.1x2.fill"
            case .chart_bar: return "chart.bar"
            case .chart_bar_fill: return "chart.bar.fill"
            case .chart_pie: return "chart.pie"
            case .chart_pie_fill: return "chart.pie.fill"
            case .chart_bar_xaxis: return "chart.bar.xaxis"
            case .chart_line_uptrend_xyaxis: return "chart.line.uptrend.xyaxis"
            case .chart_line_uptrend_xyaxis_circle: return "chart.line.uptrend.xyaxis.circle"
            case .chart_line_uptrend_xyaxis_circle_fill: return "chart.line.uptrend.xyaxis.circle.fill"
            case .dot_squareshape_split_2x2: return "dot.squareshape.split.2x2"
            case .squareshape_split_2x2_dotted: return "squareshape.split.2x2.dotted"
            case .squareshape_split_2x2: return "squareshape.split.2x2"
            case .squareshape_split_3x3: return "squareshape.split.3x3"
            case .burst: return "burst"
            case .burst_fill: return "burst.fill"
            case .waveform_path_ecg: return "waveform.path.ecg"
            case .waveform_path_ecg_rectangle: return "waveform.path.ecg.rectangle"
            case .waveform_path_ecg_rectangle_fill: return "waveform.path.ecg.rectangle.fill"
            case .waveform_path: return "waveform.path"
            case .waveform_path_badge_plus: return "waveform.path.badge.plus"
            case .waveform_path_badge_minus: return "waveform.path.badge.minus"
            case .point_3_connected_trianglepath_dotted: return "point.3.connected.trianglepath.dotted"
            case .point_3_filled_connected_trianglepath_dotted: return "point.3.filled.connected.trianglepath.dotted"
            case .waveform: return "waveform"
            case .waveform_circle: return "waveform.circle"
            case .waveform_circle_fill: return "waveform.circle.fill"
            case .waveform_badge_plus: return "waveform.badge.plus"
            case .waveform_badge_minus: return "waveform.badge.minus"
            case .waveform_badge_exclamationmark: return "waveform.badge.exclamationmark"
            case .waveform_and_magnifyingglass: return "waveform.and.magnifyingglass"
            case .waveform_and_mic: return "waveform.and.mic"
            case .staroflife: return "staroflife"
            case .staroflife_fill: return "staroflife.fill"
            case .staroflife_circle: return "staroflife.circle"
            case .staroflife_circle_fill: return "staroflife.circle.fill"
            case .simcard: return "simcard"
            case .simcard_fill: return "simcard.fill"
            case .simcard_2: return "simcard.2"
            case .simcard_2_fill: return "simcard.2.fill"
            case .sdcard: return "sdcard"
            case .sdcard_fill: return "sdcard.fill"
            case .esim: return "esim"
            case .esim_fill: return "esim.fill"
            case .touchid: return "touchid"
            case .bonjour: return "bonjour"
            case .atom: return "atom"
            case .scalemass: return "scalemass"
            case .scalemass_fill: return "scalemass.fill"
            case .gift: return "gift"
            case .gift_fill: return "gift.fill"
            case .gift_circle: return "gift.circle"
            case .gift_circle_fill: return "gift.circle.fill"
            case .plus_app: return "plus.app"
            case .plus_app_fill: return "plus.app.fill"
            case .arrow_down_app: return "arrow.down.app"
            case .arrow_down_app_fill: return "arrow.down.app.fill"
            case .arrow_up_forward_app: return "arrow.up.forward.app"
            case .arrow_up_forward_app_fill: return "arrow.up.forward.app.fill"
            case .xmark_app: return "xmark.app"
            case .xmark_app_fill: return "xmark.app.fill"
            case .questionmark_app: return "questionmark.app"
            case .questionmark_app_fill: return "questionmark.app.fill"
            case .app_badge: return "app.badge"
            case .app_badge_fill: return "app.badge.fill"
            case .app_badge_checkmark: return "app.badge.checkmark"
            case .app_badge_checkmark_fill: return "app.badge.checkmark.fill"
            case .app_dashed: return "app.dashed"
            case .questionmark_app_dashed: return "questionmark.app.dashed"
            case .appclip: return "appclip"
            case .app_gift: return "app.gift"
            case .app_gift_fill: return "app.gift.fill"
            case .studentdesk: return "studentdesk"
            case .hourglass: return "hourglass"
            case .hourglass_circle: return "hourglass.circle"
            case .hourglass_circle_fill: return "hourglass.circle.fill"
            case .hourglass_badge_plus: return "hourglass.badge.plus"
            case .hourglass_bottomhalf_filled: return "hourglass.bottomhalf.filled"
            case .hourglass_tophalf_filled: return "hourglass.tophalf.filled"
            case .banknote: return "banknote"
            case .banknote_fill: return "banknote.fill"
            case .purchased: return "purchased"
            case .purchased_circle: return "purchased.circle"
            case .purchased_circle_fill: return "purchased.circle.fill"
            case .perspective: return "perspective"
            case .circle_and_line_horizontal: return "circle.and.line.horizontal"
            case .circle_and_line_horizontal_fill: return "circle.and.line.horizontal.fill"
            case .trapezoid_and_line_vertical: return "trapezoid.and.line.vertical"
            case .trapezoid_and_line_vertical_fill: return "trapezoid.and.line.vertical.fill"
            case .trapezoid_and_line_horizontal: return "trapezoid.and.line.horizontal"
            case .trapezoid_and_line_horizontal_fill: return "trapezoid.and.line.horizontal.fill"
            case .aspectratio: return "aspectratio"
            case .aspectratio_fill: return "aspectratio.fill"
            case .camera_filters: return "camera.filters"
            case .skew: return "skew"
            case .arrow_left_and_right_righttriangle_left_righttriangle_right: return "arrow.left.and.right.righttriangle.left.righttriangle.right"
            case .arrow_left_and_right_righttriangle_left_righttriangle_right_fill: return "arrow.left.and.right.righttriangle.left.righttriangle.right.fill"
            case .arrow_up_and_down_righttriangle_up_righttriangle_down: return "arrow.up.and.down.righttriangle.up.righttriangle.down"
            case .arrow_up_and_down_righttriangle_up_righttriangle_down_fill: return "arrow.up.and.down.righttriangle.up.righttriangle.down.fill"
            case .arrowtriangle_left_and_line_vertical_and_arrowtriangle_right: return "arrowtriangle.left.and.line.vertical.and.arrowtriangle.right"
            case .arrowtriangle_left_and_line_vertical_and_arrowtriangle_right_fill: return "arrowtriangle.left.and.line.vertical.and.arrowtriangle.right.fill"
            case .arrowtriangle_right_and_line_vertical_and_arrowtriangle_left: return "arrowtriangle.right.and.line.vertical.and.arrowtriangle.left"
            case .arrowtriangle_right_and_line_vertical_and_arrowtriangle_left_fill: return "arrowtriangle.right.and.line.vertical.and.arrowtriangle.left.fill"
            case .grid: return "grid"
            case .grid_circle: return "grid.circle"
            case .grid_circle_fill: return "grid.circle.fill"
            case .burn: return "burn"
            case .lifepreserver: return "lifepreserver"
            case .lifepreserver_fill: return "lifepreserver.fill"
            case .recordingtape: return "recordingtape"
            case .binoculars: return "binoculars"
            case .binoculars_fill: return "binoculars.fill"
            case .battery_100: return "battery.100"
            case .battery_75: return "battery.75"
            case .battery_50: return "battery.50"
            case .battery_25: return "battery.25"
            case .battery_0: return "battery.0"
            case .battery_100_bolt: return "battery.100.bolt"
            case .minus_plus_batteryblock: return "minus.plus.batteryblock"
            case .minus_plus_batteryblock_fill: return "minus.plus.batteryblock.fill"
            case .bolt_batteryblock: return "bolt.batteryblock"
            case .bolt_batteryblock_fill: return "bolt.batteryblock.fill"
            case .lightbulb: return "lightbulb"
            case .lightbulb_fill: return "lightbulb.fill"
            case .lightbulb_circle: return "lightbulb.circle"
            case .lightbulb_circle_fill: return "lightbulb.circle.fill"
            case .lightbulb_slash: return "lightbulb.slash"
            case .lightbulb_slash_fill: return "lightbulb.slash.fill"
            case .fibrechannel: return "fibrechannel"
            case .checklist: return "checklist"
            case .square_fill_text_grid_1x2: return "square.fill.text.grid.1x2"
            case .list_dash: return "list.dash"
            case .list_bullet: return "list.bullet"
            case .list_bullet_circle: return "list.bullet.circle"
            case .list_bullet_circle_fill: return "list.bullet.circle.fill"
            case .list_triangle: return "list.triangle"
            case .list_bullet_indent: return "list.bullet.indent"
            case .list_number: return "list.number"
            case .list_star: return "list.star"
            case .increase_indent: return "increase.indent"
            case .decrease_indent: return "decrease.indent"
            case .decrease_quotelevel: return "decrease.quotelevel"
            case .increase_quotelevel: return "increase.quotelevel"
            case .list_bullet_below_rectangle: return "list.bullet.below.rectangle"
            case .text_badge_plus: return "text.badge.plus"
            case .text_badge_minus: return "text.badge.minus"
            case .text_badge_checkmark: return "text.badge.checkmark"
            case .text_badge_xmark: return "text.badge.xmark"
            case .text_badge_star: return "text.badge.star"
            case .text_insert: return "text.insert"
            case .text_append: return "text.append"
            case .text_quote: return "text.quote"
            case .text_alignleft: return "text.alignleft"
            case .text_aligncenter: return "text.aligncenter"
            case .text_alignright: return "text.alignright"
            case .text_justify: return "text.justify"
            case .text_justify_left: return "text.justify.left"
            case .text_justify_right: return "text.justify.right"
            case .text_justify_leading: return "text.justify.leading"
            case .text_justify_trailing: return "text.justify.trailing"
            case .text_redaction: return "text.redaction"
            case .list_and_film: return "list.and.film"
            case .line_3_horizontal: return "line.3.horizontal"
            case .line_3_horizontal_decrease: return "line.3.horizontal.decrease"
            case .line_3_horizontal_decrease_circle: return "line.3.horizontal.decrease.circle"
            case .line_3_horizontal_decrease_circle_fill: return "line.3.horizontal.decrease.circle.fill"
            case .line_3_horizontal_circle: return "line.3.horizontal.circle"
            case .line_3_horizontal_circle_fill: return "line.3.horizontal.circle.fill"
            case .line_2_horizontal_decrease_circle: return "line.2.horizontal.decrease.circle"
            case .line_2_horizontal_decrease_circle_fill: return "line.2.horizontal.decrease.circle.fill"
            case .character: return "character"
            case .textformat_size_smaller: return "textformat.size.smaller"
            case .textformat_size_larger: return "textformat.size.larger"
            case .textformat_size: return "textformat.size"
            case .textformat: return "textformat"
            case .textformat_alt: return "textformat.alt"
            case .textformat_superscript: return "textformat.superscript"
            case .textformat_subscript: return "textformat.subscript"
            case .abc: return "abc"
            case .textformat_abc: return "textformat.abc"
            case .textformat_abc_dottedunderline: return "textformat.abc.dottedunderline"
            case .bold: return "bold"
            case .italic: return "italic"
            case .underline: return "underline"
            case .strikethrough: return "strikethrough"
            case .shadow: return "shadow"
            case .bold_italic_underline: return "bold.italic.underline"
            case .bold_underline: return "bold.underline"
            case .view_2d: return "view.2d"
            case .view_3d: return "view.3d"
            case .character_cursor_ibeam: return "character.cursor.ibeam"
            case .fx: return "fx"
            case .f_cursive: return "f.cursive"
            case .f_cursive_circle: return "f.cursive.circle"
            case .f_cursive_circle_fill: return "f.cursive.circle.fill"
            case .k: return "k"
            case .sum: return "sum"
            case .percent: return "percent"
            case .function: return "function"
            case .fn: return "fn"
            case .textformat_123: return "textformat.123"
            case ._123_rectangle: return "123.rectangle"
            case ._123_rectangle_fill: return "123.rectangle.fill"
            case .character_textbox: return "character.textbox"
            case .a_magnify: return "a.magnify"
            case .info: return "info"
            case .info_circle: return "info.circle"
            case .info_circle_fill: return "info.circle.fill"
            case .at: return "at"
            case .at_circle: return "at.circle"
            case .at_circle_fill: return "at.circle.fill"
            case .at_badge_plus: return "at.badge.plus"
            case .at_badge_minus: return "at.badge.minus"
            case .questionmark: return "questionmark"
            case .questionmark_circle: return "questionmark.circle"
            case .questionmark_circle_fill: return "questionmark.circle.fill"
            case .questionmark_square: return "questionmark.square"
            case .questionmark_square_fill: return "questionmark.square.fill"
            case .questionmark_diamond: return "questionmark.diamond"
            case .exclamationmark: return "exclamationmark"
            case .exclamationmark_2: return "exclamationmark.2"
            case .exclamationmark_3: return "exclamationmark.3"
            case .exclamationmark_circle: return "exclamationmark.circle"
            case .exclamationmark_circle_fill: return "exclamationmark.circle.fill"
            case .exclamationmark_square: return "exclamationmark.square"
            case .exclamationmark_square_fill: return "exclamationmark.square.fill"
            case .exclamationmark_octagon: return "exclamationmark.octagon"
            case .exclamationmark_octagon_fill: return "exclamationmark.octagon.fill"
            case .exclamationmark_shield: return "exclamationmark.shield"
            case .exclamationmark_shield_fill: return "exclamationmark.shield.fill"
            case .plus: return "plus"
            case .plus_circle_fill: return "plus.circle.fill"
            case .plus_square: return "plus.square"
            case .plus_square_fill: return "plus.square.fill"
            case .plus_rectangle: return "plus.rectangle"
            case .plus_rectangle_fill: return "plus.rectangle.fill"
            case .plus_rectangle_portrait: return "plus.rectangle.portrait"
            case .plus_rectangle_portrait_fill: return "plus.rectangle.portrait.fill"
            case .plus_diamond: return "plus.diamond"
            case .plus_diamond_fill: return "plus.diamond.fill"
            case .minus: return "minus"
            case .minus_circle_fill: return "minus.circle.fill"
            case .minus_square: return "minus.square"
            case .minus_square_fill: return "minus.square.fill"
            case .minus_rectangle: return "minus.rectangle"
            case .minus_rectangle_fill: return "minus.rectangle.fill"
            case .minus_rectangle_portrait: return "minus.rectangle.portrait"
            case .minus_rectangle_portrait_fill: return "minus.rectangle.portrait.fill"
            case .minus_diamond: return "minus.diamond"
            case .minus_diamond_fill: return "minus.diamond.fill"
            case .plusminus: return "plusminus"
            case .plusminus_circle: return "plusminus.circle"
            case .plusminus_circle_fill: return "plusminus.circle.fill"
            case .plus_forwardslash_minus: return "plus.forwardslash.minus"
            case .minus_forwardslash_plus: return "minus.forwardslash.plus"
            case .multiply: return "multiply"
            case .multiply_circle_fill: return "multiply.circle.fill"
            case .multiply_square_fill: return "multiply.square.fill"
            case .xmark_rectangle: return "xmark.rectangle"
            case .xmark_rectangle_fill: return "xmark.rectangle.fill"
            case .xmark_rectangle_portrait: return "xmark.rectangle.portrait"
            case .xmark_rectangle_portrait_fill: return "xmark.rectangle.portrait.fill"
            case .xmark_diamond: return "xmark.diamond"
            case .xmark_diamond_fill: return "xmark.diamond.fill"
            case .xmark_shield: return "xmark.shield"
            case .xmark_shield_fill: return "xmark.shield.fill"
            case .xmark_octagon: return "xmark.octagon"
            case .xmark_octagon_fill: return "xmark.octagon.fill"
            case .divide: return "divide"
            case .divide_circle: return "divide.circle"
            case .divide_circle_fill: return "divide.circle.fill"
            case .divide_square: return "divide.square"
            case .divide_square_fill: return "divide.square.fill"
            case .equal: return "equal"
            case .equal_circle_fill: return "equal.circle.fill"
            case .equal_square: return "equal.square"
            case .equal_square_fill: return "equal.square.fill"
            case .lessthan: return "lessthan"
            case .lessthan_circle: return "lessthan.circle"
            case .lessthan_circle_fill: return "lessthan.circle.fill"
            case .lessthan_square: return "lessthan.square"
            case .lessthan_square_fill: return "lessthan.square.fill"
            case .greaterthan: return "greaterthan"
            case .greaterthan_circle: return "greaterthan.circle"
            case .greaterthan_circle_fill: return "greaterthan.circle.fill"
            case .greaterthan_square: return "greaterthan.square"
            case .greaterthan_square_fill: return "greaterthan.square.fill"
            case .chevron_left_forwardslash_chevron_right: return "chevron.left.forwardslash.chevron.right"
            case .parentheses: return "parentheses"
            case .curlybraces: return "curlybraces"
            case .curlybraces_square: return "curlybraces.square"
            case .curlybraces_square_fill: return "curlybraces.square.fill"
            case .ellipsis_curlybraces: return "ellipsis.curlybraces"
            case .number: return "number"
            case .number_circle: return "number.circle"
            case .number_circle_fill: return "number.circle.fill"
            case .number_square: return "number.square"
            case .number_square_fill: return "number.square.fill"
            case .x_squareroot: return "x.squareroot"
            case .xmark_circle: return "xmark.circle"
            case .xmark_circle_fill: return "xmark.circle.fill"
            case .xmark_square_fill: return "xmark.square.fill"
            case .checkmark_circle: return "checkmark.circle"
            case .checkmark_circle_fill: return "checkmark.circle.fill"
            case .checkmark_circle_trianglebadge_exclamationmark: return "checkmark.circle.trianglebadge.exclamationmark"
            case .checkmark_square_fill: return "checkmark.square.fill"
            case .checkmark_rectangle: return "checkmark.rectangle"
            case .checkmark_rectangle_fill: return "checkmark.rectangle.fill"
            case .checkmark_rectangle_portrait: return "checkmark.rectangle.portrait"
            case .checkmark_rectangle_portrait_fill: return "checkmark.rectangle.portrait.fill"
            case .checkmark_diamond: return "checkmark.diamond"
            case .checkmark_diamond_fill: return "checkmark.diamond.fill"
            case .checkmark_shield: return "checkmark.shield"
            case .checkmark_shield_fill: return "checkmark.shield.fill"
            case .chevron_left: return "chevron.left"
            case .chevron_left_circle: return "chevron.left.circle"
            case .chevron_left_circle_fill: return "chevron.left.circle.fill"
            case .chevron_left_square: return "chevron.left.square"
            case .chevron_left_square_fill: return "chevron.left.square.fill"
            case .chevron_backward: return "chevron.backward"
            case .chevron_backward_circle: return "chevron.backward.circle"
            case .chevron_backward_circle_fill: return "chevron.backward.circle.fill"
            case .chevron_backward_square: return "chevron.backward.square"
            case .chevron_backward_square_fill: return "chevron.backward.square.fill"
            case .chevron_right: return "chevron.right"
            case .chevron_right_circle: return "chevron.right.circle"
            case .chevron_right_circle_fill: return "chevron.right.circle.fill"
            case .chevron_right_square: return "chevron.right.square"
            case .chevron_right_square_fill: return "chevron.right.square.fill"
            case .chevron_forward: return "chevron.forward"
            case .chevron_forward_circle: return "chevron.forward.circle"
            case .chevron_forward_circle_fill: return "chevron.forward.circle.fill"
            case .chevron_forward_square: return "chevron.forward.square"
            case .chevron_forward_square_fill: return "chevron.forward.square.fill"
            case .chevron_left_2: return "chevron.left.2"
            case .chevron_backward_2: return "chevron.backward.2"
            case .chevron_right_2: return "chevron.right.2"
            case .chevron_forward_2: return "chevron.forward.2"
            case .chevron_up: return "chevron.up"
            case .chevron_up_circle: return "chevron.up.circle"
            case .chevron_up_circle_fill: return "chevron.up.circle.fill"
            case .chevron_up_square: return "chevron.up.square"
            case .chevron_up_square_fill: return "chevron.up.square.fill"
            case .chevron_down: return "chevron.down"
            case .chevron_down_circle: return "chevron.down.circle"
            case .chevron_down_circle_fill: return "chevron.down.circle.fill"
            case .chevron_down_square: return "chevron.down.square"
            case .chevron_down_square_fill: return "chevron.down.square.fill"
            case .chevron_up_chevron_down: return "chevron.up.chevron.down"
            case .chevron_compact_up: return "chevron.compact.up"
            case .chevron_compact_down: return "chevron.compact.down"
            case .chevron_compact_left: return "chevron.compact.left"
            case .chevron_compact_right: return "chevron.compact.right"
            case .arrow_left_circle: return "arrow.left.circle"
            case .arrow_left_circle_fill: return "arrow.left.circle.fill"
            case .arrow_left_square: return "arrow.left.square"
            case .arrow_left_square_fill: return "arrow.left.square.fill"
            case .arrow_backward: return "arrow.backward"
            case .arrow_backward_circle: return "arrow.backward.circle"
            case .arrow_backward_circle_fill: return "arrow.backward.circle.fill"
            case .arrow_backward_square: return "arrow.backward.square"
            case .arrow_backward_square_fill: return "arrow.backward.square.fill"
            case .arrow_right_circle: return "arrow.right.circle"
            case .arrow_right_circle_fill: return "arrow.right.circle.fill"
            case .arrow_right_square: return "arrow.right.square"
            case .arrow_right_square_fill: return "arrow.right.square.fill"
            case .arrow_forward: return "arrow.forward"
            case .arrow_forward_circle: return "arrow.forward.circle"
            case .arrow_forward_circle_fill: return "arrow.forward.circle.fill"
            case .arrow_forward_square: return "arrow.forward.square"
            case .arrow_forward_square_fill: return "arrow.forward.square.fill"
            case .arrow_up_circle: return "arrow.up.circle"
            case .arrow_up_circle_fill: return "arrow.up.circle.fill"
            case .arrow_up_square: return "arrow.up.square"
            case .arrow_up_square_fill: return "arrow.up.square.fill"
            case .arrow_down_circle: return "arrow.down.circle"
            case .arrow_down_circle_fill: return "arrow.down.circle.fill"
            case .arrow_down_square: return "arrow.down.square"
            case .arrow_down_square_fill: return "arrow.down.square.fill"
            case .arrow_up_left_circle: return "arrow.up.left.circle"
            case .arrow_up_left_circle_fill: return "arrow.up.left.circle.fill"
            case .arrow_up_left_square: return "arrow.up.left.square"
            case .arrow_up_left_square_fill: return "arrow.up.left.square.fill"
            case .arrow_up_backward: return "arrow.up.backward"
            case .arrow_up_backward_circle: return "arrow.up.backward.circle"
            case .arrow_up_backward_circle_fill: return "arrow.up.backward.circle.fill"
            case .arrow_up_backward_square: return "arrow.up.backward.square"
            case .arrow_up_backward_square_fill: return "arrow.up.backward.square.fill"
            case .arrow_up_right_circle: return "arrow.up.right.circle"
            case .arrow_up_right_circle_fill: return "arrow.up.right.circle.fill"
            case .arrow_up_right_square: return "arrow.up.right.square"
            case .arrow_up_right_square_fill: return "arrow.up.right.square.fill"
            case .arrow_up_forward: return "arrow.up.forward"
            case .arrow_up_forward_circle: return "arrow.up.forward.circle"
            case .arrow_up_forward_circle_fill: return "arrow.up.forward.circle.fill"
            case .arrow_up_forward_square: return "arrow.up.forward.square"
            case .arrow_up_forward_square_fill: return "arrow.up.forward.square.fill"
            case .arrow_down_left_circle: return "arrow.down.left.circle"
            case .arrow_down_left_circle_fill: return "arrow.down.left.circle.fill"
            case .arrow_down_left_square: return "arrow.down.left.square"
            case .arrow_down_left_square_fill: return "arrow.down.left.square.fill"
            case .arrow_down_backward: return "arrow.down.backward"
            case .arrow_down_backward_circle: return "arrow.down.backward.circle"
            case .arrow_down_backward_circle_fill: return "arrow.down.backward.circle.fill"
            case .arrow_down_backward_square: return "arrow.down.backward.square"
            case .arrow_down_backward_square_fill: return "arrow.down.backward.square.fill"
            case .arrow_down_right_circle: return "arrow.down.right.circle"
            case .arrow_down_right_circle_fill: return "arrow.down.right.circle.fill"
            case .arrow_down_right_square: return "arrow.down.right.square"
            case .arrow_down_right_square_fill: return "arrow.down.right.square.fill"
            case .arrow_down_forward: return "arrow.down.forward"
            case .arrow_down_forward_circle: return "arrow.down.forward.circle"
            case .arrow_down_forward_circle_fill: return "arrow.down.forward.circle.fill"
            case .arrow_down_forward_square: return "arrow.down.forward.square"
            case .arrow_down_forward_square_fill: return "arrow.down.forward.square.fill"
            case .arrow_left_arrow_right: return "arrow.left.arrow.right"
            case .arrow_left_arrow_right_circle: return "arrow.left.arrow.right.circle"
            case .arrow_left_arrow_right_circle_fill: return "arrow.left.arrow.right.circle.fill"
            case .arrow_left_arrow_right_square: return "arrow.left.arrow.right.square"
            case .arrow_left_arrow_right_square_fill: return "arrow.left.arrow.right.square.fill"
            case .arrow_up_arrow_down_circle: return "arrow.up.arrow.down.circle"
            case .arrow_up_arrow_down_circle_fill: return "arrow.up.arrow.down.circle.fill"
            case .arrow_up_arrow_down_square: return "arrow.up.arrow.down.square"
            case .arrow_up_arrow_down_square_fill: return "arrow.up.arrow.down.square.fill"
            case .arrow_uturn_left: return "arrow.uturn.left"
            case .arrow_uturn_left_circle: return "arrow.uturn.left.circle"
            case .arrow_uturn_left_circle_fill: return "arrow.uturn.left.circle.fill"
            case .arrow_uturn_left_circle_badge_ellipsis: return "arrow.uturn.left.circle.badge.ellipsis"
            case .arrow_uturn_left_square: return "arrow.uturn.left.square"
            case .arrow_uturn_left_square_fill: return "arrow.uturn.left.square.fill"
            case .arrow_uturn_backward: return "arrow.uturn.backward"
            case .arrow_uturn_backward_circle: return "arrow.uturn.backward.circle"
            case .arrow_uturn_backward_circle_fill: return "arrow.uturn.backward.circle.fill"
            case .arrow_uturn_backward_circle_badge_ellipsis: return "arrow.uturn.backward.circle.badge.ellipsis"
            case .arrow_uturn_backward_square: return "arrow.uturn.backward.square"
            case .arrow_uturn_backward_square_fill: return "arrow.uturn.backward.square.fill"
            case .arrow_uturn_right: return "arrow.uturn.right"
            case .arrow_uturn_right_circle: return "arrow.uturn.right.circle"
            case .arrow_uturn_right_circle_fill: return "arrow.uturn.right.circle.fill"
            case .arrow_uturn_right_square: return "arrow.uturn.right.square"
            case .arrow_uturn_right_square_fill: return "arrow.uturn.right.square.fill"
            case .arrow_uturn_forward: return "arrow.uturn.forward"
            case .arrow_uturn_forward_circle: return "arrow.uturn.forward.circle"
            case .arrow_uturn_forward_circle_fill: return "arrow.uturn.forward.circle.fill"
            case .arrow_uturn_forward_square: return "arrow.uturn.forward.square"
            case .arrow_uturn_forward_square_fill: return "arrow.uturn.forward.square.fill"
            case .arrow_uturn_up: return "arrow.uturn.up"
            case .arrow_uturn_up_circle: return "arrow.uturn.up.circle"
            case .arrow_uturn_up_circle_fill: return "arrow.uturn.up.circle.fill"
            case .arrow_uturn_up_square: return "arrow.uturn.up.square"
            case .arrow_uturn_up_square_fill: return "arrow.uturn.up.square.fill"
            case .arrow_uturn_down: return "arrow.uturn.down"
            case .arrow_uturn_down_circle: return "arrow.uturn.down.circle"
            case .arrow_uturn_down_circle_fill: return "arrow.uturn.down.circle.fill"
            case .arrow_uturn_down_square: return "arrow.uturn.down.square"
            case .arrow_uturn_down_square_fill: return "arrow.uturn.down.square.fill"
            case .arrow_up_and_down_and_arrow_left_and_right: return "arrow.up.and.down.and.arrow.left.and.right"
            case .arrow_up_left_and_down_right_and_arrow_up_right_and_down_left: return "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left"
            case .arrow_left_and_right_circle: return "arrow.left.and.right.circle"
            case .arrow_left_and_right_circle_fill: return "arrow.left.and.right.circle.fill"
            case .arrow_left_and_right_square: return "arrow.left.and.right.square"
            case .arrow_left_and_right_square_fill: return "arrow.left.and.right.square.fill"
            case .arrow_up_and_down: return "arrow.up.and.down"
            case .arrow_up_and_down_circle: return "arrow.up.and.down.circle"
            case .arrow_up_and_down_circle_fill: return "arrow.up.and.down.circle.fill"
            case .arrow_up_and_down_square: return "arrow.up.and.down.square"
            case .arrow_up_and_down_square_fill: return "arrow.up.and.down.square.fill"
            case .arrow_up_to_line_compact: return "arrow.up.to.line.compact"
            case .arrow_up_to_line_circle: return "arrow.up.to.line.circle"
            case .arrow_up_to_line_circle_fill: return "arrow.up.to.line.circle.fill"
            case .arrow_down_to_line_compact: return "arrow.down.to.line.compact"
            case .arrow_down_to_line_circle: return "arrow.down.to.line.circle"
            case .arrow_down_to_line_circle_fill: return "arrow.down.to.line.circle.fill"
            case .arrow_left_to_line: return "arrow.left.to.line"
            case .arrow_left_to_line_compact: return "arrow.left.to.line.compact"
            case .arrow_left_to_line_circle: return "arrow.left.to.line.circle"
            case .arrow_left_to_line_circle_fill: return "arrow.left.to.line.circle.fill"
            case .arrow_backward_to_line: return "arrow.backward.to.line"
            case .arrow_backward_to_line_circle: return "arrow.backward.to.line.circle"
            case .arrow_backward_to_line_circle_fill: return "arrow.backward.to.line.circle.fill"
            case .arrow_right_to_line: return "arrow.right.to.line"
            case .arrow_right_to_line_compact: return "arrow.right.to.line.compact"
            case .arrow_right_to_line_circle: return "arrow.right.to.line.circle"
            case .arrow_right_to_line_circle_fill: return "arrow.right.to.line.circle.fill"
            case .arrow_forward_to_line: return "arrow.forward.to.line"
            case .arrow_forward_to_line_circle: return "arrow.forward.to.line.circle"
            case .arrow_forward_to_line_circle_fill: return "arrow.forward.to.line.circle.fill"
            case .arrow_clockwise_circle: return "arrow.clockwise.circle"
            case .arrow_clockwise_circle_fill: return "arrow.clockwise.circle.fill"
            case .arrow_counterclockwise_circle: return "arrow.counterclockwise.circle"
            case .arrow_counterclockwise_circle_fill: return "arrow.counterclockwise.circle.fill"
            case .arrow_up_left_and_arrow_down_right: return "arrow.up.left.and.arrow.down.right"
            case .arrow_up_left_and_arrow_down_right_circle: return "arrow.up.left.and.arrow.down.right.circle"
            case .arrow_up_left_and_arrow_down_right_circle_fill: return "arrow.up.left.and.arrow.down.right.circle.fill"
            case .arrow_up_backward_and_arrow_down_forward: return "arrow.up.backward.and.arrow.down.forward"
            case .arrow_up_backward_and_arrow_down_forward_circle: return "arrow.up.backward.and.arrow.down.forward.circle"
            case .arrow_up_backward_and_arrow_down_forward_circle_fill: return "arrow.up.backward.and.arrow.down.forward.circle.fill"
            case .arrow_down_right_and_arrow_up_left: return "arrow.down.right.and.arrow.up.left"
            case .arrow_down_right_and_arrow_up_left_circle: return "arrow.down.right.and.arrow.up.left.circle"
            case .arrow_down_right_and_arrow_up_left_circle_fill: return "arrow.down.right.and.arrow.up.left.circle.fill"
            case .arrow_down_forward_and_arrow_up_backward: return "arrow.down.forward.and.arrow.up.backward"
            case .arrow_down_forward_and_arrow_up_backward_circle: return "arrow.down.forward.and.arrow.up.backward.circle"
            case .arrow_down_forward_and_arrow_up_backward_circle_fill: return "arrow.down.forward.and.arrow.up.backward.circle.fill"
            case .return_left: return "return.left"
            case .return_right: return "return.right"
            case .arrow_2_squarepath: return "arrow.2.squarepath"
            case .arrow_triangle_2_circlepath: return "arrow.triangle.2.circlepath"
            case .arrow_triangle_2_circlepath_circle: return "arrow.triangle.2.circlepath.circle"
            case .arrow_triangle_2_circlepath_circle_fill: return "arrow.triangle.2.circlepath.circle.fill"
            case .exclamationmark_arrow_triangle_2_circlepath: return "exclamationmark.arrow.triangle.2.circlepath"
            case .arrow_triangle_capsulepath: return "arrow.triangle.capsulepath"
            case .arrow_3_trianglepath: return "arrow.3.trianglepath"
            case .arrow_triangle_turn_up_right_diamond: return "arrow.triangle.turn.up.right.diamond"
            case .arrow_triangle_turn_up_right_diamond_fill: return "arrow.triangle.turn.up.right.diamond.fill"
            case .arrow_triangle_turn_up_right_circle: return "arrow.triangle.turn.up.right.circle"
            case .arrow_triangle_turn_up_right_circle_fill: return "arrow.triangle.turn.up.right.circle.fill"
            case .arrow_triangle_merge: return "arrow.triangle.merge"
            case .arrow_triangle_swap: return "arrow.triangle.swap"
            case .arrow_triangle_branch: return "arrow.triangle.branch"
            case .arrow_triangle_pull: return "arrow.triangle.pull"
            case .arrowtriangle_left_circle: return "arrowtriangle.left.circle"
            case .arrowtriangle_left_circle_fill: return "arrowtriangle.left.circle.fill"
            case .arrowtriangle_left_square: return "arrowtriangle.left.square"
            case .arrowtriangle_left_square_fill: return "arrowtriangle.left.square.fill"
            case .arrowtriangle_backward: return "arrowtriangle.backward"
            case .arrowtriangle_backward_fill: return "arrowtriangle.backward.fill"
            case .arrowtriangle_backward_circle: return "arrowtriangle.backward.circle"
            case .arrowtriangle_backward_circle_fill: return "arrowtriangle.backward.circle.fill"
            case .arrowtriangle_backward_square: return "arrowtriangle.backward.square"
            case .arrowtriangle_backward_square_fill: return "arrowtriangle.backward.square.fill"
            case .arrowtriangle_right_circle: return "arrowtriangle.right.circle"
            case .arrowtriangle_right_circle_fill: return "arrowtriangle.right.circle.fill"
            case .arrowtriangle_right_square: return "arrowtriangle.right.square"
            case .arrowtriangle_right_square_fill: return "arrowtriangle.right.square.fill"
            case .arrowtriangle_forward: return "arrowtriangle.forward"
            case .arrowtriangle_forward_fill: return "arrowtriangle.forward.fill"
            case .arrowtriangle_forward_circle: return "arrowtriangle.forward.circle"
            case .arrowtriangle_forward_circle_fill: return "arrowtriangle.forward.circle.fill"
            case .arrowtriangle_forward_square: return "arrowtriangle.forward.square"
            case .arrowtriangle_forward_square_fill: return "arrowtriangle.forward.square.fill"
            case .arrowtriangle_up_circle: return "arrowtriangle.up.circle"
            case .arrowtriangle_up_circle_fill: return "arrowtriangle.up.circle.fill"
            case .arrowtriangle_up_square: return "arrowtriangle.up.square"
            case .arrowtriangle_up_square_fill: return "arrowtriangle.up.square.fill"
            case .arrowtriangle_down_circle: return "arrowtriangle.down.circle"
            case .arrowtriangle_down_circle_fill: return "arrowtriangle.down.circle.fill"
            case .arrowtriangle_down_square: return "arrowtriangle.down.square"
            case .arrowtriangle_down_square_fill: return "arrowtriangle.down.square.fill"
            case .slash_circle_fill: return "slash.circle.fill"
            case .asterisk: return "asterisk"
            case .asterisk_circle_fill: return "asterisk.circle.fill"
            case .dollarsign_circle: return "dollarsign.circle"
            case .dollarsign_circle_fill: return "dollarsign.circle.fill"
            case .dollarsign_square: return "dollarsign.square"
            case .dollarsign_square_fill: return "dollarsign.square.fill"
            case .centsign_circle: return "centsign.circle"
            case .centsign_circle_fill: return "centsign.circle.fill"
            case .centsign_square: return "centsign.square"
            case .centsign_square_fill: return "centsign.square.fill"
            case .yensign_circle: return "yensign.circle"
            case .yensign_circle_fill: return "yensign.circle.fill"
            case .yensign_square: return "yensign.square"
            case .yensign_square_fill: return "yensign.square.fill"
            case .sterlingsign_circle: return "sterlingsign.circle"
            case .sterlingsign_circle_fill: return "sterlingsign.circle.fill"
            case .sterlingsign_square: return "sterlingsign.square"
            case .sterlingsign_square_fill: return "sterlingsign.square.fill"
            case .francsign_circle: return "francsign.circle"
            case .francsign_circle_fill: return "francsign.circle.fill"
            case .francsign_square: return "francsign.square"
            case .francsign_square_fill: return "francsign.square.fill"
            case .florinsign_circle: return "florinsign.circle"
            case .florinsign_circle_fill: return "florinsign.circle.fill"
            case .florinsign_square: return "florinsign.square"
            case .florinsign_square_fill: return "florinsign.square.fill"
            case .turkishlirasign_circle: return "turkishlirasign.circle"
            case .turkishlirasign_circle_fill: return "turkishlirasign.circle.fill"
            case .turkishlirasign_square: return "turkishlirasign.square"
            case .turkishlirasign_square_fill: return "turkishlirasign.square.fill"
            case .rublesign_circle: return "rublesign.circle"
            case .rublesign_circle_fill: return "rublesign.circle.fill"
            case .rublesign_square: return "rublesign.square"
            case .rublesign_square_fill: return "rublesign.square.fill"
            case .eurosign_circle: return "eurosign.circle"
            case .eurosign_circle_fill: return "eurosign.circle.fill"
            case .eurosign_square: return "eurosign.square"
            case .eurosign_square_fill: return "eurosign.square.fill"
            case .dongsign_circle: return "dongsign.circle"
            case .dongsign_circle_fill: return "dongsign.circle.fill"
            case .dongsign_square: return "dongsign.square"
            case .dongsign_square_fill: return "dongsign.square.fill"
            case .indianrupeesign_circle: return "indianrupeesign.circle"
            case .indianrupeesign_circle_fill: return "indianrupeesign.circle.fill"
            case .indianrupeesign_square: return "indianrupeesign.square"
            case .indianrupeesign_square_fill: return "indianrupeesign.square.fill"
            case .tengesign_circle: return "tengesign.circle"
            case .tengesign_circle_fill: return "tengesign.circle.fill"
            case .tengesign_square: return "tengesign.square"
            case .tengesign_square_fill: return "tengesign.square.fill"
            case .pesetasign_circle: return "pesetasign.circle"
            case .pesetasign_circle_fill: return "pesetasign.circle.fill"
            case .pesetasign_square: return "pesetasign.square"
            case .pesetasign_square_fill: return "pesetasign.square.fill"
            case .pesosign_circle: return "pesosign.circle"
            case .pesosign_circle_fill: return "pesosign.circle.fill"
            case .pesosign_square: return "pesosign.square"
            case .pesosign_square_fill: return "pesosign.square.fill"
            case .kipsign_circle: return "kipsign.circle"
            case .kipsign_circle_fill: return "kipsign.circle.fill"
            case .kipsign_square: return "kipsign.square"
            case .kipsign_square_fill: return "kipsign.square.fill"
            case .wonsign_circle: return "wonsign.circle"
            case .wonsign_circle_fill: return "wonsign.circle.fill"
            case .wonsign_square: return "wonsign.square"
            case .wonsign_square_fill: return "wonsign.square.fill"
            case .lirasign_circle: return "lirasign.circle"
            case .lirasign_circle_fill: return "lirasign.circle.fill"
            case .lirasign_square: return "lirasign.square"
            case .lirasign_square_fill: return "lirasign.square.fill"
            case .australsign_circle: return "australsign.circle"
            case .australsign_circle_fill: return "australsign.circle.fill"
            case .australsign_square: return "australsign.square"
            case .australsign_square_fill: return "australsign.square.fill"
            case .hryvniasign_circle: return "hryvniasign.circle"
            case .hryvniasign_circle_fill: return "hryvniasign.circle.fill"
            case .hryvniasign_square: return "hryvniasign.square"
            case .hryvniasign_square_fill: return "hryvniasign.square.fill"
            case .nairasign_circle: return "nairasign.circle"
            case .nairasign_circle_fill: return "nairasign.circle.fill"
            case .nairasign_square: return "nairasign.square"
            case .nairasign_square_fill: return "nairasign.square.fill"
            case .guaranisign_circle: return "guaranisign.circle"
            case .guaranisign_circle_fill: return "guaranisign.circle.fill"
            case .guaranisign_square: return "guaranisign.square"
            case .guaranisign_square_fill: return "guaranisign.square.fill"
            case .coloncurrencysign_circle: return "coloncurrencysign.circle"
            case .coloncurrencysign_circle_fill: return "coloncurrencysign.circle.fill"
            case .coloncurrencysign_square: return "coloncurrencysign.square"
            case .coloncurrencysign_square_fill: return "coloncurrencysign.square.fill"
            case .cedisign_circle: return "cedisign.circle"
            case .cedisign_circle_fill: return "cedisign.circle.fill"
            case .cedisign_square: return "cedisign.square"
            case .cedisign_square_fill: return "cedisign.square.fill"
            case .cruzeirosign_circle: return "cruzeirosign.circle"
            case .cruzeirosign_circle_fill: return "cruzeirosign.circle.fill"
            case .cruzeirosign_square: return "cruzeirosign.square"
            case .cruzeirosign_square_fill: return "cruzeirosign.square.fill"
            case .tugriksign_circle: return "tugriksign.circle"
            case .tugriksign_circle_fill: return "tugriksign.circle.fill"
            case .tugriksign_square: return "tugriksign.square"
            case .tugriksign_square_fill: return "tugriksign.square.fill"
            case .millsign_circle: return "millsign.circle"
            case .millsign_circle_fill: return "millsign.circle.fill"
            case .millsign_square: return "millsign.square"
            case .millsign_square_fill: return "millsign.square.fill"
            case .shekelsign_circle: return "shekelsign.circle"
            case .shekelsign_circle_fill: return "shekelsign.circle.fill"
            case .shekelsign_square: return "shekelsign.square"
            case .shekelsign_square_fill: return "shekelsign.square.fill"
            case .manatsign_circle: return "manatsign.circle"
            case .manatsign_circle_fill: return "manatsign.circle.fill"
            case .manatsign_square: return "manatsign.square"
            case .manatsign_square_fill: return "manatsign.square.fill"
            case .rupeesign_circle: return "rupeesign.circle"
            case .rupeesign_circle_fill: return "rupeesign.circle.fill"
            case .rupeesign_square: return "rupeesign.square"
            case .rupeesign_square_fill: return "rupeesign.square.fill"
            case .bahtsign_circle: return "bahtsign.circle"
            case .bahtsign_circle_fill: return "bahtsign.circle.fill"
            case .bahtsign_square: return "bahtsign.square"
            case .bahtsign_square_fill: return "bahtsign.square.fill"
            case .larisign_circle: return "larisign.circle"
            case .larisign_circle_fill: return "larisign.circle.fill"
            case .larisign_square: return "larisign.square"
            case .larisign_square_fill: return "larisign.square.fill"
            case .bitcoinsign_circle: return "bitcoinsign.circle"
            case .bitcoinsign_circle_fill: return "bitcoinsign.circle.fill"
            case .bitcoinsign_square: return "bitcoinsign.square"
            case .bitcoinsign_square_fill: return "bitcoinsign.square.fill"
            case .brazilianrealsign_circle: return "brazilianrealsign.circle"
            case .brazilianrealsign_circle_fill: return "brazilianrealsign.circle.fill"
            case .brazilianrealsign_square: return "brazilianrealsign.square"
            case .brazilianrealsign_square_fill: return "brazilianrealsign.square.fill"
            case ._0_square: return "0.square"
            case ._0_square_fill: return "0.square.fill"
            case ._1_square: return "1.square"
            case ._1_square_fill: return "1.square.fill"
            case ._2_square: return "2.square"
            case ._2_square_fill: return "2.square.fill"
            case ._3_square: return "3.square"
            case ._3_square_fill: return "3.square.fill"
            case ._4_square: return "4.square"
            case ._4_square_fill: return "4.square.fill"
            case ._4_alt_circle: return "4.alt.circle"
            case ._4_alt_circle_fill: return "4.alt.circle.fill"
            case ._4_alt_square: return "4.alt.square"
            case ._4_alt_square_fill: return "4.alt.square.fill"
            case ._5_square: return "5.square"
            case ._5_square_fill: return "5.square.fill"
            case ._6_square: return "6.square"
            case ._6_square_fill: return "6.square.fill"
            case ._6_alt_circle: return "6.alt.circle"
            case ._6_alt_circle_fill: return "6.alt.circle.fill"
            case ._6_alt_square: return "6.alt.square"
            case ._6_alt_square_fill: return "6.alt.square.fill"
            case ._7_square: return "7.square"
            case ._7_square_fill: return "7.square.fill"
            case ._8_square: return "8.square"
            case ._8_square_fill: return "8.square.fill"
            case ._9_square: return "9.square"
            case ._9_square_fill: return "9.square.fill"
            case ._9_alt_circle: return "9.alt.circle"
            case ._9_alt_circle_fill: return "9.alt.circle.fill"
            case ._9_alt_square: return "9.alt.square"
            case ._9_alt_square_fill: return "9.alt.square.fill"
            case ._00_circle: return "00.circle"
            case ._00_circle_fill: return "00.circle.fill"
            case ._00_square: return "00.square"
            case ._00_square_fill: return "00.square.fill"
            case ._01_circle: return "01.circle"
            case ._01_circle_fill: return "01.circle.fill"
            case ._01_square: return "01.square"
            case ._01_square_fill: return "01.square.fill"
            case ._02_circle: return "02.circle"
            case ._02_circle_fill: return "02.circle.fill"
            case ._02_square: return "02.square"
            case ._02_square_fill: return "02.square.fill"
            case ._03_circle: return "03.circle"
            case ._03_circle_fill: return "03.circle.fill"
            case ._03_square: return "03.square"
            case ._03_square_fill: return "03.square.fill"
            case ._04_circle: return "04.circle"
            case ._04_circle_fill: return "04.circle.fill"
            case ._04_square: return "04.square"
            case ._04_square_fill: return "04.square.fill"
            case ._05_circle: return "05.circle"
            case ._05_circle_fill: return "05.circle.fill"
            case ._05_square: return "05.square"
            case ._05_square_fill: return "05.square.fill"
            case ._06_circle: return "06.circle"
            case ._06_circle_fill: return "06.circle.fill"
            case ._06_square: return "06.square"
            case ._06_square_fill: return "06.square.fill"
            case ._07_circle: return "07.circle"
            case ._07_circle_fill: return "07.circle.fill"
            case ._07_square: return "07.square"
            case ._07_square_fill: return "07.square.fill"
            case ._08_circle: return "08.circle"
            case ._08_circle_fill: return "08.circle.fill"
            case ._08_square: return "08.square"
            case ._08_square_fill: return "08.square.fill"
            case ._09_circle: return "09.circle"
            case ._09_circle_fill: return "09.circle.fill"
            case ._09_square: return "09.square"
            case ._09_square_fill: return "09.square.fill"
            case ._10_square: return "10.square"
            case ._10_square_fill: return "10.square.fill"
            case ._11_square: return "11.square"
            case ._11_square_fill: return "11.square.fill"
            case ._12_square: return "12.square"
            case ._12_square_fill: return "12.square.fill"
            case ._13_square: return "13.square"
            case ._13_square_fill: return "13.square.fill"
            case ._14_square: return "14.square"
            case ._14_square_fill: return "14.square.fill"
            case ._15_square: return "15.square"
            case ._15_square_fill: return "15.square.fill"
            case ._16_square: return "16.square"
            case ._16_square_fill: return "16.square.fill"
            case ._17_square: return "17.square"
            case ._17_square_fill: return "17.square.fill"
            case ._18_square: return "18.square"
            case ._18_square_fill: return "18.square.fill"
            case ._19_square: return "19.square"
            case ._19_square_fill: return "19.square.fill"
            case ._20_square: return "20.square"
            case ._20_square_fill: return "20.square.fill"
            case ._21_circle_fill: return "21.circle.fill"
            case ._21_square: return "21.square"
            case ._21_square_fill: return "21.square.fill"
            case ._22_circle_fill: return "22.circle.fill"
            case ._22_square: return "22.square"
            case ._22_square_fill: return "22.square.fill"
            case ._23_circle_fill: return "23.circle.fill"
            case ._23_square: return "23.square"
            case ._23_square_fill: return "23.square.fill"
            case ._24_circle_fill: return "24.circle.fill"
            case ._24_square: return "24.square"
            case ._24_square_fill: return "24.square.fill"
            case ._25_circle_fill: return "25.circle.fill"
            case ._25_square: return "25.square"
            case ._25_square_fill: return "25.square.fill"
            case ._26_circle_fill: return "26.circle.fill"
            case ._26_square: return "26.square"
            case ._26_square_fill: return "26.square.fill"
            case ._27_circle_fill: return "27.circle.fill"
            case ._27_square: return "27.square"
            case ._27_square_fill: return "27.square.fill"
            case ._28_circle_fill: return "28.circle.fill"
            case ._28_square: return "28.square"
            case ._28_square_fill: return "28.square.fill"
            case ._29_circle_fill: return "29.circle.fill"
            case ._29_square: return "29.square"
            case ._29_square_fill: return "29.square.fill"
            case ._30_circle_fill: return "30.circle.fill"
            case ._30_square: return "30.square"
            case ._30_square_fill: return "30.square.fill"
            case ._31_circle_fill: return "31.circle.fill"
            case ._31_square: return "31.square"
            case ._31_square_fill: return "31.square.fill"
            case ._32_circle_fill: return "32.circle.fill"
            case ._32_square: return "32.square"
            case ._32_square_fill: return "32.square.fill"
            case ._33_circle_fill: return "33.circle.fill"
            case ._33_square: return "33.square"
            case ._33_square_fill: return "33.square.fill"
            case ._34_circle_fill: return "34.circle.fill"
            case ._34_square: return "34.square"
            case ._34_square_fill: return "34.square.fill"
            case ._35_circle_fill: return "35.circle.fill"
            case ._35_square: return "35.square"
            case ._35_square_fill: return "35.square.fill"
            case ._36_circle_fill: return "36.circle.fill"
            case ._36_square: return "36.square"
            case ._36_square_fill: return "36.square.fill"
            case ._37_circle_fill: return "37.circle.fill"
            case ._37_square: return "37.square"
            case ._37_square_fill: return "37.square.fill"
            case ._38_circle_fill: return "38.circle.fill"
            case ._38_square: return "38.square"
            case ._38_square_fill: return "38.square.fill"
            case ._39_circle_fill: return "39.circle.fill"
            case ._39_square: return "39.square"
            case ._39_square_fill: return "39.square.fill"
            case ._40_circle_fill: return "40.circle.fill"
            case ._40_square: return "40.square"
            case ._40_square_fill: return "40.square.fill"
            case ._41_circle_fill: return "41.circle.fill"
            case ._41_square: return "41.square"
            case ._41_square_fill: return "41.square.fill"
            case ._42_circle_fill: return "42.circle.fill"
            case ._42_square: return "42.square"
            case ._42_square_fill: return "42.square.fill"
            case ._43_circle_fill: return "43.circle.fill"
            case ._43_square: return "43.square"
            case ._43_square_fill: return "43.square.fill"
            case ._44_circle_fill: return "44.circle.fill"
            case ._44_square: return "44.square"
            case ._44_square_fill: return "44.square.fill"
            case ._45_circle_fill: return "45.circle.fill"
            case ._45_square: return "45.square"
            case ._45_square_fill: return "45.square.fill"
            case ._46_circle_fill: return "46.circle.fill"
            case ._46_square: return "46.square"
            case ._46_square_fill: return "46.square.fill"
            case ._47_circle_fill: return "47.circle.fill"
            case ._47_square: return "47.square"
            case ._47_square_fill: return "47.square.fill"
            case ._48_circle_fill: return "48.circle.fill"
            case ._48_square: return "48.square"
            case ._48_square_fill: return "48.square.fill"
            case ._49_circle_fill: return "49.circle.fill"
            case ._49_square: return "49.square"
            case ._49_square_fill: return "49.square.fill"
            case ._50_circle_fill: return "50.circle.fill"
            case ._50_square: return "50.square"
            case ._50_square_fill: return "50.square.fill"
            case .applelogo: return "applelogo"
            case .placeholdertext_fill: return "placeholdertext.fill"
            case .z_square_fill: return "z.square.fill"
            case .y_square_fill: return "y.square.fill"
            case .x_square_fill: return "x.square.fill"
            case .w_square_fill: return "w.square.fill"
            case .v_square_fill: return "v.square.fill"
            case .u_square_fill: return "u.square.fill"
            case .t_square_fill: return "t.square.fill"
            case .s_square_fill: return "s.square.fill"
            case .r_square_fill: return "r.square.fill"
            case .q_square_fill: return "q.square.fill"
            case .p_square_fill: return "p.square.fill"
            case .o_square_fill: return "o.square.fill"
            case .n_square_fill: return "n.square.fill"
            case .m_square_fill: return "m.square.fill"
            case .l_square_fill: return "l.square.fill"
            case .k_square_fill: return "k.square.fill"
            case .j_square_fill: return "j.square.fill"
            case .i_square_fill: return "i.square.fill"
            case .h_square_fill: return "h.square.fill"
            case .g_square_fill: return "g.square.fill"
            case .f_square_fill: return "f.square.fill"
            case .d_square_fill: return "d.square.fill"
            case .c_square_fill: return "c.square.fill"
            case .b_square_fill: return "b.square.fill"
            case .a_square_fill: return "a.square.fill"
            case .z_circle_fill: return "z.circle.fill"
            case .y_circle_fill: return "y.circle.fill"
            case .x_circle_fill: return "x.circle.fill"
            case .w_circle_fill: return "w.circle.fill"
            case .v_circle_fill: return "v.circle.fill"
            case .u_circle_fill: return "u.circle.fill"
            case .t_circle_fill: return "t.circle.fill"
            case .s_circle_fill: return "s.circle.fill"
            case .r_circle_fill: return "r.circle.fill"
            case .q_circle_fill: return "q.circle.fill"
            case .p_circle_fill: return "p.circle.fill"
            case .o_circle_fill: return "o.circle.fill"
            case .n_circle_fill: return "n.circle.fill"
            case .m_circle_fill: return "m.circle.fill"
            case .l_circle_fill: return "l.circle.fill"
            case .k_circle_fill: return "k.circle.fill"
            case .j_circle_fill: return "j.circle.fill"
            case .i_circle_fill: return "i.circle.fill"
            case .h_circle_fill: return "h.circle.fill"
            case .g_circle_fill: return "g.circle.fill"
            case .f_circle_fill: return "f.circle.fill"
            case .e_circle_fill: return "e.circle.fill"
            case .d_circle_fill: return "d.circle.fill"
            case .c_circle_fill: return "c.circle.fill"
            case .b_circle_fill: return "b.circle.fill"
            case .a_circle_fill: return "a.circle.fill"
            case .z_square: return "z.square"
            case .y_square: return "y.square"
            case .x_square: return "x.square"
            case .w_square: return "w.square"
            case .v_square: return "v.square"
            case .u_square: return "u.square"
            case .t_square: return "t.square"
            case .s_square: return "s.square"
            case .r_square: return "r.square"
            case .q_square: return "q.square"
            case .p_square: return "p.square"
            case .o_square: return "o.square"
            case .n_square: return "n.square"
            case .m_square: return "m.square"
            case .l_square: return "l.square"
            case .k_square: return "k.square"
            case .j_square: return "j.square"
            case .i_square: return "i.square"
            case .h_square: return "h.square"
            case .g_square: return "g.square"
            case .f_square: return "f.square"
            case .e_square: return "e.square"
            case .d_square: return "d.square"
            case .c_square: return "c.square"
            case .b_square: return "b.square"
            case .a_square: return "a.square"
            case .questionmark_diamond_fill: return "questionmark.diamond.fill"
            case .e_square_fill: return "e.square.fill"
            case .arrow_turn_up_right: return "arrow.turn.up.right"
            case .arrow_turn_up_left: return "arrow.turn.up.left"
            case .arrow_turn_left_down: return "arrow.turn.left.down"
            case .arrow_turn_left_up: return "arrow.turn.left.up"
            case ._50_circle: return "50.circle"
            case ._49_circle: return "49.circle"
            case ._48_circle: return "48.circle"
            case ._47_circle: return "47.circle"
            case ._46_circle: return "46.circle"
            case ._45_circle: return "45.circle"
            case ._44_circle: return "44.circle"
            case ._43_circle: return "43.circle"
            case ._42_circle: return "42.circle"
            case ._41_circle: return "41.circle"
            case ._40_circle: return "40.circle"
            case ._39_circle: return "39.circle"
            case ._38_circle: return "38.circle"
            case ._37_circle: return "37.circle"
            case ._36_circle: return "36.circle"
            case ._35_circle: return "35.circle"
            case ._34_circle: return "34.circle"
            case ._33_circle: return "33.circle"
            case ._32_circle: return "32.circle"
            case ._31_circle: return "31.circle"
            case ._30_circle: return "30.circle"
            case ._29_circle: return "29.circle"
            case ._28_circle: return "28.circle"
            case ._27_circle: return "27.circle"
            case ._26_circle: return "26.circle"
            case ._25_circle: return "25.circle"
            case ._24_circle: return "24.circle"
            case ._23_circle: return "23.circle"
            case ._22_circle: return "22.circle"
            case ._21_circle: return "21.circle"
            case .poweroff: return "poweroff"
            case .hexagon_fill: return "hexagon.fill"
            case .hexagon: return "hexagon"
            case .diamond_bottomhalf_filled: return "diamond.bottomhalf.filled"
            case .diamond_tophalf_filled: return "diamond.tophalf.filled"
            case .diamond_righthalf_filled: return "diamond.righthalf.filled"
            case .diamond_lefthalf_filled: return "diamond.lefthalf.filled"
            case .square_bottomhalf_filled: return "square.bottomhalf.filled"
            case .square_tophalf_filled: return "square.tophalf.filled"
            case .arrow_turn_down_right: return "arrow.turn.down.right"
            case .arrow_turn_down_left: return "arrow.turn.down.left"
            case .arrow_turn_right_down: return "arrow.turn.right.down"
            case .arrow_turn_right_up: return "arrow.turn.right.up"
            case .arrow_down_to_line: return "arrow.down.to.line"
            case .arrow_up_to_line: return "arrow.up.to.line"
            case ._10_circle_fill: return "10.circle.fill"
            case ._9_circle_fill: return "9.circle.fill"
            case ._8_circle_fill: return "8.circle.fill"
            case ._7_circle_fill: return "7.circle.fill"
            case ._6_circle_fill: return "6.circle.fill"
            case ._5_circle_fill: return "5.circle.fill"
            case ._4_circle_fill: return "4.circle.fill"
            case ._3_circle_fill: return "3.circle.fill"
            case ._2_circle_fill: return "2.circle.fill"
            case ._1_circle_fill: return "1.circle.fill"
            case .snowflake: return "snowflake"
            case .xmark: return "xmark"
            case .checkmark: return "checkmark"
            case .airplane: return "airplane"
            case .exclamationmark_triangle: return "exclamationmark.triangle"
            case .die_face_6: return "die.face.6"
            case .die_face_5: return "die.face.5"
            case .die_face_4: return "die.face.4"
            case .die_face_3: return "die.face.3"
            case .die_face_2: return "die.face.2"
            case .die_face_1: return "die.face.1"
            case .suit_club: return "suit.club"
            case .suit_diamond_fill: return "suit.diamond.fill"
            case .suit_heart_fill: return "suit.heart.fill"
            case .suit_spade: return "suit.spade"
            case .suit_club_fill: return "suit.club.fill"
            case .suit_diamond: return "suit.diamond"
            case .suit_heart: return "suit.heart"
            case .suit_spade_fill: return "suit.spade.fill"
            case .moon_fill: return "moon.fill"
            case .peacesign: return "peacesign"
            case .multiply_square: return "multiply.square"
            case .xmark_square: return "xmark.square"
            case .checkmark_square: return "checkmark.square"
            case .star: return "star"
            case .star_fill: return "star.fill"
            case .umbrella_fill: return "umbrella.fill"
            case .triangle_righthalf_filled: return "triangle.righthalf.filled"
            case .triangle_lefthalf_filled: return "triangle.lefthalf.filled"
            case .square_righthalf_filled: return "square.righthalf.filled"
            case .square_lefthalf_filled: return "square.lefthalf.filled"
            case .circle_tophalf_filled: return "circle.tophalf.filled"
            case .circle_bottomhalf_filled: return "circle.bottomhalf.filled"
            case .circle_righthalf_filled: return "circle.righthalf.filled"
            case .circle_lefthalf_filled: return "circle.lefthalf.filled"
            case .circle_fill: return "circle.fill"
            case .circle_inset_filled: return "circle.inset.filled"
            case .arrowtriangle_left: return "arrowtriangle.left"
            case .arrowtriangle_left_fill: return "arrowtriangle.left.fill"
            case .arrowtriangle_down: return "arrowtriangle.down"
            case .arrowtriangle_down_fill: return "arrowtriangle.down.fill"
            case .arrowtriangle_right: return "arrowtriangle.right"
            case .arrowtriangle_right_fill: return "arrowtriangle.right.fill"
            case .arrowtriangle_up: return "arrowtriangle.up"
            case .arrowtriangle_up_fill: return "arrowtriangle.up.fill"
            case .square_fill: return "square.fill"
            case ._0_circle_fill: return "0.circle.fill"
            case ._20_circle_fill: return "20.circle.fill"
            case ._19_circle_fill: return "19.circle.fill"
            case ._18_circle_fill: return "18.circle.fill"
            case ._17_circle_fill: return "17.circle.fill"
            case ._16_circle_fill: return "16.circle.fill"
            case ._15_circle_fill: return "15.circle.fill"
            case ._14_circle_fill: return "14.circle.fill"
            case ._13_circle_fill: return "13.circle.fill"
            case ._12_circle_fill: return "12.circle.fill"
            case ._11_circle_fill: return "11.circle.fill"
            case ._0_circle: return "0.circle"
            case .z_circle: return "z.circle"
            case .y_circle: return "y.circle"
            case .x_circle: return "x.circle"
            case .w_circle: return "w.circle"
            case .v_circle: return "v.circle"
            case .u_circle: return "u.circle"
            case .t_circle: return "t.circle"
            case .s_circle: return "s.circle"
            case .r_circle: return "r.circle"
            case .q_circle: return "q.circle"
            case .p_circle: return "p.circle"
            case .o_circle: return "o.circle"
            case .n_circle: return "n.circle"
            case .m_circle: return "m.circle"
            case .l_circle: return "l.circle"
            case .k_circle: return "k.circle"
            case .j_circle: return "j.circle"
            case .i_circle: return "i.circle"
            case .h_circle: return "h.circle"
            case .g_circle: return "g.circle"
            case .f_circle: return "f.circle"
            case .e_circle: return "e.circle"
            case .d_circle: return "d.circle"
            case .c_circle: return "c.circle"
            case .b_circle: return "b.circle"
            case .a_circle: return "a.circle"
            case ._20_circle: return "20.circle"
            case ._19_circle: return "19.circle"
            case ._18_circle: return "18.circle"
            case ._17_circle: return "17.circle"
            case ._16_circle: return "16.circle"
            case ._15_circle: return "15.circle"
            case ._14_circle: return "14.circle"
            case ._13_circle: return "13.circle"
            case ._12_circle: return "12.circle"
            case ._11_circle: return "11.circle"
            case ._10_circle: return "10.circle"
            case ._9_circle: return "9.circle"
            case ._8_circle: return "8.circle"
            case ._7_circle: return "7.circle"
            case ._6_circle: return "6.circle"
            case ._5_circle: return "5.circle"
            case ._4_circle: return "4.circle"
            case ._3_circle: return "3.circle"
            case ._2_circle: return "2.circle"
            case ._1_circle: return "1.circle"
            case .powersleep: return "powersleep"
            case .poweron: return "poweron"
            case .togglepower: return "togglepower"
            case .power: return "power"
            case .eject: return "eject"
            case .return: return "return"
            case .directcurrent: return "directcurrent"
            case .escape: return "escape"
            case .alt: return "alt"
            case .delete_left: return "delete.left"
            case .clear: return "clear"
            case .delete_right: return "delete.right"
            case .option: return "option"
            case .command: return "command"
            case .projective: return "projective"
            case .control: return "control"
            case .dot_square: return "dot.square"
            case .square_split_diagonal_2x2: return "square.split.diagonal.2x2"
            case .square_split_1x2: return "square.split.1x2"
            case .square_split_2x2: return "square.split.2x2"
            case .equal_circle: return "equal.circle"
            case .asterisk_circle: return "asterisk.circle"
            case .smallcircle_circle: return "smallcircle.circle"
            case .smallcircle_filled_circle: return "smallcircle.filled.circle"
            case .slash_circle: return "slash.circle"
            case .multiply_circle: return "multiply.circle"
            case .minus_circle: return "minus.circle"
            case .plus_circle: return "plus.circle"
            case .capslock: return "capslock"
            case .shift: return "shift"
            case .arrow_up_arrow_down: return "arrow.up.arrow.down"
            case .arrow_clockwise: return "arrow.clockwise"
            case .arrow_counterclockwise: return "arrow.counterclockwise"
            case .arrow_down_left: return "arrow.down.left"
            case .arrow_down_right: return "arrow.down.right"
            case .arrow_up_right: return "arrow.up.right"
            case .arrow_up_left: return "arrow.up.left"
            case .arrow_left_and_right: return "arrow.left.and.right"
            case .arrow_down: return "arrow.down"
            case .arrow_right: return "arrow.right"
            case .arrow_up: return "arrow.up"
            case .arrow_left: return "arrow.left"
            case .triangle: return "triangle"
            case .square: return "square"
            case .circle: return "circle"
            case .paragraphsign: return "paragraphsign"
        }

    }

    static let nameToRawValueDict =
        [
            "square.and.arrow.up": SFSymbol.square_and_arrow_up.rawValue,
            "square.and.arrow.up.fill": SFSymbol.square_and_arrow_up_fill.rawValue,
            "square.and.arrow.up.circle": SFSymbol.square_and_arrow_up_circle.rawValue,
            "square.and.arrow.up.circle.fill": SFSymbol.square_and_arrow_up_circle_fill.rawValue,
            "square.and.arrow.up.trianglebadge.exclamationmark": SFSymbol.square_and_arrow_up_trianglebadge_exclamationmark.rawValue,
            "square.and.arrow.down": SFSymbol.square_and_arrow_down.rawValue,
            "square.and.arrow.down.fill": SFSymbol.square_and_arrow_down_fill.rawValue,
            "square.and.arrow.up.on.square": SFSymbol.square_and_arrow_up_on_square.rawValue,
            "square.and.arrow.up.on.square.fill": SFSymbol.square_and_arrow_up_on_square_fill.rawValue,
            "square.and.arrow.down.on.square": SFSymbol.square_and_arrow_down_on_square.rawValue,
            "square.and.arrow.down.on.square.fill": SFSymbol.square_and_arrow_down_on_square_fill.rawValue,
            "rectangle.portrait.and.arrow.right": SFSymbol.rectangle_portrait_and_arrow_right.rawValue,
            "rectangle.portrait.and.arrow.right.fill": SFSymbol.rectangle_portrait_and_arrow_right_fill.rawValue,
            "pencil": SFSymbol.pencil.rawValue,
            "pencil.circle": SFSymbol.pencil_circle.rawValue,
            "pencil.circle.fill": SFSymbol.pencil_circle_fill.rawValue,
            "pencil.slash": SFSymbol.pencil_slash.rawValue,
            "square.and.pencil": SFSymbol.square_and_pencil.rawValue,
            "rectangle.and.pencil.and.ellipsis": SFSymbol.rectangle_and_pencil_and_ellipsis.rawValue,
            "scribble": SFSymbol.scribble.rawValue,
            "scribble.variable": SFSymbol.scribble_variable.rawValue,
            "highlighter": SFSymbol.highlighter.rawValue,
            "pencil.and.outline": SFSymbol.pencil_and_outline.rawValue,
            "pencil.tip": SFSymbol.pencil_tip.rawValue,
            "pencil.tip.crop.circle": SFSymbol.pencil_tip_crop_circle.rawValue,
            "pencil.tip.crop.circle.badge.plus": SFSymbol.pencil_tip_crop_circle_badge_plus.rawValue,
            "pencil.tip.crop.circle.badge.minus": SFSymbol.pencil_tip_crop_circle_badge_minus.rawValue,
            "pencil.tip.crop.circle.badge.arrow.forward": SFSymbol.pencil_tip_crop_circle_badge_arrow_forward.rawValue,
            "lasso": SFSymbol.lasso.rawValue,
            "lasso.and.sparkles": SFSymbol.lasso_and_sparkles.rawValue,
            "trash": SFSymbol.trash.rawValue,
            "trash.fill": SFSymbol.trash_fill.rawValue,
            "trash.circle": SFSymbol.trash_circle.rawValue,
            "trash.circle.fill": SFSymbol.trash_circle_fill.rawValue,
            "trash.square": SFSymbol.trash_square.rawValue,
            "trash.square.fill": SFSymbol.trash_square_fill.rawValue,
            "trash.slash": SFSymbol.trash_slash.rawValue,
            "trash.slash.fill": SFSymbol.trash_slash_fill.rawValue,
            "trash.slash.circle": SFSymbol.trash_slash_circle.rawValue,
            "trash.slash.circle.fill": SFSymbol.trash_slash_circle_fill.rawValue,
            "trash.slash.square": SFSymbol.trash_slash_square.rawValue,
            "trash.slash.square.fill": SFSymbol.trash_slash_square_fill.rawValue,
            "folder": SFSymbol.folder.rawValue,
            "folder.fill": SFSymbol.folder_fill.rawValue,
            "folder.circle": SFSymbol.folder_circle.rawValue,
            "folder.circle.fill": SFSymbol.folder_circle_fill.rawValue,
            "folder.badge.plus": SFSymbol.folder_badge_plus.rawValue,
            "folder.fill.badge.plus": SFSymbol.folder_fill_badge_plus.rawValue,
            "folder.badge.minus": SFSymbol.folder_badge_minus.rawValue,
            "folder.fill.badge.minus": SFSymbol.folder_fill_badge_minus.rawValue,
            "folder.badge.questionmark": SFSymbol.folder_badge_questionmark.rawValue,
            "folder.fill.badge.questionmark": SFSymbol.folder_fill_badge_questionmark.rawValue,
            "folder.badge.person.crop": SFSymbol.folder_badge_person_crop.rawValue,
            "folder.fill.badge.person.crop": SFSymbol.folder_fill_badge_person_crop.rawValue,
            "square.grid.3x1.folder.badge.plus": SFSymbol.square_grid_3x1_folder_badge_plus.rawValue,
            "square.grid.3x1.folder.fill.badge.plus": SFSymbol.square_grid_3x1_folder_fill_badge_plus.rawValue,
            "folder.badge.gearshape": SFSymbol.folder_badge_gearshape.rawValue,
            "folder.fill.badge.gearshape": SFSymbol.folder_fill_badge_gearshape.rawValue,
            "plus.rectangle.on.folder": SFSymbol.plus_rectangle_on_folder.rawValue,
            "plus.rectangle.on.folder.fill": SFSymbol.plus_rectangle_on_folder_fill.rawValue,
            "questionmark.folder": SFSymbol.questionmark_folder.rawValue,
            "questionmark.folder.fill": SFSymbol.questionmark_folder_fill.rawValue,
            "paperplane": SFSymbol.paperplane.rawValue,
            "paperplane.fill": SFSymbol.paperplane_fill.rawValue,
            "paperplane.circle": SFSymbol.paperplane_circle.rawValue,
            "paperplane.circle.fill": SFSymbol.paperplane_circle_fill.rawValue,
            "tray": SFSymbol.tray.rawValue,
            "tray.fill": SFSymbol.tray_fill.rawValue,
            "tray.circle": SFSymbol.tray_circle.rawValue,
            "tray.circle.fill": SFSymbol.tray_circle_fill.rawValue,
            "tray.and.arrow.up": SFSymbol.tray_and_arrow_up.rawValue,
            "tray.and.arrow.up.fill": SFSymbol.tray_and_arrow_up_fill.rawValue,
            "tray.and.arrow.down": SFSymbol.tray_and_arrow_down.rawValue,
            "tray.and.arrow.down.fill": SFSymbol.tray_and_arrow_down_fill.rawValue,
            "tray.2": SFSymbol.tray_2.rawValue,
            "tray.2.fill": SFSymbol.tray_2_fill.rawValue,
            "tray.full": SFSymbol.tray_full.rawValue,
            "tray.full.fill": SFSymbol.tray_full_fill.rawValue,
            "externaldrive": SFSymbol.externaldrive.rawValue,
            "externaldrive.fill": SFSymbol.externaldrive_fill.rawValue,
            "externaldrive.badge.plus": SFSymbol.externaldrive_badge_plus.rawValue,
            "externaldrive.fill.badge.plus": SFSymbol.externaldrive_fill_badge_plus.rawValue,
            "externaldrive.badge.minus": SFSymbol.externaldrive_badge_minus.rawValue,
            "externaldrive.fill.badge.minus": SFSymbol.externaldrive_fill_badge_minus.rawValue,
            "externaldrive.badge.checkmark": SFSymbol.externaldrive_badge_checkmark.rawValue,
            "externaldrive.fill.badge.checkmark": SFSymbol.externaldrive_fill_badge_checkmark.rawValue,
            "externaldrive.badge.xmark": SFSymbol.externaldrive_badge_xmark.rawValue,
            "externaldrive.fill.badge.xmark": SFSymbol.externaldrive_fill_badge_xmark.rawValue,
            "externaldrive.badge.person.crop": SFSymbol.externaldrive_badge_person_crop.rawValue,
            "externaldrive.fill.badge.person.crop": SFSymbol.externaldrive_fill_badge_person_crop.rawValue,
            "externaldrive.badge.icloud": SFSymbol.externaldrive_badge_icloud.rawValue,
            "externaldrive.fill.badge.icloud": SFSymbol.externaldrive_fill_badge_icloud.rawValue,
            "externaldrive.badge.wifi": SFSymbol.externaldrive_badge_wifi.rawValue,
            "externaldrive.fill.badge.wifi": SFSymbol.externaldrive_fill_badge_wifi.rawValue,
            "externaldrive.badge.timemachine": SFSymbol.externaldrive_badge_timemachine.rawValue,
            "externaldrive.fill.badge.timemachine": SFSymbol.externaldrive_fill_badge_timemachine.rawValue,
            "internaldrive": SFSymbol.internaldrive.rawValue,
            "internaldrive.fill": SFSymbol.internaldrive_fill.rawValue,
            "opticaldiscdrive": SFSymbol.opticaldiscdrive.rawValue,
            "opticaldiscdrive.fill": SFSymbol.opticaldiscdrive_fill.rawValue,
            "externaldrive.connected.to.line.below": SFSymbol.externaldrive_connected_to_line_below.rawValue,
            "externaldrive.connected.to.line.below.fill": SFSymbol.externaldrive_connected_to_line_below_fill.rawValue,
            "archivebox": SFSymbol.archivebox.rawValue,
            "archivebox.fill": SFSymbol.archivebox_fill.rawValue,
            "archivebox.circle": SFSymbol.archivebox_circle.rawValue,
            "archivebox.circle.fill": SFSymbol.archivebox_circle_fill.rawValue,
            "xmark.bin": SFSymbol.xmark_bin.rawValue,
            "xmark.bin.fill": SFSymbol.xmark_bin_fill.rawValue,
            "xmark.bin.circle": SFSymbol.xmark_bin_circle.rawValue,
            "xmark.bin.circle.fill": SFSymbol.xmark_bin_circle_fill.rawValue,
            "arrow.up.bin": SFSymbol.arrow_up_bin.rawValue,
            "arrow.up.bin.fill": SFSymbol.arrow_up_bin_fill.rawValue,
            "doc": SFSymbol.doc.rawValue,
            "doc.fill": SFSymbol.doc_fill.rawValue,
            "doc.circle": SFSymbol.doc_circle.rawValue,
            "doc.circle.fill": SFSymbol.doc_circle_fill.rawValue,
            "doc.badge.plus": SFSymbol.doc_badge_plus.rawValue,
            "doc.fill.badge.plus": SFSymbol.doc_fill_badge_plus.rawValue,
            "doc.badge.gearshape": SFSymbol.doc_badge_gearshape.rawValue,
            "doc.badge.gearshape.fill": SFSymbol.doc_badge_gearshape_fill.rawValue,
            "doc.badge.ellipsis": SFSymbol.doc_badge_ellipsis.rawValue,
            "doc.fill.badge.ellipsis": SFSymbol.doc_fill_badge_ellipsis.rawValue,
            "lock.doc": SFSymbol.lock_doc.rawValue,
            "lock.doc.fill": SFSymbol.lock_doc_fill.rawValue,
            "arrow.up.doc": SFSymbol.arrow_up_doc.rawValue,
            "arrow.up.doc.fill": SFSymbol.arrow_up_doc_fill.rawValue,
            "arrow.down.doc": SFSymbol.arrow_down_doc.rawValue,
            "arrow.down.doc.fill": SFSymbol.arrow_down_doc_fill.rawValue,
            "doc.text": SFSymbol.doc_text.rawValue,
            "doc.text.fill": SFSymbol.doc_text_fill.rawValue,
            "doc.zipper": SFSymbol.doc_zipper.rawValue,
            "doc.on.doc": SFSymbol.doc_on_doc.rawValue,
            "doc.on.doc.fill": SFSymbol.doc_on_doc_fill.rawValue,
            "doc.on.clipboard": SFSymbol.doc_on_clipboard.rawValue,
            "arrow.right.doc.on.clipboard": SFSymbol.arrow_right_doc_on_clipboard.rawValue,
            "arrow.up.doc.on.clipboard": SFSymbol.arrow_up_doc_on_clipboard.rawValue,
            "arrow.triangle.2.circlepath.doc.on.clipboard": SFSymbol.arrow_triangle_2_circlepath_doc_on_clipboard.rawValue,
            "doc.on.clipboard.fill": SFSymbol.doc_on_clipboard_fill.rawValue,
            "doc.richtext": SFSymbol.doc_richtext.rawValue,
            "doc.richtext.fill": SFSymbol.doc_richtext_fill.rawValue,
            "doc.plaintext": SFSymbol.doc_plaintext.rawValue,
            "doc.plaintext.fill": SFSymbol.doc_plaintext_fill.rawValue,
            "doc.append": SFSymbol.doc_append.rawValue,
            "doc.append.fill": SFSymbol.doc_append_fill.rawValue,
            "doc.text.below.ecg": SFSymbol.doc_text_below_ecg.rawValue,
            "doc.text.below.ecg.fill": SFSymbol.doc_text_below_ecg_fill.rawValue,
            "chart.bar.doc.horizontal": SFSymbol.chart_bar_doc_horizontal.rawValue,
            "chart.bar.doc.horizontal.fill": SFSymbol.chart_bar_doc_horizontal_fill.rawValue,
            "list.bullet.rectangle.portrait": SFSymbol.list_bullet_rectangle_portrait.rawValue,
            "list.bullet.rectangle.portrait.fill": SFSymbol.list_bullet_rectangle_portrait_fill.rawValue,
            "doc.text.magnifyingglass": SFSymbol.doc_text_magnifyingglass.rawValue,
            "list.bullet.rectangle": SFSymbol.list_bullet_rectangle.rawValue,
            "list.bullet.rectangle.fill": SFSymbol.list_bullet_rectangle_fill.rawValue,
            "list.dash.header.rectangle": SFSymbol.list_dash_header_rectangle.rawValue,
            "terminal": SFSymbol.terminal.rawValue,
            "terminal.fill": SFSymbol.terminal_fill.rawValue,
            "note": SFSymbol.note.rawValue,
            "note.text": SFSymbol.note_text.rawValue,
            "note.text.badge.plus": SFSymbol.note_text_badge_plus.rawValue,
            "calendar": SFSymbol.calendar.rawValue,
            "calendar.circle": SFSymbol.calendar_circle.rawValue,
            "calendar.circle.fill": SFSymbol.calendar_circle_fill.rawValue,
            "calendar.badge.plus": SFSymbol.calendar_badge_plus.rawValue,
            "calendar.badge.minus": SFSymbol.calendar_badge_minus.rawValue,
            "calendar.badge.clock": SFSymbol.calendar_badge_clock.rawValue,
            "calendar.badge.exclamationmark": SFSymbol.calendar_badge_exclamationmark.rawValue,
            "calendar.day.timeline.left": SFSymbol.calendar_day_timeline_left.rawValue,
            "calendar.day.timeline.right": SFSymbol.calendar_day_timeline_right.rawValue,
            "calendar.day.timeline.leading": SFSymbol.calendar_day_timeline_leading.rawValue,
            "calendar.day.timeline.trailing": SFSymbol.calendar_day_timeline_trailing.rawValue,
            "arrowshape.turn.up.left": SFSymbol.arrowshape_turn_up_left.rawValue,
            "arrowshape.turn.up.left.fill": SFSymbol.arrowshape_turn_up_left_fill.rawValue,
            "arrowshape.turn.up.left.circle": SFSymbol.arrowshape_turn_up_left_circle.rawValue,
            "arrowshape.turn.up.left.circle.fill": SFSymbol.arrowshape_turn_up_left_circle_fill.rawValue,
            "arrowshape.turn.up.backward": SFSymbol.arrowshape_turn_up_backward.rawValue,
            "arrowshape.turn.up.backward.fill": SFSymbol.arrowshape_turn_up_backward_fill.rawValue,
            "arrowshape.turn.up.backward.circle": SFSymbol.arrowshape_turn_up_backward_circle.rawValue,
            "arrowshape.turn.up.backward.circle.fill": SFSymbol.arrowshape_turn_up_backward_circle_fill.rawValue,
            "arrowshape.turn.up.right": SFSymbol.arrowshape_turn_up_right.rawValue,
            "arrowshape.turn.up.right.fill": SFSymbol.arrowshape_turn_up_right_fill.rawValue,
            "arrowshape.turn.up.right.circle": SFSymbol.arrowshape_turn_up_right_circle.rawValue,
            "arrowshape.turn.up.right.circle.fill": SFSymbol.arrowshape_turn_up_right_circle_fill.rawValue,
            "arrowshape.turn.up.forward": SFSymbol.arrowshape_turn_up_forward.rawValue,
            "arrowshape.turn.up.forward.fill": SFSymbol.arrowshape_turn_up_forward_fill.rawValue,
            "arrowshape.turn.up.forward.circle": SFSymbol.arrowshape_turn_up_forward_circle.rawValue,
            "arrowshape.turn.up.forward.circle.fill": SFSymbol.arrowshape_turn_up_forward_circle_fill.rawValue,
            "arrowshape.turn.up.left.2": SFSymbol.arrowshape_turn_up_left_2.rawValue,
            "arrowshape.turn.up.left.2.fill": SFSymbol.arrowshape_turn_up_left_2_fill.rawValue,
            "arrowshape.turn.up.left.2.circle": SFSymbol.arrowshape_turn_up_left_2_circle.rawValue,
            "arrowshape.turn.up.left.2.circle.fill": SFSymbol.arrowshape_turn_up_left_2_circle_fill.rawValue,
            "arrowshape.turn.up.backward.2": SFSymbol.arrowshape_turn_up_backward_2.rawValue,
            "arrowshape.turn.up.backward.2.fill": SFSymbol.arrowshape_turn_up_backward_2_fill.rawValue,
            "arrowshape.turn.up.backward.2.circle": SFSymbol.arrowshape_turn_up_backward_2_circle.rawValue,
            "arrowshape.turn.up.backward.2.circle.fill": SFSymbol.arrowshape_turn_up_backward_2_circle_fill.rawValue,
            "arrowshape.zigzag.right": SFSymbol.arrowshape_zigzag_right.rawValue,
            "arrowshape.zigzag.right.fill": SFSymbol.arrowshape_zigzag_right_fill.rawValue,
            "arrowshape.zigzag.forward": SFSymbol.arrowshape_zigzag_forward.rawValue,
            "arrowshape.zigzag.forward.fill": SFSymbol.arrowshape_zigzag_forward_fill.rawValue,
            "arrowshape.bounce.right": SFSymbol.arrowshape_bounce_right.rawValue,
            "arrowshape.bounce.right.fill": SFSymbol.arrowshape_bounce_right_fill.rawValue,
            "arrowshape.bounce.forward": SFSymbol.arrowshape_bounce_forward.rawValue,
            "arrowshape.bounce.forward.fill": SFSymbol.arrowshape_bounce_forward_fill.rawValue,
            "book": SFSymbol.book.rawValue,
            "book.fill": SFSymbol.book_fill.rawValue,
            "book.circle": SFSymbol.book_circle.rawValue,
            "book.circle.fill": SFSymbol.book_circle_fill.rawValue,
            "books.vertical": SFSymbol.books_vertical.rawValue,
            "books.vertical.fill": SFSymbol.books_vertical_fill.rawValue,
            "books.vertical.circle": SFSymbol.books_vertical_circle.rawValue,
            "books.vertical.circle.fill": SFSymbol.books_vertical_circle_fill.rawValue,
            "book.closed": SFSymbol.book_closed.rawValue,
            "book.closed.fill": SFSymbol.book_closed_fill.rawValue,
            "book.closed.circle": SFSymbol.book_closed_circle.rawValue,
            "book.closed.circle.fill": SFSymbol.book_closed_circle_fill.rawValue,
            "character.book.closed": SFSymbol.character_book_closed.rawValue,
            "character.book.closed.fill": SFSymbol.character_book_closed_fill.rawValue,
            "text.book.closed": SFSymbol.text_book_closed.rawValue,
            "text.book.closed.fill": SFSymbol.text_book_closed_fill.rawValue,
            "menucard": SFSymbol.menucard.rawValue,
            "menucard.fill": SFSymbol.menucard_fill.rawValue,
            "greetingcard": SFSymbol.greetingcard.rawValue,
            "greetingcard.fill": SFSymbol.greetingcard_fill.rawValue,
            "magazine": SFSymbol.magazine.rawValue,
            "magazine.fill": SFSymbol.magazine_fill.rawValue,
            "newspaper": SFSymbol.newspaper.rawValue,
            "newspaper.fill": SFSymbol.newspaper_fill.rawValue,
            "newspaper.circle": SFSymbol.newspaper_circle.rawValue,
            "newspaper.circle.fill": SFSymbol.newspaper_circle_fill.rawValue,
            "heart.text.square": SFSymbol.heart_text_square.rawValue,
            "heart.text.square.fill": SFSymbol.heart_text_square_fill.rawValue,
            "square.text.square": SFSymbol.square_text_square.rawValue,
            "square.text.square.fill": SFSymbol.square_text_square_fill.rawValue,
            "doc.text.image": SFSymbol.doc_text_image.rawValue,
            "doc.text.image.fill": SFSymbol.doc_text_image_fill.rawValue,
            "bookmark": SFSymbol.bookmark.rawValue,
            "bookmark.fill": SFSymbol.bookmark_fill.rawValue,
            "bookmark.circle": SFSymbol.bookmark_circle.rawValue,
            "bookmark.circle.fill": SFSymbol.bookmark_circle_fill.rawValue,
            "bookmark.square": SFSymbol.bookmark_square.rawValue,
            "bookmark.square.fill": SFSymbol.bookmark_square_fill.rawValue,
            "bookmark.slash": SFSymbol.bookmark_slash.rawValue,
            "bookmark.slash.fill": SFSymbol.bookmark_slash_fill.rawValue,
            "rosette": SFSymbol.rosette.rawValue,
            "graduationcap": SFSymbol.graduationcap.rawValue,
            "graduationcap.fill": SFSymbol.graduationcap_fill.rawValue,
            "graduationcap.circle": SFSymbol.graduationcap_circle.rawValue,
            "graduationcap.circle.fill": SFSymbol.graduationcap_circle_fill.rawValue,
            "ticket": SFSymbol.ticket.rawValue,
            "ticket.fill": SFSymbol.ticket_fill.rawValue,
            "paperclip": SFSymbol.paperclip.rawValue,
            "paperclip.circle": SFSymbol.paperclip_circle.rawValue,
            "paperclip.circle.fill": SFSymbol.paperclip_circle_fill.rawValue,
            "paperclip.badge.ellipsis": SFSymbol.paperclip_badge_ellipsis.rawValue,
            "rectangle.and.paperclip": SFSymbol.rectangle_and_paperclip.rawValue,
            "rectangle.dashed.and.paperclip": SFSymbol.rectangle_dashed_and_paperclip.rawValue,
            "link": SFSymbol.link.rawValue,
            "link.circle": SFSymbol.link_circle.rawValue,
            "link.circle.fill": SFSymbol.link_circle_fill.rawValue,
            "link.badge.plus": SFSymbol.link_badge_plus.rawValue,
            "personalhotspot": SFSymbol.personalhotspot.rawValue,
            "personalhotspot.circle": SFSymbol.personalhotspot_circle.rawValue,
            "personalhotspot.circle.fill": SFSymbol.personalhotspot_circle_fill.rawValue,
            "lineweight": SFSymbol.lineweight.rawValue,
            "person": SFSymbol.person.rawValue,
            "person.fill": SFSymbol.person_fill.rawValue,
            "person.fill.turn.right": SFSymbol.person_fill_turn_right.rawValue,
            "person.fill.turn.down": SFSymbol.person_fill_turn_down.rawValue,
            "person.fill.turn.left": SFSymbol.person_fill_turn_left.rawValue,
            "person.fill.checkmark": SFSymbol.person_fill_checkmark.rawValue,
            "person.fill.xmark": SFSymbol.person_fill_xmark.rawValue,
            "person.fill.questionmark": SFSymbol.person_fill_questionmark.rawValue,
            "person.circle": SFSymbol.person_circle.rawValue,
            "person.circle.fill": SFSymbol.person_circle_fill.rawValue,
            "person.badge.plus": SFSymbol.person_badge_plus.rawValue,
            "person.fill.badge.plus": SFSymbol.person_fill_badge_plus.rawValue,
            "person.badge.minus": SFSymbol.person_badge_minus.rawValue,
            "person.fill.badge.minus": SFSymbol.person_fill_badge_minus.rawValue,
            "person.badge.clock": SFSymbol.person_badge_clock.rawValue,
            "person.badge.clock.fill": SFSymbol.person_badge_clock_fill.rawValue,
            "shareplay": SFSymbol.shareplay.rawValue,
            "shareplay.slash": SFSymbol.shareplay_slash.rawValue,
            "rectangle.inset.filled.and.person.filled": SFSymbol.rectangle_inset_filled_and_person_filled.rawValue,
            "person.and.arrow.left.and.arrow.right": SFSymbol.person_and_arrow_left_and_arrow_right.rawValue,
            "person.fill.and.arrow.left.and.arrow.right": SFSymbol.person_fill_and_arrow_left_and_arrow_right.rawValue,
            "person.2": SFSymbol.person_2.rawValue,
            "person.2.fill": SFSymbol.person_2_fill.rawValue,
            "person.2.circle": SFSymbol.person_2_circle.rawValue,
            "person.2.circle.fill": SFSymbol.person_2_circle_fill.rawValue,
            "person.wave.2": SFSymbol.person_wave_2.rawValue,
            "person.wave.2.fill": SFSymbol.person_wave_2_fill.rawValue,
            "person.2.wave.2": SFSymbol.person_2_wave_2.rawValue,
            "person.2.wave.2.fill": SFSymbol.person_2_wave_2_fill.rawValue,
            "person.3": SFSymbol.person_3.rawValue,
            "person.3.fill": SFSymbol.person_3_fill.rawValue,
            "person.3.sequence": SFSymbol.person_3_sequence.rawValue,
            "person.3.sequence.fill": SFSymbol.person_3_sequence_fill.rawValue,
            "lanyardcard": SFSymbol.lanyardcard.rawValue,
            "lanyardcard.fill": SFSymbol.lanyardcard_fill.rawValue,
            "person.crop.circle": SFSymbol.person_crop_circle.rawValue,
            "person.crop.circle.fill": SFSymbol.person_crop_circle_fill.rawValue,
            "person.crop.circle.badge.plus": SFSymbol.person_crop_circle_badge_plus.rawValue,
            "person.crop.circle.fill.badge.plus": SFSymbol.person_crop_circle_fill_badge_plus.rawValue,
            "person.crop.circle.badge.minus": SFSymbol.person_crop_circle_badge_minus.rawValue,
            "person.crop.circle.fill.badge.minus": SFSymbol.person_crop_circle_fill_badge_minus.rawValue,
            "person.crop.circle.badge.checkmark": SFSymbol.person_crop_circle_badge_checkmark.rawValue,
            "person.crop.circle.fill.badge.checkmark": SFSymbol.person_crop_circle_fill_badge_checkmark.rawValue,
            "person.crop.circle.badge.xmark": SFSymbol.person_crop_circle_badge_xmark.rawValue,
            "person.crop.circle.fill.badge.xmark": SFSymbol.person_crop_circle_fill_badge_xmark.rawValue,
            "person.crop.circle.badge.questionmark": SFSymbol.person_crop_circle_badge_questionmark.rawValue,
            "person.crop.circle.badge.questionmark.fill": SFSymbol.person_crop_circle_badge_questionmark_fill.rawValue,
            "person.crop.circle.badge.exclamationmark": SFSymbol.person_crop_circle_badge_exclamationmark.rawValue,
            "person.crop.circle.badge.exclamationmark.fill": SFSymbol.person_crop_circle_badge_exclamationmark_fill.rawValue,
            "person.crop.circle.badge.moon": SFSymbol.person_crop_circle_badge_moon.rawValue,
            "person.crop.circle.badge.moon.fill": SFSymbol.person_crop_circle_badge_moon_fill.rawValue,
            "person.crop.circle.badge.clock": SFSymbol.person_crop_circle_badge_clock.rawValue,
            "person.crop.circle.badge.clock.fill": SFSymbol.person_crop_circle_badge_clock_fill.rawValue,
            "person.crop.circle.badge": SFSymbol.person_crop_circle_badge.rawValue,
            "person.crop.circle.badge.fill": SFSymbol.person_crop_circle_badge_fill.rawValue,
            "person.crop.square": SFSymbol.person_crop_square.rawValue,
            "person.crop.square.fill": SFSymbol.person_crop_square_fill.rawValue,
            "person.crop.artframe": SFSymbol.person_crop_artframe.rawValue,
            "photo.artframe": SFSymbol.photo_artframe.rawValue,
            "person.crop.rectangle.stack": SFSymbol.person_crop_rectangle_stack.rawValue,
            "person.crop.rectangle.stack.fill": SFSymbol.person_crop_rectangle_stack_fill.rawValue,
            "person.2.crop.square.stack": SFSymbol.person_2_crop_square_stack.rawValue,
            "person.2.crop.square.stack.fill": SFSymbol.person_2_crop_square_stack_fill.rawValue,
            "person.crop.rectangle": SFSymbol.person_crop_rectangle.rawValue,
            "person.crop.rectangle.fill": SFSymbol.person_crop_rectangle_fill.rawValue,
            "arrow.up.and.person.rectangle.portrait": SFSymbol.arrow_up_and_person_rectangle_portrait.rawValue,
            "arrow.up.and.person.rectangle.turn.right": SFSymbol.arrow_up_and_person_rectangle_turn_right.rawValue,
            "arrow.up.and.person.rectangle.turn.left": SFSymbol.arrow_up_and_person_rectangle_turn_left.rawValue,
            "person.crop.square.filled.and.at.rectangle": SFSymbol.person_crop_square_filled_and_at_rectangle.rawValue,
            "person.crop.square.filled.and.at.rectangle.fill": SFSymbol.person_crop_square_filled_and_at_rectangle_fill.rawValue,
            "square.and.at.rectangle": SFSymbol.square_and_at_rectangle.rawValue,
            "square.and.at.rectangle.fill": SFSymbol.square_and_at_rectangle_fill.rawValue,
            "person.text.rectangle": SFSymbol.person_text_rectangle.rawValue,
            "person.text.rectangle.fill": SFSymbol.person_text_rectangle_fill.rawValue,
            "command.circle": SFSymbol.command_circle.rawValue,
            "command.circle.fill": SFSymbol.command_circle_fill.rawValue,
            "command.square": SFSymbol.command_square.rawValue,
            "command.square.fill": SFSymbol.command_square_fill.rawValue,
            "clear.fill": SFSymbol.clear_fill.rawValue,
            "delete.left.fill": SFSymbol.delete_left_fill.rawValue,
            "delete.backward": SFSymbol.delete_backward.rawValue,
            "delete.backward.fill": SFSymbol.delete_backward_fill.rawValue,
            "delete.right.fill": SFSymbol.delete_right_fill.rawValue,
            "delete.forward": SFSymbol.delete_forward.rawValue,
            "delete.forward.fill": SFSymbol.delete_forward_fill.rawValue,
            "shift.fill": SFSymbol.shift_fill.rawValue,
            "capslock.fill": SFSymbol.capslock_fill.rawValue,
            "restart": SFSymbol.restart.rawValue,
            "restart.circle": SFSymbol.restart_circle.rawValue,
            "restart.circle.fill": SFSymbol.restart_circle_fill.rawValue,
            "sleep": SFSymbol.sleep.rawValue,
            "sleep.circle": SFSymbol.sleep_circle.rawValue,
            "sleep.circle.fill": SFSymbol.sleep_circle_fill.rawValue,
            "wake": SFSymbol.wake.rawValue,
            "wake.circle": SFSymbol.wake_circle.rawValue,
            "wake.circle.fill": SFSymbol.wake_circle_fill.rawValue,
            "power.circle": SFSymbol.power_circle.rawValue,
            "power.circle.fill": SFSymbol.power_circle_fill.rawValue,
            "power.dotted": SFSymbol.power_dotted.rawValue,
            "alternatingcurrent": SFSymbol.alternatingcurrent.rawValue,
            "dot.arrowtriangles.up.right.down.left.circle": SFSymbol.dot_arrowtriangles_up_right_down_left_circle.rawValue,
            "globe": SFSymbol.globe.rawValue,
            "globe.badge.chevron.backward": SFSymbol.globe_badge_chevron_backward.rawValue,
            "network": SFSymbol.network.rawValue,
            "network.badge.shield.half.filled": SFSymbol.network_badge_shield_half_filled.rawValue,
            "globe.americas": SFSymbol.globe_americas.rawValue,
            "globe.americas.fill": SFSymbol.globe_americas_fill.rawValue,
            "globe.europe.africa": SFSymbol.globe_europe_africa.rawValue,
            "globe.europe.africa.fill": SFSymbol.globe_europe_africa_fill.rawValue,
            "globe.asia.australia": SFSymbol.globe_asia_australia.rawValue,
            "globe.asia.australia.fill": SFSymbol.globe_asia_australia_fill.rawValue,
            "sun.min": SFSymbol.sun_min.rawValue,
            "sun.min.fill": SFSymbol.sun_min_fill.rawValue,
            "sun.max": SFSymbol.sun_max.rawValue,
            "sun.max.fill": SFSymbol.sun_max_fill.rawValue,
            "sun.max.circle": SFSymbol.sun_max_circle.rawValue,
            "sun.max.circle.fill": SFSymbol.sun_max_circle_fill.rawValue,
            "sunrise": SFSymbol.sunrise.rawValue,
            "sunrise.fill": SFSymbol.sunrise_fill.rawValue,
            "sunset": SFSymbol.sunset.rawValue,
            "sunset.fill": SFSymbol.sunset_fill.rawValue,
            "sun.and.horizon": SFSymbol.sun_and_horizon.rawValue,
            "sun.and.horizon.fill": SFSymbol.sun_and_horizon_fill.rawValue,
            "sun.dust": SFSymbol.sun_dust.rawValue,
            "sun.dust.fill": SFSymbol.sun_dust_fill.rawValue,
            "sun.haze": SFSymbol.sun_haze.rawValue,
            "sun.haze.fill": SFSymbol.sun_haze_fill.rawValue,
            "moon": SFSymbol.moon.rawValue,
            "moon.circle": SFSymbol.moon_circle.rawValue,
            "moon.circle.fill": SFSymbol.moon_circle_fill.rawValue,
            "zzz": SFSymbol.zzz.rawValue,
            "moon.zzz": SFSymbol.moon_zzz.rawValue,
            "moon.zzz.fill": SFSymbol.moon_zzz_fill.rawValue,
            "sparkle": SFSymbol.sparkle.rawValue,
            "sparkles": SFSymbol.sparkles.rawValue,
            "moon.stars": SFSymbol.moon_stars.rawValue,
            "moon.stars.fill": SFSymbol.moon_stars_fill.rawValue,
            "cloud": SFSymbol.cloud.rawValue,
            "cloud.fill": SFSymbol.cloud_fill.rawValue,
            "cloud.drizzle": SFSymbol.cloud_drizzle.rawValue,
            "cloud.drizzle.fill": SFSymbol.cloud_drizzle_fill.rawValue,
            "cloud.rain": SFSymbol.cloud_rain.rawValue,
            "cloud.rain.fill": SFSymbol.cloud_rain_fill.rawValue,
            "cloud.heavyrain": SFSymbol.cloud_heavyrain.rawValue,
            "cloud.heavyrain.fill": SFSymbol.cloud_heavyrain_fill.rawValue,
            "cloud.fog": SFSymbol.cloud_fog.rawValue,
            "cloud.fog.fill": SFSymbol.cloud_fog_fill.rawValue,
            "cloud.hail": SFSymbol.cloud_hail.rawValue,
            "cloud.hail.fill": SFSymbol.cloud_hail_fill.rawValue,
            "cloud.snow": SFSymbol.cloud_snow.rawValue,
            "cloud.snow.fill": SFSymbol.cloud_snow_fill.rawValue,
            "cloud.sleet": SFSymbol.cloud_sleet.rawValue,
            "cloud.sleet.fill": SFSymbol.cloud_sleet_fill.rawValue,
            "cloud.bolt": SFSymbol.cloud_bolt.rawValue,
            "cloud.bolt.fill": SFSymbol.cloud_bolt_fill.rawValue,
            "cloud.bolt.rain": SFSymbol.cloud_bolt_rain.rawValue,
            "cloud.bolt.rain.fill": SFSymbol.cloud_bolt_rain_fill.rawValue,
            "cloud.sun": SFSymbol.cloud_sun.rawValue,
            "cloud.sun.fill": SFSymbol.cloud_sun_fill.rawValue,
            "cloud.sun.rain": SFSymbol.cloud_sun_rain.rawValue,
            "cloud.sun.rain.fill": SFSymbol.cloud_sun_rain_fill.rawValue,
            "cloud.sun.bolt": SFSymbol.cloud_sun_bolt.rawValue,
            "cloud.sun.bolt.fill": SFSymbol.cloud_sun_bolt_fill.rawValue,
            "cloud.moon": SFSymbol.cloud_moon.rawValue,
            "cloud.moon.fill": SFSymbol.cloud_moon_fill.rawValue,
            "cloud.moon.rain": SFSymbol.cloud_moon_rain.rawValue,
            "cloud.moon.rain.fill": SFSymbol.cloud_moon_rain_fill.rawValue,
            "cloud.moon.bolt": SFSymbol.cloud_moon_bolt.rawValue,
            "cloud.moon.bolt.fill": SFSymbol.cloud_moon_bolt_fill.rawValue,
            "smoke": SFSymbol.smoke.rawValue,
            "smoke.fill": SFSymbol.smoke_fill.rawValue,
            "wind": SFSymbol.wind.rawValue,
            "wind.snow": SFSymbol.wind_snow.rawValue,
            "snowflake.circle": SFSymbol.snowflake_circle.rawValue,
            "snowflake.circle.fill": SFSymbol.snowflake_circle_fill.rawValue,
            "tornado": SFSymbol.tornado.rawValue,
            "tropicalstorm": SFSymbol.tropicalstorm.rawValue,
            "hurricane": SFSymbol.hurricane.rawValue,
            "thermometer.sun": SFSymbol.thermometer_sun.rawValue,
            "thermometer.sun.fill": SFSymbol.thermometer_sun_fill.rawValue,
            "thermometer.snowflake": SFSymbol.thermometer_snowflake.rawValue,
            "thermometer": SFSymbol.thermometer.rawValue,
            "aqi.low": SFSymbol.aqi_low.rawValue,
            "aqi.medium": SFSymbol.aqi_medium.rawValue,
            "aqi.high": SFSymbol.aqi_high.rawValue,
            "humidity": SFSymbol.humidity.rawValue,
            "humidity.fill": SFSymbol.humidity_fill.rawValue,
            "umbrella": SFSymbol.umbrella.rawValue,
            "flame": SFSymbol.flame.rawValue,
            "flame.fill": SFSymbol.flame_fill.rawValue,
            "flame.circle": SFSymbol.flame_circle.rawValue,
            "flame.circle.fill": SFSymbol.flame_circle_fill.rawValue,
            "light.min": SFSymbol.light_min.rawValue,
            "light.max": SFSymbol.light_max.rawValue,
            "rays": SFSymbol.rays.rawValue,
            "slowmo": SFSymbol.slowmo.rawValue,
            "timelapse": SFSymbol.timelapse.rawValue,
            "cursorarrow.rays": SFSymbol.cursorarrow_rays.rawValue,
            "cursorarrow": SFSymbol.cursorarrow.rawValue,
            "cursorarrow.square": SFSymbol.cursorarrow_square.rawValue,
            "cursorarrow.and.square.on.square.dashed": SFSymbol.cursorarrow_and_square_on_square_dashed.rawValue,
            "cursorarrow.click": SFSymbol.cursorarrow_click.rawValue,
            "cursorarrow.click.2": SFSymbol.cursorarrow_click_2.rawValue,
            "contextualmenu.and.cursorarrow": SFSymbol.contextualmenu_and_cursorarrow.rawValue,
            "filemenu.and.cursorarrow": SFSymbol.filemenu_and_cursorarrow.rawValue,
            "filemenu.and.selection": SFSymbol.filemenu_and_selection.rawValue,
            "dot.circle.and.hand.point.up.left.fill": SFSymbol.dot_circle_and_hand_point_up_left_fill.rawValue,
            "dot.circle.and.cursorarrow": SFSymbol.dot_circle_and_cursorarrow.rawValue,
            "cursorarrow.motionlines": SFSymbol.cursorarrow_motionlines.rawValue,
            "cursorarrow.motionlines.click": SFSymbol.cursorarrow_motionlines_click.rawValue,
            "cursorarrow.click.badge.clock": SFSymbol.cursorarrow_click_badge_clock.rawValue,
            "keyboard": SFSymbol.keyboard.rawValue,
            "keyboard.fill": SFSymbol.keyboard_fill.rawValue,
            "keyboard.badge.ellipsis": SFSymbol.keyboard_badge_ellipsis.rawValue,
            "keyboard.chevron.compact.down": SFSymbol.keyboard_chevron_compact_down.rawValue,
            "keyboard.chevron.compact.left": SFSymbol.keyboard_chevron_compact_left.rawValue,
            "keyboard.onehanded.left": SFSymbol.keyboard_onehanded_left.rawValue,
            "keyboard.onehanded.right": SFSymbol.keyboard_onehanded_right.rawValue,
            "rectangle.3.group": SFSymbol.rectangle_3_group.rawValue,
            "rectangle.3.group.fill": SFSymbol.rectangle_3_group_fill.rawValue,
            "square.grid.3x2": SFSymbol.square_grid_3x2.rawValue,
            "square.grid.3x2.fill": SFSymbol.square_grid_3x2_fill.rawValue,
            "rectangle.grid.3x2": SFSymbol.rectangle_grid_3x2.rawValue,
            "rectangle.grid.3x2.fill": SFSymbol.rectangle_grid_3x2_fill.rawValue,
            "square.grid.2x2": SFSymbol.square_grid_2x2.rawValue,
            "square.grid.2x2.fill": SFSymbol.square_grid_2x2_fill.rawValue,
            "rectangle.grid.2x2": SFSymbol.rectangle_grid_2x2.rawValue,
            "rectangle.grid.2x2.fill": SFSymbol.rectangle_grid_2x2_fill.rawValue,
            "square.grid.3x1.below.line.grid.1x2": SFSymbol.square_grid_3x1_below_line_grid_1x2.rawValue,
            "square.grid.3x1.below.line.grid.1x2.fill": SFSymbol.square_grid_3x1_below_line_grid_1x2_fill.rawValue,
            "square.grid.4x3.fill": SFSymbol.square_grid_4x3_fill.rawValue,
            "rectangle.grid.1x2": SFSymbol.rectangle_grid_1x2.rawValue,
            "rectangle.grid.1x2.fill": SFSymbol.rectangle_grid_1x2_fill.rawValue,
            "circle.grid.2x2": SFSymbol.circle_grid_2x2.rawValue,
            "circle.grid.2x2.fill": SFSymbol.circle_grid_2x2_fill.rawValue,
            "circle.grid.3x3": SFSymbol.circle_grid_3x3.rawValue,
            "circle.grid.3x3.fill": SFSymbol.circle_grid_3x3_fill.rawValue,
            "circle.grid.3x3.circle": SFSymbol.circle_grid_3x3_circle.rawValue,
            "circle.grid.3x3.circle.fill": SFSymbol.circle_grid_3x3_circle_fill.rawValue,
            "square.grid.3x3": SFSymbol.square_grid_3x3.rawValue,
            "square.grid.3x3.fill": SFSymbol.square_grid_3x3_fill.rawValue,
            "square.grid.3x3.topleft.filled": SFSymbol.square_grid_3x3_topleft_filled.rawValue,
            "square.grid.3x3.topmiddle.filled": SFSymbol.square_grid_3x3_topmiddle_filled.rawValue,
            "square.grid.3x3.topright.filled": SFSymbol.square_grid_3x3_topright_filled.rawValue,
            "square.grid.3x3.middleleft.filled": SFSymbol.square_grid_3x3_middleleft_filled.rawValue,
            "square.grid.3x3.middle.filled": SFSymbol.square_grid_3x3_middle_filled.rawValue,
            "square.grid.3x3.middleright.filled": SFSymbol.square_grid_3x3_middleright_filled.rawValue,
            "square.grid.3x3.bottomleft.filled": SFSymbol.square_grid_3x3_bottomleft_filled.rawValue,
            "square.grid.3x3.bottommiddle.filled": SFSymbol.square_grid_3x3_bottommiddle_filled.rawValue,
            "square.grid.3x3.bottomright.filled": SFSymbol.square_grid_3x3_bottomright_filled.rawValue,
            "circle.hexagongrid": SFSymbol.circle_hexagongrid.rawValue,
            "circle.hexagongrid.fill": SFSymbol.circle_hexagongrid_fill.rawValue,
            "circle.hexagongrid.circle": SFSymbol.circle_hexagongrid_circle.rawValue,
            "circle.hexagongrid.circle.fill": SFSymbol.circle_hexagongrid_circle_fill.rawValue,
            "circle.hexagonpath": SFSymbol.circle_hexagonpath.rawValue,
            "circle.hexagonpath.fill": SFSymbol.circle_hexagonpath_fill.rawValue,
            "circle.grid.cross": SFSymbol.circle_grid_cross.rawValue,
            "circle.grid.cross.fill": SFSymbol.circle_grid_cross_fill.rawValue,
            "circle.grid.cross.left.filled": SFSymbol.circle_grid_cross_left_filled.rawValue,
            "circle.grid.cross.up.filled": SFSymbol.circle_grid_cross_up_filled.rawValue,
            "circle.grid.cross.right.filled": SFSymbol.circle_grid_cross_right_filled.rawValue,
            "circle.grid.cross.down.filled": SFSymbol.circle_grid_cross_down_filled.rawValue,
            "seal": SFSymbol.seal.rawValue,
            "seal.fill": SFSymbol.seal_fill.rawValue,
            "checkmark.seal": SFSymbol.checkmark_seal.rawValue,
            "checkmark.seal.fill": SFSymbol.checkmark_seal_fill.rawValue,
            "xmark.seal": SFSymbol.xmark_seal.rawValue,
            "xmark.seal.fill": SFSymbol.xmark_seal_fill.rawValue,
            "exclamationmark.triangle.fill": SFSymbol.exclamationmark_triangle_fill.rawValue,
            "drop": SFSymbol.drop.rawValue,
            "drop.fill": SFSymbol.drop_fill.rawValue,
            "drop.circle": SFSymbol.drop_circle.rawValue,
            "drop.circle.fill": SFSymbol.drop_circle_fill.rawValue,
            "drop.triangle": SFSymbol.drop_triangle.rawValue,
            "drop.triangle.fill": SFSymbol.drop_triangle_fill.rawValue,
            "play": SFSymbol.play.rawValue,
            "play.fill": SFSymbol.play_fill.rawValue,
            "play.circle": SFSymbol.play_circle.rawValue,
            "play.circle.fill": SFSymbol.play_circle_fill.rawValue,
            "play.square": SFSymbol.play_square.rawValue,
            "play.square.fill": SFSymbol.play_square_fill.rawValue,
            "play.rectangle": SFSymbol.play_rectangle.rawValue,
            "play.rectangle.fill": SFSymbol.play_rectangle_fill.rawValue,
            "play.slash": SFSymbol.play_slash.rawValue,
            "play.slash.fill": SFSymbol.play_slash_fill.rawValue,
            "pause": SFSymbol.pause.rawValue,
            "pause.fill": SFSymbol.pause_fill.rawValue,
            "pause.circle": SFSymbol.pause_circle.rawValue,
            "pause.circle.fill": SFSymbol.pause_circle_fill.rawValue,
            "pause.rectangle": SFSymbol.pause_rectangle.rawValue,
            "pause.rectangle.fill": SFSymbol.pause_rectangle_fill.rawValue,
            "stop": SFSymbol.stop.rawValue,
            "stop.fill": SFSymbol.stop_fill.rawValue,
            "stop.circle": SFSymbol.stop_circle.rawValue,
            "stop.circle.fill": SFSymbol.stop_circle_fill.rawValue,
            "record.circle": SFSymbol.record_circle.rawValue,
            "record.circle.fill": SFSymbol.record_circle_fill.rawValue,
            "playpause": SFSymbol.playpause.rawValue,
            "playpause.fill": SFSymbol.playpause_fill.rawValue,
            "backward": SFSymbol.backward.rawValue,
            "backward.fill": SFSymbol.backward_fill.rawValue,
            "backward.circle": SFSymbol.backward_circle.rawValue,
            "backward.circle.fill": SFSymbol.backward_circle_fill.rawValue,
            "forward": SFSymbol.forward.rawValue,
            "forward.fill": SFSymbol.forward_fill.rawValue,
            "forward.circle": SFSymbol.forward_circle.rawValue,
            "forward.circle.fill": SFSymbol.forward_circle_fill.rawValue,
            "backward.end": SFSymbol.backward_end.rawValue,
            "backward.end.fill": SFSymbol.backward_end_fill.rawValue,
            "forward.end": SFSymbol.forward_end.rawValue,
            "forward.end.fill": SFSymbol.forward_end_fill.rawValue,
            "backward.end.alt": SFSymbol.backward_end_alt.rawValue,
            "backward.end.alt.fill": SFSymbol.backward_end_alt_fill.rawValue,
            "forward.end.alt": SFSymbol.forward_end_alt.rawValue,
            "forward.end.alt.fill": SFSymbol.forward_end_alt_fill.rawValue,
            "backward.frame": SFSymbol.backward_frame.rawValue,
            "backward.frame.fill": SFSymbol.backward_frame_fill.rawValue,
            "forward.frame": SFSymbol.forward_frame.rawValue,
            "forward.frame.fill": SFSymbol.forward_frame_fill.rawValue,
            "eject.fill": SFSymbol.eject_fill.rawValue,
            "eject.circle": SFSymbol.eject_circle.rawValue,
            "eject.circle.fill": SFSymbol.eject_circle_fill.rawValue,
            "mount": SFSymbol.mount.rawValue,
            "mount.fill": SFSymbol.mount_fill.rawValue,
            "memories": SFSymbol.memories.rawValue,
            "memories.badge.plus": SFSymbol.memories_badge_plus.rawValue,
            "memories.badge.minus": SFSymbol.memories_badge_minus.rawValue,
            "shuffle": SFSymbol.shuffle.rawValue,
            "shuffle.circle": SFSymbol.shuffle_circle.rawValue,
            "shuffle.circle.fill": SFSymbol.shuffle_circle_fill.rawValue,
            "repeat": SFSymbol.repeat.rawValue,
            "repeat.circle": SFSymbol.repeat_circle.rawValue,
            "repeat.circle.fill": SFSymbol.repeat_circle_fill.rawValue,
            "repeat.1": SFSymbol.repeat_1.rawValue,
            "repeat.1.circle": SFSymbol.repeat_1_circle.rawValue,
            "repeat.1.circle.fill": SFSymbol.repeat_1_circle_fill.rawValue,
            "infinity": SFSymbol.infinity.rawValue,
            "infinity.circle": SFSymbol.infinity_circle.rawValue,
            "infinity.circle.fill": SFSymbol.infinity_circle_fill.rawValue,
            "megaphone": SFSymbol.megaphone.rawValue,
            "megaphone.fill": SFSymbol.megaphone_fill.rawValue,
            "speaker": SFSymbol.speaker.rawValue,
            "speaker.fill": SFSymbol.speaker_fill.rawValue,
            "speaker.circle": SFSymbol.speaker_circle.rawValue,
            "speaker.circle.fill": SFSymbol.speaker_circle_fill.rawValue,
            "speaker.slash": SFSymbol.speaker_slash.rawValue,
            "speaker.slash.fill": SFSymbol.speaker_slash_fill.rawValue,
            "speaker.slash.circle": SFSymbol.speaker_slash_circle.rawValue,
            "speaker.slash.circle.fill": SFSymbol.speaker_slash_circle_fill.rawValue,
            "speaker.zzz": SFSymbol.speaker_zzz.rawValue,
            "speaker.zzz.fill": SFSymbol.speaker_zzz_fill.rawValue,
            "speaker.wave.1": SFSymbol.speaker_wave_1.rawValue,
            "speaker.wave.1.fill": SFSymbol.speaker_wave_1_fill.rawValue,
            "speaker.wave.2": SFSymbol.speaker_wave_2.rawValue,
            "speaker.wave.2.fill": SFSymbol.speaker_wave_2_fill.rawValue,
            "speaker.wave.2.circle": SFSymbol.speaker_wave_2_circle.rawValue,
            "speaker.wave.2.circle.fill": SFSymbol.speaker_wave_2_circle_fill.rawValue,
            "speaker.wave.3": SFSymbol.speaker_wave_3.rawValue,
            "speaker.wave.3.fill": SFSymbol.speaker_wave_3_fill.rawValue,
            "speaker.badge.exclamationmark": SFSymbol.speaker_badge_exclamationmark.rawValue,
            "speaker.badge.exclamationmark.fill": SFSymbol.speaker_badge_exclamationmark_fill.rawValue,
            "badge.plus.radiowaves.right": SFSymbol.badge_plus_radiowaves_right.rawValue,
            "badge.plus.radiowaves.forward": SFSymbol.badge_plus_radiowaves_forward.rawValue,
            "music.note": SFSymbol.music_note.rawValue,
            "music.note.list": SFSymbol.music_note_list.rawValue,
            "music.quarternote.3": SFSymbol.music_quarternote_3.rawValue,
            "music.mic": SFSymbol.music_mic.rawValue,
            "music.mic.circle": SFSymbol.music_mic_circle.rawValue,
            "music.mic.circle.fill": SFSymbol.music_mic_circle_fill.rawValue,
            "arrow.rectanglepath": SFSymbol.arrow_rectanglepath.rawValue,
            "goforward": SFSymbol.goforward.rawValue,
            "gobackward": SFSymbol.gobackward.rawValue,
            "goforward.5": SFSymbol.goforward_5.rawValue,
            "gobackward.5": SFSymbol.gobackward_5.rawValue,
            "goforward.10": SFSymbol.goforward_10.rawValue,
            "gobackward.10": SFSymbol.gobackward_10.rawValue,
            "goforward.15": SFSymbol.goforward_15.rawValue,
            "gobackward.15": SFSymbol.gobackward_15.rawValue,
            "goforward.30": SFSymbol.goforward_30.rawValue,
            "gobackward.30": SFSymbol.gobackward_30.rawValue,
            "goforward.45": SFSymbol.goforward_45.rawValue,
            "gobackward.45": SFSymbol.gobackward_45.rawValue,
            "goforward.60": SFSymbol.goforward_60.rawValue,
            "gobackward.60": SFSymbol.gobackward_60.rawValue,
            "goforward.75": SFSymbol.goforward_75.rawValue,
            "gobackward.75": SFSymbol.gobackward_75.rawValue,
            "goforward.90": SFSymbol.goforward_90.rawValue,
            "gobackward.90": SFSymbol.gobackward_90.rawValue,
            "goforward.plus": SFSymbol.goforward_plus.rawValue,
            "gobackward.minus": SFSymbol.gobackward_minus.rawValue,
            "swift": SFSymbol.swift.rawValue,
            "magnifyingglass": SFSymbol.magnifyingglass.rawValue,
            "magnifyingglass.circle": SFSymbol.magnifyingglass_circle.rawValue,
            "magnifyingglass.circle.fill": SFSymbol.magnifyingglass_circle_fill.rawValue,
            "plus.magnifyingglass": SFSymbol.plus_magnifyingglass.rawValue,
            "minus.magnifyingglass": SFSymbol.minus_magnifyingglass.rawValue,
            "1.magnifyingglass": SFSymbol._1_magnifyingglass.rawValue,
            "arrow.up.left.and.down.right.magnifyingglass": SFSymbol.arrow_up_left_and_down_right_magnifyingglass.rawValue,
            "text.magnifyingglass": SFSymbol.text_magnifyingglass.rawValue,
            "sparkle.magnifyingglass": SFSymbol.sparkle_magnifyingglass.rawValue,
            "location.magnifyingglass": SFSymbol.location_magnifyingglass.rawValue,
            "loupe": SFSymbol.loupe.rawValue,
            "mic": SFSymbol.mic.rawValue,
            "mic.fill": SFSymbol.mic_fill.rawValue,
            "mic.circle": SFSymbol.mic_circle.rawValue,
            "mic.circle.fill": SFSymbol.mic_circle_fill.rawValue,
            "mic.square": SFSymbol.mic_square.rawValue,
            "mic.square.fill": SFSymbol.mic_square_fill.rawValue,
            "mic.slash": SFSymbol.mic_slash.rawValue,
            "mic.slash.fill": SFSymbol.mic_slash_fill.rawValue,
            "mic.slash.circle": SFSymbol.mic_slash_circle.rawValue,
            "mic.slash.circle.fill": SFSymbol.mic_slash_circle_fill.rawValue,
            "mic.badge.plus": SFSymbol.mic_badge_plus.rawValue,
            "mic.fill.badge.plus": SFSymbol.mic_fill_badge_plus.rawValue,
            "line.diagonal": SFSymbol.line_diagonal.rawValue,
            "line.diagonal.arrow": SFSymbol.line_diagonal_arrow.rawValue,
            "circle.slash": SFSymbol.circle_slash.rawValue,
            "circle.slash.fill": SFSymbol.circle_slash_fill.rawValue,
            "smallcircle.filled.circle.fill": SFSymbol.smallcircle_filled_circle_fill.rawValue,
            "circle.dashed": SFSymbol.circle_dashed.rawValue,
            "circle.dashed.inset.filled": SFSymbol.circle_dashed_inset_filled.rawValue,
            "circle.dotted": SFSymbol.circle_dotted.rawValue,
            "circlebadge": SFSymbol.circlebadge.rawValue,
            "circlebadge.fill": SFSymbol.circlebadge_fill.rawValue,
            "circlebadge.2": SFSymbol.circlebadge_2.rawValue,
            "circlebadge.2.fill": SFSymbol.circlebadge_2_fill.rawValue,
            "smallcircle.circle.fill": SFSymbol.smallcircle_circle_fill.rawValue,
            "target": SFSymbol.target.rawValue,
            "capsule": SFSymbol.capsule.rawValue,
            "capsule.fill": SFSymbol.capsule_fill.rawValue,
            "capsule.lefthalf.filled": SFSymbol.capsule_lefthalf_filled.rawValue,
            "capsule.righthalf.filled": SFSymbol.capsule_righthalf_filled.rawValue,
            "capsule.tophalf.filled": SFSymbol.capsule_tophalf_filled.rawValue,
            "capsule.bottomhalf.filled": SFSymbol.capsule_bottomhalf_filled.rawValue,
            "capsule.inset.filled": SFSymbol.capsule_inset_filled.rawValue,
            "capsule.portrait": SFSymbol.capsule_portrait.rawValue,
            "capsule.portrait.fill": SFSymbol.capsule_portrait_fill.rawValue,
            "capsule.portrait.lefthalf.filled": SFSymbol.capsule_portrait_lefthalf_filled.rawValue,
            "capsule.portrait.righthalf.filled": SFSymbol.capsule_portrait_righthalf_filled.rawValue,
            "capsule.portrait.tophalf.filled": SFSymbol.capsule_portrait_tophalf_filled.rawValue,
            "capsule.portrait.bottomhalf.filled": SFSymbol.capsule_portrait_bottomhalf_filled.rawValue,
            "capsule.portrait.inset.filled": SFSymbol.capsule_portrait_inset_filled.rawValue,
            "oval": SFSymbol.oval.rawValue,
            "oval.fill": SFSymbol.oval_fill.rawValue,
            "oval.lefthalf.filled": SFSymbol.oval_lefthalf_filled.rawValue,
            "oval.righthalf.filled": SFSymbol.oval_righthalf_filled.rawValue,
            "oval.tophalf.filled": SFSymbol.oval_tophalf_filled.rawValue,
            "oval.bottomhalf.filled": SFSymbol.oval_bottomhalf_filled.rawValue,
            "oval.inset.filled": SFSymbol.oval_inset_filled.rawValue,
            "oval.portrait": SFSymbol.oval_portrait.rawValue,
            "oval.portrait.fill": SFSymbol.oval_portrait_fill.rawValue,
            "oval.portrait.lefthalf.filled": SFSymbol.oval_portrait_lefthalf_filled.rawValue,
            "oval.portrait.righthalf.filled": SFSymbol.oval_portrait_righthalf_filled.rawValue,
            "oval.portrait.tophalf.filled": SFSymbol.oval_portrait_tophalf_filled.rawValue,
            "oval.portrait.bottomhalf.filled": SFSymbol.oval_portrait_bottomhalf_filled.rawValue,
            "oval.portrait.inset.filled": SFSymbol.oval_portrait_inset_filled.rawValue,
            "square.slash": SFSymbol.square_slash.rawValue,
            "square.slash.fill": SFSymbol.square_slash_fill.rawValue,
            "square.inset.filled": SFSymbol.square_inset_filled.rawValue,
            "square.split.2x1": SFSymbol.square_split_2x1.rawValue,
            "square.split.2x1.fill": SFSymbol.square_split_2x1_fill.rawValue,
            "square.split.1x2.fill": SFSymbol.square_split_1x2_fill.rawValue,
            "square.split.2x2.fill": SFSymbol.square_split_2x2_fill.rawValue,
            "square.split.diagonal.2x2.fill": SFSymbol.square_split_diagonal_2x2_fill.rawValue,
            "square.split.diagonal": SFSymbol.square_split_diagonal.rawValue,
            "square.split.diagonal.fill": SFSymbol.square_split_diagonal_fill.rawValue,
            "dot.square.fill": SFSymbol.dot_square_fill.rawValue,
            "circle.square": SFSymbol.circle_square.rawValue,
            "circle.square.fill": SFSymbol.circle_square_fill.rawValue,
            "square.dashed": SFSymbol.square_dashed.rawValue,
            "square.dashed.inset.filled": SFSymbol.square_dashed_inset_filled.rawValue,
            "plus.square.dashed": SFSymbol.plus_square_dashed.rawValue,
            "questionmark.square.dashed": SFSymbol.questionmark_square_dashed.rawValue,
            "square.on.square": SFSymbol.square_on_square.rawValue,
            "square.fill.on.square.fill": SFSymbol.square_fill_on_square_fill.rawValue,
            "square.filled.on.square": SFSymbol.square_filled_on_square.rawValue,
            "hand.raised.square.on.square": SFSymbol.hand_raised_square_on_square.rawValue,
            "hand.raised.square.on.square.fill": SFSymbol.hand_raised_square_on_square_fill.rawValue,
            "sparkles.square.filled.on.square": SFSymbol.sparkles_square_filled_on_square.rawValue,
            "square.on.square.dashed": SFSymbol.square_on_square_dashed.rawValue,
            "plus.square.on.square": SFSymbol.plus_square_on_square.rawValue,
            "plus.square.fill.on.square.fill": SFSymbol.plus_square_fill_on_square_fill.rawValue,
            "square.on.circle": SFSymbol.square_on_circle.rawValue,
            "square.fill.on.circle.fill": SFSymbol.square_fill_on_circle_fill.rawValue,
            "r.square.on.square": SFSymbol.r_square_on_square.rawValue,
            "r.square.on.square.fill": SFSymbol.r_square_on_square_fill.rawValue,
            "j.square.on.square": SFSymbol.j_square_on_square.rawValue,
            "j.square.on.square.fill": SFSymbol.j_square_on_square_fill.rawValue,
            "h.square.on.square": SFSymbol.h_square_on_square.rawValue,
            "h.square.on.square.fill": SFSymbol.h_square_on_square_fill.rawValue,
            "square.stack": SFSymbol.square_stack.rawValue,
            "square.stack.fill": SFSymbol.square_stack_fill.rawValue,
            "squareshape": SFSymbol.squareshape.rawValue,
            "squareshape.fill": SFSymbol.squareshape_fill.rawValue,
            "squareshape.dashed.squareshape": SFSymbol.squareshape_dashed_squareshape.rawValue,
            "squareshape.squareshape.dashed": SFSymbol.squareshape_squareshape_dashed.rawValue,
            "dot.squareshape": SFSymbol.dot_squareshape.rawValue,
            "dot.squareshape.fill": SFSymbol.dot_squareshape_fill.rawValue,
            "app": SFSymbol.app.rawValue,
            "app.fill": SFSymbol.app_fill.rawValue,
            "rectangle": SFSymbol.rectangle.rawValue,
            "rectangle.fill": SFSymbol.rectangle_fill.rawValue,
            "rectangle.slash": SFSymbol.rectangle_slash.rawValue,
            "rectangle.slash.fill": SFSymbol.rectangle_slash_fill.rawValue,
            "rectangle.lefthalf.filled": SFSymbol.rectangle_lefthalf_filled.rawValue,
            "rectangle.righthalf.filled": SFSymbol.rectangle_righthalf_filled.rawValue,
            "rectangle.leadinghalf.filled": SFSymbol.rectangle_leadinghalf_filled.rawValue,
            "rectangle.trailinghalf.filled": SFSymbol.rectangle_trailinghalf_filled.rawValue,
            "rectangle.tophalf.filled": SFSymbol.rectangle_tophalf_filled.rawValue,
            "rectangle.bottomhalf.filled": SFSymbol.rectangle_bottomhalf_filled.rawValue,
            "rectangle.split.2x1": SFSymbol.rectangle_split_2x1.rawValue,
            "rectangle.split.2x1.fill": SFSymbol.rectangle_split_2x1_fill.rawValue,
            "rectangle.split.2x1.slash": SFSymbol.rectangle_split_2x1_slash.rawValue,
            "rectangle.split.2x1.slash.fill": SFSymbol.rectangle_split_2x1_slash_fill.rawValue,
            "rectangle.split.1x2": SFSymbol.rectangle_split_1x2.rawValue,
            "rectangle.split.1x2.fill": SFSymbol.rectangle_split_1x2_fill.rawValue,
            "rectangle.split.3x1": SFSymbol.rectangle_split_3x1.rawValue,
            "rectangle.split.3x1.fill": SFSymbol.rectangle_split_3x1_fill.rawValue,
            "rectangle.split.2x2": SFSymbol.rectangle_split_2x2.rawValue,
            "rectangle.split.2x2.fill": SFSymbol.rectangle_split_2x2_fill.rawValue,
            "tablecells": SFSymbol.tablecells.rawValue,
            "tablecells.fill": SFSymbol.tablecells_fill.rawValue,
            "tablecells.badge.ellipsis": SFSymbol.tablecells_badge_ellipsis.rawValue,
            "tablecells.fill.badge.ellipsis": SFSymbol.tablecells_fill_badge_ellipsis.rawValue,
            "rectangle.split.3x3": SFSymbol.rectangle_split_3x3.rawValue,
            "rectangle.inset.filled": SFSymbol.rectangle_inset_filled.rawValue,
            "rectangle.tophalf.inset.filled": SFSymbol.rectangle_tophalf_inset_filled.rawValue,
            "rectangle.bottomhalf.inset.filled": SFSymbol.rectangle_bottomhalf_inset_filled.rawValue,
            "rectangle.lefthalf.inset.filled": SFSymbol.rectangle_lefthalf_inset_filled.rawValue,
            "rectangle.righthalf.inset.filled": SFSymbol.rectangle_righthalf_inset_filled.rawValue,
            "rectangle.leadinghalf.inset.filled": SFSymbol.rectangle_leadinghalf_inset_filled.rawValue,
            "rectangle.trailinghalf.inset.filled": SFSymbol.rectangle_trailinghalf_inset_filled.rawValue,
            "rectangle.lefthalf.inset.filled.arrow.left": SFSymbol.rectangle_lefthalf_inset_filled_arrow_left.rawValue,
            "rectangle.righthalf.inset.filled.arrow.right": SFSymbol.rectangle_righthalf_inset_filled_arrow_right.rawValue,
            "rectangle.leadinghalf.inset.filled.arrow.leading": SFSymbol.rectangle_leadinghalf_inset_filled_arrow_leading.rawValue,
            "rectangle.trailinghalf.inset.filled.arrow.trailing": SFSymbol.rectangle_trailinghalf_inset_filled_arrow_trailing.rawValue,
            "rectangle.topthird.inset.filled": SFSymbol.rectangle_topthird_inset_filled.rawValue,
            "rectangle.bottomthird.inset.filled": SFSymbol.rectangle_bottomthird_inset_filled.rawValue,
            "rectangle.leftthird.inset.filled": SFSymbol.rectangle_leftthird_inset_filled.rawValue,
            "rectangle.rightthird.inset.filled": SFSymbol.rectangle_rightthird_inset_filled.rawValue,
            "rectangle.leadingthird.inset.filled": SFSymbol.rectangle_leadingthird_inset_filled.rawValue,
            "rectangle.trailingthird.inset.filled": SFSymbol.rectangle_trailingthird_inset_filled.rawValue,
            "rectangle.center.inset.filled": SFSymbol.rectangle_center_inset_filled.rawValue,
            "rectangle.center.inset.filled.badge.plus": SFSymbol.rectangle_center_inset_filled_badge_plus.rawValue,
            "rectangle.inset.topleft.filled": SFSymbol.rectangle_inset_topleft_filled.rawValue,
            "rectangle.inset.topright.filled": SFSymbol.rectangle_inset_topright_filled.rawValue,
            "rectangle.inset.topleading.filled": SFSymbol.rectangle_inset_topleading_filled.rawValue,
            "rectangle.inset.toptrailing.filled": SFSymbol.rectangle_inset_toptrailing_filled.rawValue,
            "rectangle.inset.bottomleft.filled": SFSymbol.rectangle_inset_bottomleft_filled.rawValue,
            "rectangle.inset.bottomright.filled": SFSymbol.rectangle_inset_bottomright_filled.rawValue,
            "rectangle.inset.bottomleading.filled": SFSymbol.rectangle_inset_bottomleading_filled.rawValue,
            "rectangle.inset.bottomtrailing.filled": SFSymbol.rectangle_inset_bottomtrailing_filled.rawValue,
            "rectangle.on.rectangle": SFSymbol.rectangle_on_rectangle.rawValue,
            "rectangle.fill.on.rectangle.fill": SFSymbol.rectangle_fill_on_rectangle_fill.rawValue,
            "rectangle.on.rectangle.circle": SFSymbol.rectangle_on_rectangle_circle.rawValue,
            "rectangle.on.rectangle.circle.fill": SFSymbol.rectangle_on_rectangle_circle_fill.rawValue,
            "rectangle.on.rectangle.square": SFSymbol.rectangle_on_rectangle_square.rawValue,
            "rectangle.on.rectangle.square.fill": SFSymbol.rectangle_on_rectangle_square_fill.rawValue,
            "rectangle.inset.filled.on.rectangle": SFSymbol.rectangle_inset_filled_on_rectangle.rawValue,
            "rectangle.on.rectangle.slash": SFSymbol.rectangle_on_rectangle_slash.rawValue,
            "rectangle.on.rectangle.slash.fill": SFSymbol.rectangle_on_rectangle_slash_fill.rawValue,
            "rectangle.on.rectangle.slash.circle": SFSymbol.rectangle_on_rectangle_slash_circle.rawValue,
            "rectangle.on.rectangle.slash.circle.fill": SFSymbol.rectangle_on_rectangle_slash_circle_fill.rawValue,
            "play.rectangle.on.rectangle": SFSymbol.play_rectangle_on_rectangle.rawValue,
            "play.rectangle.on.rectangle.fill": SFSymbol.play_rectangle_on_rectangle_fill.rawValue,
            "play.rectangle.on.rectangle.circle": SFSymbol.play_rectangle_on_rectangle_circle.rawValue,
            "play.rectangle.on.rectangle.circle.fill": SFSymbol.play_rectangle_on_rectangle_circle_fill.rawValue,
            "plus.rectangle.on.rectangle": SFSymbol.plus_rectangle_on_rectangle.rawValue,
            "plus.rectangle.fill.on.rectangle.fill": SFSymbol.plus_rectangle_fill_on_rectangle_fill.rawValue,
            "rectangle.portrait": SFSymbol.rectangle_portrait.rawValue,
            "rectangle.portrait.fill": SFSymbol.rectangle_portrait_fill.rawValue,
            "rectangle.portrait.slash": SFSymbol.rectangle_portrait_slash.rawValue,
            "rectangle.portrait.slash.fill": SFSymbol.rectangle_portrait_slash_fill.rawValue,
            "rectangle.portrait.lefthalf.filled": SFSymbol.rectangle_portrait_lefthalf_filled.rawValue,
            "rectangle.portrait.righthalf.filled": SFSymbol.rectangle_portrait_righthalf_filled.rawValue,
            "rectangle.portrait.tophalf.filled": SFSymbol.rectangle_portrait_tophalf_filled.rawValue,
            "rectangle.portrait.bottomhalf.filled": SFSymbol.rectangle_portrait_bottomhalf_filled.rawValue,
            "rectangle.portrait.inset.filled": SFSymbol.rectangle_portrait_inset_filled.rawValue,
            "rectangle.portrait.tophalf.inset.filled": SFSymbol.rectangle_portrait_tophalf_inset_filled.rawValue,
            "rectangle.portrait.bottomhalf.inset.filled": SFSymbol.rectangle_portrait_bottomhalf_inset_filled.rawValue,
            "rectangle.portrait.lefthalf.inset.filled": SFSymbol.rectangle_portrait_lefthalf_inset_filled.rawValue,
            "rectangle.portrait.righthalf.inset.filled": SFSymbol.rectangle_portrait_righthalf_inset_filled.rawValue,
            "rectangle.portrait.leadinghalf.inset.filled": SFSymbol.rectangle_portrait_leadinghalf_inset_filled.rawValue,
            "rectangle.portrait.trailinghalf.inset.filled": SFSymbol.rectangle_portrait_trailinghalf_inset_filled.rawValue,
            "rectangle.portrait.topthird.inset.filled": SFSymbol.rectangle_portrait_topthird_inset_filled.rawValue,
            "rectangle.portrait.bottomthird.inset.filled": SFSymbol.rectangle_portrait_bottomthird_inset_filled.rawValue,
            "rectangle.portrait.leftthird.inset.filled": SFSymbol.rectangle_portrait_leftthird_inset_filled.rawValue,
            "rectangle.portrait.rightthird.inset.filled": SFSymbol.rectangle_portrait_rightthird_inset_filled.rawValue,
            "rectangle.portrait.leadingthird.inset.filled": SFSymbol.rectangle_portrait_leadingthird_inset_filled.rawValue,
            "rectangle.portrait.trailingthird.inset.filled": SFSymbol.rectangle_portrait_trailingthird_inset_filled.rawValue,
            "rectangle.portrait.center.inset.filled": SFSymbol.rectangle_portrait_center_inset_filled.rawValue,
            "rectangle.portrait.topleft.inset.filled": SFSymbol.rectangle_portrait_topleft_inset_filled.rawValue,
            "rectangle.portrait.topright.inset.filled": SFSymbol.rectangle_portrait_topright_inset_filled.rawValue,
            "rectangle.portrait.topleading.inset.filled": SFSymbol.rectangle_portrait_topleading_inset_filled.rawValue,
            "rectangle.portrait.toptrailing.inset.filled": SFSymbol.rectangle_portrait_toptrailing_inset_filled.rawValue,
            "rectangle.portrait.bottomleft.inset.filled": SFSymbol.rectangle_portrait_bottomleft_inset_filled.rawValue,
            "rectangle.portrait.bottomright.inset.filled": SFSymbol.rectangle_portrait_bottomright_inset_filled.rawValue,
            "rectangle.portrait.bottomleading.inset.filled": SFSymbol.rectangle_portrait_bottomleading_inset_filled.rawValue,
            "rectangle.portrait.bottomtrailing.inset.filled": SFSymbol.rectangle_portrait_bottomtrailing_inset_filled.rawValue,
            "rectangle.portrait.on.rectangle.portrait": SFSymbol.rectangle_portrait_on_rectangle_portrait.rawValue,
            "rectangle.portrait.on.rectangle.portrait.fill": SFSymbol.rectangle_portrait_on_rectangle_portrait_fill.rawValue,
            "rectangle.portrait.on.rectangle.portrait.slash": SFSymbol.rectangle_portrait_on_rectangle_portrait_slash.rawValue,
            "rectangle.portrait.on.rectangle.portrait.slash.fill": SFSymbol.rectangle_portrait_on_rectangle_portrait_slash_fill.rawValue,
            "rectangle.portrait.split.2x1": SFSymbol.rectangle_portrait_split_2x1.rawValue,
            "rectangle.portrait.split.2x1.fill": SFSymbol.rectangle_portrait_split_2x1_fill.rawValue,
            "rectangle.portrait.split.2x1.slash": SFSymbol.rectangle_portrait_split_2x1_slash.rawValue,
            "rectangle.portrait.split.2x1.slash.fill": SFSymbol.rectangle_portrait_split_2x1_slash_fill.rawValue,
            "triangle.fill": SFSymbol.triangle_fill.rawValue,
            "triangle.tophalf.filled": SFSymbol.triangle_tophalf_filled.rawValue,
            "triangle.bottomhalf.filled": SFSymbol.triangle_bottomhalf_filled.rawValue,
            "triangle.inset.filled": SFSymbol.triangle_inset_filled.rawValue,
            "diamond": SFSymbol.diamond.rawValue,
            "diamond.fill": SFSymbol.diamond_fill.rawValue,
            "diamond.circle": SFSymbol.diamond_circle.rawValue,
            "diamond.circle.fill": SFSymbol.diamond_circle_fill.rawValue,
            "diamond.inset.filled": SFSymbol.diamond_inset_filled.rawValue,
            "octagon": SFSymbol.octagon.rawValue,
            "octagon.fill": SFSymbol.octagon_fill.rawValue,
            "octagon.lefthalf.filled": SFSymbol.octagon_lefthalf_filled.rawValue,
            "octagon.righthalf.filled": SFSymbol.octagon_righthalf_filled.rawValue,
            "octagon.tophalf.filled": SFSymbol.octagon_tophalf_filled.rawValue,
            "octagon.bottomhalf.filled": SFSymbol.octagon_bottomhalf_filled.rawValue,
            "hexagon.lefthalf.filled": SFSymbol.hexagon_lefthalf_filled.rawValue,
            "hexagon.righthalf.filled": SFSymbol.hexagon_righthalf_filled.rawValue,
            "hexagon.tophalf.filled": SFSymbol.hexagon_tophalf_filled.rawValue,
            "hexagon.bottomhalf.filled": SFSymbol.hexagon_bottomhalf_filled.rawValue,
            "pentagon": SFSymbol.pentagon.rawValue,
            "pentagon.fill": SFSymbol.pentagon_fill.rawValue,
            "pentagon.lefthalf.filled": SFSymbol.pentagon_lefthalf_filled.rawValue,
            "pentagon.righthalf.filled": SFSymbol.pentagon_righthalf_filled.rawValue,
            "pentagon.tophalf.filled": SFSymbol.pentagon_tophalf_filled.rawValue,
            "pentagon.bottomhalf.filled": SFSymbol.pentagon_bottomhalf_filled.rawValue,
            "heart": SFSymbol.heart.rawValue,
            "heart.fill": SFSymbol.heart_fill.rawValue,
            "heart.circle": SFSymbol.heart_circle.rawValue,
            "heart.circle.fill": SFSymbol.heart_circle_fill.rawValue,
            "heart.square": SFSymbol.heart_square.rawValue,
            "heart.square.fill": SFSymbol.heart_square_fill.rawValue,
            "heart.rectangle": SFSymbol.heart_rectangle.rawValue,
            "heart.rectangle.fill": SFSymbol.heart_rectangle_fill.rawValue,
            "heart.slash": SFSymbol.heart_slash.rawValue,
            "heart.slash.fill": SFSymbol.heart_slash_fill.rawValue,
            "heart.slash.circle": SFSymbol.heart_slash_circle.rawValue,
            "heart.slash.circle.fill": SFSymbol.heart_slash_circle_fill.rawValue,
            "bolt.heart": SFSymbol.bolt_heart.rawValue,
            "bolt.heart.fill": SFSymbol.bolt_heart_fill.rawValue,
            "arrow.up.heart": SFSymbol.arrow_up_heart.rawValue,
            "arrow.up.heart.fill": SFSymbol.arrow_up_heart_fill.rawValue,
            "arrow.down.heart": SFSymbol.arrow_down_heart.rawValue,
            "arrow.down.heart.fill": SFSymbol.arrow_down_heart_fill.rawValue,
            "arrow.clockwise.heart": SFSymbol.arrow_clockwise_heart.rawValue,
            "arrow.clockwise.heart.fill": SFSymbol.arrow_clockwise_heart_fill.rawValue,
            "rhombus": SFSymbol.rhombus.rawValue,
            "rhombus.fill": SFSymbol.rhombus_fill.rawValue,
            "star.leadinghalf.filled": SFSymbol.star_leadinghalf_filled.rawValue,
            "star.circle": SFSymbol.star_circle.rawValue,
            "star.circle.fill": SFSymbol.star_circle_fill.rawValue,
            "star.square": SFSymbol.star_square.rawValue,
            "star.square.fill": SFSymbol.star_square_fill.rawValue,
            "star.slash": SFSymbol.star_slash.rawValue,
            "star.slash.fill": SFSymbol.star_slash_fill.rawValue,
            "line.horizontal.star.fill.line.horizontal": SFSymbol.line_horizontal_star_fill_line_horizontal.rawValue,
            "flag": SFSymbol.flag.rawValue,
            "flag.fill": SFSymbol.flag_fill.rawValue,
            "flag.circle": SFSymbol.flag_circle.rawValue,
            "flag.circle.fill": SFSymbol.flag_circle_fill.rawValue,
            "flag.square": SFSymbol.flag_square.rawValue,
            "flag.square.fill": SFSymbol.flag_square_fill.rawValue,
            "flag.slash": SFSymbol.flag_slash.rawValue,
            "flag.slash.fill": SFSymbol.flag_slash_fill.rawValue,
            "flag.slash.circle": SFSymbol.flag_slash_circle.rawValue,
            "flag.slash.circle.fill": SFSymbol.flag_slash_circle_fill.rawValue,
            "flag.badge.ellipsis": SFSymbol.flag_badge_ellipsis.rawValue,
            "flag.badge.ellipsis.fill": SFSymbol.flag_badge_ellipsis_fill.rawValue,
            "flag.2.crossed": SFSymbol.flag_2_crossed.rawValue,
            "flag.2.crossed.fill": SFSymbol.flag_2_crossed_fill.rawValue,
            "flag.filled.and.flag.crossed": SFSymbol.flag_filled_and_flag_crossed.rawValue,
            "flag.and.flag.filled.crossed": SFSymbol.flag_and_flag_filled_crossed.rawValue,
            "location": SFSymbol.location.rawValue,
            "location.fill": SFSymbol.location_fill.rawValue,
            "location.circle": SFSymbol.location_circle.rawValue,
            "location.circle.fill": SFSymbol.location_circle_fill.rawValue,
            "location.square": SFSymbol.location_square.rawValue,
            "location.square.fill": SFSymbol.location_square_fill.rawValue,
            "location.slash": SFSymbol.location_slash.rawValue,
            "location.slash.fill": SFSymbol.location_slash_fill.rawValue,
            "location.north": SFSymbol.location_north.rawValue,
            "location.north.fill": SFSymbol.location_north_fill.rawValue,
            "location.north.circle": SFSymbol.location_north_circle.rawValue,
            "location.north.circle.fill": SFSymbol.location_north_circle_fill.rawValue,
            "location.north.line": SFSymbol.location_north_line.rawValue,
            "location.north.line.fill": SFSymbol.location_north_line_fill.rawValue,
            "sensor.tag.radiowaves.forward": SFSymbol.sensor_tag_radiowaves_forward.rawValue,
            "sensor.tag.radiowaves.forward.fill": SFSymbol.sensor_tag_radiowaves_forward_fill.rawValue,
            "airtag.radiowaves.forward": SFSymbol.airtag_radiowaves_forward.rawValue,
            "airtag.radiowaves.forward.fill": SFSymbol.airtag_radiowaves_forward_fill.rawValue,
            "airtag": SFSymbol.airtag.rawValue,
            "airtag.fill": SFSymbol.airtag_fill.rawValue,
            "bell": SFSymbol.bell.rawValue,
            "bell.fill": SFSymbol.bell_fill.rawValue,
            "bell.circle": SFSymbol.bell_circle.rawValue,
            "bell.circle.fill": SFSymbol.bell_circle_fill.rawValue,
            "bell.square": SFSymbol.bell_square.rawValue,
            "bell.square.fill": SFSymbol.bell_square_fill.rawValue,
            "bell.slash": SFSymbol.bell_slash.rawValue,
            "bell.slash.fill": SFSymbol.bell_slash_fill.rawValue,
            "bell.slash.circle": SFSymbol.bell_slash_circle.rawValue,
            "bell.slash.circle.fill": SFSymbol.bell_slash_circle_fill.rawValue,
            "bell.and.waveform": SFSymbol.bell_and_waveform.rawValue,
            "bell.and.waveform.fill": SFSymbol.bell_and_waveform_fill.rawValue,
            "bell.badge": SFSymbol.bell_badge.rawValue,
            "bell.badge.fill": SFSymbol.bell_badge_fill.rawValue,
            "bell.badge.circle": SFSymbol.bell_badge_circle.rawValue,
            "bell.badge.circle.fill": SFSymbol.bell_badge_circle_fill.rawValue,
            "tag": SFSymbol.tag.rawValue,
            "tag.fill": SFSymbol.tag_fill.rawValue,
            "tag.circle": SFSymbol.tag_circle.rawValue,
            "tag.circle.fill": SFSymbol.tag_circle_fill.rawValue,
            "tag.square": SFSymbol.tag_square.rawValue,
            "tag.square.fill": SFSymbol.tag_square_fill.rawValue,
            "tag.slash": SFSymbol.tag_slash.rawValue,
            "tag.slash.fill": SFSymbol.tag_slash_fill.rawValue,
            "bolt": SFSymbol.bolt.rawValue,
            "bolt.fill": SFSymbol.bolt_fill.rawValue,
            "bolt.circle": SFSymbol.bolt_circle.rawValue,
            "bolt.circle.fill": SFSymbol.bolt_circle_fill.rawValue,
            "bolt.square": SFSymbol.bolt_square.rawValue,
            "bolt.square.fill": SFSymbol.bolt_square_fill.rawValue,
            "bolt.ring.closed": SFSymbol.bolt_ring_closed.rawValue,
            "bolt.shield": SFSymbol.bolt_shield.rawValue,
            "bolt.shield.fill": SFSymbol.bolt_shield_fill.rawValue,
            "bolt.slash": SFSymbol.bolt_slash.rawValue,
            "bolt.slash.fill": SFSymbol.bolt_slash_fill.rawValue,
            "bolt.slash.circle": SFSymbol.bolt_slash_circle.rawValue,
            "bolt.slash.circle.fill": SFSymbol.bolt_slash_circle_fill.rawValue,
            "bolt.badge.a": SFSymbol.bolt_badge_a.rawValue,
            "bolt.badge.a.fill": SFSymbol.bolt_badge_a_fill.rawValue,
            "bolt.horizontal": SFSymbol.bolt_horizontal.rawValue,
            "bolt.horizontal.fill": SFSymbol.bolt_horizontal_fill.rawValue,
            "bolt.horizontal.circle": SFSymbol.bolt_horizontal_circle.rawValue,
            "bolt.horizontal.circle.fill": SFSymbol.bolt_horizontal_circle_fill.rawValue,
            "eye": SFSymbol.eye.rawValue,
            "eye.fill": SFSymbol.eye_fill.rawValue,
            "eye.circle": SFSymbol.eye_circle.rawValue,
            "eye.circle.fill": SFSymbol.eye_circle_fill.rawValue,
            "eye.square": SFSymbol.eye_square.rawValue,
            "eye.square.fill": SFSymbol.eye_square_fill.rawValue,
            "eye.slash": SFSymbol.eye_slash.rawValue,
            "eye.slash.fill": SFSymbol.eye_slash_fill.rawValue,
            "eye.slash.circle": SFSymbol.eye_slash_circle.rawValue,
            "eye.slash.circle.fill": SFSymbol.eye_slash_circle_fill.rawValue,
            "eye.trianglebadge.exclamationmark": SFSymbol.eye_trianglebadge_exclamationmark.rawValue,
            "eye.trianglebadge.exclamationmark.fill": SFSymbol.eye_trianglebadge_exclamationmark_fill.rawValue,
            "tshirt": SFSymbol.tshirt.rawValue,
            "tshirt.fill": SFSymbol.tshirt_fill.rawValue,
            "eyes": SFSymbol.eyes.rawValue,
            "eyes.inverse": SFSymbol.eyes_inverse.rawValue,
            "eyebrow": SFSymbol.eyebrow.rawValue,
            "nose": SFSymbol.nose.rawValue,
            "nose.fill": SFSymbol.nose_fill.rawValue,
            "mustache": SFSymbol.mustache.rawValue,
            "mustache.fill": SFSymbol.mustache_fill.rawValue,
            "mouth": SFSymbol.mouth.rawValue,
            "mouth.fill": SFSymbol.mouth_fill.rawValue,
            "eyeglasses": SFSymbol.eyeglasses.rawValue,
            "facemask": SFSymbol.facemask.rawValue,
            "facemask.fill": SFSymbol.facemask_fill.rawValue,
            "brain.head.profile": SFSymbol.brain_head_profile.rawValue,
            "brain": SFSymbol.brain.rawValue,
            "icloud": SFSymbol.icloud.rawValue,
            "icloud.fill": SFSymbol.icloud_fill.rawValue,
            "icloud.circle": SFSymbol.icloud_circle.rawValue,
            "icloud.circle.fill": SFSymbol.icloud_circle_fill.rawValue,
            "icloud.square": SFSymbol.icloud_square.rawValue,
            "icloud.square.fill": SFSymbol.icloud_square_fill.rawValue,
            "icloud.slash": SFSymbol.icloud_slash.rawValue,
            "icloud.slash.fill": SFSymbol.icloud_slash_fill.rawValue,
            "exclamationmark.icloud": SFSymbol.exclamationmark_icloud.rawValue,
            "exclamationmark.icloud.fill": SFSymbol.exclamationmark_icloud_fill.rawValue,
            "checkmark.icloud": SFSymbol.checkmark_icloud.rawValue,
            "checkmark.icloud.fill": SFSymbol.checkmark_icloud_fill.rawValue,
            "xmark.icloud": SFSymbol.xmark_icloud.rawValue,
            "xmark.icloud.fill": SFSymbol.xmark_icloud_fill.rawValue,
            "link.icloud": SFSymbol.link_icloud.rawValue,
            "link.icloud.fill": SFSymbol.link_icloud_fill.rawValue,
            "bolt.horizontal.icloud": SFSymbol.bolt_horizontal_icloud.rawValue,
            "bolt.horizontal.icloud.fill": SFSymbol.bolt_horizontal_icloud_fill.rawValue,
            "person.icloud": SFSymbol.person_icloud.rawValue,
            "person.icloud.fill": SFSymbol.person_icloud_fill.rawValue,
            "lock.icloud": SFSymbol.lock_icloud.rawValue,
            "lock.icloud.fill": SFSymbol.lock_icloud_fill.rawValue,
            "key.icloud": SFSymbol.key_icloud.rawValue,
            "key.icloud.fill": SFSymbol.key_icloud_fill.rawValue,
            "arrow.clockwise.icloud": SFSymbol.arrow_clockwise_icloud.rawValue,
            "arrow.clockwise.icloud.fill": SFSymbol.arrow_clockwise_icloud_fill.rawValue,
            "arrow.counterclockwise.icloud": SFSymbol.arrow_counterclockwise_icloud.rawValue,
            "arrow.counterclockwise.icloud.fill": SFSymbol.arrow_counterclockwise_icloud_fill.rawValue,
            "icloud.and.arrow.down": SFSymbol.icloud_and_arrow_down.rawValue,
            "icloud.and.arrow.down.fill": SFSymbol.icloud_and_arrow_down_fill.rawValue,
            "icloud.and.arrow.up": SFSymbol.icloud_and_arrow_up.rawValue,
            "icloud.and.arrow.up.fill": SFSymbol.icloud_and_arrow_up_fill.rawValue,
            "flashlight.off.fill": SFSymbol.flashlight_off_fill.rawValue,
            "flashlight.on.fill": SFSymbol.flashlight_on_fill.rawValue,
            "camera": SFSymbol.camera.rawValue,
            "camera.fill": SFSymbol.camera_fill.rawValue,
            "camera.circle": SFSymbol.camera_circle.rawValue,
            "camera.circle.fill": SFSymbol.camera_circle_fill.rawValue,
            "camera.shutter.button": SFSymbol.camera_shutter_button.rawValue,
            "camera.shutter.button.fill": SFSymbol.camera_shutter_button_fill.rawValue,
            "camera.badge.ellipsis": SFSymbol.camera_badge_ellipsis.rawValue,
            "camera.fill.badge.ellipsis": SFSymbol.camera_fill_badge_ellipsis.rawValue,
            "arrow.triangle.2.circlepath.camera": SFSymbol.arrow_triangle_2_circlepath_camera.rawValue,
            "arrow.triangle.2.circlepath.camera.fill": SFSymbol.arrow_triangle_2_circlepath_camera_fill.rawValue,
            "camera.on.rectangle": SFSymbol.camera_on_rectangle.rawValue,
            "camera.on.rectangle.fill": SFSymbol.camera_on_rectangle_fill.rawValue,
            "message": SFSymbol.message.rawValue,
            "message.fill": SFSymbol.message_fill.rawValue,
            "message.circle": SFSymbol.message_circle.rawValue,
            "message.circle.fill": SFSymbol.message_circle_fill.rawValue,
            "message.and.waveform": SFSymbol.message_and_waveform.rawValue,
            "message.and.waveform.fill": SFSymbol.message_and_waveform_fill.rawValue,
            "arrow.up.message": SFSymbol.arrow_up_message.rawValue,
            "arrow.up.message.fill": SFSymbol.arrow_up_message_fill.rawValue,
            "plus.message": SFSymbol.plus_message.rawValue,
            "plus.message.fill": SFSymbol.plus_message_fill.rawValue,
            "bubble.right": SFSymbol.bubble_right.rawValue,
            "bubble.right.fill": SFSymbol.bubble_right_fill.rawValue,
            "bubble.right.circle": SFSymbol.bubble_right_circle.rawValue,
            "bubble.right.circle.fill": SFSymbol.bubble_right_circle_fill.rawValue,
            "bubble.left": SFSymbol.bubble_left.rawValue,
            "bubble.left.fill": SFSymbol.bubble_left_fill.rawValue,
            "bubble.left.circle": SFSymbol.bubble_left_circle.rawValue,
            "bubble.left.circle.fill": SFSymbol.bubble_left_circle_fill.rawValue,
            "exclamationmark.bubble": SFSymbol.exclamationmark_bubble.rawValue,
            "exclamationmark.bubble.fill": SFSymbol.exclamationmark_bubble_fill.rawValue,
            "exclamationmark.bubble.circle": SFSymbol.exclamationmark_bubble_circle.rawValue,
            "exclamationmark.bubble.circle.fill": SFSymbol.exclamationmark_bubble_circle_fill.rawValue,
            "quote.opening": SFSymbol.quote_opening.rawValue,
            "quote.closing": SFSymbol.quote_closing.rawValue,
            "quote.bubble": SFSymbol.quote_bubble.rawValue,
            "quote.bubble.fill": SFSymbol.quote_bubble_fill.rawValue,
            "star.bubble": SFSymbol.star_bubble.rawValue,
            "star.bubble.fill": SFSymbol.star_bubble_fill.rawValue,
            "character.bubble": SFSymbol.character_bubble.rawValue,
            "character.bubble.fill": SFSymbol.character_bubble_fill.rawValue,
            "text.bubble": SFSymbol.text_bubble.rawValue,
            "text.bubble.fill": SFSymbol.text_bubble_fill.rawValue,
            "captions.bubble": SFSymbol.captions_bubble.rawValue,
            "captions.bubble.fill": SFSymbol.captions_bubble_fill.rawValue,
            "plus.bubble": SFSymbol.plus_bubble.rawValue,
            "plus.bubble.fill": SFSymbol.plus_bubble_fill.rawValue,
            "checkmark.bubble": SFSymbol.checkmark_bubble.rawValue,
            "checkmark.bubble.fill": SFSymbol.checkmark_bubble_fill.rawValue,
            "rectangle.3.group.bubble.left": SFSymbol.rectangle_3_group_bubble_left.rawValue,
            "rectangle.3.group.bubble.left.fill": SFSymbol.rectangle_3_group_bubble_left_fill.rawValue,
            "ellipsis.bubble": SFSymbol.ellipsis_bubble.rawValue,
            "ellipsis.bubble.fill": SFSymbol.ellipsis_bubble_fill.rawValue,
            "ellipsis.vertical.bubble": SFSymbol.ellipsis_vertical_bubble.rawValue,
            "ellipsis.vertical.bubble.fill": SFSymbol.ellipsis_vertical_bubble_fill.rawValue,
            "phone.bubble.left": SFSymbol.phone_bubble_left.rawValue,
            "phone.bubble.left.fill": SFSymbol.phone_bubble_left_fill.rawValue,
            "video.bubble.left": SFSymbol.video_bubble_left.rawValue,
            "video.bubble.left.fill": SFSymbol.video_bubble_left_fill.rawValue,
            "bubble.middle.bottom": SFSymbol.bubble_middle_bottom.rawValue,
            "bubble.middle.bottom.fill": SFSymbol.bubble_middle_bottom_fill.rawValue,
            "bubble.middle.top": SFSymbol.bubble_middle_top.rawValue,
            "bubble.middle.top.fill": SFSymbol.bubble_middle_top_fill.rawValue,
            "bubble.left.and.bubble.right": SFSymbol.bubble_left_and_bubble_right.rawValue,
            "bubble.left.and.bubble.right.fill": SFSymbol.bubble_left_and_bubble_right_fill.rawValue,
            "bubble.left.and.exclamationmark.bubble.right": SFSymbol.bubble_left_and_exclamationmark_bubble_right.rawValue,
            "bubble.left.and.exclamationmark.bubble.right.fill": SFSymbol.bubble_left_and_exclamationmark_bubble_right_fill.rawValue,
            "phone": SFSymbol.phone.rawValue,
            "phone.fill": SFSymbol.phone_fill.rawValue,
            "phone.circle": SFSymbol.phone_circle.rawValue,
            "phone.circle.fill": SFSymbol.phone_circle_fill.rawValue,
            "phone.badge.plus": SFSymbol.phone_badge_plus.rawValue,
            "phone.fill.badge.plus": SFSymbol.phone_fill_badge_plus.rawValue,
            "phone.connection": SFSymbol.phone_connection.rawValue,
            "phone.fill.connection": SFSymbol.phone_fill_connection.rawValue,
            "phone.and.waveform": SFSymbol.phone_and_waveform.rawValue,
            "phone.and.waveform.fill": SFSymbol.phone_and_waveform_fill.rawValue,
            "phone.arrow.up.right": SFSymbol.phone_arrow_up_right.rawValue,
            "phone.fill.arrow.up.right": SFSymbol.phone_fill_arrow_up_right.rawValue,
            "phone.arrow.down.left": SFSymbol.phone_arrow_down_left.rawValue,
            "phone.fill.arrow.down.left": SFSymbol.phone_fill_arrow_down_left.rawValue,
            "phone.arrow.right": SFSymbol.phone_arrow_right.rawValue,
            "phone.fill.arrow.right": SFSymbol.phone_fill_arrow_right.rawValue,
            "phone.down": SFSymbol.phone_down.rawValue,
            "phone.down.fill": SFSymbol.phone_down_fill.rawValue,
            "phone.down.circle": SFSymbol.phone_down_circle.rawValue,
            "phone.down.circle.fill": SFSymbol.phone_down_circle_fill.rawValue,
            "teletype": SFSymbol.teletype.rawValue,
            "teletype.circle": SFSymbol.teletype_circle.rawValue,
            "teletype.circle.fill": SFSymbol.teletype_circle_fill.rawValue,
            "teletype.answer": SFSymbol.teletype_answer.rawValue,
            "teletype.answer.circle": SFSymbol.teletype_answer_circle.rawValue,
            "teletype.answer.circle.fill": SFSymbol.teletype_answer_circle_fill.rawValue,
            "video": SFSymbol.video.rawValue,
            "video.fill": SFSymbol.video_fill.rawValue,
            "video.circle": SFSymbol.video_circle.rawValue,
            "video.circle.fill": SFSymbol.video_circle_fill.rawValue,
            "video.square": SFSymbol.video_square.rawValue,
            "video.square.fill": SFSymbol.video_square_fill.rawValue,
            "video.slash": SFSymbol.video_slash.rawValue,
            "video.slash.fill": SFSymbol.video_slash_fill.rawValue,
            "video.badge.plus": SFSymbol.video_badge_plus.rawValue,
            "video.fill.badge.plus": SFSymbol.video_fill_badge_plus.rawValue,
            "video.badge.checkmark": SFSymbol.video_badge_checkmark.rawValue,
            "video.fill.badge.checkmark": SFSymbol.video_fill_badge_checkmark.rawValue,
            "video.badge.ellipsis": SFSymbol.video_badge_ellipsis.rawValue,
            "video.fill.badge.ellipsis": SFSymbol.video_fill_badge_ellipsis.rawValue,
            "video.and.waveform": SFSymbol.video_and_waveform.rawValue,
            "video.and.waveform.fill": SFSymbol.video_and_waveform_fill.rawValue,
            "arrow.up.right.video": SFSymbol.arrow_up_right_video.rawValue,
            "arrow.up.right.video.fill": SFSymbol.arrow_up_right_video_fill.rawValue,
            "arrow.down.left.video": SFSymbol.arrow_down_left_video.rawValue,
            "arrow.down.left.video.fill": SFSymbol.arrow_down_left_video_fill.rawValue,
            "questionmark.video": SFSymbol.questionmark_video.rawValue,
            "questionmark.video.fill": SFSymbol.questionmark_video_fill.rawValue,
            "envelope": SFSymbol.envelope.rawValue,
            "envelope.fill": SFSymbol.envelope_fill.rawValue,
            "envelope.circle": SFSymbol.envelope_circle.rawValue,
            "envelope.circle.fill": SFSymbol.envelope_circle_fill.rawValue,
            "envelope.arrow.triangle.branch": SFSymbol.envelope_arrow_triangle_branch.rawValue,
            "envelope.arrow.triangle.branch.fill": SFSymbol.envelope_arrow_triangle_branch_fill.rawValue,
            "envelope.open": SFSymbol.envelope_open.rawValue,
            "envelope.open.fill": SFSymbol.envelope_open_fill.rawValue,
            "envelope.badge": SFSymbol.envelope_badge.rawValue,
            "envelope.badge.fill": SFSymbol.envelope_badge_fill.rawValue,
            "envelope.badge.shield.half.filled": SFSymbol.envelope_badge_shield_half_filled.rawValue,
            "envelope.badge.shield.half.filled.fill": SFSymbol.envelope_badge_shield_half_filled_fill.rawValue,
            "mail.stack": SFSymbol.mail_stack.rawValue,
            "mail.stack.fill": SFSymbol.mail_stack_fill.rawValue,
            "mail": SFSymbol.mail.rawValue,
            "mail.fill": SFSymbol.mail_fill.rawValue,
            "mail.and.text.magnifyingglass": SFSymbol.mail_and_text_magnifyingglass.rawValue,
            "rectangle.and.text.magnifyingglass": SFSymbol.rectangle_and_text_magnifyingglass.rawValue,
            "arrow.up.right.and.arrow.down.left.rectangle": SFSymbol.arrow_up_right_and_arrow_down_left_rectangle.rawValue,
            "arrow.up.right.and.arrow.down.left.rectangle.fill": SFSymbol.arrow_up_right_and_arrow_down_left_rectangle_fill.rawValue,
            "gear": SFSymbol.gear.rawValue,
            "gear.circle": SFSymbol.gear_circle.rawValue,
            "gear.circle.fill": SFSymbol.gear_circle_fill.rawValue,
            "gear.badge.checkmark": SFSymbol.gear_badge_checkmark.rawValue,
            "gear.badge.xmark": SFSymbol.gear_badge_xmark.rawValue,
            "gear.badge.questionmark": SFSymbol.gear_badge_questionmark.rawValue,
            "gearshape": SFSymbol.gearshape.rawValue,
            "gearshape.fill": SFSymbol.gearshape_fill.rawValue,
            "gearshape.circle": SFSymbol.gearshape_circle.rawValue,
            "gearshape.circle.fill": SFSymbol.gearshape_circle_fill.rawValue,
            "gearshape.2": SFSymbol.gearshape_2.rawValue,
            "gearshape.2.fill": SFSymbol.gearshape_2_fill.rawValue,
            "signature": SFSymbol.signature.rawValue,
            "line.3.crossed.swirl.circle": SFSymbol.line_3_crossed_swirl_circle.rawValue,
            "line.3.crossed.swirl.circle.fill": SFSymbol.line_3_crossed_swirl_circle_fill.rawValue,
            "scissors": SFSymbol.scissors.rawValue,
            "scissors.circle": SFSymbol.scissors_circle.rawValue,
            "scissors.circle.fill": SFSymbol.scissors_circle_fill.rawValue,
            "scissors.badge.ellipsis": SFSymbol.scissors_badge_ellipsis.rawValue,
            "ellipsis": SFSymbol.ellipsis.rawValue,
            "ellipsis.circle": SFSymbol.ellipsis_circle.rawValue,
            "ellipsis.circle.fill": SFSymbol.ellipsis_circle_fill.rawValue,
            "ellipsis.rectangle": SFSymbol.ellipsis_rectangle.rawValue,
            "ellipsis.rectangle.fill": SFSymbol.ellipsis_rectangle_fill.rawValue,
            "bag": SFSymbol.bag.rawValue,
            "bag.fill": SFSymbol.bag_fill.rawValue,
            "bag.circle": SFSymbol.bag_circle.rawValue,
            "bag.circle.fill": SFSymbol.bag_circle_fill.rawValue,
            "bag.badge.plus": SFSymbol.bag_badge_plus.rawValue,
            "bag.fill.badge.plus": SFSymbol.bag_fill_badge_plus.rawValue,
            "bag.badge.minus": SFSymbol.bag_badge_minus.rawValue,
            "bag.fill.badge.minus": SFSymbol.bag_fill_badge_minus.rawValue,
            "cart": SFSymbol.cart.rawValue,
            "cart.fill": SFSymbol.cart_fill.rawValue,
            "cart.circle": SFSymbol.cart_circle.rawValue,
            "cart.circle.fill": SFSymbol.cart_circle_fill.rawValue,
            "cart.badge.plus": SFSymbol.cart_badge_plus.rawValue,
            "cart.fill.badge.plus": SFSymbol.cart_fill_badge_plus.rawValue,
            "cart.badge.minus": SFSymbol.cart_badge_minus.rawValue,
            "cart.fill.badge.minus": SFSymbol.cart_fill_badge_minus.rawValue,
            "creditcard": SFSymbol.creditcard.rawValue,
            "creditcard.fill": SFSymbol.creditcard_fill.rawValue,
            "creditcard.circle": SFSymbol.creditcard_circle.rawValue,
            "creditcard.circle.fill": SFSymbol.creditcard_circle_fill.rawValue,
            "creditcard.and.123": SFSymbol.creditcard_and_123.rawValue,
            "creditcard.trianglebadge.exclamationmark": SFSymbol.creditcard_trianglebadge_exclamationmark.rawValue,
            "giftcard": SFSymbol.giftcard.rawValue,
            "giftcard.fill": SFSymbol.giftcard_fill.rawValue,
            "wallet.pass": SFSymbol.wallet_pass.rawValue,
            "wallet.pass.fill": SFSymbol.wallet_pass_fill.rawValue,
            "wand.and.rays": SFSymbol.wand_and_rays.rawValue,
            "wand.and.rays.inverse": SFSymbol.wand_and_rays_inverse.rawValue,
            "wand.and.stars": SFSymbol.wand_and_stars.rawValue,
            "wand.and.stars.inverse": SFSymbol.wand_and_stars_inverse.rawValue,
            "crop": SFSymbol.crop.rawValue,
            "crop.rotate": SFSymbol.crop_rotate.rawValue,
            "dial.min": SFSymbol.dial_min.rawValue,
            "dial.min.fill": SFSymbol.dial_min_fill.rawValue,
            "dial.max": SFSymbol.dial_max.rawValue,
            "dial.max.fill": SFSymbol.dial_max_fill.rawValue,
            "gyroscope": SFSymbol.gyroscope.rawValue,
            "nosign": SFSymbol.nosign.rawValue,
            "gauge": SFSymbol.gauge.rawValue,
            "gauge.badge.plus": SFSymbol.gauge_badge_plus.rawValue,
            "gauge.badge.minus": SFSymbol.gauge_badge_minus.rawValue,
            "speedometer": SFSymbol.speedometer.rawValue,
            "barometer": SFSymbol.barometer.rawValue,
            "metronome": SFSymbol.metronome.rawValue,
            "metronome.fill": SFSymbol.metronome_fill.rawValue,
            "amplifier": SFSymbol.amplifier.rawValue,
            "dice": SFSymbol.dice.rawValue,
            "dice.fill": SFSymbol.dice_fill.rawValue,
            "die.face.1.fill": SFSymbol.die_face_1_fill.rawValue,
            "die.face.2.fill": SFSymbol.die_face_2_fill.rawValue,
            "die.face.3.fill": SFSymbol.die_face_3_fill.rawValue,
            "die.face.4.fill": SFSymbol.die_face_4_fill.rawValue,
            "die.face.5.fill": SFSymbol.die_face_5_fill.rawValue,
            "die.face.6.fill": SFSymbol.die_face_6_fill.rawValue,
            "square.grid.3x3.square": SFSymbol.square_grid_3x3_square.rawValue,
            "pianokeys": SFSymbol.pianokeys.rawValue,
            "pianokeys.inverse": SFSymbol.pianokeys_inverse.rawValue,
            "tuningfork": SFSymbol.tuningfork.rawValue,
            "paintbrush": SFSymbol.paintbrush.rawValue,
            "paintbrush.fill": SFSymbol.paintbrush_fill.rawValue,
            "paintbrush.pointed": SFSymbol.paintbrush_pointed.rawValue,
            "paintbrush.pointed.fill": SFSymbol.paintbrush_pointed_fill.rawValue,
            "bandage": SFSymbol.bandage.rawValue,
            "bandage.fill": SFSymbol.bandage_fill.rawValue,
            "ruler": SFSymbol.ruler.rawValue,
            "ruler.fill": SFSymbol.ruler_fill.rawValue,
            "level": SFSymbol.level.rawValue,
            "level.fill": SFSymbol.level_fill.rawValue,
            "lines.measurement.horizontal": SFSymbol.lines_measurement_horizontal.rawValue,
            "wrench": SFSymbol.wrench.rawValue,
            "wrench.fill": SFSymbol.wrench_fill.rawValue,
            "hammer": SFSymbol.hammer.rawValue,
            "hammer.fill": SFSymbol.hammer_fill.rawValue,
            "hammer.circle": SFSymbol.hammer_circle.rawValue,
            "hammer.circle.fill": SFSymbol.hammer_circle_fill.rawValue,
            "screwdriver": SFSymbol.screwdriver.rawValue,
            "screwdriver.fill": SFSymbol.screwdriver_fill.rawValue,
            "eyedropper": SFSymbol.eyedropper.rawValue,
            "eyedropper.halffull": SFSymbol.eyedropper_halffull.rawValue,
            "eyedropper.full": SFSymbol.eyedropper_full.rawValue,
            "wrench.and.screwdriver": SFSymbol.wrench_and_screwdriver.rawValue,
            "wrench.and.screwdriver.fill": SFSymbol.wrench_and_screwdriver_fill.rawValue,
            "applescript": SFSymbol.applescript.rawValue,
            "applescript.fill": SFSymbol.applescript_fill.rawValue,
            "scroll": SFSymbol.scroll.rawValue,
            "scroll.fill": SFSymbol.scroll_fill.rawValue,
            "stethoscope": SFSymbol.stethoscope.rawValue,
            "stethoscope.circle": SFSymbol.stethoscope_circle.rawValue,
            "stethoscope.circle.fill": SFSymbol.stethoscope_circle_fill.rawValue,
            "printer": SFSymbol.printer.rawValue,
            "printer.fill": SFSymbol.printer_fill.rawValue,
            "printer.filled.and.paper": SFSymbol.printer_filled_and_paper.rawValue,
            "printer.dotmatrix": SFSymbol.printer_dotmatrix.rawValue,
            "printer.dotmatrix.fill": SFSymbol.printer_dotmatrix_fill.rawValue,
            "printer.dotmatrix.filled.and.paper": SFSymbol.printer_dotmatrix_filled_and_paper.rawValue,
            "scanner": SFSymbol.scanner.rawValue,
            "scanner.fill": SFSymbol.scanner_fill.rawValue,
            "faxmachine": SFSymbol.faxmachine.rawValue,
            "briefcase": SFSymbol.briefcase.rawValue,
            "briefcase.fill": SFSymbol.briefcase_fill.rawValue,
            "briefcase.circle": SFSymbol.briefcase_circle.rawValue,
            "briefcase.circle.fill": SFSymbol.briefcase_circle_fill.rawValue,
            "case": SFSymbol.case.rawValue,
            "case.fill": SFSymbol.case_fill.rawValue,
            "latch.2.case": SFSymbol.latch_2_case.rawValue,
            "latch.2.case.fill": SFSymbol.latch_2_case_fill.rawValue,
            "cross.case": SFSymbol.cross_case.rawValue,
            "cross.case.fill": SFSymbol.cross_case_fill.rawValue,
            "suitcase": SFSymbol.suitcase.rawValue,
            "suitcase.fill": SFSymbol.suitcase_fill.rawValue,
            "suitcase.cart": SFSymbol.suitcase_cart.rawValue,
            "suitcase.cart.fill": SFSymbol.suitcase_cart_fill.rawValue,
            "theatermasks": SFSymbol.theatermasks.rawValue,
            "theatermasks.fill": SFSymbol.theatermasks_fill.rawValue,
            "theatermasks.circle": SFSymbol.theatermasks_circle.rawValue,
            "theatermasks.circle.fill": SFSymbol.theatermasks_circle_fill.rawValue,
            "puzzlepiece.extension": SFSymbol.puzzlepiece_extension.rawValue,
            "puzzlepiece.extension.fill": SFSymbol.puzzlepiece_extension_fill.rawValue,
            "puzzlepiece": SFSymbol.puzzlepiece.rawValue,
            "puzzlepiece.fill": SFSymbol.puzzlepiece_fill.rawValue,
            "homekit": SFSymbol.homekit.rawValue,
            "house": SFSymbol.house.rawValue,
            "house.fill": SFSymbol.house_fill.rawValue,
            "house.circle": SFSymbol.house_circle.rawValue,
            "house.circle.fill": SFSymbol.house_circle_fill.rawValue,
            "music.note.house": SFSymbol.music_note_house.rawValue,
            "music.note.house.fill": SFSymbol.music_note_house_fill.rawValue,
            "building.columns": SFSymbol.building_columns.rawValue,
            "building.columns.fill": SFSymbol.building_columns_fill.rawValue,
            "building.columns.circle": SFSymbol.building_columns_circle.rawValue,
            "building.columns.circle.fill": SFSymbol.building_columns_circle_fill.rawValue,
            "signpost.left": SFSymbol.signpost_left.rawValue,
            "signpost.left.fill": SFSymbol.signpost_left_fill.rawValue,
            "signpost.right": SFSymbol.signpost_right.rawValue,
            "signpost.right.fill": SFSymbol.signpost_right_fill.rawValue,
            "square.split.bottomrightquarter": SFSymbol.square_split_bottomrightquarter.rawValue,
            "square.split.bottomrightquarter.fill": SFSymbol.square_split_bottomrightquarter_fill.rawValue,
            "building": SFSymbol.building.rawValue,
            "building.fill": SFSymbol.building_fill.rawValue,
            "building.2": SFSymbol.building_2.rawValue,
            "building.2.fill": SFSymbol.building_2_fill.rawValue,
            "building.2.crop.circle": SFSymbol.building_2_crop_circle.rawValue,
            "building.2.crop.circle.fill": SFSymbol.building_2_crop_circle_fill.rawValue,
            "lock": SFSymbol.lock.rawValue,
            "lock.fill": SFSymbol.lock_fill.rawValue,
            "lock.circle": SFSymbol.lock_circle.rawValue,
            "lock.circle.fill": SFSymbol.lock_circle_fill.rawValue,
            "lock.square": SFSymbol.lock_square.rawValue,
            "lock.square.fill": SFSymbol.lock_square_fill.rawValue,
            "lock.square.stack": SFSymbol.lock_square_stack.rawValue,
            "lock.square.stack.fill": SFSymbol.lock_square_stack_fill.rawValue,
            "lock.rectangle": SFSymbol.lock_rectangle.rawValue,
            "lock.rectangle.fill": SFSymbol.lock_rectangle_fill.rawValue,
            "lock.rectangle.stack": SFSymbol.lock_rectangle_stack.rawValue,
            "lock.rectangle.stack.fill": SFSymbol.lock_rectangle_stack_fill.rawValue,
            "lock.rectangle.on.rectangle": SFSymbol.lock_rectangle_on_rectangle.rawValue,
            "lock.rectangle.on.rectangle.fill": SFSymbol.lock_rectangle_on_rectangle_fill.rawValue,
            "lock.shield": SFSymbol.lock_shield.rawValue,
            "lock.shield.fill": SFSymbol.lock_shield_fill.rawValue,
            "lock.slash": SFSymbol.lock_slash.rawValue,
            "lock.slash.fill": SFSymbol.lock_slash_fill.rawValue,
            "lock.open": SFSymbol.lock_open.rawValue,
            "lock.open.fill": SFSymbol.lock_open_fill.rawValue,
            "lock.rotation": SFSymbol.lock_rotation.rawValue,
            "lock.rotation.open": SFSymbol.lock_rotation_open.rawValue,
            "key": SFSymbol.key.rawValue,
            "key.fill": SFSymbol.key_fill.rawValue,
            "wifi": SFSymbol.wifi.rawValue,
            "wifi.circle": SFSymbol.wifi_circle.rawValue,
            "wifi.circle.fill": SFSymbol.wifi_circle_fill.rawValue,
            "wifi.square": SFSymbol.wifi_square.rawValue,
            "wifi.square.fill": SFSymbol.wifi_square_fill.rawValue,
            "wifi.slash": SFSymbol.wifi_slash.rawValue,
            "wifi.exclamationmark": SFSymbol.wifi_exclamationmark.rawValue,
            "pin": SFSymbol.pin.rawValue,
            "pin.fill": SFSymbol.pin_fill.rawValue,
            "pin.circle": SFSymbol.pin_circle.rawValue,
            "pin.circle.fill": SFSymbol.pin_circle_fill.rawValue,
            "pin.square": SFSymbol.pin_square.rawValue,
            "pin.square.fill": SFSymbol.pin_square_fill.rawValue,
            "pin.slash": SFSymbol.pin_slash.rawValue,
            "pin.slash.fill": SFSymbol.pin_slash_fill.rawValue,
            "mappin": SFSymbol.mappin.rawValue,
            "mappin.circle": SFSymbol.mappin_circle.rawValue,
            "mappin.circle.fill": SFSymbol.mappin_circle_fill.rawValue,
            "mappin.square": SFSymbol.mappin_square.rawValue,
            "mappin.square.fill": SFSymbol.mappin_square_fill.rawValue,
            "mappin.slash": SFSymbol.mappin_slash.rawValue,
            "mappin.slash.circle": SFSymbol.mappin_slash_circle.rawValue,
            "mappin.slash.circle.fill": SFSymbol.mappin_slash_circle_fill.rawValue,
            "mappin.and.ellipse": SFSymbol.mappin_and_ellipse.rawValue,
            "map": SFSymbol.map.rawValue,
            "map.fill": SFSymbol.map_fill.rawValue,
            "map.circle": SFSymbol.map_circle.rawValue,
            "map.circle.fill": SFSymbol.map_circle_fill.rawValue,
            "safari": SFSymbol.safari.rawValue,
            "safari.fill": SFSymbol.safari_fill.rawValue,
            "move.3d": SFSymbol.move_3d.rawValue,
            "scale.3d": SFSymbol.scale_3d.rawValue,
            "rotate.3d": SFSymbol.rotate_3d.rawValue,
            "torus": SFSymbol.torus.rawValue,
            "rotate.left": SFSymbol.rotate_left.rawValue,
            "rotate.left.fill": SFSymbol.rotate_left_fill.rawValue,
            "rotate.right": SFSymbol.rotate_right.rawValue,
            "rotate.right.fill": SFSymbol.rotate_right_fill.rawValue,
            "selection.pin.in.out": SFSymbol.selection_pin_in_out.rawValue,
            "powerplug": SFSymbol.powerplug.rawValue,
            "powerplug.fill": SFSymbol.powerplug_fill.rawValue,
            "timeline.selection": SFSymbol.timeline_selection.rawValue,
            "cpu": SFSymbol.cpu.rawValue,
            "cpu.fill": SFSymbol.cpu_fill.rawValue,
            "memorychip": SFSymbol.memorychip.rawValue,
            "memorychip.fill": SFSymbol.memorychip_fill.rawValue,
            "opticaldisc": SFSymbol.opticaldisc.rawValue,
            "display": SFSymbol.display.rawValue,
            "lock.display": SFSymbol.lock_display.rawValue,
            "lock.open.display": SFSymbol.lock_open_display.rawValue,
            "display.and.arrow.down": SFSymbol.display_and_arrow_down.rawValue,
            "display.trianglebadge.exclamationmark": SFSymbol.display_trianglebadge_exclamationmark.rawValue,
            "display.2": SFSymbol.display_2.rawValue,
            "desktopcomputer": SFSymbol.desktopcomputer.rawValue,
            "lock.desktopcomputer": SFSymbol.lock_desktopcomputer.rawValue,
            "lock.open.desktopcomputer": SFSymbol.lock_open_desktopcomputer.rawValue,
            "desktopcomputer.and.arrow.down": SFSymbol.desktopcomputer_and_arrow_down.rawValue,
            "desktopcomputer.trianglebadge.exclamationmark": SFSymbol.desktopcomputer_trianglebadge_exclamationmark.rawValue,
            "pc": SFSymbol.pc.rawValue,
            "macpro.gen1": SFSymbol.macpro_gen1.rawValue,
            "macpro.gen1.fill": SFSymbol.macpro_gen1_fill.rawValue,
            "macpro.gen2": SFSymbol.macpro_gen2.rawValue,
            "macpro.gen2.fill": SFSymbol.macpro_gen2_fill.rawValue,
            "macpro.gen3": SFSymbol.macpro_gen3.rawValue,
            "macpro.gen3.fill": SFSymbol.macpro_gen3_fill.rawValue,
            "macpro.gen3.server": SFSymbol.macpro_gen3_server.rawValue,
            "server.rack": SFSymbol.server_rack.rawValue,
            "xserve": SFSymbol.xserve.rawValue,
            "laptopcomputer": SFSymbol.laptopcomputer.rawValue,
            "lock.laptopcomputer": SFSymbol.lock_laptopcomputer.rawValue,
            "lock.open.laptopcomputer": SFSymbol.lock_open_laptopcomputer.rawValue,
            "laptopcomputer.and.arrow.down": SFSymbol.laptopcomputer_and_arrow_down.rawValue,
            "laptopcomputer.trianglebadge.exclamationmark": SFSymbol.laptopcomputer_trianglebadge_exclamationmark.rawValue,
            "laptopcomputer.and.iphone": SFSymbol.laptopcomputer_and_iphone.rawValue,
            "ipad.and.iphone": SFSymbol.ipad_and_iphone.rawValue,
            "macmini": SFSymbol.macmini.rawValue,
            "macmini.fill": SFSymbol.macmini_fill.rawValue,
            "airport.express": SFSymbol.airport_express.rawValue,
            "airport.extreme": SFSymbol.airport_extreme.rawValue,
            "airport.extreme.tower": SFSymbol.airport_extreme_tower.rawValue,
            "ipod": SFSymbol.ipod.rawValue,
            "ipodshuffle.gen1": SFSymbol.ipodshuffle_gen1.rawValue,
            "ipodshuffle.gen2": SFSymbol.ipodshuffle_gen2.rawValue,
            "ipodshuffle.gen3": SFSymbol.ipodshuffle_gen3.rawValue,
            "ipodshuffle.gen4": SFSymbol.ipodshuffle_gen4.rawValue,
            "ipodtouch": SFSymbol.ipodtouch.rawValue,
            "ipodtouch.slash": SFSymbol.ipodtouch_slash.rawValue,
            "ipodtouch.landscape": SFSymbol.ipodtouch_landscape.rawValue,
            "flipphone": SFSymbol.flipphone.rawValue,
            "candybarphone": SFSymbol.candybarphone.rawValue,
            "iphone.homebutton": SFSymbol.iphone_homebutton.rawValue,
            "iphone.homebutton.circle": SFSymbol.iphone_homebutton_circle.rawValue,
            "iphone.homebutton.circle.fill": SFSymbol.iphone_homebutton_circle_fill.rawValue,
            "iphone.homebutton.landscape": SFSymbol.iphone_homebutton_landscape.rawValue,
            "iphone.homebutton.radiowaves.left.and.right": SFSymbol.iphone_homebutton_radiowaves_left_and_right.rawValue,
            "iphone.homebutton.radiowaves.left.and.right.circle": SFSymbol.iphone_homebutton_radiowaves_left_and_right_circle.rawValue,
            "iphone.homebutton.radiowaves.left.and.right.circle.fill": SFSymbol.iphone_homebutton_radiowaves_left_and_right_circle_fill.rawValue,
            "iphone.homebutton.slash": SFSymbol.iphone_homebutton_slash.rawValue,
            "iphone.homebutton.slash.circle": SFSymbol.iphone_homebutton_slash_circle.rawValue,
            "iphone.homebutton.slash.circle.fill": SFSymbol.iphone_homebutton_slash_circle_fill.rawValue,
            "iphone.homebutton.badge.play": SFSymbol.iphone_homebutton_badge_play.rawValue,
            "iphone": SFSymbol.iphone.rawValue,
            "iphone.circle": SFSymbol.iphone_circle.rawValue,
            "iphone.circle.fill": SFSymbol.iphone_circle_fill.rawValue,
            "iphone.landscape": SFSymbol.iphone_landscape.rawValue,
            "iphone.radiowaves.left.and.right": SFSymbol.iphone_radiowaves_left_and_right.rawValue,
            "iphone.radiowaves.left.and.right.circle": SFSymbol.iphone_radiowaves_left_and_right_circle.rawValue,
            "iphone.radiowaves.left.and.right.circle.fill": SFSymbol.iphone_radiowaves_left_and_right_circle_fill.rawValue,
            "iphone.slash": SFSymbol.iphone_slash.rawValue,
            "iphone.slash.circle": SFSymbol.iphone_slash_circle.rawValue,
            "iphone.slash.circle.fill": SFSymbol.iphone_slash_circle_fill.rawValue,
            "iphone.badge.play": SFSymbol.iphone_badge_play.rawValue,
            "lock.iphone": SFSymbol.lock_iphone.rawValue,
            "lock.open.iphone": SFSymbol.lock_open_iphone.rawValue,
            "iphone.and.arrow.forward": SFSymbol.iphone_and_arrow_forward.rawValue,
            "arrow.turn.up.forward.iphone": SFSymbol.arrow_turn_up_forward_iphone.rawValue,
            "arrow.turn.up.forward.iphone.fill": SFSymbol.arrow_turn_up_forward_iphone_fill.rawValue,
            "iphone.rear.camera": SFSymbol.iphone_rear_camera.rawValue,
            "apps.iphone": SFSymbol.apps_iphone.rawValue,
            "apps.iphone.badge.plus": SFSymbol.apps_iphone_badge_plus.rawValue,
            "apps.iphone.landscape": SFSymbol.apps_iphone_landscape.rawValue,
            "platter.filled.top.iphone": SFSymbol.platter_filled_top_iphone.rawValue,
            "platter.filled.bottom.iphone": SFSymbol.platter_filled_bottom_iphone.rawValue,
            "platter.filled.top.and.arrow.up.iphone": SFSymbol.platter_filled_top_and_arrow_up_iphone.rawValue,
            "platter.filled.bottom.and.arrow.down.iphone": SFSymbol.platter_filled_bottom_and_arrow_down_iphone.rawValue,
            "platter.2.filled.iphone": SFSymbol.platter_2_filled_iphone.rawValue,
            "platter.2.filled.iphone.landscape": SFSymbol.platter_2_filled_iphone_landscape.rawValue,
            "iphone.smartbatterycase.gen2": SFSymbol.iphone_smartbatterycase_gen2.rawValue,
            "iphone.smartbatterycase.gen1": SFSymbol.iphone_smartbatterycase_gen1.rawValue,
            "ipad.homebutton": SFSymbol.ipad_homebutton.rawValue,
            "ipad.homebutton.badge.play": SFSymbol.ipad_homebutton_badge_play.rawValue,
            "ipad.homebutton.landscape": SFSymbol.ipad_homebutton_landscape.rawValue,
            "ipad.homebutton.landscape.badge.play": SFSymbol.ipad_homebutton_landscape_badge_play.rawValue,
            "ipad": SFSymbol.ipad.rawValue,
            "ipad.badge.play": SFSymbol.ipad_badge_play.rawValue,
            "lock.ipad": SFSymbol.lock_ipad.rawValue,
            "lock.open.ipad": SFSymbol.lock_open_ipad.rawValue,
            "ipad.and.arrow.forward": SFSymbol.ipad_and_arrow_forward.rawValue,
            "ipad.landscape": SFSymbol.ipad_landscape.rawValue,
            "ipad.landscape.badge.play": SFSymbol.ipad_landscape_badge_play.rawValue,
            "ipad.rear.camera": SFSymbol.ipad_rear_camera.rawValue,
            "apps.ipad": SFSymbol.apps_ipad.rawValue,
            "apps.ipad.landscape": SFSymbol.apps_ipad_landscape.rawValue,
            "platter.2.filled.ipad": SFSymbol.platter_2_filled_ipad.rawValue,
            "platter.2.filled.ipad.landscape": SFSymbol.platter_2_filled_ipad_landscape.rawValue,
            "applepencil": SFSymbol.applepencil.rawValue,
            "magicmouse": SFSymbol.magicmouse.rawValue,
            "magicmouse.fill": SFSymbol.magicmouse_fill.rawValue,
            "computermouse": SFSymbol.computermouse.rawValue,
            "computermouse.fill": SFSymbol.computermouse_fill.rawValue,
            "applewatch": SFSymbol.applewatch.rawValue,
            "applewatch.watchface": SFSymbol.applewatch_watchface.rawValue,
            "exclamationmark.applewatch": SFSymbol.exclamationmark_applewatch.rawValue,
            "lock.applewatch": SFSymbol.lock_applewatch.rawValue,
            "lock.open.applewatch": SFSymbol.lock_open_applewatch.rawValue,
            "applewatch.radiowaves.left.and.right": SFSymbol.applewatch_radiowaves_left_and_right.rawValue,
            "applewatch.slash": SFSymbol.applewatch_slash.rawValue,
            "applewatch.side.right": SFSymbol.applewatch_side_right.rawValue,
            "watchface.applewatch.case": SFSymbol.watchface_applewatch_case.rawValue,
            "applewatch.case.inset.filled": SFSymbol.applewatch_case_inset_filled.rawValue,
            "platter.filled.top.applewatch.case": SFSymbol.platter_filled_top_applewatch_case.rawValue,
            "platter.filled.bottom.applewatch.case": SFSymbol.platter_filled_bottom_applewatch_case.rawValue,
            "platter.top.applewatch.case": SFSymbol.platter_top_applewatch_case.rawValue,
            "platter.bottom.applewatch.case": SFSymbol.platter_bottom_applewatch_case.rawValue,
            "digitalcrown.arrow.clockwise": SFSymbol.digitalcrown_arrow_clockwise.rawValue,
            "digitalcrown.arrow.clockwise.fill": SFSymbol.digitalcrown_arrow_clockwise_fill.rawValue,
            "digitalcrown.arrow.counterclockwise": SFSymbol.digitalcrown_arrow_counterclockwise.rawValue,
            "digitalcrown.arrow.counterclockwise.fill": SFSymbol.digitalcrown_arrow_counterclockwise_fill.rawValue,
            "digitalcrown.press": SFSymbol.digitalcrown_press.rawValue,
            "digitalcrown.press.fill": SFSymbol.digitalcrown_press_fill.rawValue,
            "digitalcrown.horizontal.arrow.clockwise": SFSymbol.digitalcrown_horizontal_arrow_clockwise.rawValue,
            "digitalcrown.horizontal.arrow.clockwise.fill": SFSymbol.digitalcrown_horizontal_arrow_clockwise_fill.rawValue,
            "digitalcrown.horizontal.arrow.counterclockwise": SFSymbol.digitalcrown_horizontal_arrow_counterclockwise.rawValue,
            "digitalcrown.horizontal.arrow.counterclockwise.fill": SFSymbol.digitalcrown_horizontal_arrow_counterclockwise_fill.rawValue,
            "digitalcrown.horizontal.press": SFSymbol.digitalcrown_horizontal_press.rawValue,
            "digitalcrown.horizontal.press.fill": SFSymbol.digitalcrown_horizontal_press_fill.rawValue,
            "airpodsmax": SFSymbol.airpodsmax.rawValue,
            "beats.headphones": SFSymbol.beats_headphones.rawValue,
            "headphones": SFSymbol.headphones.rawValue,
            "headphones.circle": SFSymbol.headphones_circle.rawValue,
            "headphones.circle.fill": SFSymbol.headphones_circle_fill.rawValue,
            "earbuds": SFSymbol.earbuds.rawValue,
            "earbuds.case": SFSymbol.earbuds_case.rawValue,
            "earbuds.case.fill": SFSymbol.earbuds_case_fill.rawValue,
            "earpods": SFSymbol.earpods.rawValue,
            "airpods": SFSymbol.airpods.rawValue,
            "airpod.right": SFSymbol.airpod_right.rawValue,
            "airpod.left": SFSymbol.airpod_left.rawValue,
            "airpods.chargingcase": SFSymbol.airpods_chargingcase.rawValue,
            "airpods.chargingcase.fill": SFSymbol.airpods_chargingcase_fill.rawValue,
            "airpods.chargingcase.wireless": SFSymbol.airpods_chargingcase_wireless.rawValue,
            "airpods.chargingcase.wireless.fill": SFSymbol.airpods_chargingcase_wireless_fill.rawValue,
            "airpodspro": SFSymbol.airpodspro.rawValue,
            "airpodpro.right": SFSymbol.airpodpro_right.rawValue,
            "airpodpro.left": SFSymbol.airpodpro_left.rawValue,
            "airpodspro.chargingcase.wireless": SFSymbol.airpodspro_chargingcase_wireless.rawValue,
            "airpodspro.chargingcase.wireless.fill": SFSymbol.airpodspro_chargingcase_wireless_fill.rawValue,
            "airpods.gen3": SFSymbol.airpods_gen3.rawValue,
            "airpod.gen3.right": SFSymbol.airpod_gen3_right.rawValue,
            "airpod.gen3.left": SFSymbol.airpod_gen3_left.rawValue,
            "airpods.gen3.chargingcase.wireless": SFSymbol.airpods_gen3_chargingcase_wireless.rawValue,
            "airpods.gen3.chargingcase.wireless.fill": SFSymbol.airpods_gen3_chargingcase_wireless_fill.rawValue,
            "beats.earphones": SFSymbol.beats_earphones.rawValue,
            "beats.powerbeatspro": SFSymbol.beats_powerbeatspro.rawValue,
            "beats.powerbeatspro.right": SFSymbol.beats_powerbeatspro_right.rawValue,
            "beats.powerbeatspro.left": SFSymbol.beats_powerbeatspro_left.rawValue,
            "beats.powerbeats": SFSymbol.beats_powerbeats.rawValue,
            "beats.powerbeats3": SFSymbol.beats_powerbeats3.rawValue,
            "beats.studiobuds": SFSymbol.beats_studiobuds.rawValue,
            "beats.studiobud.left": SFSymbol.beats_studiobud_left.rawValue,
            "beats.studiobud.right": SFSymbol.beats_studiobud_right.rawValue,
            "beats.studiobuds.chargingcase": SFSymbol.beats_studiobuds_chargingcase.rawValue,
            "beats.studiobuds.chargingcase.fill": SFSymbol.beats_studiobuds_chargingcase_fill.rawValue,
            "beats.fit.pro": SFSymbol.beats_fit_pro.rawValue,
            "beats.fit.pro.left": SFSymbol.beats_fit_pro_left.rawValue,
            "beats.fit.pro.right": SFSymbol.beats_fit_pro_right.rawValue,
            "beats.fit.pro.chargingcase": SFSymbol.beats_fit_pro_chargingcase.rawValue,
            "beats.fit.pro.chargingcase.fill": SFSymbol.beats_fit_pro_chargingcase_fill.rawValue,
            "beats.powerbeatspro.chargingcase": SFSymbol.beats_powerbeatspro_chargingcase.rawValue,
            "beats.powerbeatspro.chargingcase.fill": SFSymbol.beats_powerbeatspro_chargingcase_fill.rawValue,
            "homepodmini": SFSymbol.homepodmini.rawValue,
            "homepodmini.fill": SFSymbol.homepodmini_fill.rawValue,
            "homepodmini.2": SFSymbol.homepodmini_2.rawValue,
            "homepodmini.2.fill": SFSymbol.homepodmini_2_fill.rawValue,
            "homepod.and.homepodmini": SFSymbol.homepod_and_homepodmini.rawValue,
            "homepod.and.homepodmini.fill": SFSymbol.homepod_and_homepodmini_fill.rawValue,
            "hifispeaker.and.homepodmini": SFSymbol.hifispeaker_and_homepodmini.rawValue,
            "hifispeaker.and.homepodmini.fill": SFSymbol.hifispeaker_and_homepodmini_fill.rawValue,
            "homepod": SFSymbol.homepod.rawValue,
            "homepod.fill": SFSymbol.homepod_fill.rawValue,
            "homepod.2": SFSymbol.homepod_2.rawValue,
            "homepod.2.fill": SFSymbol.homepod_2_fill.rawValue,
            "hifispeaker.and.homepod": SFSymbol.hifispeaker_and_homepod.rawValue,
            "hifispeaker.and.homepod.fill": SFSymbol.hifispeaker_and_homepod_fill.rawValue,
            "hifispeaker": SFSymbol.hifispeaker.rawValue,
            "hifispeaker.fill": SFSymbol.hifispeaker_fill.rawValue,
            "hifispeaker.2": SFSymbol.hifispeaker_2.rawValue,
            "hifispeaker.2.fill": SFSymbol.hifispeaker_2_fill.rawValue,
            "appletv": SFSymbol.appletv.rawValue,
            "appletv.fill": SFSymbol.appletv_fill.rawValue,
            "homepod.and.appletv": SFSymbol.homepod_and_appletv.rawValue,
            "homepod.and.appletv.fill": SFSymbol.homepod_and_appletv_fill.rawValue,
            "homepodmini.and.appletv": SFSymbol.homepodmini_and_appletv.rawValue,
            "homepodmini.and.appletv.fill": SFSymbol.homepodmini_and_appletv_fill.rawValue,
            "hifispeaker.and.appletv": SFSymbol.hifispeaker_and_appletv.rawValue,
            "hifispeaker.and.appletv.fill": SFSymbol.hifispeaker_and_appletv_fill.rawValue,
            "appletvremote.gen1": SFSymbol.appletvremote_gen1.rawValue,
            "appletvremote.gen1.fill": SFSymbol.appletvremote_gen1_fill.rawValue,
            "appletvremote.gen2": SFSymbol.appletvremote_gen2.rawValue,
            "appletvremote.gen2.fill": SFSymbol.appletvremote_gen2_fill.rawValue,
            "appletvremote.gen3": SFSymbol.appletvremote_gen3.rawValue,
            "appletvremote.gen3.fill": SFSymbol.appletvremote_gen3_fill.rawValue,
            "appletvremote.gen4": SFSymbol.appletvremote_gen4.rawValue,
            "appletvremote.gen4.fill": SFSymbol.appletvremote_gen4_fill.rawValue,
            "magsafe.batterypack": SFSymbol.magsafe_batterypack.rawValue,
            "magsafe.batterypack.fill": SFSymbol.magsafe_batterypack_fill.rawValue,
            "mediastick": SFSymbol.mediastick.rawValue,
            "cable.connector": SFSymbol.cable_connector.rawValue,
            "cable.connector.horizontal": SFSymbol.cable_connector_horizontal.rawValue,
            "radio": SFSymbol.radio.rawValue,
            "radio.fill": SFSymbol.radio_fill.rawValue,
            "tv": SFSymbol.tv.rawValue,
            "tv.fill": SFSymbol.tv_fill.rawValue,
            "tv.inset.filled": SFSymbol.tv_inset_filled.rawValue,
            "tv.circle": SFSymbol.tv_circle.rawValue,
            "tv.circle.fill": SFSymbol.tv_circle_fill.rawValue,
            "sparkles.tv": SFSymbol.sparkles_tv.rawValue,
            "sparkles.tv.fill": SFSymbol.sparkles_tv_fill.rawValue,
            "4k.tv": SFSymbol._4k_tv.rawValue,
            "4k.tv.fill": SFSymbol._4k_tv_fill.rawValue,
            "music.note.tv": SFSymbol.music_note_tv.rawValue,
            "music.note.tv.fill": SFSymbol.music_note_tv_fill.rawValue,
            "play.tv": SFSymbol.play_tv.rawValue,
            "play.tv.fill": SFSymbol.play_tv_fill.rawValue,
            "photo.tv": SFSymbol.photo_tv.rawValue,
            "tv.and.hifispeaker.fill": SFSymbol.tv_and_hifispeaker_fill.rawValue,
            "tv.and.mediabox": SFSymbol.tv_and_mediabox.rawValue,
            "airplayvideo": SFSymbol.airplayvideo.rawValue,
            "airplayvideo.circle": SFSymbol.airplayvideo_circle.rawValue,
            "airplayvideo.circle.fill": SFSymbol.airplayvideo_circle_fill.rawValue,
            "airplayvideo.badge.exclamationmark": SFSymbol.airplayvideo_badge_exclamationmark.rawValue,
            "airplayaudio": SFSymbol.airplayaudio.rawValue,
            "airplayaudio.circle": SFSymbol.airplayaudio_circle.rawValue,
            "airplayaudio.circle.fill": SFSymbol.airplayaudio_circle_fill.rawValue,
            "airplayaudio.badge.exclamationmark": SFSymbol.airplayaudio_badge_exclamationmark.rawValue,
            "dot.radiowaves.left.and.right": SFSymbol.dot_radiowaves_left_and_right.rawValue,
            "dot.radiowaves.right": SFSymbol.dot_radiowaves_right.rawValue,
            "dot.radiowaves.forward": SFSymbol.dot_radiowaves_forward.rawValue,
            "wave.3.left": SFSymbol.wave_3_left.rawValue,
            "wave.3.left.circle": SFSymbol.wave_3_left_circle.rawValue,
            "wave.3.left.circle.fill": SFSymbol.wave_3_left_circle_fill.rawValue,
            "wave.3.backward": SFSymbol.wave_3_backward.rawValue,
            "wave.3.backward.circle": SFSymbol.wave_3_backward_circle.rawValue,
            "wave.3.backward.circle.fill": SFSymbol.wave_3_backward_circle_fill.rawValue,
            "wave.3.right": SFSymbol.wave_3_right.rawValue,
            "wave.3.right.circle": SFSymbol.wave_3_right_circle.rawValue,
            "wave.3.right.circle.fill": SFSymbol.wave_3_right_circle_fill.rawValue,
            "wave.3.forward": SFSymbol.wave_3_forward.rawValue,
            "wave.3.forward.circle": SFSymbol.wave_3_forward_circle.rawValue,
            "wave.3.forward.circle.fill": SFSymbol.wave_3_forward_circle_fill.rawValue,
            "dot.radiowaves.up.forward": SFSymbol.dot_radiowaves_up_forward.rawValue,
            "antenna.radiowaves.left.and.right": SFSymbol.antenna_radiowaves_left_and_right.rawValue,
            "antenna.radiowaves.left.and.right.slash": SFSymbol.antenna_radiowaves_left_and_right_slash.rawValue,
            "antenna.radiowaves.left.and.right.circle": SFSymbol.antenna_radiowaves_left_and_right_circle.rawValue,
            "antenna.radiowaves.left.and.right.circle.fill": SFSymbol.antenna_radiowaves_left_and_right_circle_fill.rawValue,
            "pip": SFSymbol.pip.rawValue,
            "pip.fill": SFSymbol.pip_fill.rawValue,
            "pip.exit": SFSymbol.pip_exit.rawValue,
            "pip.enter": SFSymbol.pip_enter.rawValue,
            "pip.swap": SFSymbol.pip_swap.rawValue,
            "pip.remove": SFSymbol.pip_remove.rawValue,
            "rectangle.arrowtriangle.2.outward": SFSymbol.rectangle_arrowtriangle_2_outward.rawValue,
            "rectangle.arrowtriangle.2.inward": SFSymbol.rectangle_arrowtriangle_2_inward.rawValue,
            "rectangle.portrait.arrowtriangle.2.outward": SFSymbol.rectangle_portrait_arrowtriangle_2_outward.rawValue,
            "rectangle.portrait.arrowtriangle.2.inward": SFSymbol.rectangle_portrait_arrowtriangle_2_inward.rawValue,
            "rectangle.2.swap": SFSymbol.rectangle_2_swap.rawValue,
            "guitars": SFSymbol.guitars.rawValue,
            "guitars.fill": SFSymbol.guitars_fill.rawValue,
            "airplane.circle": SFSymbol.airplane_circle.rawValue,
            "airplane.circle.fill": SFSymbol.airplane_circle_fill.rawValue,
            "airplane.arrival": SFSymbol.airplane_arrival.rawValue,
            "airplane.departure": SFSymbol.airplane_departure.rawValue,
            "car": SFSymbol.car.rawValue,
            "car.fill": SFSymbol.car_fill.rawValue,
            "car.circle": SFSymbol.car_circle.rawValue,
            "car.circle.fill": SFSymbol.car_circle_fill.rawValue,
            "bolt.car": SFSymbol.bolt_car.rawValue,
            "bolt.car.fill": SFSymbol.bolt_car_fill.rawValue,
            "bolt.car.circle": SFSymbol.bolt_car_circle.rawValue,
            "bolt.car.circle.fill": SFSymbol.bolt_car_circle_fill.rawValue,
            "car.2": SFSymbol.car_2.rawValue,
            "car.2.fill": SFSymbol.car_2_fill.rawValue,
            "bus": SFSymbol.bus.rawValue,
            "bus.fill": SFSymbol.bus_fill.rawValue,
            "bus.doubledecker": SFSymbol.bus_doubledecker.rawValue,
            "bus.doubledecker.fill": SFSymbol.bus_doubledecker_fill.rawValue,
            "tram": SFSymbol.tram.rawValue,
            "tram.fill": SFSymbol.tram_fill.rawValue,
            "tram.circle": SFSymbol.tram_circle.rawValue,
            "tram.circle.fill": SFSymbol.tram_circle_fill.rawValue,
            "tram.fill.tunnel": SFSymbol.tram_fill_tunnel.rawValue,
            "cablecar": SFSymbol.cablecar.rawValue,
            "cablecar.fill": SFSymbol.cablecar_fill.rawValue,
            "ferry": SFSymbol.ferry.rawValue,
            "ferry.fill": SFSymbol.ferry_fill.rawValue,
            "car.ferry": SFSymbol.car_ferry.rawValue,
            "car.ferry.fill": SFSymbol.car_ferry_fill.rawValue,
            "train.side.front.car": SFSymbol.train_side_front_car.rawValue,
            "train.side.middle.car": SFSymbol.train_side_middle_car.rawValue,
            "train.side.rear.car": SFSymbol.train_side_rear_car.rawValue,
            "bicycle": SFSymbol.bicycle.rawValue,
            "bicycle.circle": SFSymbol.bicycle_circle.rawValue,
            "bicycle.circle.fill": SFSymbol.bicycle_circle_fill.rawValue,
            "scooter": SFSymbol.scooter.rawValue,
            "parkingsign": SFSymbol.parkingsign.rawValue,
            "parkingsign.circle": SFSymbol.parkingsign_circle.rawValue,
            "parkingsign.circle.fill": SFSymbol.parkingsign_circle_fill.rawValue,
            "fuelpump": SFSymbol.fuelpump.rawValue,
            "fuelpump.fill": SFSymbol.fuelpump_fill.rawValue,
            "fuelpump.circle": SFSymbol.fuelpump_circle.rawValue,
            "fuelpump.circle.fill": SFSymbol.fuelpump_circle_fill.rawValue,
            "fanblades": SFSymbol.fanblades.rawValue,
            "fanblades.fill": SFSymbol.fanblades_fill.rawValue,
            "bed.double": SFSymbol.bed_double.rawValue,
            "bed.double.fill": SFSymbol.bed_double_fill.rawValue,
            "bed.double.circle": SFSymbol.bed_double_circle.rawValue,
            "bed.double.circle.fill": SFSymbol.bed_double_circle_fill.rawValue,
            "lungs": SFSymbol.lungs.rawValue,
            "lungs.fill": SFSymbol.lungs_fill.rawValue,
            "allergens": SFSymbol.allergens.rawValue,
            "pills": SFSymbol.pills.rawValue,
            "pills.fill": SFSymbol.pills_fill.rawValue,
            "pills.circle": SFSymbol.pills_circle.rawValue,
            "pills.circle.fill": SFSymbol.pills_circle_fill.rawValue,
            "testtube.2": SFSymbol.testtube_2.rawValue,
            "ivfluid.bag": SFSymbol.ivfluid_bag.rawValue,
            "ivfluid.bag.fill": SFSymbol.ivfluid_bag_fill.rawValue,
            "cross.vial": SFSymbol.cross_vial.rawValue,
            "cross.vial.fill": SFSymbol.cross_vial_fill.rawValue,
            "cross": SFSymbol.cross.rawValue,
            "cross.fill": SFSymbol.cross_fill.rawValue,
            "cross.circle": SFSymbol.cross_circle.rawValue,
            "cross.circle.fill": SFSymbol.cross_circle_fill.rawValue,
            "hare": SFSymbol.hare.rawValue,
            "hare.fill": SFSymbol.hare_fill.rawValue,
            "tortoise": SFSymbol.tortoise.rawValue,
            "tortoise.fill": SFSymbol.tortoise_fill.rawValue,
            "pawprint": SFSymbol.pawprint.rawValue,
            "pawprint.fill": SFSymbol.pawprint_fill.rawValue,
            "pawprint.circle": SFSymbol.pawprint_circle.rawValue,
            "pawprint.circle.fill": SFSymbol.pawprint_circle_fill.rawValue,
            "ant": SFSymbol.ant.rawValue,
            "ant.fill": SFSymbol.ant_fill.rawValue,
            "ant.circle": SFSymbol.ant_circle.rawValue,
            "ant.circle.fill": SFSymbol.ant_circle_fill.rawValue,
            "ladybug": SFSymbol.ladybug.rawValue,
            "ladybug.fill": SFSymbol.ladybug_fill.rawValue,
            "leaf": SFSymbol.leaf.rawValue,
            "leaf.fill": SFSymbol.leaf_fill.rawValue,
            "leaf.circle": SFSymbol.leaf_circle.rawValue,
            "leaf.circle.fill": SFSymbol.leaf_circle_fill.rawValue,
            "leaf.arrow.triangle.circlepath": SFSymbol.leaf_arrow_triangle_circlepath.rawValue,
            "film": SFSymbol.film.rawValue,
            "film.fill": SFSymbol.film_fill.rawValue,
            "film.circle": SFSymbol.film_circle.rawValue,
            "film.circle.fill": SFSymbol.film_circle_fill.rawValue,
            "sportscourt": SFSymbol.sportscourt.rawValue,
            "sportscourt.fill": SFSymbol.sportscourt_fill.rawValue,
            "face.smiling": SFSymbol.face_smiling.rawValue,
            "face.smiling.fill": SFSymbol.face_smiling_fill.rawValue,
            "face.dashed": SFSymbol.face_dashed.rawValue,
            "face.dashed.fill": SFSymbol.face_dashed_fill.rawValue,
            "crown": SFSymbol.crown.rawValue,
            "crown.fill": SFSymbol.crown_fill.rawValue,
            "comb": SFSymbol.comb.rawValue,
            "comb.fill": SFSymbol.comb_fill.rawValue,
            "qrcode": SFSymbol.qrcode.rawValue,
            "barcode": SFSymbol.barcode.rawValue,
            "viewfinder": SFSymbol.viewfinder.rawValue,
            "viewfinder.circle": SFSymbol.viewfinder_circle.rawValue,
            "viewfinder.circle.fill": SFSymbol.viewfinder_circle_fill.rawValue,
            "barcode.viewfinder": SFSymbol.barcode_viewfinder.rawValue,
            "qrcode.viewfinder": SFSymbol.qrcode_viewfinder.rawValue,
            "plus.viewfinder": SFSymbol.plus_viewfinder.rawValue,
            "camera.viewfinder": SFSymbol.camera_viewfinder.rawValue,
            "faceid": SFSymbol.faceid.rawValue,
            "doc.viewfinder": SFSymbol.doc_viewfinder.rawValue,
            "doc.viewfinder.fill": SFSymbol.doc_viewfinder_fill.rawValue,
            "location.viewfinder": SFSymbol.location_viewfinder.rawValue,
            "location.fill.viewfinder": SFSymbol.location_fill_viewfinder.rawValue,
            "person.fill.viewfinder": SFSymbol.person_fill_viewfinder.rawValue,
            "text.viewfinder": SFSymbol.text_viewfinder.rawValue,
            "dot.viewfinder": SFSymbol.dot_viewfinder.rawValue,
            "dot.circle.viewfinder": SFSymbol.dot_circle_viewfinder.rawValue,
            "photo": SFSymbol.photo.rawValue,
            "photo.fill": SFSymbol.photo_fill.rawValue,
            "photo.circle": SFSymbol.photo_circle.rawValue,
            "photo.circle.fill": SFSymbol.photo_circle_fill.rawValue,
            "text.below.photo": SFSymbol.text_below_photo.rawValue,
            "text.below.photo.fill": SFSymbol.text_below_photo_fill.rawValue,
            "checkerboard.rectangle": SFSymbol.checkerboard_rectangle.rawValue,
            "camera.metering.center.weighted.average": SFSymbol.camera_metering_center_weighted_average.rawValue,
            "camera.metering.center.weighted": SFSymbol.camera_metering_center_weighted.rawValue,
            "camera.metering.matrix": SFSymbol.camera_metering_matrix.rawValue,
            "camera.metering.multispot": SFSymbol.camera_metering_multispot.rawValue,
            "camera.metering.none": SFSymbol.camera_metering_none.rawValue,
            "camera.metering.partial": SFSymbol.camera_metering_partial.rawValue,
            "camera.metering.spot": SFSymbol.camera_metering_spot.rawValue,
            "camera.metering.unknown": SFSymbol.camera_metering_unknown.rawValue,
            "camera.aperture": SFSymbol.camera_aperture.rawValue,
            "rectangle.dashed": SFSymbol.rectangle_dashed.rawValue,
            "rectangle.dashed.badge.record": SFSymbol.rectangle_dashed_badge_record.rawValue,
            "rectangle.badge.plus": SFSymbol.rectangle_badge_plus.rawValue,
            "rectangle.fill.badge.plus": SFSymbol.rectangle_fill_badge_plus.rawValue,
            "rectangle.badge.minus": SFSymbol.rectangle_badge_minus.rawValue,
            "rectangle.fill.badge.minus": SFSymbol.rectangle_fill_badge_minus.rawValue,
            "rectangle.badge.checkmark": SFSymbol.rectangle_badge_checkmark.rawValue,
            "rectangle.fill.badge.checkmark": SFSymbol.rectangle_fill_badge_checkmark.rawValue,
            "rectangle.badge.xmark": SFSymbol.rectangle_badge_xmark.rawValue,
            "rectangle.fill.badge.xmark": SFSymbol.rectangle_fill_badge_xmark.rawValue,
            "rectangle.badge.person.crop": SFSymbol.rectangle_badge_person_crop.rawValue,
            "rectangle.fill.badge.person.crop": SFSymbol.rectangle_fill_badge_person_crop.rawValue,
            "photo.on.rectangle": SFSymbol.photo_on_rectangle.rawValue,
            "photo.fill.on.rectangle.fill": SFSymbol.photo_fill_on_rectangle_fill.rawValue,
            "rectangle.on.rectangle.angled": SFSymbol.rectangle_on_rectangle_angled.rawValue,
            "rectangle.fill.on.rectangle.angled.fill": SFSymbol.rectangle_fill_on_rectangle_angled_fill.rawValue,
            "photo.on.rectangle.angled": SFSymbol.photo_on_rectangle_angled.rawValue,
            "rectangle.stack": SFSymbol.rectangle_stack.rawValue,
            "rectangle.stack.fill": SFSymbol.rectangle_stack_fill.rawValue,
            "rectangle.stack.badge.plus": SFSymbol.rectangle_stack_badge_plus.rawValue,
            "rectangle.stack.fill.badge.plus": SFSymbol.rectangle_stack_fill_badge_plus.rawValue,
            "rectangle.stack.badge.minus": SFSymbol.rectangle_stack_badge_minus.rawValue,
            "rectangle.stack.fill.badge.minus": SFSymbol.rectangle_stack_fill_badge_minus.rawValue,
            "rectangle.stack.badge.person.crop": SFSymbol.rectangle_stack_badge_person_crop.rawValue,
            "rectangle.stack.badge.person.crop.fill": SFSymbol.rectangle_stack_badge_person_crop_fill.rawValue,
            "rectangle.stack.badge.play": SFSymbol.rectangle_stack_badge_play.rawValue,
            "rectangle.stack.badge.play.fill": SFSymbol.rectangle_stack_badge_play_fill.rawValue,
            "sparkles.rectangle.stack": SFSymbol.sparkles_rectangle_stack.rawValue,
            "sparkles.rectangle.stack.fill": SFSymbol.sparkles_rectangle_stack_fill.rawValue,
            "sidebar.left": SFSymbol.sidebar_left.rawValue,
            "sidebar.right": SFSymbol.sidebar_right.rawValue,
            "sidebar.leading": SFSymbol.sidebar_leading.rawValue,
            "sidebar.trailing": SFSymbol.sidebar_trailing.rawValue,
            "sidebar.squares.left": SFSymbol.sidebar_squares_left.rawValue,
            "sidebar.squares.right": SFSymbol.sidebar_squares_right.rawValue,
            "sidebar.squares.leading": SFSymbol.sidebar_squares_leading.rawValue,
            "sidebar.squares.trailing": SFSymbol.sidebar_squares_trailing.rawValue,
            "macwindow": SFSymbol.macwindow.rawValue,
            "macwindow.badge.plus": SFSymbol.macwindow_badge_plus.rawValue,
            "slider.horizontal.2.rectangle.and.arrow.triangle.2.circlepath": SFSymbol.slider_horizontal_2_rectangle_and_arrow_triangle_2_circlepath.rawValue,
            "dock.rectangle": SFSymbol.dock_rectangle.rawValue,
            "dock.arrow.up.rectangle": SFSymbol.dock_arrow_up_rectangle.rawValue,
            "dock.arrow.down.rectangle": SFSymbol.dock_arrow_down_rectangle.rawValue,
            "menubar.rectangle": SFSymbol.menubar_rectangle.rawValue,
            "menubar.dock.rectangle": SFSymbol.menubar_dock_rectangle.rawValue,
            "menubar.dock.rectangle.badge.record": SFSymbol.menubar_dock_rectangle_badge_record.rawValue,
            "menubar.arrow.up.rectangle": SFSymbol.menubar_arrow_up_rectangle.rawValue,
            "menubar.arrow.down.rectangle": SFSymbol.menubar_arrow_down_rectangle.rawValue,
            "macwindow.on.rectangle": SFSymbol.macwindow_on_rectangle.rawValue,
            "text.and.command.macwindow": SFSymbol.text_and_command_macwindow.rawValue,
            "keyboard.macwindow": SFSymbol.keyboard_macwindow.rawValue,
            "uiwindow.split.2x1": SFSymbol.uiwindow_split_2x1.rawValue,
            "mosaic": SFSymbol.mosaic.rawValue,
            "mosaic.fill": SFSymbol.mosaic_fill.rawValue,
            "squares.below.rectangle": SFSymbol.squares_below_rectangle.rawValue,
            "rectangle.split.3x3.fill": SFSymbol.rectangle_split_3x3_fill.rawValue,
            "square.on.square.squareshape.controlhandles": SFSymbol.square_on_square_squareshape_controlhandles.rawValue,
            "squareshape.controlhandles.on.squareshape.controlhandles": SFSymbol.squareshape_controlhandles_on_squareshape_controlhandles.rawValue,
            "pano": SFSymbol.pano.rawValue,
            "pano.fill": SFSymbol.pano_fill.rawValue,
            "circle.grid.2x1": SFSymbol.circle_grid_2x1.rawValue,
            "circle.grid.2x1.fill": SFSymbol.circle_grid_2x1_fill.rawValue,
            "circle.grid.2x1.left.filled": SFSymbol.circle_grid_2x1_left_filled.rawValue,
            "circle.grid.2x1.right.filled": SFSymbol.circle_grid_2x1_right_filled.rawValue,
            "square.and.line.vertical.and.square": SFSymbol.square_and_line_vertical_and_square.rawValue,
            "square.fill.and.line.vertical.and.square.fill": SFSymbol.square_fill_and_line_vertical_and_square_fill.rawValue,
            "square.filled.and.line.vertical.and.square": SFSymbol.square_filled_and_line_vertical_and_square.rawValue,
            "square.and.line.vertical.and.square.filled": SFSymbol.square_and_line_vertical_and_square_filled.rawValue,
            "flowchart": SFSymbol.flowchart.rawValue,
            "flowchart.fill": SFSymbol.flowchart_fill.rawValue,
            "rectangle.connected.to.line.below": SFSymbol.rectangle_connected_to_line_below.rawValue,
            "align.horizontal.left": SFSymbol.align_horizontal_left.rawValue,
            "align.horizontal.left.fill": SFSymbol.align_horizontal_left_fill.rawValue,
            "align.horizontal.center": SFSymbol.align_horizontal_center.rawValue,
            "align.horizontal.center.fill": SFSymbol.align_horizontal_center_fill.rawValue,
            "align.horizontal.right": SFSymbol.align_horizontal_right.rawValue,
            "align.horizontal.right.fill": SFSymbol.align_horizontal_right_fill.rawValue,
            "align.vertical.top": SFSymbol.align_vertical_top.rawValue,
            "align.vertical.top.fill": SFSymbol.align_vertical_top_fill.rawValue,
            "align.vertical.center": SFSymbol.align_vertical_center.rawValue,
            "align.vertical.center.fill": SFSymbol.align_vertical_center_fill.rawValue,
            "align.vertical.bottom": SFSymbol.align_vertical_bottom.rawValue,
            "align.vertical.bottom.fill": SFSymbol.align_vertical_bottom_fill.rawValue,
            "shield": SFSymbol.shield.rawValue,
            "shield.fill": SFSymbol.shield_fill.rawValue,
            "shield.lefthalf.filled": SFSymbol.shield_lefthalf_filled.rawValue,
            "shield.righthalf.filled": SFSymbol.shield_righthalf_filled.rawValue,
            "shield.slash": SFSymbol.shield_slash.rawValue,
            "shield.slash.fill": SFSymbol.shield_slash_fill.rawValue,
            "shield.lefthalf.filled.slash": SFSymbol.shield_lefthalf_filled_slash.rawValue,
            "checkerboard.shield": SFSymbol.checkerboard_shield.rawValue,
            "switch.2": SFSymbol.switch_2.rawValue,
            "point.topleft.down.curvedto.point.bottomright.up": SFSymbol.point_topleft_down_curvedto_point_bottomright_up.rawValue,
            "point.topleft.down.curvedto.point.bottomright.up.fill": SFSymbol.point_topleft_down_curvedto_point_bottomright_up_fill.rawValue,
            "point.topleft.down.curvedto.point.filled.bottomright.up": SFSymbol.point_topleft_down_curvedto_point_filled_bottomright_up.rawValue,
            "point.filled.topleft.down.curvedto.point.bottomright.up": SFSymbol.point_filled_topleft_down_curvedto_point_bottomright_up.rawValue,
            "app.connected.to.app.below.fill": SFSymbol.app_connected_to_app_below_fill.rawValue,
            "slider.horizontal.3": SFSymbol.slider_horizontal_3.rawValue,
            "slider.horizontal.below.rectangle": SFSymbol.slider_horizontal_below_rectangle.rawValue,
            "slider.horizontal.below.square.filled.and.square": SFSymbol.slider_horizontal_below_square_filled_and_square.rawValue,
            "slider.vertical.3": SFSymbol.slider_vertical_3.rawValue,
            "cube": SFSymbol.cube.rawValue,
            "cube.fill": SFSymbol.cube_fill.rawValue,
            "cube.transparent": SFSymbol.cube_transparent.rawValue,
            "cube.transparent.fill": SFSymbol.cube_transparent_fill.rawValue,
            "shippingbox": SFSymbol.shippingbox.rawValue,
            "shippingbox.fill": SFSymbol.shippingbox_fill.rawValue,
            "shippingbox.circle": SFSymbol.shippingbox_circle.rawValue,
            "shippingbox.circle.fill": SFSymbol.shippingbox_circle_fill.rawValue,
            "arkit": SFSymbol.arkit.rawValue,
            "arkit.badge.xmark": SFSymbol.arkit_badge_xmark.rawValue,
            "cone": SFSymbol.cone.rawValue,
            "cone.fill": SFSymbol.cone_fill.rawValue,
            "pyramid": SFSymbol.pyramid.rawValue,
            "pyramid.fill": SFSymbol.pyramid_fill.rawValue,
            "square.stack.3d.down.right": SFSymbol.square_stack_3d_down_right.rawValue,
            "square.stack.3d.down.right.fill": SFSymbol.square_stack_3d_down_right_fill.rawValue,
            "square.stack.3d.down.forward": SFSymbol.square_stack_3d_down_forward.rawValue,
            "square.stack.3d.down.forward.fill": SFSymbol.square_stack_3d_down_forward_fill.rawValue,
            "square.stack.3d.up": SFSymbol.square_stack_3d_up.rawValue,
            "square.stack.3d.up.fill": SFSymbol.square_stack_3d_up_fill.rawValue,
            "square.stack.3d.up.slash": SFSymbol.square_stack_3d_up_slash.rawValue,
            "square.stack.3d.up.slash.fill": SFSymbol.square_stack_3d_up_slash_fill.rawValue,
            "square.stack.3d.up.badge.a": SFSymbol.square_stack_3d_up_badge_a.rawValue,
            "square.stack.3d.up.badge.a.fill": SFSymbol.square_stack_3d_up_badge_a_fill.rawValue,
            "square.stack.3d.forward.dottedline": SFSymbol.square_stack_3d_forward_dottedline.rawValue,
            "square.stack.3d.forward.dottedline.fill": SFSymbol.square_stack_3d_forward_dottedline_fill.rawValue,
            "livephoto": SFSymbol.livephoto.rawValue,
            "livephoto.slash": SFSymbol.livephoto_slash.rawValue,
            "livephoto.badge.a": SFSymbol.livephoto_badge_a.rawValue,
            "livephoto.play": SFSymbol.livephoto_play.rawValue,
            "scope": SFSymbol.scope.rawValue,
            "helm": SFSymbol.helm.rawValue,
            "clock": SFSymbol.clock.rawValue,
            "clock.fill": SFSymbol.clock_fill.rawValue,
            "clock.circle": SFSymbol.clock_circle.rawValue,
            "clock.circle.fill": SFSymbol.clock_circle_fill.rawValue,
            "clock.badge.checkmark": SFSymbol.clock_badge_checkmark.rawValue,
            "clock.badge.checkmark.fill": SFSymbol.clock_badge_checkmark_fill.rawValue,
            "clock.badge.exclamationmark": SFSymbol.clock_badge_exclamationmark.rawValue,
            "clock.badge.exclamationmark.fill": SFSymbol.clock_badge_exclamationmark_fill.rawValue,
            "deskclock": SFSymbol.deskclock.rawValue,
            "deskclock.fill": SFSymbol.deskclock_fill.rawValue,
            "alarm": SFSymbol.alarm.rawValue,
            "alarm.fill": SFSymbol.alarm_fill.rawValue,
            "stopwatch": SFSymbol.stopwatch.rawValue,
            "stopwatch.fill": SFSymbol.stopwatch_fill.rawValue,
            "chart.xyaxis.line": SFSymbol.chart_xyaxis_line.rawValue,
            "timer": SFSymbol.timer.rawValue,
            "timer.square": SFSymbol.timer_square.rawValue,
            "clock.arrow.circlepath": SFSymbol.clock_arrow_circlepath.rawValue,
            "exclamationmark.arrow.circlepath": SFSymbol.exclamationmark_arrow_circlepath.rawValue,
            "clock.arrow.2.circlepath": SFSymbol.clock_arrow_2_circlepath.rawValue,
            "gamecontroller": SFSymbol.gamecontroller.rawValue,
            "gamecontroller.fill": SFSymbol.gamecontroller_fill.rawValue,
            "l.joystick": SFSymbol.l_joystick.rawValue,
            "l.joystick.fill": SFSymbol.l_joystick_fill.rawValue,
            "r.joystick": SFSymbol.r_joystick.rawValue,
            "r.joystick.fill": SFSymbol.r_joystick_fill.rawValue,
            "l.joystick.press.down": SFSymbol.l_joystick_press_down.rawValue,
            "l.joystick.press.down.fill": SFSymbol.l_joystick_press_down_fill.rawValue,
            "r.joystick.press.down": SFSymbol.r_joystick_press_down.rawValue,
            "r.joystick.press.down.fill": SFSymbol.r_joystick_press_down_fill.rawValue,
            "l.joystick.tilt.left": SFSymbol.l_joystick_tilt_left.rawValue,
            "l.joystick.tilt.left.fill": SFSymbol.l_joystick_tilt_left_fill.rawValue,
            "l.joystick.tilt.right": SFSymbol.l_joystick_tilt_right.rawValue,
            "l.joystick.tilt.right.fill": SFSymbol.l_joystick_tilt_right_fill.rawValue,
            "l.joystick.tilt.up": SFSymbol.l_joystick_tilt_up.rawValue,
            "l.joystick.tilt.up.fill": SFSymbol.l_joystick_tilt_up_fill.rawValue,
            "l.joystick.tilt.down": SFSymbol.l_joystick_tilt_down.rawValue,
            "l.joystick.tilt.down.fill": SFSymbol.l_joystick_tilt_down_fill.rawValue,
            "r.joystick.tilt.left": SFSymbol.r_joystick_tilt_left.rawValue,
            "r.joystick.tilt.left.fill": SFSymbol.r_joystick_tilt_left_fill.rawValue,
            "r.joystick.tilt.right": SFSymbol.r_joystick_tilt_right.rawValue,
            "r.joystick.tilt.right.fill": SFSymbol.r_joystick_tilt_right_fill.rawValue,
            "r.joystick.tilt.up": SFSymbol.r_joystick_tilt_up.rawValue,
            "r.joystick.tilt.up.fill": SFSymbol.r_joystick_tilt_up_fill.rawValue,
            "r.joystick.tilt.down": SFSymbol.r_joystick_tilt_down.rawValue,
            "r.joystick.tilt.down.fill": SFSymbol.r_joystick_tilt_down_fill.rawValue,
            "dpad": SFSymbol.dpad.rawValue,
            "dpad.fill": SFSymbol.dpad_fill.rawValue,
            "dpad.left.filled": SFSymbol.dpad_left_filled.rawValue,
            "dpad.up.filled": SFSymbol.dpad_up_filled.rawValue,
            "dpad.right.filled": SFSymbol.dpad_right_filled.rawValue,
            "dpad.down.filled": SFSymbol.dpad_down_filled.rawValue,
            "circle.circle": SFSymbol.circle_circle.rawValue,
            "circle.circle.fill": SFSymbol.circle_circle_fill.rawValue,
            "square.circle": SFSymbol.square_circle.rawValue,
            "square.circle.fill": SFSymbol.square_circle_fill.rawValue,
            "triangle.circle": SFSymbol.triangle_circle.rawValue,
            "triangle.circle.fill": SFSymbol.triangle_circle_fill.rawValue,
            "rectangle.roundedtop": SFSymbol.rectangle_roundedtop.rawValue,
            "rectangle.roundedtop.fill": SFSymbol.rectangle_roundedtop_fill.rawValue,
            "rectangle.roundedbottom": SFSymbol.rectangle_roundedbottom.rawValue,
            "rectangle.roundedbottom.fill": SFSymbol.rectangle_roundedbottom_fill.rawValue,
            "l.rectangle.roundedbottom": SFSymbol.l_rectangle_roundedbottom.rawValue,
            "l.rectangle.roundedbottom.fill": SFSymbol.l_rectangle_roundedbottom_fill.rawValue,
            "l1.rectangle.roundedbottom": SFSymbol.l1_rectangle_roundedbottom.rawValue,
            "l1.rectangle.roundedbottom.fill": SFSymbol.l1_rectangle_roundedbottom_fill.rawValue,
            "l2.rectangle.roundedtop": SFSymbol.l2_rectangle_roundedtop.rawValue,
            "l2.rectangle.roundedtop.fill": SFSymbol.l2_rectangle_roundedtop_fill.rawValue,
            "r.rectangle.roundedbottom": SFSymbol.r_rectangle_roundedbottom.rawValue,
            "r.rectangle.roundedbottom.fill": SFSymbol.r_rectangle_roundedbottom_fill.rawValue,
            "r1.rectangle.roundedbottom": SFSymbol.r1_rectangle_roundedbottom.rawValue,
            "r1.rectangle.roundedbottom.fill": SFSymbol.r1_rectangle_roundedbottom_fill.rawValue,
            "r2.rectangle.roundedtop": SFSymbol.r2_rectangle_roundedtop.rawValue,
            "r2.rectangle.roundedtop.fill": SFSymbol.r2_rectangle_roundedtop_fill.rawValue,
            "lb.rectangle.roundedbottom": SFSymbol.lb_rectangle_roundedbottom.rawValue,
            "lb.rectangle.roundedbottom.fill": SFSymbol.lb_rectangle_roundedbottom_fill.rawValue,
            "rb.rectangle.roundedbottom": SFSymbol.rb_rectangle_roundedbottom.rawValue,
            "rb.rectangle.roundedbottom.fill": SFSymbol.rb_rectangle_roundedbottom_fill.rawValue,
            "lt.rectangle.roundedtop": SFSymbol.lt_rectangle_roundedtop.rawValue,
            "lt.rectangle.roundedtop.fill": SFSymbol.lt_rectangle_roundedtop_fill.rawValue,
            "rt.rectangle.roundedtop": SFSymbol.rt_rectangle_roundedtop.rawValue,
            "rt.rectangle.roundedtop.fill": SFSymbol.rt_rectangle_roundedtop_fill.rawValue,
            "zl.rectangle.roundedtop": SFSymbol.zl_rectangle_roundedtop.rawValue,
            "zl.rectangle.roundedtop.fill": SFSymbol.zl_rectangle_roundedtop_fill.rawValue,
            "zr.rectangle.roundedtop": SFSymbol.zr_rectangle_roundedtop.rawValue,
            "zr.rectangle.roundedtop.fill": SFSymbol.zr_rectangle_roundedtop_fill.rawValue,
            "logo.playstation": SFSymbol.logo_playstation.rawValue,
            "logo.xbox": SFSymbol.logo_xbox.rawValue,
            "paintpalette": SFSymbol.paintpalette.rawValue,
            "paintpalette.fill": SFSymbol.paintpalette_fill.rawValue,
            "cup.and.saucer": SFSymbol.cup_and_saucer.rawValue,
            "cup.and.saucer.fill": SFSymbol.cup_and_saucer_fill.rawValue,
            "takeoutbag.and.cup.and.straw": SFSymbol.takeoutbag_and_cup_and_straw.rawValue,
            "takeoutbag.and.cup.and.straw.fill": SFSymbol.takeoutbag_and_cup_and_straw_fill.rawValue,
            "fork.knife": SFSymbol.fork_knife.rawValue,
            "fork.knife.circle": SFSymbol.fork_knife_circle.rawValue,
            "fork.knife.circle.fill": SFSymbol.fork_knife_circle_fill.rawValue,
            "figure.walk": SFSymbol.figure_walk.rawValue,
            "figure.walk.circle": SFSymbol.figure_walk_circle.rawValue,
            "figure.walk.circle.fill": SFSymbol.figure_walk_circle_fill.rawValue,
            "figure.walk.diamond": SFSymbol.figure_walk_diamond.rawValue,
            "figure.walk.diamond.fill": SFSymbol.figure_walk_diamond_fill.rawValue,
            "figure.stand": SFSymbol.figure_stand.rawValue,
            "figure.stand.line.dotted.figure.stand": SFSymbol.figure_stand_line_dotted_figure_stand.rawValue,
            "figure.wave": SFSymbol.figure_wave.rawValue,
            "figure.wave.circle": SFSymbol.figure_wave_circle.rawValue,
            "figure.wave.circle.fill": SFSymbol.figure_wave_circle_fill.rawValue,
            "figure.roll": SFSymbol.figure_roll.rawValue,
            "ear": SFSymbol.ear.rawValue,
            "ear.badge.checkmark": SFSymbol.ear_badge_checkmark.rawValue,
            "ear.trianglebadge.exclamationmark": SFSymbol.ear_trianglebadge_exclamationmark.rawValue,
            "ear.and.waveform": SFSymbol.ear_and_waveform.rawValue,
            "ear.fill": SFSymbol.ear_fill.rawValue,
            "hearingdevice.ear": SFSymbol.hearingdevice_ear.rawValue,
            "hand.raised": SFSymbol.hand_raised.rawValue,
            "hand.raised.fill": SFSymbol.hand_raised_fill.rawValue,
            "hand.raised.circle": SFSymbol.hand_raised_circle.rawValue,
            "hand.raised.circle.fill": SFSymbol.hand_raised_circle_fill.rawValue,
            "hand.raised.square": SFSymbol.hand_raised_square.rawValue,
            "hand.raised.square.fill": SFSymbol.hand_raised_square_fill.rawValue,
            "hand.raised.slash": SFSymbol.hand_raised_slash.rawValue,
            "hand.raised.slash.fill": SFSymbol.hand_raised_slash_fill.rawValue,
            "hand.thumbsup": SFSymbol.hand_thumbsup.rawValue,
            "hand.thumbsup.fill": SFSymbol.hand_thumbsup_fill.rawValue,
            "hand.thumbsup.circle": SFSymbol.hand_thumbsup_circle.rawValue,
            "hand.thumbsup.circle.fill": SFSymbol.hand_thumbsup_circle_fill.rawValue,
            "hand.thumbsdown": SFSymbol.hand_thumbsdown.rawValue,
            "hand.thumbsdown.fill": SFSymbol.hand_thumbsdown_fill.rawValue,
            "hand.thumbsdown.circle": SFSymbol.hand_thumbsdown_circle.rawValue,
            "hand.thumbsdown.circle.fill": SFSymbol.hand_thumbsdown_circle_fill.rawValue,
            "hand.point.up.left": SFSymbol.hand_point_up_left.rawValue,
            "hand.point.up.left.fill": SFSymbol.hand_point_up_left_fill.rawValue,
            "hand.draw": SFSymbol.hand_draw.rawValue,
            "hand.draw.fill": SFSymbol.hand_draw_fill.rawValue,
            "hand.tap": SFSymbol.hand_tap.rawValue,
            "hand.tap.fill": SFSymbol.hand_tap_fill.rawValue,
            "rectangle.and.hand.point.up.left": SFSymbol.rectangle_and_hand_point_up_left.rawValue,
            "rectangle.and.hand.point.up.left.fill": SFSymbol.rectangle_and_hand_point_up_left_fill.rawValue,
            "rectangle.filled.and.hand.point.up.left": SFSymbol.rectangle_filled_and_hand_point_up_left.rawValue,
            "rectangle.and.hand.point.up.left.filled": SFSymbol.rectangle_and_hand_point_up_left_filled.rawValue,
            "hand.point.left": SFSymbol.hand_point_left.rawValue,
            "hand.point.left.fill": SFSymbol.hand_point_left_fill.rawValue,
            "hand.point.right": SFSymbol.hand_point_right.rawValue,
            "hand.point.right.fill": SFSymbol.hand_point_right_fill.rawValue,
            "hand.point.up": SFSymbol.hand_point_up.rawValue,
            "hand.point.up.fill": SFSymbol.hand_point_up_fill.rawValue,
            "hand.point.up.braille": SFSymbol.hand_point_up_braille.rawValue,
            "hand.point.up.braille.fill": SFSymbol.hand_point_up_braille_fill.rawValue,
            "hand.point.down": SFSymbol.hand_point_down.rawValue,
            "hand.point.down.fill": SFSymbol.hand_point_down_fill.rawValue,
            "hand.wave": SFSymbol.hand_wave.rawValue,
            "hand.wave.fill": SFSymbol.hand_wave_fill.rawValue,
            "hands.clap": SFSymbol.hands_clap.rawValue,
            "hands.clap.fill": SFSymbol.hands_clap_fill.rawValue,
            "hands.sparkles": SFSymbol.hands_sparkles.rawValue,
            "hands.sparkles.fill": SFSymbol.hands_sparkles_fill.rawValue,
            "rectangle.compress.vertical": SFSymbol.rectangle_compress_vertical.rawValue,
            "rectangle.expand.vertical": SFSymbol.rectangle_expand_vertical.rawValue,
            "rectangle.and.arrow.up.right.and.arrow.down.left": SFSymbol.rectangle_and_arrow_up_right_and_arrow_down_left.rawValue,
            "rectangle.and.arrow.up.right.and.arrow.down.left.slash": SFSymbol.rectangle_and_arrow_up_right_and_arrow_down_left_slash.rawValue,
            "square.2.stack.3d": SFSymbol.square_2_stack_3d.rawValue,
            "square.2.stack.3d.top.filled": SFSymbol.square_2_stack_3d_top_filled.rawValue,
            "square.2.stack.3d.bottom.filled": SFSymbol.square_2_stack_3d_bottom_filled.rawValue,
            "square.3.layers.3d.down.right": SFSymbol.square_3_layers_3d_down_right.rawValue,
            "square.3.layers.3d.down.right.slash": SFSymbol.square_3_layers_3d_down_right_slash.rawValue,
            "square.3.layers.3d.down.left": SFSymbol.square_3_layers_3d_down_left.rawValue,
            "square.3.layers.3d.down.left.slash": SFSymbol.square_3_layers_3d_down_left_slash.rawValue,
            "square.3.layers.3d.down.forward": SFSymbol.square_3_layers_3d_down_forward.rawValue,
            "square.3.layers.3d.down.backward": SFSymbol.square_3_layers_3d_down_backward.rawValue,
            "square.3.stack.3d": SFSymbol.square_3_stack_3d.rawValue,
            "square.3.stack.3d.slash": SFSymbol.square_3_stack_3d_slash.rawValue,
            "square.3.stack.3d.top.filled": SFSymbol.square_3_stack_3d_top_filled.rawValue,
            "square.3.stack.3d.middle.filled": SFSymbol.square_3_stack_3d_middle_filled.rawValue,
            "square.3.stack.3d.bottom.filled": SFSymbol.square_3_stack_3d_bottom_filled.rawValue,
            "cylinder": SFSymbol.cylinder.rawValue,
            "cylinder.fill": SFSymbol.cylinder_fill.rawValue,
            "cylinder.split.1x2": SFSymbol.cylinder_split_1x2.rawValue,
            "cylinder.split.1x2.fill": SFSymbol.cylinder_split_1x2_fill.rawValue,
            "chart.bar": SFSymbol.chart_bar.rawValue,
            "chart.bar.fill": SFSymbol.chart_bar_fill.rawValue,
            "chart.pie": SFSymbol.chart_pie.rawValue,
            "chart.pie.fill": SFSymbol.chart_pie_fill.rawValue,
            "chart.bar.xaxis": SFSymbol.chart_bar_xaxis.rawValue,
            "chart.line.uptrend.xyaxis": SFSymbol.chart_line_uptrend_xyaxis.rawValue,
            "chart.line.uptrend.xyaxis.circle": SFSymbol.chart_line_uptrend_xyaxis_circle.rawValue,
            "chart.line.uptrend.xyaxis.circle.fill": SFSymbol.chart_line_uptrend_xyaxis_circle_fill.rawValue,
            "dot.squareshape.split.2x2": SFSymbol.dot_squareshape_split_2x2.rawValue,
            "squareshape.split.2x2.dotted": SFSymbol.squareshape_split_2x2_dotted.rawValue,
            "squareshape.split.2x2": SFSymbol.squareshape_split_2x2.rawValue,
            "squareshape.split.3x3": SFSymbol.squareshape_split_3x3.rawValue,
            "burst": SFSymbol.burst.rawValue,
            "burst.fill": SFSymbol.burst_fill.rawValue,
            "waveform.path.ecg": SFSymbol.waveform_path_ecg.rawValue,
            "waveform.path.ecg.rectangle": SFSymbol.waveform_path_ecg_rectangle.rawValue,
            "waveform.path.ecg.rectangle.fill": SFSymbol.waveform_path_ecg_rectangle_fill.rawValue,
            "waveform.path": SFSymbol.waveform_path.rawValue,
            "waveform.path.badge.plus": SFSymbol.waveform_path_badge_plus.rawValue,
            "waveform.path.badge.minus": SFSymbol.waveform_path_badge_minus.rawValue,
            "point.3.connected.trianglepath.dotted": SFSymbol.point_3_connected_trianglepath_dotted.rawValue,
            "point.3.filled.connected.trianglepath.dotted": SFSymbol.point_3_filled_connected_trianglepath_dotted.rawValue,
            "waveform": SFSymbol.waveform.rawValue,
            "waveform.circle": SFSymbol.waveform_circle.rawValue,
            "waveform.circle.fill": SFSymbol.waveform_circle_fill.rawValue,
            "waveform.badge.plus": SFSymbol.waveform_badge_plus.rawValue,
            "waveform.badge.minus": SFSymbol.waveform_badge_minus.rawValue,
            "waveform.badge.exclamationmark": SFSymbol.waveform_badge_exclamationmark.rawValue,
            "waveform.and.magnifyingglass": SFSymbol.waveform_and_magnifyingglass.rawValue,
            "waveform.and.mic": SFSymbol.waveform_and_mic.rawValue,
            "staroflife": SFSymbol.staroflife.rawValue,
            "staroflife.fill": SFSymbol.staroflife_fill.rawValue,
            "staroflife.circle": SFSymbol.staroflife_circle.rawValue,
            "staroflife.circle.fill": SFSymbol.staroflife_circle_fill.rawValue,
            "simcard": SFSymbol.simcard.rawValue,
            "simcard.fill": SFSymbol.simcard_fill.rawValue,
            "simcard.2": SFSymbol.simcard_2.rawValue,
            "simcard.2.fill": SFSymbol.simcard_2_fill.rawValue,
            "sdcard": SFSymbol.sdcard.rawValue,
            "sdcard.fill": SFSymbol.sdcard_fill.rawValue,
            "esim": SFSymbol.esim.rawValue,
            "esim.fill": SFSymbol.esim_fill.rawValue,
            "touchid": SFSymbol.touchid.rawValue,
            "bonjour": SFSymbol.bonjour.rawValue,
            "atom": SFSymbol.atom.rawValue,
            "scalemass": SFSymbol.scalemass.rawValue,
            "scalemass.fill": SFSymbol.scalemass_fill.rawValue,
            "gift": SFSymbol.gift.rawValue,
            "gift.fill": SFSymbol.gift_fill.rawValue,
            "gift.circle": SFSymbol.gift_circle.rawValue,
            "gift.circle.fill": SFSymbol.gift_circle_fill.rawValue,
            "plus.app": SFSymbol.plus_app.rawValue,
            "plus.app.fill": SFSymbol.plus_app_fill.rawValue,
            "arrow.down.app": SFSymbol.arrow_down_app.rawValue,
            "arrow.down.app.fill": SFSymbol.arrow_down_app_fill.rawValue,
            "arrow.up.forward.app": SFSymbol.arrow_up_forward_app.rawValue,
            "arrow.up.forward.app.fill": SFSymbol.arrow_up_forward_app_fill.rawValue,
            "xmark.app": SFSymbol.xmark_app.rawValue,
            "xmark.app.fill": SFSymbol.xmark_app_fill.rawValue,
            "questionmark.app": SFSymbol.questionmark_app.rawValue,
            "questionmark.app.fill": SFSymbol.questionmark_app_fill.rawValue,
            "app.badge": SFSymbol.app_badge.rawValue,
            "app.badge.fill": SFSymbol.app_badge_fill.rawValue,
            "app.badge.checkmark": SFSymbol.app_badge_checkmark.rawValue,
            "app.badge.checkmark.fill": SFSymbol.app_badge_checkmark_fill.rawValue,
            "app.dashed": SFSymbol.app_dashed.rawValue,
            "questionmark.app.dashed": SFSymbol.questionmark_app_dashed.rawValue,
            "appclip": SFSymbol.appclip.rawValue,
            "app.gift": SFSymbol.app_gift.rawValue,
            "app.gift.fill": SFSymbol.app_gift_fill.rawValue,
            "studentdesk": SFSymbol.studentdesk.rawValue,
            "hourglass": SFSymbol.hourglass.rawValue,
            "hourglass.circle": SFSymbol.hourglass_circle.rawValue,
            "hourglass.circle.fill": SFSymbol.hourglass_circle_fill.rawValue,
            "hourglass.badge.plus": SFSymbol.hourglass_badge_plus.rawValue,
            "hourglass.bottomhalf.filled": SFSymbol.hourglass_bottomhalf_filled.rawValue,
            "hourglass.tophalf.filled": SFSymbol.hourglass_tophalf_filled.rawValue,
            "banknote": SFSymbol.banknote.rawValue,
            "banknote.fill": SFSymbol.banknote_fill.rawValue,
            "purchased": SFSymbol.purchased.rawValue,
            "purchased.circle": SFSymbol.purchased_circle.rawValue,
            "purchased.circle.fill": SFSymbol.purchased_circle_fill.rawValue,
            "perspective": SFSymbol.perspective.rawValue,
            "circle.and.line.horizontal": SFSymbol.circle_and_line_horizontal.rawValue,
            "circle.and.line.horizontal.fill": SFSymbol.circle_and_line_horizontal_fill.rawValue,
            "trapezoid.and.line.vertical": SFSymbol.trapezoid_and_line_vertical.rawValue,
            "trapezoid.and.line.vertical.fill": SFSymbol.trapezoid_and_line_vertical_fill.rawValue,
            "trapezoid.and.line.horizontal": SFSymbol.trapezoid_and_line_horizontal.rawValue,
            "trapezoid.and.line.horizontal.fill": SFSymbol.trapezoid_and_line_horizontal_fill.rawValue,
            "aspectratio": SFSymbol.aspectratio.rawValue,
            "aspectratio.fill": SFSymbol.aspectratio_fill.rawValue,
            "camera.filters": SFSymbol.camera_filters.rawValue,
            "skew": SFSymbol.skew.rawValue,
            "arrow.left.and.right.righttriangle.left.righttriangle.right": SFSymbol.arrow_left_and_right_righttriangle_left_righttriangle_right.rawValue,
            "arrow.left.and.right.righttriangle.left.righttriangle.right.fill": SFSymbol.arrow_left_and_right_righttriangle_left_righttriangle_right_fill.rawValue,
            "arrow.up.and.down.righttriangle.up.righttriangle.down": SFSymbol.arrow_up_and_down_righttriangle_up_righttriangle_down.rawValue,
            "arrow.up.and.down.righttriangle.up.righttriangle.down.fill": SFSymbol.arrow_up_and_down_righttriangle_up_righttriangle_down_fill.rawValue,
            "arrowtriangle.left.and.line.vertical.and.arrowtriangle.right": SFSymbol.arrowtriangle_left_and_line_vertical_and_arrowtriangle_right.rawValue,
            "arrowtriangle.left.and.line.vertical.and.arrowtriangle.right.fill": SFSymbol.arrowtriangle_left_and_line_vertical_and_arrowtriangle_right_fill.rawValue,
            "arrowtriangle.right.and.line.vertical.and.arrowtriangle.left": SFSymbol.arrowtriangle_right_and_line_vertical_and_arrowtriangle_left.rawValue,
            "arrowtriangle.right.and.line.vertical.and.arrowtriangle.left.fill": SFSymbol.arrowtriangle_right_and_line_vertical_and_arrowtriangle_left_fill.rawValue,
            "grid": SFSymbol.grid.rawValue,
            "grid.circle": SFSymbol.grid_circle.rawValue,
            "grid.circle.fill": SFSymbol.grid_circle_fill.rawValue,
            "burn": SFSymbol.burn.rawValue,
            "lifepreserver": SFSymbol.lifepreserver.rawValue,
            "lifepreserver.fill": SFSymbol.lifepreserver_fill.rawValue,
            "recordingtape": SFSymbol.recordingtape.rawValue,
            "binoculars": SFSymbol.binoculars.rawValue,
            "binoculars.fill": SFSymbol.binoculars_fill.rawValue,
            "battery.100": SFSymbol.battery_100.rawValue,
            "battery.75": SFSymbol.battery_75.rawValue,
            "battery.50": SFSymbol.battery_50.rawValue,
            "battery.25": SFSymbol.battery_25.rawValue,
            "battery.0": SFSymbol.battery_0.rawValue,
            "battery.100.bolt": SFSymbol.battery_100_bolt.rawValue,
            "minus.plus.batteryblock": SFSymbol.minus_plus_batteryblock.rawValue,
            "minus.plus.batteryblock.fill": SFSymbol.minus_plus_batteryblock_fill.rawValue,
            "bolt.batteryblock": SFSymbol.bolt_batteryblock.rawValue,
            "bolt.batteryblock.fill": SFSymbol.bolt_batteryblock_fill.rawValue,
            "lightbulb": SFSymbol.lightbulb.rawValue,
            "lightbulb.fill": SFSymbol.lightbulb_fill.rawValue,
            "lightbulb.circle": SFSymbol.lightbulb_circle.rawValue,
            "lightbulb.circle.fill": SFSymbol.lightbulb_circle_fill.rawValue,
            "lightbulb.slash": SFSymbol.lightbulb_slash.rawValue,
            "lightbulb.slash.fill": SFSymbol.lightbulb_slash_fill.rawValue,
            "fibrechannel": SFSymbol.fibrechannel.rawValue,
            "checklist": SFSymbol.checklist.rawValue,
            "square.fill.text.grid.1x2": SFSymbol.square_fill_text_grid_1x2.rawValue,
            "list.dash": SFSymbol.list_dash.rawValue,
            "list.bullet": SFSymbol.list_bullet.rawValue,
            "list.bullet.circle": SFSymbol.list_bullet_circle.rawValue,
            "list.bullet.circle.fill": SFSymbol.list_bullet_circle_fill.rawValue,
            "list.triangle": SFSymbol.list_triangle.rawValue,
            "list.bullet.indent": SFSymbol.list_bullet_indent.rawValue,
            "list.number": SFSymbol.list_number.rawValue,
            "list.star": SFSymbol.list_star.rawValue,
            "increase.indent": SFSymbol.increase_indent.rawValue,
            "decrease.indent": SFSymbol.decrease_indent.rawValue,
            "decrease.quotelevel": SFSymbol.decrease_quotelevel.rawValue,
            "increase.quotelevel": SFSymbol.increase_quotelevel.rawValue,
            "list.bullet.below.rectangle": SFSymbol.list_bullet_below_rectangle.rawValue,
            "text.badge.plus": SFSymbol.text_badge_plus.rawValue,
            "text.badge.minus": SFSymbol.text_badge_minus.rawValue,
            "text.badge.checkmark": SFSymbol.text_badge_checkmark.rawValue,
            "text.badge.xmark": SFSymbol.text_badge_xmark.rawValue,
            "text.badge.star": SFSymbol.text_badge_star.rawValue,
            "text.insert": SFSymbol.text_insert.rawValue,
            "text.append": SFSymbol.text_append.rawValue,
            "text.quote": SFSymbol.text_quote.rawValue,
            "text.alignleft": SFSymbol.text_alignleft.rawValue,
            "text.aligncenter": SFSymbol.text_aligncenter.rawValue,
            "text.alignright": SFSymbol.text_alignright.rawValue,
            "text.justify": SFSymbol.text_justify.rawValue,
            "text.justify.left": SFSymbol.text_justify_left.rawValue,
            "text.justify.right": SFSymbol.text_justify_right.rawValue,
            "text.justify.leading": SFSymbol.text_justify_leading.rawValue,
            "text.justify.trailing": SFSymbol.text_justify_trailing.rawValue,
            "text.redaction": SFSymbol.text_redaction.rawValue,
            "list.and.film": SFSymbol.list_and_film.rawValue,
            "line.3.horizontal": SFSymbol.line_3_horizontal.rawValue,
            "line.3.horizontal.decrease": SFSymbol.line_3_horizontal_decrease.rawValue,
            "line.3.horizontal.decrease.circle": SFSymbol.line_3_horizontal_decrease_circle.rawValue,
            "line.3.horizontal.decrease.circle.fill": SFSymbol.line_3_horizontal_decrease_circle_fill.rawValue,
            "line.3.horizontal.circle": SFSymbol.line_3_horizontal_circle.rawValue,
            "line.3.horizontal.circle.fill": SFSymbol.line_3_horizontal_circle_fill.rawValue,
            "line.2.horizontal.decrease.circle": SFSymbol.line_2_horizontal_decrease_circle.rawValue,
            "line.2.horizontal.decrease.circle.fill": SFSymbol.line_2_horizontal_decrease_circle_fill.rawValue,
            "character": SFSymbol.character.rawValue,
            "textformat.size.smaller": SFSymbol.textformat_size_smaller.rawValue,
            "textformat.size.larger": SFSymbol.textformat_size_larger.rawValue,
            "textformat.size": SFSymbol.textformat_size.rawValue,
            "textformat": SFSymbol.textformat.rawValue,
            "textformat.alt": SFSymbol.textformat_alt.rawValue,
            "textformat.superscript": SFSymbol.textformat_superscript.rawValue,
            "textformat.subscript": SFSymbol.textformat_subscript.rawValue,
            "abc": SFSymbol.abc.rawValue,
            "textformat.abc": SFSymbol.textformat_abc.rawValue,
            "textformat.abc.dottedunderline": SFSymbol.textformat_abc_dottedunderline.rawValue,
            "bold": SFSymbol.bold.rawValue,
            "italic": SFSymbol.italic.rawValue,
            "underline": SFSymbol.underline.rawValue,
            "strikethrough": SFSymbol.strikethrough.rawValue,
            "shadow": SFSymbol.shadow.rawValue,
            "bold.italic.underline": SFSymbol.bold_italic_underline.rawValue,
            "bold.underline": SFSymbol.bold_underline.rawValue,
            "view.2d": SFSymbol.view_2d.rawValue,
            "view.3d": SFSymbol.view_3d.rawValue,
            "character.cursor.ibeam": SFSymbol.character_cursor_ibeam.rawValue,
            "fx": SFSymbol.fx.rawValue,
            "f.cursive": SFSymbol.f_cursive.rawValue,
            "f.cursive.circle": SFSymbol.f_cursive_circle.rawValue,
            "f.cursive.circle.fill": SFSymbol.f_cursive_circle_fill.rawValue,
            "k": SFSymbol.k.rawValue,
            "sum": SFSymbol.sum.rawValue,
            "percent": SFSymbol.percent.rawValue,
            "function": SFSymbol.function.rawValue,
            "fn": SFSymbol.fn.rawValue,
            "textformat.123": SFSymbol.textformat_123.rawValue,
            "123.rectangle": SFSymbol._123_rectangle.rawValue,
            "123.rectangle.fill": SFSymbol._123_rectangle_fill.rawValue,
            "character.textbox": SFSymbol.character_textbox.rawValue,
            "a.magnify": SFSymbol.a_magnify.rawValue,
            "info": SFSymbol.info.rawValue,
            "info.circle": SFSymbol.info_circle.rawValue,
            "info.circle.fill": SFSymbol.info_circle_fill.rawValue,
            "at": SFSymbol.at.rawValue,
            "at.circle": SFSymbol.at_circle.rawValue,
            "at.circle.fill": SFSymbol.at_circle_fill.rawValue,
            "at.badge.plus": SFSymbol.at_badge_plus.rawValue,
            "at.badge.minus": SFSymbol.at_badge_minus.rawValue,
            "questionmark": SFSymbol.questionmark.rawValue,
            "questionmark.circle": SFSymbol.questionmark_circle.rawValue,
            "questionmark.circle.fill": SFSymbol.questionmark_circle_fill.rawValue,
            "questionmark.square": SFSymbol.questionmark_square.rawValue,
            "questionmark.square.fill": SFSymbol.questionmark_square_fill.rawValue,
            "questionmark.diamond": SFSymbol.questionmark_diamond.rawValue,
            "exclamationmark": SFSymbol.exclamationmark.rawValue,
            "exclamationmark.2": SFSymbol.exclamationmark_2.rawValue,
            "exclamationmark.3": SFSymbol.exclamationmark_3.rawValue,
            "exclamationmark.circle": SFSymbol.exclamationmark_circle.rawValue,
            "exclamationmark.circle.fill": SFSymbol.exclamationmark_circle_fill.rawValue,
            "exclamationmark.square": SFSymbol.exclamationmark_square.rawValue,
            "exclamationmark.square.fill": SFSymbol.exclamationmark_square_fill.rawValue,
            "exclamationmark.octagon": SFSymbol.exclamationmark_octagon.rawValue,
            "exclamationmark.octagon.fill": SFSymbol.exclamationmark_octagon_fill.rawValue,
            "exclamationmark.shield": SFSymbol.exclamationmark_shield.rawValue,
            "exclamationmark.shield.fill": SFSymbol.exclamationmark_shield_fill.rawValue,
            "plus": SFSymbol.plus.rawValue,
            "plus.circle.fill": SFSymbol.plus_circle_fill.rawValue,
            "plus.square": SFSymbol.plus_square.rawValue,
            "plus.square.fill": SFSymbol.plus_square_fill.rawValue,
            "plus.rectangle": SFSymbol.plus_rectangle.rawValue,
            "plus.rectangle.fill": SFSymbol.plus_rectangle_fill.rawValue,
            "plus.rectangle.portrait": SFSymbol.plus_rectangle_portrait.rawValue,
            "plus.rectangle.portrait.fill": SFSymbol.plus_rectangle_portrait_fill.rawValue,
            "plus.diamond": SFSymbol.plus_diamond.rawValue,
            "plus.diamond.fill": SFSymbol.plus_diamond_fill.rawValue,
            "minus": SFSymbol.minus.rawValue,
            "minus.circle.fill": SFSymbol.minus_circle_fill.rawValue,
            "minus.square": SFSymbol.minus_square.rawValue,
            "minus.square.fill": SFSymbol.minus_square_fill.rawValue,
            "minus.rectangle": SFSymbol.minus_rectangle.rawValue,
            "minus.rectangle.fill": SFSymbol.minus_rectangle_fill.rawValue,
            "minus.rectangle.portrait": SFSymbol.minus_rectangle_portrait.rawValue,
            "minus.rectangle.portrait.fill": SFSymbol.minus_rectangle_portrait_fill.rawValue,
            "minus.diamond": SFSymbol.minus_diamond.rawValue,
            "minus.diamond.fill": SFSymbol.minus_diamond_fill.rawValue,
            "plusminus": SFSymbol.plusminus.rawValue,
            "plusminus.circle": SFSymbol.plusminus_circle.rawValue,
            "plusminus.circle.fill": SFSymbol.plusminus_circle_fill.rawValue,
            "plus.forwardslash.minus": SFSymbol.plus_forwardslash_minus.rawValue,
            "minus.forwardslash.plus": SFSymbol.minus_forwardslash_plus.rawValue,
            "multiply": SFSymbol.multiply.rawValue,
            "multiply.circle.fill": SFSymbol.multiply_circle_fill.rawValue,
            "multiply.square.fill": SFSymbol.multiply_square_fill.rawValue,
            "xmark.rectangle": SFSymbol.xmark_rectangle.rawValue,
            "xmark.rectangle.fill": SFSymbol.xmark_rectangle_fill.rawValue,
            "xmark.rectangle.portrait": SFSymbol.xmark_rectangle_portrait.rawValue,
            "xmark.rectangle.portrait.fill": SFSymbol.xmark_rectangle_portrait_fill.rawValue,
            "xmark.diamond": SFSymbol.xmark_diamond.rawValue,
            "xmark.diamond.fill": SFSymbol.xmark_diamond_fill.rawValue,
            "xmark.shield": SFSymbol.xmark_shield.rawValue,
            "xmark.shield.fill": SFSymbol.xmark_shield_fill.rawValue,
            "xmark.octagon": SFSymbol.xmark_octagon.rawValue,
            "xmark.octagon.fill": SFSymbol.xmark_octagon_fill.rawValue,
            "divide": SFSymbol.divide.rawValue,
            "divide.circle": SFSymbol.divide_circle.rawValue,
            "divide.circle.fill": SFSymbol.divide_circle_fill.rawValue,
            "divide.square": SFSymbol.divide_square.rawValue,
            "divide.square.fill": SFSymbol.divide_square_fill.rawValue,
            "equal": SFSymbol.equal.rawValue,
            "equal.circle.fill": SFSymbol.equal_circle_fill.rawValue,
            "equal.square": SFSymbol.equal_square.rawValue,
            "equal.square.fill": SFSymbol.equal_square_fill.rawValue,
            "lessthan": SFSymbol.lessthan.rawValue,
            "lessthan.circle": SFSymbol.lessthan_circle.rawValue,
            "lessthan.circle.fill": SFSymbol.lessthan_circle_fill.rawValue,
            "lessthan.square": SFSymbol.lessthan_square.rawValue,
            "lessthan.square.fill": SFSymbol.lessthan_square_fill.rawValue,
            "greaterthan": SFSymbol.greaterthan.rawValue,
            "greaterthan.circle": SFSymbol.greaterthan_circle.rawValue,
            "greaterthan.circle.fill": SFSymbol.greaterthan_circle_fill.rawValue,
            "greaterthan.square": SFSymbol.greaterthan_square.rawValue,
            "greaterthan.square.fill": SFSymbol.greaterthan_square_fill.rawValue,
            "chevron.left.forwardslash.chevron.right": SFSymbol.chevron_left_forwardslash_chevron_right.rawValue,
            "parentheses": SFSymbol.parentheses.rawValue,
            "curlybraces": SFSymbol.curlybraces.rawValue,
            "curlybraces.square": SFSymbol.curlybraces_square.rawValue,
            "curlybraces.square.fill": SFSymbol.curlybraces_square_fill.rawValue,
            "ellipsis.curlybraces": SFSymbol.ellipsis_curlybraces.rawValue,
            "number": SFSymbol.number.rawValue,
            "number.circle": SFSymbol.number_circle.rawValue,
            "number.circle.fill": SFSymbol.number_circle_fill.rawValue,
            "number.square": SFSymbol.number_square.rawValue,
            "number.square.fill": SFSymbol.number_square_fill.rawValue,
            "x.squareroot": SFSymbol.x_squareroot.rawValue,
            "xmark.circle": SFSymbol.xmark_circle.rawValue,
            "xmark.circle.fill": SFSymbol.xmark_circle_fill.rawValue,
            "xmark.square.fill": SFSymbol.xmark_square_fill.rawValue,
            "checkmark.circle": SFSymbol.checkmark_circle.rawValue,
            "checkmark.circle.fill": SFSymbol.checkmark_circle_fill.rawValue,
            "checkmark.circle.trianglebadge.exclamationmark": SFSymbol.checkmark_circle_trianglebadge_exclamationmark.rawValue,
            "checkmark.square.fill": SFSymbol.checkmark_square_fill.rawValue,
            "checkmark.rectangle": SFSymbol.checkmark_rectangle.rawValue,
            "checkmark.rectangle.fill": SFSymbol.checkmark_rectangle_fill.rawValue,
            "checkmark.rectangle.portrait": SFSymbol.checkmark_rectangle_portrait.rawValue,
            "checkmark.rectangle.portrait.fill": SFSymbol.checkmark_rectangle_portrait_fill.rawValue,
            "checkmark.diamond": SFSymbol.checkmark_diamond.rawValue,
            "checkmark.diamond.fill": SFSymbol.checkmark_diamond_fill.rawValue,
            "checkmark.shield": SFSymbol.checkmark_shield.rawValue,
            "checkmark.shield.fill": SFSymbol.checkmark_shield_fill.rawValue,
            "chevron.left": SFSymbol.chevron_left.rawValue,
            "chevron.left.circle": SFSymbol.chevron_left_circle.rawValue,
            "chevron.left.circle.fill": SFSymbol.chevron_left_circle_fill.rawValue,
            "chevron.left.square": SFSymbol.chevron_left_square.rawValue,
            "chevron.left.square.fill": SFSymbol.chevron_left_square_fill.rawValue,
            "chevron.backward": SFSymbol.chevron_backward.rawValue,
            "chevron.backward.circle": SFSymbol.chevron_backward_circle.rawValue,
            "chevron.backward.circle.fill": SFSymbol.chevron_backward_circle_fill.rawValue,
            "chevron.backward.square": SFSymbol.chevron_backward_square.rawValue,
            "chevron.backward.square.fill": SFSymbol.chevron_backward_square_fill.rawValue,
            "chevron.right": SFSymbol.chevron_right.rawValue,
            "chevron.right.circle": SFSymbol.chevron_right_circle.rawValue,
            "chevron.right.circle.fill": SFSymbol.chevron_right_circle_fill.rawValue,
            "chevron.right.square": SFSymbol.chevron_right_square.rawValue,
            "chevron.right.square.fill": SFSymbol.chevron_right_square_fill.rawValue,
            "chevron.forward": SFSymbol.chevron_forward.rawValue,
            "chevron.forward.circle": SFSymbol.chevron_forward_circle.rawValue,
            "chevron.forward.circle.fill": SFSymbol.chevron_forward_circle_fill.rawValue,
            "chevron.forward.square": SFSymbol.chevron_forward_square.rawValue,
            "chevron.forward.square.fill": SFSymbol.chevron_forward_square_fill.rawValue,
            "chevron.left.2": SFSymbol.chevron_left_2.rawValue,
            "chevron.backward.2": SFSymbol.chevron_backward_2.rawValue,
            "chevron.right.2": SFSymbol.chevron_right_2.rawValue,
            "chevron.forward.2": SFSymbol.chevron_forward_2.rawValue,
            "chevron.up": SFSymbol.chevron_up.rawValue,
            "chevron.up.circle": SFSymbol.chevron_up_circle.rawValue,
            "chevron.up.circle.fill": SFSymbol.chevron_up_circle_fill.rawValue,
            "chevron.up.square": SFSymbol.chevron_up_square.rawValue,
            "chevron.up.square.fill": SFSymbol.chevron_up_square_fill.rawValue,
            "chevron.down": SFSymbol.chevron_down.rawValue,
            "chevron.down.circle": SFSymbol.chevron_down_circle.rawValue,
            "chevron.down.circle.fill": SFSymbol.chevron_down_circle_fill.rawValue,
            "chevron.down.square": SFSymbol.chevron_down_square.rawValue,
            "chevron.down.square.fill": SFSymbol.chevron_down_square_fill.rawValue,
            "chevron.up.chevron.down": SFSymbol.chevron_up_chevron_down.rawValue,
            "chevron.compact.up": SFSymbol.chevron_compact_up.rawValue,
            "chevron.compact.down": SFSymbol.chevron_compact_down.rawValue,
            "chevron.compact.left": SFSymbol.chevron_compact_left.rawValue,
            "chevron.compact.right": SFSymbol.chevron_compact_right.rawValue,
            "arrow.left.circle": SFSymbol.arrow_left_circle.rawValue,
            "arrow.left.circle.fill": SFSymbol.arrow_left_circle_fill.rawValue,
            "arrow.left.square": SFSymbol.arrow_left_square.rawValue,
            "arrow.left.square.fill": SFSymbol.arrow_left_square_fill.rawValue,
            "arrow.backward": SFSymbol.arrow_backward.rawValue,
            "arrow.backward.circle": SFSymbol.arrow_backward_circle.rawValue,
            "arrow.backward.circle.fill": SFSymbol.arrow_backward_circle_fill.rawValue,
            "arrow.backward.square": SFSymbol.arrow_backward_square.rawValue,
            "arrow.backward.square.fill": SFSymbol.arrow_backward_square_fill.rawValue,
            "arrow.right.circle": SFSymbol.arrow_right_circle.rawValue,
            "arrow.right.circle.fill": SFSymbol.arrow_right_circle_fill.rawValue,
            "arrow.right.square": SFSymbol.arrow_right_square.rawValue,
            "arrow.right.square.fill": SFSymbol.arrow_right_square_fill.rawValue,
            "arrow.forward": SFSymbol.arrow_forward.rawValue,
            "arrow.forward.circle": SFSymbol.arrow_forward_circle.rawValue,
            "arrow.forward.circle.fill": SFSymbol.arrow_forward_circle_fill.rawValue,
            "arrow.forward.square": SFSymbol.arrow_forward_square.rawValue,
            "arrow.forward.square.fill": SFSymbol.arrow_forward_square_fill.rawValue,
            "arrow.up.circle": SFSymbol.arrow_up_circle.rawValue,
            "arrow.up.circle.fill": SFSymbol.arrow_up_circle_fill.rawValue,
            "arrow.up.square": SFSymbol.arrow_up_square.rawValue,
            "arrow.up.square.fill": SFSymbol.arrow_up_square_fill.rawValue,
            "arrow.down.circle": SFSymbol.arrow_down_circle.rawValue,
            "arrow.down.circle.fill": SFSymbol.arrow_down_circle_fill.rawValue,
            "arrow.down.square": SFSymbol.arrow_down_square.rawValue,
            "arrow.down.square.fill": SFSymbol.arrow_down_square_fill.rawValue,
            "arrow.up.left.circle": SFSymbol.arrow_up_left_circle.rawValue,
            "arrow.up.left.circle.fill": SFSymbol.arrow_up_left_circle_fill.rawValue,
            "arrow.up.left.square": SFSymbol.arrow_up_left_square.rawValue,
            "arrow.up.left.square.fill": SFSymbol.arrow_up_left_square_fill.rawValue,
            "arrow.up.backward": SFSymbol.arrow_up_backward.rawValue,
            "arrow.up.backward.circle": SFSymbol.arrow_up_backward_circle.rawValue,
            "arrow.up.backward.circle.fill": SFSymbol.arrow_up_backward_circle_fill.rawValue,
            "arrow.up.backward.square": SFSymbol.arrow_up_backward_square.rawValue,
            "arrow.up.backward.square.fill": SFSymbol.arrow_up_backward_square_fill.rawValue,
            "arrow.up.right.circle": SFSymbol.arrow_up_right_circle.rawValue,
            "arrow.up.right.circle.fill": SFSymbol.arrow_up_right_circle_fill.rawValue,
            "arrow.up.right.square": SFSymbol.arrow_up_right_square.rawValue,
            "arrow.up.right.square.fill": SFSymbol.arrow_up_right_square_fill.rawValue,
            "arrow.up.forward": SFSymbol.arrow_up_forward.rawValue,
            "arrow.up.forward.circle": SFSymbol.arrow_up_forward_circle.rawValue,
            "arrow.up.forward.circle.fill": SFSymbol.arrow_up_forward_circle_fill.rawValue,
            "arrow.up.forward.square": SFSymbol.arrow_up_forward_square.rawValue,
            "arrow.up.forward.square.fill": SFSymbol.arrow_up_forward_square_fill.rawValue,
            "arrow.down.left.circle": SFSymbol.arrow_down_left_circle.rawValue,
            "arrow.down.left.circle.fill": SFSymbol.arrow_down_left_circle_fill.rawValue,
            "arrow.down.left.square": SFSymbol.arrow_down_left_square.rawValue,
            "arrow.down.left.square.fill": SFSymbol.arrow_down_left_square_fill.rawValue,
            "arrow.down.backward": SFSymbol.arrow_down_backward.rawValue,
            "arrow.down.backward.circle": SFSymbol.arrow_down_backward_circle.rawValue,
            "arrow.down.backward.circle.fill": SFSymbol.arrow_down_backward_circle_fill.rawValue,
            "arrow.down.backward.square": SFSymbol.arrow_down_backward_square.rawValue,
            "arrow.down.backward.square.fill": SFSymbol.arrow_down_backward_square_fill.rawValue,
            "arrow.down.right.circle": SFSymbol.arrow_down_right_circle.rawValue,
            "arrow.down.right.circle.fill": SFSymbol.arrow_down_right_circle_fill.rawValue,
            "arrow.down.right.square": SFSymbol.arrow_down_right_square.rawValue,
            "arrow.down.right.square.fill": SFSymbol.arrow_down_right_square_fill.rawValue,
            "arrow.down.forward": SFSymbol.arrow_down_forward.rawValue,
            "arrow.down.forward.circle": SFSymbol.arrow_down_forward_circle.rawValue,
            "arrow.down.forward.circle.fill": SFSymbol.arrow_down_forward_circle_fill.rawValue,
            "arrow.down.forward.square": SFSymbol.arrow_down_forward_square.rawValue,
            "arrow.down.forward.square.fill": SFSymbol.arrow_down_forward_square_fill.rawValue,
            "arrow.left.arrow.right": SFSymbol.arrow_left_arrow_right.rawValue,
            "arrow.left.arrow.right.circle": SFSymbol.arrow_left_arrow_right_circle.rawValue,
            "arrow.left.arrow.right.circle.fill": SFSymbol.arrow_left_arrow_right_circle_fill.rawValue,
            "arrow.left.arrow.right.square": SFSymbol.arrow_left_arrow_right_square.rawValue,
            "arrow.left.arrow.right.square.fill": SFSymbol.arrow_left_arrow_right_square_fill.rawValue,
            "arrow.up.arrow.down.circle": SFSymbol.arrow_up_arrow_down_circle.rawValue,
            "arrow.up.arrow.down.circle.fill": SFSymbol.arrow_up_arrow_down_circle_fill.rawValue,
            "arrow.up.arrow.down.square": SFSymbol.arrow_up_arrow_down_square.rawValue,
            "arrow.up.arrow.down.square.fill": SFSymbol.arrow_up_arrow_down_square_fill.rawValue,
            "arrow.uturn.left": SFSymbol.arrow_uturn_left.rawValue,
            "arrow.uturn.left.circle": SFSymbol.arrow_uturn_left_circle.rawValue,
            "arrow.uturn.left.circle.fill": SFSymbol.arrow_uturn_left_circle_fill.rawValue,
            "arrow.uturn.left.circle.badge.ellipsis": SFSymbol.arrow_uturn_left_circle_badge_ellipsis.rawValue,
            "arrow.uturn.left.square": SFSymbol.arrow_uturn_left_square.rawValue,
            "arrow.uturn.left.square.fill": SFSymbol.arrow_uturn_left_square_fill.rawValue,
            "arrow.uturn.backward": SFSymbol.arrow_uturn_backward.rawValue,
            "arrow.uturn.backward.circle": SFSymbol.arrow_uturn_backward_circle.rawValue,
            "arrow.uturn.backward.circle.fill": SFSymbol.arrow_uturn_backward_circle_fill.rawValue,
            "arrow.uturn.backward.circle.badge.ellipsis": SFSymbol.arrow_uturn_backward_circle_badge_ellipsis.rawValue,
            "arrow.uturn.backward.square": SFSymbol.arrow_uturn_backward_square.rawValue,
            "arrow.uturn.backward.square.fill": SFSymbol.arrow_uturn_backward_square_fill.rawValue,
            "arrow.uturn.right": SFSymbol.arrow_uturn_right.rawValue,
            "arrow.uturn.right.circle": SFSymbol.arrow_uturn_right_circle.rawValue,
            "arrow.uturn.right.circle.fill": SFSymbol.arrow_uturn_right_circle_fill.rawValue,
            "arrow.uturn.right.square": SFSymbol.arrow_uturn_right_square.rawValue,
            "arrow.uturn.right.square.fill": SFSymbol.arrow_uturn_right_square_fill.rawValue,
            "arrow.uturn.forward": SFSymbol.arrow_uturn_forward.rawValue,
            "arrow.uturn.forward.circle": SFSymbol.arrow_uturn_forward_circle.rawValue,
            "arrow.uturn.forward.circle.fill": SFSymbol.arrow_uturn_forward_circle_fill.rawValue,
            "arrow.uturn.forward.square": SFSymbol.arrow_uturn_forward_square.rawValue,
            "arrow.uturn.forward.square.fill": SFSymbol.arrow_uturn_forward_square_fill.rawValue,
            "arrow.uturn.up": SFSymbol.arrow_uturn_up.rawValue,
            "arrow.uturn.up.circle": SFSymbol.arrow_uturn_up_circle.rawValue,
            "arrow.uturn.up.circle.fill": SFSymbol.arrow_uturn_up_circle_fill.rawValue,
            "arrow.uturn.up.square": SFSymbol.arrow_uturn_up_square.rawValue,
            "arrow.uturn.up.square.fill": SFSymbol.arrow_uturn_up_square_fill.rawValue,
            "arrow.uturn.down": SFSymbol.arrow_uturn_down.rawValue,
            "arrow.uturn.down.circle": SFSymbol.arrow_uturn_down_circle.rawValue,
            "arrow.uturn.down.circle.fill": SFSymbol.arrow_uturn_down_circle_fill.rawValue,
            "arrow.uturn.down.square": SFSymbol.arrow_uturn_down_square.rawValue,
            "arrow.uturn.down.square.fill": SFSymbol.arrow_uturn_down_square_fill.rawValue,
            "arrow.up.and.down.and.arrow.left.and.right": SFSymbol.arrow_up_and_down_and_arrow_left_and_right.rawValue,
            "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left": SFSymbol.arrow_up_left_and_down_right_and_arrow_up_right_and_down_left.rawValue,
            "arrow.left.and.right.circle": SFSymbol.arrow_left_and_right_circle.rawValue,
            "arrow.left.and.right.circle.fill": SFSymbol.arrow_left_and_right_circle_fill.rawValue,
            "arrow.left.and.right.square": SFSymbol.arrow_left_and_right_square.rawValue,
            "arrow.left.and.right.square.fill": SFSymbol.arrow_left_and_right_square_fill.rawValue,
            "arrow.up.and.down": SFSymbol.arrow_up_and_down.rawValue,
            "arrow.up.and.down.circle": SFSymbol.arrow_up_and_down_circle.rawValue,
            "arrow.up.and.down.circle.fill": SFSymbol.arrow_up_and_down_circle_fill.rawValue,
            "arrow.up.and.down.square": SFSymbol.arrow_up_and_down_square.rawValue,
            "arrow.up.and.down.square.fill": SFSymbol.arrow_up_and_down_square_fill.rawValue,
            "arrow.up.to.line.compact": SFSymbol.arrow_up_to_line_compact.rawValue,
            "arrow.up.to.line.circle": SFSymbol.arrow_up_to_line_circle.rawValue,
            "arrow.up.to.line.circle.fill": SFSymbol.arrow_up_to_line_circle_fill.rawValue,
            "arrow.down.to.line.compact": SFSymbol.arrow_down_to_line_compact.rawValue,
            "arrow.down.to.line.circle": SFSymbol.arrow_down_to_line_circle.rawValue,
            "arrow.down.to.line.circle.fill": SFSymbol.arrow_down_to_line_circle_fill.rawValue,
            "arrow.left.to.line": SFSymbol.arrow_left_to_line.rawValue,
            "arrow.left.to.line.compact": SFSymbol.arrow_left_to_line_compact.rawValue,
            "arrow.left.to.line.circle": SFSymbol.arrow_left_to_line_circle.rawValue,
            "arrow.left.to.line.circle.fill": SFSymbol.arrow_left_to_line_circle_fill.rawValue,
            "arrow.backward.to.line": SFSymbol.arrow_backward_to_line.rawValue,
            "arrow.backward.to.line.circle": SFSymbol.arrow_backward_to_line_circle.rawValue,
            "arrow.backward.to.line.circle.fill": SFSymbol.arrow_backward_to_line_circle_fill.rawValue,
            "arrow.right.to.line": SFSymbol.arrow_right_to_line.rawValue,
            "arrow.right.to.line.compact": SFSymbol.arrow_right_to_line_compact.rawValue,
            "arrow.right.to.line.circle": SFSymbol.arrow_right_to_line_circle.rawValue,
            "arrow.right.to.line.circle.fill": SFSymbol.arrow_right_to_line_circle_fill.rawValue,
            "arrow.forward.to.line": SFSymbol.arrow_forward_to_line.rawValue,
            "arrow.forward.to.line.circle": SFSymbol.arrow_forward_to_line_circle.rawValue,
            "arrow.forward.to.line.circle.fill": SFSymbol.arrow_forward_to_line_circle_fill.rawValue,
            "arrow.clockwise.circle": SFSymbol.arrow_clockwise_circle.rawValue,
            "arrow.clockwise.circle.fill": SFSymbol.arrow_clockwise_circle_fill.rawValue,
            "arrow.counterclockwise.circle": SFSymbol.arrow_counterclockwise_circle.rawValue,
            "arrow.counterclockwise.circle.fill": SFSymbol.arrow_counterclockwise_circle_fill.rawValue,
            "arrow.up.left.and.arrow.down.right": SFSymbol.arrow_up_left_and_arrow_down_right.rawValue,
            "arrow.up.left.and.arrow.down.right.circle": SFSymbol.arrow_up_left_and_arrow_down_right_circle.rawValue,
            "arrow.up.left.and.arrow.down.right.circle.fill": SFSymbol.arrow_up_left_and_arrow_down_right_circle_fill.rawValue,
            "arrow.up.backward.and.arrow.down.forward": SFSymbol.arrow_up_backward_and_arrow_down_forward.rawValue,
            "arrow.up.backward.and.arrow.down.forward.circle": SFSymbol.arrow_up_backward_and_arrow_down_forward_circle.rawValue,
            "arrow.up.backward.and.arrow.down.forward.circle.fill": SFSymbol.arrow_up_backward_and_arrow_down_forward_circle_fill.rawValue,
            "arrow.down.right.and.arrow.up.left": SFSymbol.arrow_down_right_and_arrow_up_left.rawValue,
            "arrow.down.right.and.arrow.up.left.circle": SFSymbol.arrow_down_right_and_arrow_up_left_circle.rawValue,
            "arrow.down.right.and.arrow.up.left.circle.fill": SFSymbol.arrow_down_right_and_arrow_up_left_circle_fill.rawValue,
            "arrow.down.forward.and.arrow.up.backward": SFSymbol.arrow_down_forward_and_arrow_up_backward.rawValue,
            "arrow.down.forward.and.arrow.up.backward.circle": SFSymbol.arrow_down_forward_and_arrow_up_backward_circle.rawValue,
            "arrow.down.forward.and.arrow.up.backward.circle.fill": SFSymbol.arrow_down_forward_and_arrow_up_backward_circle_fill.rawValue,
            "return.left": SFSymbol.return_left.rawValue,
            "return.right": SFSymbol.return_right.rawValue,
            "arrow.2.squarepath": SFSymbol.arrow_2_squarepath.rawValue,
            "arrow.triangle.2.circlepath": SFSymbol.arrow_triangle_2_circlepath.rawValue,
            "arrow.triangle.2.circlepath.circle": SFSymbol.arrow_triangle_2_circlepath_circle.rawValue,
            "arrow.triangle.2.circlepath.circle.fill": SFSymbol.arrow_triangle_2_circlepath_circle_fill.rawValue,
            "exclamationmark.arrow.triangle.2.circlepath": SFSymbol.exclamationmark_arrow_triangle_2_circlepath.rawValue,
            "arrow.triangle.capsulepath": SFSymbol.arrow_triangle_capsulepath.rawValue,
            "arrow.3.trianglepath": SFSymbol.arrow_3_trianglepath.rawValue,
            "arrow.triangle.turn.up.right.diamond": SFSymbol.arrow_triangle_turn_up_right_diamond.rawValue,
            "arrow.triangle.turn.up.right.diamond.fill": SFSymbol.arrow_triangle_turn_up_right_diamond_fill.rawValue,
            "arrow.triangle.turn.up.right.circle": SFSymbol.arrow_triangle_turn_up_right_circle.rawValue,
            "arrow.triangle.turn.up.right.circle.fill": SFSymbol.arrow_triangle_turn_up_right_circle_fill.rawValue,
            "arrow.triangle.merge": SFSymbol.arrow_triangle_merge.rawValue,
            "arrow.triangle.swap": SFSymbol.arrow_triangle_swap.rawValue,
            "arrow.triangle.branch": SFSymbol.arrow_triangle_branch.rawValue,
            "arrow.triangle.pull": SFSymbol.arrow_triangle_pull.rawValue,
            "arrowtriangle.left.circle": SFSymbol.arrowtriangle_left_circle.rawValue,
            "arrowtriangle.left.circle.fill": SFSymbol.arrowtriangle_left_circle_fill.rawValue,
            "arrowtriangle.left.square": SFSymbol.arrowtriangle_left_square.rawValue,
            "arrowtriangle.left.square.fill": SFSymbol.arrowtriangle_left_square_fill.rawValue,
            "arrowtriangle.backward": SFSymbol.arrowtriangle_backward.rawValue,
            "arrowtriangle.backward.fill": SFSymbol.arrowtriangle_backward_fill.rawValue,
            "arrowtriangle.backward.circle": SFSymbol.arrowtriangle_backward_circle.rawValue,
            "arrowtriangle.backward.circle.fill": SFSymbol.arrowtriangle_backward_circle_fill.rawValue,
            "arrowtriangle.backward.square": SFSymbol.arrowtriangle_backward_square.rawValue,
            "arrowtriangle.backward.square.fill": SFSymbol.arrowtriangle_backward_square_fill.rawValue,
            "arrowtriangle.right.circle": SFSymbol.arrowtriangle_right_circle.rawValue,
            "arrowtriangle.right.circle.fill": SFSymbol.arrowtriangle_right_circle_fill.rawValue,
            "arrowtriangle.right.square": SFSymbol.arrowtriangle_right_square.rawValue,
            "arrowtriangle.right.square.fill": SFSymbol.arrowtriangle_right_square_fill.rawValue,
            "arrowtriangle.forward": SFSymbol.arrowtriangle_forward.rawValue,
            "arrowtriangle.forward.fill": SFSymbol.arrowtriangle_forward_fill.rawValue,
            "arrowtriangle.forward.circle": SFSymbol.arrowtriangle_forward_circle.rawValue,
            "arrowtriangle.forward.circle.fill": SFSymbol.arrowtriangle_forward_circle_fill.rawValue,
            "arrowtriangle.forward.square": SFSymbol.arrowtriangle_forward_square.rawValue,
            "arrowtriangle.forward.square.fill": SFSymbol.arrowtriangle_forward_square_fill.rawValue,
            "arrowtriangle.up.circle": SFSymbol.arrowtriangle_up_circle.rawValue,
            "arrowtriangle.up.circle.fill": SFSymbol.arrowtriangle_up_circle_fill.rawValue,
            "arrowtriangle.up.square": SFSymbol.arrowtriangle_up_square.rawValue,
            "arrowtriangle.up.square.fill": SFSymbol.arrowtriangle_up_square_fill.rawValue,
            "arrowtriangle.down.circle": SFSymbol.arrowtriangle_down_circle.rawValue,
            "arrowtriangle.down.circle.fill": SFSymbol.arrowtriangle_down_circle_fill.rawValue,
            "arrowtriangle.down.square": SFSymbol.arrowtriangle_down_square.rawValue,
            "arrowtriangle.down.square.fill": SFSymbol.arrowtriangle_down_square_fill.rawValue,
            "slash.circle.fill": SFSymbol.slash_circle_fill.rawValue,
            "asterisk": SFSymbol.asterisk.rawValue,
            "asterisk.circle.fill": SFSymbol.asterisk_circle_fill.rawValue,
            "dollarsign.circle": SFSymbol.dollarsign_circle.rawValue,
            "dollarsign.circle.fill": SFSymbol.dollarsign_circle_fill.rawValue,
            "dollarsign.square": SFSymbol.dollarsign_square.rawValue,
            "dollarsign.square.fill": SFSymbol.dollarsign_square_fill.rawValue,
            "centsign.circle": SFSymbol.centsign_circle.rawValue,
            "centsign.circle.fill": SFSymbol.centsign_circle_fill.rawValue,
            "centsign.square": SFSymbol.centsign_square.rawValue,
            "centsign.square.fill": SFSymbol.centsign_square_fill.rawValue,
            "yensign.circle": SFSymbol.yensign_circle.rawValue,
            "yensign.circle.fill": SFSymbol.yensign_circle_fill.rawValue,
            "yensign.square": SFSymbol.yensign_square.rawValue,
            "yensign.square.fill": SFSymbol.yensign_square_fill.rawValue,
            "sterlingsign.circle": SFSymbol.sterlingsign_circle.rawValue,
            "sterlingsign.circle.fill": SFSymbol.sterlingsign_circle_fill.rawValue,
            "sterlingsign.square": SFSymbol.sterlingsign_square.rawValue,
            "sterlingsign.square.fill": SFSymbol.sterlingsign_square_fill.rawValue,
            "francsign.circle": SFSymbol.francsign_circle.rawValue,
            "francsign.circle.fill": SFSymbol.francsign_circle_fill.rawValue,
            "francsign.square": SFSymbol.francsign_square.rawValue,
            "francsign.square.fill": SFSymbol.francsign_square_fill.rawValue,
            "florinsign.circle": SFSymbol.florinsign_circle.rawValue,
            "florinsign.circle.fill": SFSymbol.florinsign_circle_fill.rawValue,
            "florinsign.square": SFSymbol.florinsign_square.rawValue,
            "florinsign.square.fill": SFSymbol.florinsign_square_fill.rawValue,
            "turkishlirasign.circle": SFSymbol.turkishlirasign_circle.rawValue,
            "turkishlirasign.circle.fill": SFSymbol.turkishlirasign_circle_fill.rawValue,
            "turkishlirasign.square": SFSymbol.turkishlirasign_square.rawValue,
            "turkishlirasign.square.fill": SFSymbol.turkishlirasign_square_fill.rawValue,
            "rublesign.circle": SFSymbol.rublesign_circle.rawValue,
            "rublesign.circle.fill": SFSymbol.rublesign_circle_fill.rawValue,
            "rublesign.square": SFSymbol.rublesign_square.rawValue,
            "rublesign.square.fill": SFSymbol.rublesign_square_fill.rawValue,
            "eurosign.circle": SFSymbol.eurosign_circle.rawValue,
            "eurosign.circle.fill": SFSymbol.eurosign_circle_fill.rawValue,
            "eurosign.square": SFSymbol.eurosign_square.rawValue,
            "eurosign.square.fill": SFSymbol.eurosign_square_fill.rawValue,
            "dongsign.circle": SFSymbol.dongsign_circle.rawValue,
            "dongsign.circle.fill": SFSymbol.dongsign_circle_fill.rawValue,
            "dongsign.square": SFSymbol.dongsign_square.rawValue,
            "dongsign.square.fill": SFSymbol.dongsign_square_fill.rawValue,
            "indianrupeesign.circle": SFSymbol.indianrupeesign_circle.rawValue,
            "indianrupeesign.circle.fill": SFSymbol.indianrupeesign_circle_fill.rawValue,
            "indianrupeesign.square": SFSymbol.indianrupeesign_square.rawValue,
            "indianrupeesign.square.fill": SFSymbol.indianrupeesign_square_fill.rawValue,
            "tengesign.circle": SFSymbol.tengesign_circle.rawValue,
            "tengesign.circle.fill": SFSymbol.tengesign_circle_fill.rawValue,
            "tengesign.square": SFSymbol.tengesign_square.rawValue,
            "tengesign.square.fill": SFSymbol.tengesign_square_fill.rawValue,
            "pesetasign.circle": SFSymbol.pesetasign_circle.rawValue,
            "pesetasign.circle.fill": SFSymbol.pesetasign_circle_fill.rawValue,
            "pesetasign.square": SFSymbol.pesetasign_square.rawValue,
            "pesetasign.square.fill": SFSymbol.pesetasign_square_fill.rawValue,
            "pesosign.circle": SFSymbol.pesosign_circle.rawValue,
            "pesosign.circle.fill": SFSymbol.pesosign_circle_fill.rawValue,
            "pesosign.square": SFSymbol.pesosign_square.rawValue,
            "pesosign.square.fill": SFSymbol.pesosign_square_fill.rawValue,
            "kipsign.circle": SFSymbol.kipsign_circle.rawValue,
            "kipsign.circle.fill": SFSymbol.kipsign_circle_fill.rawValue,
            "kipsign.square": SFSymbol.kipsign_square.rawValue,
            "kipsign.square.fill": SFSymbol.kipsign_square_fill.rawValue,
            "wonsign.circle": SFSymbol.wonsign_circle.rawValue,
            "wonsign.circle.fill": SFSymbol.wonsign_circle_fill.rawValue,
            "wonsign.square": SFSymbol.wonsign_square.rawValue,
            "wonsign.square.fill": SFSymbol.wonsign_square_fill.rawValue,
            "lirasign.circle": SFSymbol.lirasign_circle.rawValue,
            "lirasign.circle.fill": SFSymbol.lirasign_circle_fill.rawValue,
            "lirasign.square": SFSymbol.lirasign_square.rawValue,
            "lirasign.square.fill": SFSymbol.lirasign_square_fill.rawValue,
            "australsign.circle": SFSymbol.australsign_circle.rawValue,
            "australsign.circle.fill": SFSymbol.australsign_circle_fill.rawValue,
            "australsign.square": SFSymbol.australsign_square.rawValue,
            "australsign.square.fill": SFSymbol.australsign_square_fill.rawValue,
            "hryvniasign.circle": SFSymbol.hryvniasign_circle.rawValue,
            "hryvniasign.circle.fill": SFSymbol.hryvniasign_circle_fill.rawValue,
            "hryvniasign.square": SFSymbol.hryvniasign_square.rawValue,
            "hryvniasign.square.fill": SFSymbol.hryvniasign_square_fill.rawValue,
            "nairasign.circle": SFSymbol.nairasign_circle.rawValue,
            "nairasign.circle.fill": SFSymbol.nairasign_circle_fill.rawValue,
            "nairasign.square": SFSymbol.nairasign_square.rawValue,
            "nairasign.square.fill": SFSymbol.nairasign_square_fill.rawValue,
            "guaranisign.circle": SFSymbol.guaranisign_circle.rawValue,
            "guaranisign.circle.fill": SFSymbol.guaranisign_circle_fill.rawValue,
            "guaranisign.square": SFSymbol.guaranisign_square.rawValue,
            "guaranisign.square.fill": SFSymbol.guaranisign_square_fill.rawValue,
            "coloncurrencysign.circle": SFSymbol.coloncurrencysign_circle.rawValue,
            "coloncurrencysign.circle.fill": SFSymbol.coloncurrencysign_circle_fill.rawValue,
            "coloncurrencysign.square": SFSymbol.coloncurrencysign_square.rawValue,
            "coloncurrencysign.square.fill": SFSymbol.coloncurrencysign_square_fill.rawValue,
            "cedisign.circle": SFSymbol.cedisign_circle.rawValue,
            "cedisign.circle.fill": SFSymbol.cedisign_circle_fill.rawValue,
            "cedisign.square": SFSymbol.cedisign_square.rawValue,
            "cedisign.square.fill": SFSymbol.cedisign_square_fill.rawValue,
            "cruzeirosign.circle": SFSymbol.cruzeirosign_circle.rawValue,
            "cruzeirosign.circle.fill": SFSymbol.cruzeirosign_circle_fill.rawValue,
            "cruzeirosign.square": SFSymbol.cruzeirosign_square.rawValue,
            "cruzeirosign.square.fill": SFSymbol.cruzeirosign_square_fill.rawValue,
            "tugriksign.circle": SFSymbol.tugriksign_circle.rawValue,
            "tugriksign.circle.fill": SFSymbol.tugriksign_circle_fill.rawValue,
            "tugriksign.square": SFSymbol.tugriksign_square.rawValue,
            "tugriksign.square.fill": SFSymbol.tugriksign_square_fill.rawValue,
            "millsign.circle": SFSymbol.millsign_circle.rawValue,
            "millsign.circle.fill": SFSymbol.millsign_circle_fill.rawValue,
            "millsign.square": SFSymbol.millsign_square.rawValue,
            "millsign.square.fill": SFSymbol.millsign_square_fill.rawValue,
            "shekelsign.circle": SFSymbol.shekelsign_circle.rawValue,
            "shekelsign.circle.fill": SFSymbol.shekelsign_circle_fill.rawValue,
            "shekelsign.square": SFSymbol.shekelsign_square.rawValue,
            "shekelsign.square.fill": SFSymbol.shekelsign_square_fill.rawValue,
            "manatsign.circle": SFSymbol.manatsign_circle.rawValue,
            "manatsign.circle.fill": SFSymbol.manatsign_circle_fill.rawValue,
            "manatsign.square": SFSymbol.manatsign_square.rawValue,
            "manatsign.square.fill": SFSymbol.manatsign_square_fill.rawValue,
            "rupeesign.circle": SFSymbol.rupeesign_circle.rawValue,
            "rupeesign.circle.fill": SFSymbol.rupeesign_circle_fill.rawValue,
            "rupeesign.square": SFSymbol.rupeesign_square.rawValue,
            "rupeesign.square.fill": SFSymbol.rupeesign_square_fill.rawValue,
            "bahtsign.circle": SFSymbol.bahtsign_circle.rawValue,
            "bahtsign.circle.fill": SFSymbol.bahtsign_circle_fill.rawValue,
            "bahtsign.square": SFSymbol.bahtsign_square.rawValue,
            "bahtsign.square.fill": SFSymbol.bahtsign_square_fill.rawValue,
            "larisign.circle": SFSymbol.larisign_circle.rawValue,
            "larisign.circle.fill": SFSymbol.larisign_circle_fill.rawValue,
            "larisign.square": SFSymbol.larisign_square.rawValue,
            "larisign.square.fill": SFSymbol.larisign_square_fill.rawValue,
            "bitcoinsign.circle": SFSymbol.bitcoinsign_circle.rawValue,
            "bitcoinsign.circle.fill": SFSymbol.bitcoinsign_circle_fill.rawValue,
            "bitcoinsign.square": SFSymbol.bitcoinsign_square.rawValue,
            "bitcoinsign.square.fill": SFSymbol.bitcoinsign_square_fill.rawValue,
            "brazilianrealsign.circle": SFSymbol.brazilianrealsign_circle.rawValue,
            "brazilianrealsign.circle.fill": SFSymbol.brazilianrealsign_circle_fill.rawValue,
            "brazilianrealsign.square": SFSymbol.brazilianrealsign_square.rawValue,
            "brazilianrealsign.square.fill": SFSymbol.brazilianrealsign_square_fill.rawValue,
            "0.square": SFSymbol._0_square.rawValue,
            "0.square.fill": SFSymbol._0_square_fill.rawValue,
            "1.square": SFSymbol._1_square.rawValue,
            "1.square.fill": SFSymbol._1_square_fill.rawValue,
            "2.square": SFSymbol._2_square.rawValue,
            "2.square.fill": SFSymbol._2_square_fill.rawValue,
            "3.square": SFSymbol._3_square.rawValue,
            "3.square.fill": SFSymbol._3_square_fill.rawValue,
            "4.square": SFSymbol._4_square.rawValue,
            "4.square.fill": SFSymbol._4_square_fill.rawValue,
            "4.alt.circle": SFSymbol._4_alt_circle.rawValue,
            "4.alt.circle.fill": SFSymbol._4_alt_circle_fill.rawValue,
            "4.alt.square": SFSymbol._4_alt_square.rawValue,
            "4.alt.square.fill": SFSymbol._4_alt_square_fill.rawValue,
            "5.square": SFSymbol._5_square.rawValue,
            "5.square.fill": SFSymbol._5_square_fill.rawValue,
            "6.square": SFSymbol._6_square.rawValue,
            "6.square.fill": SFSymbol._6_square_fill.rawValue,
            "6.alt.circle": SFSymbol._6_alt_circle.rawValue,
            "6.alt.circle.fill": SFSymbol._6_alt_circle_fill.rawValue,
            "6.alt.square": SFSymbol._6_alt_square.rawValue,
            "6.alt.square.fill": SFSymbol._6_alt_square_fill.rawValue,
            "7.square": SFSymbol._7_square.rawValue,
            "7.square.fill": SFSymbol._7_square_fill.rawValue,
            "8.square": SFSymbol._8_square.rawValue,
            "8.square.fill": SFSymbol._8_square_fill.rawValue,
            "9.square": SFSymbol._9_square.rawValue,
            "9.square.fill": SFSymbol._9_square_fill.rawValue,
            "9.alt.circle": SFSymbol._9_alt_circle.rawValue,
            "9.alt.circle.fill": SFSymbol._9_alt_circle_fill.rawValue,
            "9.alt.square": SFSymbol._9_alt_square.rawValue,
            "9.alt.square.fill": SFSymbol._9_alt_square_fill.rawValue,
            "00.circle": SFSymbol._00_circle.rawValue,
            "00.circle.fill": SFSymbol._00_circle_fill.rawValue,
            "00.square": SFSymbol._00_square.rawValue,
            "00.square.fill": SFSymbol._00_square_fill.rawValue,
            "01.circle": SFSymbol._01_circle.rawValue,
            "01.circle.fill": SFSymbol._01_circle_fill.rawValue,
            "01.square": SFSymbol._01_square.rawValue,
            "01.square.fill": SFSymbol._01_square_fill.rawValue,
            "02.circle": SFSymbol._02_circle.rawValue,
            "02.circle.fill": SFSymbol._02_circle_fill.rawValue,
            "02.square": SFSymbol._02_square.rawValue,
            "02.square.fill": SFSymbol._02_square_fill.rawValue,
            "03.circle": SFSymbol._03_circle.rawValue,
            "03.circle.fill": SFSymbol._03_circle_fill.rawValue,
            "03.square": SFSymbol._03_square.rawValue,
            "03.square.fill": SFSymbol._03_square_fill.rawValue,
            "04.circle": SFSymbol._04_circle.rawValue,
            "04.circle.fill": SFSymbol._04_circle_fill.rawValue,
            "04.square": SFSymbol._04_square.rawValue,
            "04.square.fill": SFSymbol._04_square_fill.rawValue,
            "05.circle": SFSymbol._05_circle.rawValue,
            "05.circle.fill": SFSymbol._05_circle_fill.rawValue,
            "05.square": SFSymbol._05_square.rawValue,
            "05.square.fill": SFSymbol._05_square_fill.rawValue,
            "06.circle": SFSymbol._06_circle.rawValue,
            "06.circle.fill": SFSymbol._06_circle_fill.rawValue,
            "06.square": SFSymbol._06_square.rawValue,
            "06.square.fill": SFSymbol._06_square_fill.rawValue,
            "07.circle": SFSymbol._07_circle.rawValue,
            "07.circle.fill": SFSymbol._07_circle_fill.rawValue,
            "07.square": SFSymbol._07_square.rawValue,
            "07.square.fill": SFSymbol._07_square_fill.rawValue,
            "08.circle": SFSymbol._08_circle.rawValue,
            "08.circle.fill": SFSymbol._08_circle_fill.rawValue,
            "08.square": SFSymbol._08_square.rawValue,
            "08.square.fill": SFSymbol._08_square_fill.rawValue,
            "09.circle": SFSymbol._09_circle.rawValue,
            "09.circle.fill": SFSymbol._09_circle_fill.rawValue,
            "09.square": SFSymbol._09_square.rawValue,
            "09.square.fill": SFSymbol._09_square_fill.rawValue,
            "10.square": SFSymbol._10_square.rawValue,
            "10.square.fill": SFSymbol._10_square_fill.rawValue,
            "11.square": SFSymbol._11_square.rawValue,
            "11.square.fill": SFSymbol._11_square_fill.rawValue,
            "12.square": SFSymbol._12_square.rawValue,
            "12.square.fill": SFSymbol._12_square_fill.rawValue,
            "13.square": SFSymbol._13_square.rawValue,
            "13.square.fill": SFSymbol._13_square_fill.rawValue,
            "14.square": SFSymbol._14_square.rawValue,
            "14.square.fill": SFSymbol._14_square_fill.rawValue,
            "15.square": SFSymbol._15_square.rawValue,
            "15.square.fill": SFSymbol._15_square_fill.rawValue,
            "16.square": SFSymbol._16_square.rawValue,
            "16.square.fill": SFSymbol._16_square_fill.rawValue,
            "17.square": SFSymbol._17_square.rawValue,
            "17.square.fill": SFSymbol._17_square_fill.rawValue,
            "18.square": SFSymbol._18_square.rawValue,
            "18.square.fill": SFSymbol._18_square_fill.rawValue,
            "19.square": SFSymbol._19_square.rawValue,
            "19.square.fill": SFSymbol._19_square_fill.rawValue,
            "20.square": SFSymbol._20_square.rawValue,
            "20.square.fill": SFSymbol._20_square_fill.rawValue,
            "21.circle.fill": SFSymbol._21_circle_fill.rawValue,
            "21.square": SFSymbol._21_square.rawValue,
            "21.square.fill": SFSymbol._21_square_fill.rawValue,
            "22.circle.fill": SFSymbol._22_circle_fill.rawValue,
            "22.square": SFSymbol._22_square.rawValue,
            "22.square.fill": SFSymbol._22_square_fill.rawValue,
            "23.circle.fill": SFSymbol._23_circle_fill.rawValue,
            "23.square": SFSymbol._23_square.rawValue,
            "23.square.fill": SFSymbol._23_square_fill.rawValue,
            "24.circle.fill": SFSymbol._24_circle_fill.rawValue,
            "24.square": SFSymbol._24_square.rawValue,
            "24.square.fill": SFSymbol._24_square_fill.rawValue,
            "25.circle.fill": SFSymbol._25_circle_fill.rawValue,
            "25.square": SFSymbol._25_square.rawValue,
            "25.square.fill": SFSymbol._25_square_fill.rawValue,
            "26.circle.fill": SFSymbol._26_circle_fill.rawValue,
            "26.square": SFSymbol._26_square.rawValue,
            "26.square.fill": SFSymbol._26_square_fill.rawValue,
            "27.circle.fill": SFSymbol._27_circle_fill.rawValue,
            "27.square": SFSymbol._27_square.rawValue,
            "27.square.fill": SFSymbol._27_square_fill.rawValue,
            "28.circle.fill": SFSymbol._28_circle_fill.rawValue,
            "28.square": SFSymbol._28_square.rawValue,
            "28.square.fill": SFSymbol._28_square_fill.rawValue,
            "29.circle.fill": SFSymbol._29_circle_fill.rawValue,
            "29.square": SFSymbol._29_square.rawValue,
            "29.square.fill": SFSymbol._29_square_fill.rawValue,
            "30.circle.fill": SFSymbol._30_circle_fill.rawValue,
            "30.square": SFSymbol._30_square.rawValue,
            "30.square.fill": SFSymbol._30_square_fill.rawValue,
            "31.circle.fill": SFSymbol._31_circle_fill.rawValue,
            "31.square": SFSymbol._31_square.rawValue,
            "31.square.fill": SFSymbol._31_square_fill.rawValue,
            "32.circle.fill": SFSymbol._32_circle_fill.rawValue,
            "32.square": SFSymbol._32_square.rawValue,
            "32.square.fill": SFSymbol._32_square_fill.rawValue,
            "33.circle.fill": SFSymbol._33_circle_fill.rawValue,
            "33.square": SFSymbol._33_square.rawValue,
            "33.square.fill": SFSymbol._33_square_fill.rawValue,
            "34.circle.fill": SFSymbol._34_circle_fill.rawValue,
            "34.square": SFSymbol._34_square.rawValue,
            "34.square.fill": SFSymbol._34_square_fill.rawValue,
            "35.circle.fill": SFSymbol._35_circle_fill.rawValue,
            "35.square": SFSymbol._35_square.rawValue,
            "35.square.fill": SFSymbol._35_square_fill.rawValue,
            "36.circle.fill": SFSymbol._36_circle_fill.rawValue,
            "36.square": SFSymbol._36_square.rawValue,
            "36.square.fill": SFSymbol._36_square_fill.rawValue,
            "37.circle.fill": SFSymbol._37_circle_fill.rawValue,
            "37.square": SFSymbol._37_square.rawValue,
            "37.square.fill": SFSymbol._37_square_fill.rawValue,
            "38.circle.fill": SFSymbol._38_circle_fill.rawValue,
            "38.square": SFSymbol._38_square.rawValue,
            "38.square.fill": SFSymbol._38_square_fill.rawValue,
            "39.circle.fill": SFSymbol._39_circle_fill.rawValue,
            "39.square": SFSymbol._39_square.rawValue,
            "39.square.fill": SFSymbol._39_square_fill.rawValue,
            "40.circle.fill": SFSymbol._40_circle_fill.rawValue,
            "40.square": SFSymbol._40_square.rawValue,
            "40.square.fill": SFSymbol._40_square_fill.rawValue,
            "41.circle.fill": SFSymbol._41_circle_fill.rawValue,
            "41.square": SFSymbol._41_square.rawValue,
            "41.square.fill": SFSymbol._41_square_fill.rawValue,
            "42.circle.fill": SFSymbol._42_circle_fill.rawValue,
            "42.square": SFSymbol._42_square.rawValue,
            "42.square.fill": SFSymbol._42_square_fill.rawValue,
            "43.circle.fill": SFSymbol._43_circle_fill.rawValue,
            "43.square": SFSymbol._43_square.rawValue,
            "43.square.fill": SFSymbol._43_square_fill.rawValue,
            "44.circle.fill": SFSymbol._44_circle_fill.rawValue,
            "44.square": SFSymbol._44_square.rawValue,
            "44.square.fill": SFSymbol._44_square_fill.rawValue,
            "45.circle.fill": SFSymbol._45_circle_fill.rawValue,
            "45.square": SFSymbol._45_square.rawValue,
            "45.square.fill": SFSymbol._45_square_fill.rawValue,
            "46.circle.fill": SFSymbol._46_circle_fill.rawValue,
            "46.square": SFSymbol._46_square.rawValue,
            "46.square.fill": SFSymbol._46_square_fill.rawValue,
            "47.circle.fill": SFSymbol._47_circle_fill.rawValue,
            "47.square": SFSymbol._47_square.rawValue,
            "47.square.fill": SFSymbol._47_square_fill.rawValue,
            "48.circle.fill": SFSymbol._48_circle_fill.rawValue,
            "48.square": SFSymbol._48_square.rawValue,
            "48.square.fill": SFSymbol._48_square_fill.rawValue,
            "49.circle.fill": SFSymbol._49_circle_fill.rawValue,
            "49.square": SFSymbol._49_square.rawValue,
            "49.square.fill": SFSymbol._49_square_fill.rawValue,
            "50.circle.fill": SFSymbol._50_circle_fill.rawValue,
            "50.square": SFSymbol._50_square.rawValue,
            "50.square.fill": SFSymbol._50_square_fill.rawValue,
            "applelogo": SFSymbol.applelogo.rawValue,
            "placeholdertext.fill": SFSymbol.placeholdertext_fill.rawValue,
            "z.square.fill": SFSymbol.z_square_fill.rawValue,
            "y.square.fill": SFSymbol.y_square_fill.rawValue,
            "x.square.fill": SFSymbol.x_square_fill.rawValue,
            "w.square.fill": SFSymbol.w_square_fill.rawValue,
            "v.square.fill": SFSymbol.v_square_fill.rawValue,
            "u.square.fill": SFSymbol.u_square_fill.rawValue,
            "t.square.fill": SFSymbol.t_square_fill.rawValue,
            "s.square.fill": SFSymbol.s_square_fill.rawValue,
            "r.square.fill": SFSymbol.r_square_fill.rawValue,
            "q.square.fill": SFSymbol.q_square_fill.rawValue,
            "p.square.fill": SFSymbol.p_square_fill.rawValue,
            "o.square.fill": SFSymbol.o_square_fill.rawValue,
            "n.square.fill": SFSymbol.n_square_fill.rawValue,
            "m.square.fill": SFSymbol.m_square_fill.rawValue,
            "l.square.fill": SFSymbol.l_square_fill.rawValue,
            "k.square.fill": SFSymbol.k_square_fill.rawValue,
            "j.square.fill": SFSymbol.j_square_fill.rawValue,
            "i.square.fill": SFSymbol.i_square_fill.rawValue,
            "h.square.fill": SFSymbol.h_square_fill.rawValue,
            "g.square.fill": SFSymbol.g_square_fill.rawValue,
            "f.square.fill": SFSymbol.f_square_fill.rawValue,
            "d.square.fill": SFSymbol.d_square_fill.rawValue,
            "c.square.fill": SFSymbol.c_square_fill.rawValue,
            "b.square.fill": SFSymbol.b_square_fill.rawValue,
            "a.square.fill": SFSymbol.a_square_fill.rawValue,
            "z.circle.fill": SFSymbol.z_circle_fill.rawValue,
            "y.circle.fill": SFSymbol.y_circle_fill.rawValue,
            "x.circle.fill": SFSymbol.x_circle_fill.rawValue,
            "w.circle.fill": SFSymbol.w_circle_fill.rawValue,
            "v.circle.fill": SFSymbol.v_circle_fill.rawValue,
            "u.circle.fill": SFSymbol.u_circle_fill.rawValue,
            "t.circle.fill": SFSymbol.t_circle_fill.rawValue,
            "s.circle.fill": SFSymbol.s_circle_fill.rawValue,
            "r.circle.fill": SFSymbol.r_circle_fill.rawValue,
            "q.circle.fill": SFSymbol.q_circle_fill.rawValue,
            "p.circle.fill": SFSymbol.p_circle_fill.rawValue,
            "o.circle.fill": SFSymbol.o_circle_fill.rawValue,
            "n.circle.fill": SFSymbol.n_circle_fill.rawValue,
            "m.circle.fill": SFSymbol.m_circle_fill.rawValue,
            "l.circle.fill": SFSymbol.l_circle_fill.rawValue,
            "k.circle.fill": SFSymbol.k_circle_fill.rawValue,
            "j.circle.fill": SFSymbol.j_circle_fill.rawValue,
            "i.circle.fill": SFSymbol.i_circle_fill.rawValue,
            "h.circle.fill": SFSymbol.h_circle_fill.rawValue,
            "g.circle.fill": SFSymbol.g_circle_fill.rawValue,
            "f.circle.fill": SFSymbol.f_circle_fill.rawValue,
            "e.circle.fill": SFSymbol.e_circle_fill.rawValue,
            "d.circle.fill": SFSymbol.d_circle_fill.rawValue,
            "c.circle.fill": SFSymbol.c_circle_fill.rawValue,
            "b.circle.fill": SFSymbol.b_circle_fill.rawValue,
            "a.circle.fill": SFSymbol.a_circle_fill.rawValue,
            "z.square": SFSymbol.z_square.rawValue,
            "y.square": SFSymbol.y_square.rawValue,
            "x.square": SFSymbol.x_square.rawValue,
            "w.square": SFSymbol.w_square.rawValue,
            "v.square": SFSymbol.v_square.rawValue,
            "u.square": SFSymbol.u_square.rawValue,
            "t.square": SFSymbol.t_square.rawValue,
            "s.square": SFSymbol.s_square.rawValue,
            "r.square": SFSymbol.r_square.rawValue,
            "q.square": SFSymbol.q_square.rawValue,
            "p.square": SFSymbol.p_square.rawValue,
            "o.square": SFSymbol.o_square.rawValue,
            "n.square": SFSymbol.n_square.rawValue,
            "m.square": SFSymbol.m_square.rawValue,
            "l.square": SFSymbol.l_square.rawValue,
            "k.square": SFSymbol.k_square.rawValue,
            "j.square": SFSymbol.j_square.rawValue,
            "i.square": SFSymbol.i_square.rawValue,
            "h.square": SFSymbol.h_square.rawValue,
            "g.square": SFSymbol.g_square.rawValue,
            "f.square": SFSymbol.f_square.rawValue,
            "e.square": SFSymbol.e_square.rawValue,
            "d.square": SFSymbol.d_square.rawValue,
            "c.square": SFSymbol.c_square.rawValue,
            "b.square": SFSymbol.b_square.rawValue,
            "a.square": SFSymbol.a_square.rawValue,
            "questionmark.diamond.fill": SFSymbol.questionmark_diamond_fill.rawValue,
            "e.square.fill": SFSymbol.e_square_fill.rawValue,
            "arrow.turn.up.right": SFSymbol.arrow_turn_up_right.rawValue,
            "arrow.turn.up.left": SFSymbol.arrow_turn_up_left.rawValue,
            "arrow.turn.left.down": SFSymbol.arrow_turn_left_down.rawValue,
            "arrow.turn.left.up": SFSymbol.arrow_turn_left_up.rawValue,
            "50.circle": SFSymbol._50_circle.rawValue,
            "49.circle": SFSymbol._49_circle.rawValue,
            "48.circle": SFSymbol._48_circle.rawValue,
            "47.circle": SFSymbol._47_circle.rawValue,
            "46.circle": SFSymbol._46_circle.rawValue,
            "45.circle": SFSymbol._45_circle.rawValue,
            "44.circle": SFSymbol._44_circle.rawValue,
            "43.circle": SFSymbol._43_circle.rawValue,
            "42.circle": SFSymbol._42_circle.rawValue,
            "41.circle": SFSymbol._41_circle.rawValue,
            "40.circle": SFSymbol._40_circle.rawValue,
            "39.circle": SFSymbol._39_circle.rawValue,
            "38.circle": SFSymbol._38_circle.rawValue,
            "37.circle": SFSymbol._37_circle.rawValue,
            "36.circle": SFSymbol._36_circle.rawValue,
            "35.circle": SFSymbol._35_circle.rawValue,
            "34.circle": SFSymbol._34_circle.rawValue,
            "33.circle": SFSymbol._33_circle.rawValue,
            "32.circle": SFSymbol._32_circle.rawValue,
            "31.circle": SFSymbol._31_circle.rawValue,
            "30.circle": SFSymbol._30_circle.rawValue,
            "29.circle": SFSymbol._29_circle.rawValue,
            "28.circle": SFSymbol._28_circle.rawValue,
            "27.circle": SFSymbol._27_circle.rawValue,
            "26.circle": SFSymbol._26_circle.rawValue,
            "25.circle": SFSymbol._25_circle.rawValue,
            "24.circle": SFSymbol._24_circle.rawValue,
            "23.circle": SFSymbol._23_circle.rawValue,
            "22.circle": SFSymbol._22_circle.rawValue,
            "21.circle": SFSymbol._21_circle.rawValue,
            "poweroff": SFSymbol.poweroff.rawValue,
            "hexagon.fill": SFSymbol.hexagon_fill.rawValue,
            "hexagon": SFSymbol.hexagon.rawValue,
            "diamond.bottomhalf.filled": SFSymbol.diamond_bottomhalf_filled.rawValue,
            "diamond.tophalf.filled": SFSymbol.diamond_tophalf_filled.rawValue,
            "diamond.righthalf.filled": SFSymbol.diamond_righthalf_filled.rawValue,
            "diamond.lefthalf.filled": SFSymbol.diamond_lefthalf_filled.rawValue,
            "square.bottomhalf.filled": SFSymbol.square_bottomhalf_filled.rawValue,
            "square.tophalf.filled": SFSymbol.square_tophalf_filled.rawValue,
            "arrow.turn.down.right": SFSymbol.arrow_turn_down_right.rawValue,
            "arrow.turn.down.left": SFSymbol.arrow_turn_down_left.rawValue,
            "arrow.turn.right.down": SFSymbol.arrow_turn_right_down.rawValue,
            "arrow.turn.right.up": SFSymbol.arrow_turn_right_up.rawValue,
            "arrow.down.to.line": SFSymbol.arrow_down_to_line.rawValue,
            "arrow.up.to.line": SFSymbol.arrow_up_to_line.rawValue,
            "10.circle.fill": SFSymbol._10_circle_fill.rawValue,
            "9.circle.fill": SFSymbol._9_circle_fill.rawValue,
            "8.circle.fill": SFSymbol._8_circle_fill.rawValue,
            "7.circle.fill": SFSymbol._7_circle_fill.rawValue,
            "6.circle.fill": SFSymbol._6_circle_fill.rawValue,
            "5.circle.fill": SFSymbol._5_circle_fill.rawValue,
            "4.circle.fill": SFSymbol._4_circle_fill.rawValue,
            "3.circle.fill": SFSymbol._3_circle_fill.rawValue,
            "2.circle.fill": SFSymbol._2_circle_fill.rawValue,
            "1.circle.fill": SFSymbol._1_circle_fill.rawValue,
            "snowflake": SFSymbol.snowflake.rawValue,
            "xmark": SFSymbol.xmark.rawValue,
            "checkmark": SFSymbol.checkmark.rawValue,
            "airplane": SFSymbol.airplane.rawValue,
            "exclamationmark.triangle": SFSymbol.exclamationmark_triangle.rawValue,
            "die.face.6": SFSymbol.die_face_6.rawValue,
            "die.face.5": SFSymbol.die_face_5.rawValue,
            "die.face.4": SFSymbol.die_face_4.rawValue,
            "die.face.3": SFSymbol.die_face_3.rawValue,
            "die.face.2": SFSymbol.die_face_2.rawValue,
            "die.face.1": SFSymbol.die_face_1.rawValue,
            "suit.club": SFSymbol.suit_club.rawValue,
            "suit.diamond.fill": SFSymbol.suit_diamond_fill.rawValue,
            "suit.heart.fill": SFSymbol.suit_heart_fill.rawValue,
            "suit.spade": SFSymbol.suit_spade.rawValue,
            "suit.club.fill": SFSymbol.suit_club_fill.rawValue,
            "suit.diamond": SFSymbol.suit_diamond.rawValue,
            "suit.heart": SFSymbol.suit_heart.rawValue,
            "suit.spade.fill": SFSymbol.suit_spade_fill.rawValue,
            "moon.fill": SFSymbol.moon_fill.rawValue,
            "peacesign": SFSymbol.peacesign.rawValue,
            "multiply.square": SFSymbol.multiply_square.rawValue,
            "xmark.square": SFSymbol.xmark_square.rawValue,
            "checkmark.square": SFSymbol.checkmark_square.rawValue,
            "star": SFSymbol.star.rawValue,
            "star.fill": SFSymbol.star_fill.rawValue,
            "umbrella.fill": SFSymbol.umbrella_fill.rawValue,
            "triangle.righthalf.filled": SFSymbol.triangle_righthalf_filled.rawValue,
            "triangle.lefthalf.filled": SFSymbol.triangle_lefthalf_filled.rawValue,
            "square.righthalf.filled": SFSymbol.square_righthalf_filled.rawValue,
            "square.lefthalf.filled": SFSymbol.square_lefthalf_filled.rawValue,
            "circle.tophalf.filled": SFSymbol.circle_tophalf_filled.rawValue,
            "circle.bottomhalf.filled": SFSymbol.circle_bottomhalf_filled.rawValue,
            "circle.righthalf.filled": SFSymbol.circle_righthalf_filled.rawValue,
            "circle.lefthalf.filled": SFSymbol.circle_lefthalf_filled.rawValue,
            "circle.fill": SFSymbol.circle_fill.rawValue,
            "circle.inset.filled": SFSymbol.circle_inset_filled.rawValue,
            "arrowtriangle.left": SFSymbol.arrowtriangle_left.rawValue,
            "arrowtriangle.left.fill": SFSymbol.arrowtriangle_left_fill.rawValue,
            "arrowtriangle.down": SFSymbol.arrowtriangle_down.rawValue,
            "arrowtriangle.down.fill": SFSymbol.arrowtriangle_down_fill.rawValue,
            "arrowtriangle.right": SFSymbol.arrowtriangle_right.rawValue,
            "arrowtriangle.right.fill": SFSymbol.arrowtriangle_right_fill.rawValue,
            "arrowtriangle.up": SFSymbol.arrowtriangle_up.rawValue,
            "arrowtriangle.up.fill": SFSymbol.arrowtriangle_up_fill.rawValue,
            "square.fill": SFSymbol.square_fill.rawValue,
            "0.circle.fill": SFSymbol._0_circle_fill.rawValue,
            "20.circle.fill": SFSymbol._20_circle_fill.rawValue,
            "19.circle.fill": SFSymbol._19_circle_fill.rawValue,
            "18.circle.fill": SFSymbol._18_circle_fill.rawValue,
            "17.circle.fill": SFSymbol._17_circle_fill.rawValue,
            "16.circle.fill": SFSymbol._16_circle_fill.rawValue,
            "15.circle.fill": SFSymbol._15_circle_fill.rawValue,
            "14.circle.fill": SFSymbol._14_circle_fill.rawValue,
            "13.circle.fill": SFSymbol._13_circle_fill.rawValue,
            "12.circle.fill": SFSymbol._12_circle_fill.rawValue,
            "11.circle.fill": SFSymbol._11_circle_fill.rawValue,
            "0.circle": SFSymbol._0_circle.rawValue,
            "z.circle": SFSymbol.z_circle.rawValue,
            "y.circle": SFSymbol.y_circle.rawValue,
            "x.circle": SFSymbol.x_circle.rawValue,
            "w.circle": SFSymbol.w_circle.rawValue,
            "v.circle": SFSymbol.v_circle.rawValue,
            "u.circle": SFSymbol.u_circle.rawValue,
            "t.circle": SFSymbol.t_circle.rawValue,
            "s.circle": SFSymbol.s_circle.rawValue,
            "r.circle": SFSymbol.r_circle.rawValue,
            "q.circle": SFSymbol.q_circle.rawValue,
            "p.circle": SFSymbol.p_circle.rawValue,
            "o.circle": SFSymbol.o_circle.rawValue,
            "n.circle": SFSymbol.n_circle.rawValue,
            "m.circle": SFSymbol.m_circle.rawValue,
            "l.circle": SFSymbol.l_circle.rawValue,
            "k.circle": SFSymbol.k_circle.rawValue,
            "j.circle": SFSymbol.j_circle.rawValue,
            "i.circle": SFSymbol.i_circle.rawValue,
            "h.circle": SFSymbol.h_circle.rawValue,
            "g.circle": SFSymbol.g_circle.rawValue,
            "f.circle": SFSymbol.f_circle.rawValue,
            "e.circle": SFSymbol.e_circle.rawValue,
            "d.circle": SFSymbol.d_circle.rawValue,
            "c.circle": SFSymbol.c_circle.rawValue,
            "b.circle": SFSymbol.b_circle.rawValue,
            "a.circle": SFSymbol.a_circle.rawValue,
            "20.circle": SFSymbol._20_circle.rawValue,
            "19.circle": SFSymbol._19_circle.rawValue,
            "18.circle": SFSymbol._18_circle.rawValue,
            "17.circle": SFSymbol._17_circle.rawValue,
            "16.circle": SFSymbol._16_circle.rawValue,
            "15.circle": SFSymbol._15_circle.rawValue,
            "14.circle": SFSymbol._14_circle.rawValue,
            "13.circle": SFSymbol._13_circle.rawValue,
            "12.circle": SFSymbol._12_circle.rawValue,
            "11.circle": SFSymbol._11_circle.rawValue,
            "10.circle": SFSymbol._10_circle.rawValue,
            "9.circle": SFSymbol._9_circle.rawValue,
            "8.circle": SFSymbol._8_circle.rawValue,
            "7.circle": SFSymbol._7_circle.rawValue,
            "6.circle": SFSymbol._6_circle.rawValue,
            "5.circle": SFSymbol._5_circle.rawValue,
            "4.circle": SFSymbol._4_circle.rawValue,
            "3.circle": SFSymbol._3_circle.rawValue,
            "2.circle": SFSymbol._2_circle.rawValue,
            "1.circle": SFSymbol._1_circle.rawValue,
            "powersleep": SFSymbol.powersleep.rawValue,
            "poweron": SFSymbol.poweron.rawValue,
            "togglepower": SFSymbol.togglepower.rawValue,
            "power": SFSymbol.power.rawValue,
            "eject": SFSymbol.eject.rawValue,
            "return": SFSymbol.return.rawValue,
            "directcurrent": SFSymbol.directcurrent.rawValue,
            "escape": SFSymbol.escape.rawValue,
            "alt": SFSymbol.alt.rawValue,
            "delete.left": SFSymbol.delete_left.rawValue,
            "clear": SFSymbol.clear.rawValue,
            "delete.right": SFSymbol.delete_right.rawValue,
            "option": SFSymbol.option.rawValue,
            "command": SFSymbol.command.rawValue,
            "projective": SFSymbol.projective.rawValue,
            "control": SFSymbol.control.rawValue,
            "dot.square": SFSymbol.dot_square.rawValue,
            "square.split.diagonal.2x2": SFSymbol.square_split_diagonal_2x2.rawValue,
            "square.split.1x2": SFSymbol.square_split_1x2.rawValue,
            "square.split.2x2": SFSymbol.square_split_2x2.rawValue,
            "equal.circle": SFSymbol.equal_circle.rawValue,
            "asterisk.circle": SFSymbol.asterisk_circle.rawValue,
            "smallcircle.circle": SFSymbol.smallcircle_circle.rawValue,
            "smallcircle.filled.circle": SFSymbol.smallcircle_filled_circle.rawValue,
            "slash.circle": SFSymbol.slash_circle.rawValue,
            "multiply.circle": SFSymbol.multiply_circle.rawValue,
            "minus.circle": SFSymbol.minus_circle.rawValue,
            "plus.circle": SFSymbol.plus_circle.rawValue,
            "capslock": SFSymbol.capslock.rawValue,
            "shift": SFSymbol.shift.rawValue,
            "arrow.up.arrow.down": SFSymbol.arrow_up_arrow_down.rawValue,
            "arrow.clockwise": SFSymbol.arrow_clockwise.rawValue,
            "arrow.counterclockwise": SFSymbol.arrow_counterclockwise.rawValue,
            "arrow.down.left": SFSymbol.arrow_down_left.rawValue,
            "arrow.down.right": SFSymbol.arrow_down_right.rawValue,
            "arrow.up.right": SFSymbol.arrow_up_right.rawValue,
            "arrow.up.left": SFSymbol.arrow_up_left.rawValue,
            "arrow.left.and.right": SFSymbol.arrow_left_and_right.rawValue,
            "arrow.down": SFSymbol.arrow_down.rawValue,
            "arrow.right": SFSymbol.arrow_right.rawValue,
            "arrow.up": SFSymbol.arrow_up.rawValue,
            "arrow.left": SFSymbol.arrow_left.rawValue,
            "triangle": SFSymbol.triangle.rawValue,
            "square": SFSymbol.square.rawValue,
            "circle": SFSymbol.circle.rawValue,
            "paragraphsign": SFSymbol.paragraphsign.rawValue,
        ]
    
}
