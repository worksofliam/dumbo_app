**free

ctl-opt dftactgrp(*no);

dcl-pi P3891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1764.rpgleinc'
/copy 'qrpgleref/P2026.rpgleinc'
/copy 'qrpgleref/P3841.rpgleinc'

dcl-ds theTable extname('T1826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1826 LIMIT 1;

theCharVar = 'Hello from P3891';
dsply theCharVar;
P1764();
P2026();
P3841();
return;