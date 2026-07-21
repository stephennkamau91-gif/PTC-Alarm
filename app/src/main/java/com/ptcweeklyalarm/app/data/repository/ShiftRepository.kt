package com.ptcweeklyalarm.app.data.repository

import com.ptcweeklyalarm.app.data.model.ShiftEntry
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flowOf

class ShiftRepository {
    
    fun getShifts(): Flow<List<ShiftEntry>> {
        return flowOf(emptyList())
    }
    
    suspend fun saveShift(shift: ShiftEntry) {
        // Implementation for saving shift
    }
    
    suspend fun deleteShift(shiftId: String) {
        // Implementation for deleting shift
    }
}