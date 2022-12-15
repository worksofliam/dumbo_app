**free

ctl-opt dftactgrp(*no);

dcl-pi P2167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1266.rpgleinc'
/copy 'qrpgleref/P1472.rpgleinc'
/copy 'qrpgleref/P1064.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P2167';
dsply theCharVar;
P1266();
P1472();
P1064();
return;