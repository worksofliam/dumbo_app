**free

ctl-opt dftactgrp(*no);

dcl-pi P1923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P769.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'
/copy 'qrpgleref/P1843.rpgleinc'

dcl-ds theTable extname('T503') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T503 LIMIT 1;

theCharVar = 'Hello from P1923';
dsply theCharVar;
P769();
P1337();
P1843();
return;