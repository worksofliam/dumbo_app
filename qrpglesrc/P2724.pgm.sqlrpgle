**free

ctl-opt dftactgrp(*no);

dcl-pi P2724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1994.rpgleinc'
/copy 'qrpgleref/P2130.rpgleinc'
/copy 'qrpgleref/P2179.rpgleinc'

dcl-ds theTable extname('T605') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T605 LIMIT 1;

theCharVar = 'Hello from P2724';
dsply theCharVar;
P1994();
P2130();
P2179();
return;