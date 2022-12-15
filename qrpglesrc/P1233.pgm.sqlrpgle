**free

ctl-opt dftactgrp(*no);

dcl-pi P1233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1140.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P953.rpgleinc'

dcl-ds theTable extname('T466') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T466 LIMIT 1;

theCharVar = 'Hello from P1233';
dsply theCharVar;
P1140();
P922();
P953();
return;