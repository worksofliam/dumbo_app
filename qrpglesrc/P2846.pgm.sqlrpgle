**free

ctl-opt dftactgrp(*no);

dcl-pi P2846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1764.rpgleinc'
/copy 'qrpgleref/P1749.rpgleinc'
/copy 'qrpgleref/P1453.rpgleinc'

dcl-ds theTable extname('T871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T871 LIMIT 1;

theCharVar = 'Hello from P2846';
dsply theCharVar;
P1764();
P1749();
P1453();
return;