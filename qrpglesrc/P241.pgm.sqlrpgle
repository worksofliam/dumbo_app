**free

ctl-opt dftactgrp(*no);

dcl-pi P241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'

dcl-ds theTable extname('T1240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1240 LIMIT 1;

theCharVar = 'Hello from P241';
dsply theCharVar;
P186();
P53();
P108();
return;