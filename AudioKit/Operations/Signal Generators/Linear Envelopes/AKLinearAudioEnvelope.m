//
//  AKLinearAudioEnvelope.m
//  AudioKit
//
//  Created by Aurelius Prochazka on 5/17/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "AKLinearAudioEnvelope.h"

@implementation AKLinearAudioEnvelope
{
    AKParameter *amp;
    AKConstant *rise;
    AKConstant *dur;
    AKConstant *decay;
}

- (instancetype)initWithRiseTime:(AKConstant *)riseTime
                   totalDuration:(AKConstant *)totalDuration
                       decayTime:(AKConstant *)decayTime
                       amplitude:(AKParameter *)amplitude
{
    self = [super initWithString:[self operationName]];
    if (self) {
        amp     = amplitude;
        rise    = riseTime;
        dur     = totalDuration;
        decay   = decayTime;
    }
    return self;
}


- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ linen %@, %@, %@, %@",
            self, amp, rise, dur, decay];
}

@end
