**free

ctl-opt dftactgrp(*no);

dcl-pi P785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P785';
dsply theCharVar;
P23();
P347();
P774();
return;