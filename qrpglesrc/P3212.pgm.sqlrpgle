**free

ctl-opt dftactgrp(*no);

dcl-pi P3212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1494.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P1217.rpgleinc'

dcl-ds theTable extname('T1179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1179 LIMIT 1;

theCharVar = 'Hello from P3212';
dsply theCharVar;
P1494();
P456();
P1217();
return;