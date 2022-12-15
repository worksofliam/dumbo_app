**free

ctl-opt dftactgrp(*no);

dcl-pi P3806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2817.rpgleinc'
/copy 'qrpgleref/P3630.rpgleinc'
/copy 'qrpgleref/P3583.rpgleinc'

dcl-ds theTable extname('T1105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1105 LIMIT 1;

theCharVar = 'Hello from P3806';
dsply theCharVar;
P2817();
P3630();
P3583();
return;