**free

ctl-opt dftactgrp(*no);

dcl-pi P2218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1114.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'
/copy 'qrpgleref/P1492.rpgleinc'

dcl-ds theTable extname('T1066') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1066 LIMIT 1;

theCharVar = 'Hello from P2218';
dsply theCharVar;
P1114();
P1448();
P1492();
return;