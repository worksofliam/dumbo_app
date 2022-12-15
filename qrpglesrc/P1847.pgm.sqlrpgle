**free

ctl-opt dftactgrp(*no);

dcl-pi P1847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P892.rpgleinc'
/copy 'qrpgleref/P1335.rpgleinc'

dcl-ds theTable extname('T991') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T991 LIMIT 1;

theCharVar = 'Hello from P1847';
dsply theCharVar;
P287();
P892();
P1335();
return;