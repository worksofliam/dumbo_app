**free

ctl-opt dftactgrp(*no);

dcl-pi P2053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1581.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'

dcl-ds theTable extname('T160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T160 LIMIT 1;

theCharVar = 'Hello from P2053';
dsply theCharVar;
P1581();
P762();
P965();
return;