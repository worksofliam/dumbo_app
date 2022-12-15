**free

ctl-opt dftactgrp(*no);

dcl-pi P4765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1077.rpgleinc'
/copy 'qrpgleref/P2763.rpgleinc'
/copy 'qrpgleref/P1819.rpgleinc'

dcl-ds theTable extname('T711') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T711 LIMIT 1;

theCharVar = 'Hello from P4765';
dsply theCharVar;
P1077();
P2763();
P1819();
return;