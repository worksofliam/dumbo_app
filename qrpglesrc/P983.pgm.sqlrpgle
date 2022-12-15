**free

ctl-opt dftactgrp(*no);

dcl-pi P983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P867.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds theTable extname('T373') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T373 LIMIT 1;

theCharVar = 'Hello from P983';
dsply theCharVar;
P205();
P867();
P49();
return;