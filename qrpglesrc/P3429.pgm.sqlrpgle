**free

ctl-opt dftactgrp(*no);

dcl-pi P3429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2051.rpgleinc'
/copy 'qrpgleref/P1187.rpgleinc'
/copy 'qrpgleref/P2221.rpgleinc'

dcl-ds theTable extname('T1332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1332 LIMIT 1;

theCharVar = 'Hello from P3429';
dsply theCharVar;
P2051();
P1187();
P2221();
return;