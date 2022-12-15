**free

ctl-opt dftactgrp(*no);

dcl-pi P1835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1326.rpgleinc'
/copy 'qrpgleref/P1409.rpgleinc'
/copy 'qrpgleref/P675.rpgleinc'

dcl-ds theTable extname('T1452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1452 LIMIT 1;

theCharVar = 'Hello from P1835';
dsply theCharVar;
P1326();
P1409();
P675();
return;