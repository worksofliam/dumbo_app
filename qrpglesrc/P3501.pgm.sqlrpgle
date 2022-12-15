**free

ctl-opt dftactgrp(*no);

dcl-pi P3501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1268.rpgleinc'
/copy 'qrpgleref/P2807.rpgleinc'
/copy 'qrpgleref/P3414.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P3501';
dsply theCharVar;
P1268();
P2807();
P3414();
return;