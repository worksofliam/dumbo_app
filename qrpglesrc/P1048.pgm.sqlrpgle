**free

ctl-opt dftactgrp(*no);

dcl-pi P1048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'

dcl-ds theTable extname('T171') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T171 LIMIT 1;

theCharVar = 'Hello from P1048';
dsply theCharVar;
P978();
P895();
P925();
return;