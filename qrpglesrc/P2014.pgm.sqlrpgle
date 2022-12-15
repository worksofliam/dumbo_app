**free

ctl-opt dftactgrp(*no);

dcl-pi P2014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P1501.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'

dcl-ds theTable extname('T1157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1157 LIMIT 1;

theCharVar = 'Hello from P2014';
dsply theCharVar;
P162();
P1501();
P316();
return;