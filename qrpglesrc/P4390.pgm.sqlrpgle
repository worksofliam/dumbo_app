**free

ctl-opt dftactgrp(*no);

dcl-pi P4390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P1316.rpgleinc'
/copy 'qrpgleref/P1924.rpgleinc'

dcl-ds theTable extname('T1258') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1258 LIMIT 1;

theCharVar = 'Hello from P4390';
dsply theCharVar;
P943();
P1316();
P1924();
return;