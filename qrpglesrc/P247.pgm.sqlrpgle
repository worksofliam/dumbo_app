**free

ctl-opt dftactgrp(*no);

dcl-pi P247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T25') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T25 LIMIT 1;

theCharVar = 'Hello from P247';
dsply theCharVar;
P97();
P13();
P95();
return;