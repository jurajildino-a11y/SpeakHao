//
//  Scenarioregistry.swift
//  SpeakHao
//
//  Created by Muh. Naufal Fahri Salim on 5/5/26.
//

import Foundation

enum ScenarioRegistry {

    // MARK: - Registered Scenarios

    /// Semua skenario yang tersedia. Urutan ini menentukan tampilan di UI.
    static let all: [NPCScenario] = [
        ClientMeetingMrZhangScenario.scenario,
        // Tambah skenario baru di sini:
        // NewScenario.scenario,
    ]

    // MARK: - Lookup

    /// Cari skenario berdasarkan id-nya.
    static func scenario(for id: String) -> NPCScenario? {
        all.first { $0.id == id }
    }

    // provider(for:) dihapus — FoundationModelsService tidak lagi butuh
    // provider/pinyinMap karena semua response dihasilkan langsung oleh FM.
}
