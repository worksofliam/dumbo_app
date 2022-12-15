**free

ctl-opt dftactgrp(*no);

dcl-pi P3264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2391.rpgleinc'
/copy 'qrpgleref/P1186.rpgleinc'
/copy 'qrpgleref/P2178.rpgleinc'

dcl-ds theTable extname('T401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T401 LIMIT 1;

theCharVar = 'Hello from P3264';
dsply theCharVar;
P2391();
P1186();
P2178();
return;