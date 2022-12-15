**free

ctl-opt dftactgrp(*no);

dcl-pi P3372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P799.rpgleinc'
/copy 'qrpgleref/P2509.rpgleinc'
/copy 'qrpgleref/P1724.rpgleinc'

dcl-ds theTable extname('T300') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T300 LIMIT 1;

theCharVar = 'Hello from P3372';
dsply theCharVar;
P799();
P2509();
P1724();
return;