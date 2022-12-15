**free

ctl-opt dftactgrp(*no);

dcl-pi P3913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1987.rpgleinc'
/copy 'qrpgleref/P2068.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds theTable extname('T189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T189 LIMIT 1;

theCharVar = 'Hello from P3913';
dsply theCharVar;
P1987();
P2068();
P489();
return;