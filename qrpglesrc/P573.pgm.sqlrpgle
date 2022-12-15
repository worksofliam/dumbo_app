**free

ctl-opt dftactgrp(*no);

dcl-pi P573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P509.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P573';
dsply theCharVar;
P137();
P375();
P509();
return;