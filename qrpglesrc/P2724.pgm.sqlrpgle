**free

ctl-opt dftactgrp(*no);

dcl-pi P2724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2496.rpgleinc'
/copy 'qrpgleref/P1317.rpgleinc'
/copy 'qrpgleref/P1333.rpgleinc'

dcl-ds theTable extname('T132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T132 LIMIT 1;

theCharVar = 'Hello from P2724';
dsply theCharVar;
P2496();
P1317();
P1333();
return;