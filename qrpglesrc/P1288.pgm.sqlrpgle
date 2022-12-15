**free

ctl-opt dftactgrp(*no);

dcl-pi P1288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1165.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'
/copy 'qrpgleref/P1225.rpgleinc'

dcl-ds theTable extname('T3') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T3 LIMIT 1;

theCharVar = 'Hello from P1288';
dsply theCharVar;
P1165();
P1208();
P1225();
return;