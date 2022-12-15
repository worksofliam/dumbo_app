**free

ctl-opt dftactgrp(*no);

dcl-pi P5473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3228.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P3970.rpgleinc'

dcl-ds theTable extname('T1034') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1034 LIMIT 1;

theCharVar = 'Hello from P5473';
dsply theCharVar;
P3228();
P852();
P3970();
return;