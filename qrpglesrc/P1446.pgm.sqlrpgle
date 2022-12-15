**free

ctl-opt dftactgrp(*no);

dcl-pi P1446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P942.rpgleinc'
/copy 'qrpgleref/P1100.rpgleinc'

dcl-ds theTable extname('T1190') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1190 LIMIT 1;

theCharVar = 'Hello from P1446';
dsply theCharVar;
P478();
P942();
P1100();
return;