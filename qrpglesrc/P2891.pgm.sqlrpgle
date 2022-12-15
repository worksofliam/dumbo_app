**free

ctl-opt dftactgrp(*no);

dcl-pi P2891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P2594.rpgleinc'
/copy 'qrpgleref/P1981.rpgleinc'

dcl-ds theTable extname('T1243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1243 LIMIT 1;

theCharVar = 'Hello from P2891';
dsply theCharVar;
P1146();
P2594();
P1981();
return;