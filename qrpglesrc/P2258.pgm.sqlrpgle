**free

ctl-opt dftactgrp(*no);

dcl-pi P2258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T1095') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1095 LIMIT 1;

theCharVar = 'Hello from P2258';
dsply theCharVar;
P585();
P587();
P458();
return;