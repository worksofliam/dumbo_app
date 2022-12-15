**free

ctl-opt dftactgrp(*no);

dcl-pi P2922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P1221.rpgleinc'

dcl-ds theTable extname('T1285') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1285 LIMIT 1;

theCharVar = 'Hello from P2922';
dsply theCharVar;
P394();
P1468();
P1221();
return;