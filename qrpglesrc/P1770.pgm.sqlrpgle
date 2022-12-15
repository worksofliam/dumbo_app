**free

ctl-opt dftactgrp(*no);

dcl-pi P1770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P1597.rpgleinc'

dcl-ds theTable extname('T515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T515 LIMIT 1;

theCharVar = 'Hello from P1770';
dsply theCharVar;
P1010();
P925();
P1597();
return;