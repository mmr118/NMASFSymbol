//
//  Utilites.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/2/22.
//

import Foundation
import UIKit
import SwiftUI
import NMASFSymbol
import CoreData



let llog = LiteLogger()

// MARK: SFSCollectionData+Extensions

//extension SFSCollectionData {
//
//    var symbolNames: [String] { (symbolsRawValues ?? Set()).compactMap { $0 } }
//}

extension SFSCollectionData {
    
    static let defaultTitle = "New Collection"
    static let defaultSymbol = SFSymbol.square_fill_on_circle_fill
    static let defaultSymbols = [SFSymbol]()
        
    convenience init(context: NSManagedObjectContext, collection: SFSCollection) {
        self.init(context: context)
        self.title = collection.title
        self.defaultSFSymbolRawValue = collection.defaultSymbol.systemName
        self.symbolsRawValues = Set(collection.symbols().map { $0.systemName })
    }
    
    fileprivate func defaultSymbol() -> SFSymbol {
        guard let symbolRawValue = defaultSFSymbolRawValue, let symbol = SFSymbol(name: symbolRawValue) else { return Self.defaultSymbol }
        return symbol
    }
    
    fileprivate func symbols() -> [SFSymbol] {
        guard let rawValues = symbolsRawValues else { return Self.defaultSymbols }
        return rawValues.compactMap { SFSymbol(name: $0) }
    }

}

// MARK: - SFSCollection+Extensions
extension SFSCollection {
    
    static var CircleFill = SFSCollection(title: "Circle Fill", defaultSymbol: .circle_fill, symbols: SFSymbol.CircleFillSymbols.map { $0 })
        
    var isPersisted: Bool { CacheUtility.current.isPersisted(self) }
    
    convenience init(collectionData: SFSCollectionData) {
        let title = collectionData.title ?? SFSCollectionData.defaultTitle
        self.init(title: title, defaultSymbol: collectionData.defaultSymbol(), symbols: collectionData.symbols())
        CacheUtility.current.cache(self, to: .loaded)
        CacheUtility.current. collectionToObjectIdDict[self] = collectionData.objectID
    }
    
}

//final public class NMACache<T: Any> where T: Equatable {
//
//    public typealias CacheResult = Result<T, Error>
//    public typealias CacheResultsReport = (insertedAll: Bool, results: Array<CacheResult>)


// MARK: - RawRepresentable+Extensions
extension RawRepresentable {
    var selfString: String { String(describing: self.self) }
}


// MARK: - UIColor+Extensions
extension UIColor {
    static let peal2 = UIColor(named: "Peal2")!
    static let pealWIU = UIColor(named: "PealWIU")!
    static let purpleNMA = UIColor(named: "PurpleNMA")!
    static let purpleWIU = UIColor(named: "PurpleWIU")!
    static let tealNMA = UIColor(named: "TealNMA")!
    static let teal2 = UIColor(named: "Teal2")!
    static let turple2 = UIColor(named: "Turple2")!
    static let turpleWIU = UIColor(named: "TurpleWIU")!
}


// MARK: - Color+Extensions
extension Color {
    static let peal2 = Color(.peal2)
    static let pealWIU = Color(.pealWIU)
    static let purpleNMA = Color(.purpleNMA)
    static let purpleWIU = Color(.purpleWIU)
    static let tealNMA = Color(.tealNMA)
    static let teal2 = Color(.teal2)
    static let turple2 = Color(.turple2)
    static let turpleWIU = Color(.turpleWIU)
}


// MARK: - SFSymbol+Extensions
extension SFSymbol {
            
    var nameComponents: [String] { systemName.components(separatedBy: ".") }
    
    var nameNoSpace: String { systemName.replacingOccurrences(of: ".", with: " ") }
    
    static let CircleFillSymbols: [SFSymbol] = [
        .circle_fill,
        .circle_circle_fill,
        .circle_hexagongrid_circle_fill,
        .circle_hexagongrid_fill,
        .circle_hexagonpath_fill,
        .circle_slash_fill,
        .circle_square_fill,
        .pencil_circle_fill,
        .trash_circle_fill,
        .folder_circle_fill,
        .paperplane_circle_fill,
        .tray_circle_fill,
        .archivebox_circle_fill,
        .doc_circle_fill,
        .calendar_circle_fill,
        .book_circle_fill,
        .newspaper_circle_fill,
        .bookmark_circle_fill,
        .graduationcap_circle_fill,
        .paperclip_circle_fill,
        .link_circle_fill,
        .personalhotspot_circle_fill,
        .person_circle_fill,
        .command_circle_fill,
        .restart_circle_fill,
        .sleep_circle_fill,
        .wake_circle_fill,
        .power_circle_fill,
        .moon_circle_fill,
        .snowflake_circle_fill,
        .flame_circle_fill,
        .drop_circle_fill,
        .play_circle_fill,
        .pause_circle_fill,
        .stop_circle_fill,
        .record_circle_fill,
        .backward_circle_fill,
        .forward_circle_fill,
        .eject_circle_fill,
        .shuffle_circle_fill,
        .repeat_circle_fill,
        .infinity_circle_fill,
        .speaker_circle_fill,
        .magnifyingglass_circle_fill,
        .mic_circle_fill,
        .smallcircle_circle_fill,
        .diamond_circle_fill,
        .heart_circle_fill,
        .star_circle_fill,
        .flag_circle_fill,
        .location_circle_fill,
        .bell_circle_fill,
        .tag_circle_fill,
        .bolt_circle_fill,
        .eye_circle_fill,
        .icloud_circle_fill,
        .camera_circle_fill,
        .message_circle_fill,
        .phone_circle_fill,
        .teletype_circle_fill,
        .video_circle_fill,
        .envelope_circle_fill,
        .gear_circle_fill,
        .gearshape_circle_fill,
        .scissors_circle_fill,
        .ellipsis_circle_fill,
        .bag_circle_fill,
        .cart_circle_fill,
        .creditcard_circle_fill,
        .hammer_circle_fill,
        .stethoscope_circle_fill,
        .briefcase_circle_fill,
        .theatermasks_circle_fill,
        .house_circle_fill,
        .lock_circle_fill,
        .wifi_circle_fill,
        .pin_circle_fill,
        .mappin_circle_fill,
        .map_circle_fill,
        .iphone_circle_fill,
        .headphones_circle_fill,
        .tv_circle_fill,
        .airplayvideo_circle_fill,
        .airplayaudio_circle_fill,
        .airplane_circle_fill,
        .car_circle_fill,
        .tram_circle_fill,
        .bicycle_circle_fill,
        .parkingsign_circle_fill,
        .fuelpump_circle_fill,
        .pills_circle_fill,
        .cross_circle_fill,
        .pawprint_circle_fill,
        .ant_circle_fill,
        .leaf_circle_fill,
        .film_circle_fill,
        .viewfinder_circle_fill,
        .photo_circle_fill,
        .shippingbox_circle_fill,
        .clock_circle_fill,
        .square_circle_fill,
        .triangle_circle_fill,
        .waveform_circle_fill,
        .staroflife_circle_fill,
        .gift_circle_fill,
        .hourglass_circle_fill,
        .purchased_circle_fill,
        .grid_circle_fill,
        .lightbulb_circle_fill,
        .info_circle_fill,
        .at_circle_fill,
        .questionmark_circle_fill,
        .exclamationmark_circle_fill,
        .plus_circle_fill,
        .minus_circle_fill,
        .plusminus_circle_fill,
        .multiply_circle_fill,
        .divide_circle_fill,
        .equal_circle_fill,
        .lessthan_circle_fill,
        .greaterthan_circle_fill,
        .number_circle_fill,
        .xmark_circle_fill,
        .checkmark_circle_fill,
        .slash_circle_fill,
        .asterisk_circle_fill,
        .a_circle_fill,
        .b_circle_fill,
        .c_circle_fill,
        .d_circle_fill,
        .e_circle_fill,
        .f_circle_fill,
        .g_circle_fill,
        .h_circle_fill,
        .i_circle_fill,
        .j_circle_fill,
        .k_circle_fill,
        .l_circle_fill,
        .m_circle_fill,
        .n_circle_fill,
        .o_circle_fill,
        .p_circle_fill,
        .q_circle_fill,
        .r_circle_fill,
        .s_circle_fill,
        .t_circle_fill,
        .u_circle_fill,
        .v_circle_fill,
        .w_circle_fill,
        .x_circle_fill,
        .y_circle_fill,
        .z_circle_fill,
        .dollarsign_circle_fill,
        .centsign_circle_fill,
        .yensign_circle_fill,
        .sterlingsign_circle_fill,
        .francsign_circle_fill,
        .florinsign_circle_fill,
        .turkishlirasign_circle_fill,
        .rublesign_circle_fill,
        .eurosign_circle_fill,
        .dongsign_circle_fill,
        .indianrupeesign_circle_fill,
        .tengesign_circle_fill,
        .pesetasign_circle_fill,
        .pesosign_circle_fill,
        .kipsign_circle_fill,
        .wonsign_circle_fill,
        .lirasign_circle_fill,
        .australsign_circle_fill,
        .hryvniasign_circle_fill,
        .nairasign_circle_fill,
        .guaranisign_circle_fill,
        .coloncurrencysign_circle_fill,
        .cedisign_circle_fill,
        .cruzeirosign_circle_fill,
        .tugriksign_circle_fill,
        .millsign_circle_fill,
        .shekelsign_circle_fill,
        .manatsign_circle_fill,
        .rupeesign_circle_fill,
        .bahtsign_circle_fill,
        .larisign_circle_fill,
        .bitcoinsign_circle_fill,
        .brazilianrealsign_circle_fill,
        ._0_circle_fill,
        ._1_circle_fill,
        ._2_circle_fill,
        ._3_circle_fill,
        ._4_circle_fill,
        ._5_circle_fill,
        ._6_circle_fill,
        ._7_circle_fill,
        ._8_circle_fill,
        ._9_circle_fill,
        ._00_circle_fill,
        ._01_circle_fill,
        ._02_circle_fill,
        ._03_circle_fill,
        ._04_circle_fill,
        ._05_circle_fill,
        ._06_circle_fill,
        ._07_circle_fill,
        ._08_circle_fill,
        ._09_circle_fill,
        ._10_circle_fill,
        ._11_circle_fill,
        ._12_circle_fill,
        ._13_circle_fill,
        ._14_circle_fill,
        ._15_circle_fill,
        ._16_circle_fill,
        ._17_circle_fill,
        ._18_circle_fill,
        ._19_circle_fill,
        ._20_circle_fill,
        ._21_circle_fill,
        ._22_circle_fill,
        ._23_circle_fill,
        ._24_circle_fill,
        ._25_circle_fill,
        ._26_circle_fill,
        ._27_circle_fill,
        ._28_circle_fill,
        ._29_circle_fill,
        ._30_circle_fill,
        ._31_circle_fill,
        ._32_circle_fill,
        ._33_circle_fill,
        ._34_circle_fill,
        ._35_circle_fill,
        ._36_circle_fill,
        ._37_circle_fill,
        ._38_circle_fill,
        ._39_circle_fill,
        ._40_circle_fill,
        ._41_circle_fill,
        ._42_circle_fill,
        ._43_circle_fill,
        ._44_circle_fill,
        ._45_circle_fill,
        ._46_circle_fill,
        ._47_circle_fill,
        ._48_circle_fill,
        ._49_circle_fill,
        ._50_circle_fill,
        .circle_grid_3x3_circle_fill,
        .square_fill_on_circle_fill,
        .circle_grid_2x2_fill,
        .circle_grid_3x3_fill,
        .circle_grid_cross_fill,
        .circle_grid_2x1_fill,
        .trash_slash_circle_fill,
        .xmark_bin_circle_fill,
        .books_vertical_circle_fill,
        .book_closed_circle_fill,
        .person_2_circle_fill,
        .person_crop_circle_fill,
        .sun_max_circle_fill,
        .repeat_1_circle_fill,
        .speaker_slash_circle_fill,
        .music_mic_circle_fill,
        .mic_slash_circle_fill,
        .smallcircle_filled_circle_fill,
        .heart_slash_circle_fill,
        .flag_slash_circle_fill,
        .location_north_circle_fill,
        .bell_slash_circle_fill,
        .bell_badge_circle_fill,
        .bolt_slash_circle_fill,
        .bolt_horizontal_circle_fill,
        .eye_slash_circle_fill,
        .bubble_right_circle_fill,
        .bubble_left_circle_fill,
        .exclamationmark_bubble_circle_fill,
        .phone_down_circle_fill,
        .teletype_answer_circle_fill,
        .building_columns_circle_fill,
        .mappin_slash_circle_fill,
        .iphone_homebutton_circle_fill,
        .iphone_slash_circle_fill,
        .bolt_car_circle_fill,
        .bed_double_circle_fill,
        .fork_knife_circle_fill,
        .figure_walk_circle_fill,
        .figure_wave_circle_fill,
        .hand_raised_circle_fill,
        .hand_thumbsup_circle_fill,
        .hand_thumbsdown_circle_fill,
        .list_bullet_circle_fill,
        .f_cursive_circle_fill,
        .chevron_left_circle_fill,
        .chevron_backward_circle_fill,
        .chevron_right_circle_fill,
        .chevron_forward_circle_fill,
        .chevron_up_circle_fill,
        .chevron_down_circle_fill,
        .arrow_left_circle_fill,
        .arrow_backward_circle_fill,
        .arrow_right_circle_fill,
        .arrow_forward_circle_fill,
        .arrow_up_circle_fill,
        .arrow_down_circle_fill,
        .arrow_clockwise_circle_fill,
        .arrow_counterclockwise_circle_fill,
        .arrowtriangle_left_circle_fill,
        .arrowtriangle_backward_circle_fill,
        .arrowtriangle_right_circle_fill,
        .arrowtriangle_forward_circle_fill,
        .arrowtriangle_up_circle_fill,
        .arrowtriangle_down_circle_fill,
        ._4_alt_circle_fill,
        ._6_alt_circle_fill,
        ._9_alt_circle_fill,
        .circle_and_line_horizontal_fill,
        .person_crop_circle_badge_fill,
        .speaker_wave_2_circle_fill,
        .rectangle_on_rectangle_circle_fill,
        .building_2_crop_circle_fill,
        .iphone_homebutton_slash_circle_fill,
        .wave_3_left_circle_fill,
        .wave_3_backward_circle_fill,
        .wave_3_right_circle_fill,
        .wave_3_forward_circle_fill,
        .line_3_horizontal_circle_fill,
        .arrow_up_left_circle_fill,
        .arrow_up_backward_circle_fill,
        .arrow_up_right_circle_fill,
        .arrow_up_forward_circle_fill,
        .arrow_down_left_circle_fill,
        .arrow_down_backward_circle_fill,
        .arrow_down_right_circle_fill,
        .arrow_down_forward_circle_fill,
        .arrow_uturn_left_circle_fill,
        .arrow_uturn_backward_circle_fill,
        .arrow_uturn_right_circle_fill,
        .arrow_uturn_forward_circle_fill,
        .arrow_uturn_up_circle_fill,
        .arrow_uturn_down_circle_fill,
        .person_crop_circle_fill_badge_plus,
        .person_crop_circle_fill_badge_minus,
        .person_crop_circle_fill_badge_checkmark,
        .person_crop_circle_fill_badge_xmark,
        .person_crop_circle_badge_questionmark_fill,
        .person_crop_circle_badge_exclamationmark_fill,
        .person_crop_circle_badge_moon_fill,
        .person_crop_circle_badge_clock_fill,
        .square_and_arrow_up_circle_fill,
        .arrowshape_turn_up_left_circle_fill,
        .arrowshape_turn_up_backward_circle_fill,
        .arrowshape_turn_up_right_circle_fill,
        .arrowshape_turn_up_forward_circle_fill,
        .rectangle_on_rectangle_slash_circle_fill,
        .play_rectangle_on_rectangle_circle_fill,
        .line_3_crossed_swirl_circle_fill,
        .chart_line_uptrend_xyaxis_circle_fill,
        .line_3_horizontal_decrease_circle_fill,
        .line_2_horizontal_decrease_circle_fill,
        .arrow_left_arrow_right_circle_fill,
        .arrow_up_arrow_down_circle_fill,
        .arrow_left_and_right_circle_fill,
        .arrow_up_and_down_circle_fill,
        .arrow_up_to_line_circle_fill,
        .arrow_down_to_line_circle_fill,
        .arrow_left_to_line_circle_fill,
        .arrow_backward_to_line_circle_fill,
        .arrow_right_to_line_circle_fill,
        .arrow_forward_to_line_circle_fill,
        .arrow_triangle_2_circlepath_circle_fill,
        .dot_circle_and_hand_point_up_left_fill,
        .arrowshape_turn_up_left_2_circle_fill,
        .arrowshape_turn_up_backward_2_circle_fill,
        .iphone_radiowaves_left_and_right_circle_fill,
        .antenna_radiowaves_left_and_right_circle_fill,
        .arrow_triangle_turn_up_right_circle_fill,
        .iphone_homebutton_radiowaves_left_and_right_circle_fill,
        .arrow_up_left_and_arrow_down_right_circle_fill,
        .arrow_up_backward_and_arrow_down_forward_circle_fill,
        .arrow_down_right_and_arrow_up_left_circle_fill,
        .arrow_down_forward_and_arrow_up_backward_circle_fill,
        .circle_lefthalf_filled,
        .circle_righthalf_filled,
        .circle_tophalf_filled,
        .circle_bottomhalf_filled,
        .circle_inset_filled,
        .smallcircle_filled_circle,
        .circle_dashed_inset_filled,
        .rectangle_on_rectangle_circle,
        .circle_grid_cross_left_filled,
        .circle_grid_cross_up_filled,
        .circle_grid_cross_right_filled,
        .circle_grid_cross_down_filled,
        .circlebadge_fill,
        .circlebadge_2_fill,
        .arrow_triangle_2_circlepath_camera_fill,
        .circle_grid_2x1_left_filled,
        .circle_grid_2x1_right_filled,
    ]
    
}
