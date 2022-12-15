**free

ctl-opt dftactgrp(*no);

dcl-pi P3179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1004.rpgleinc'
/copy 'qrpgleref/P2920.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds theTable extname('T912') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T912 LIMIT 1;

theCharVar = 'Hello from P3179';
dsply theCharVar;
P1004();
P2920();
P46();
return;