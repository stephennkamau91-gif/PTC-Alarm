package com.ptcweeklyalarm.app.data.model

import java.time.LocalDateTime

data class ShiftEntry(
    val id: String,
    val name: String,
    val startTime: LocalDateTime,
    val endTime: LocalDateTime,
    val type: String
)