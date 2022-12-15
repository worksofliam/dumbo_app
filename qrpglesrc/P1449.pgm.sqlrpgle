**free

ctl-opt dftactgrp(*no);

dcl-pi P1449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P1433.rpgleinc'
/copy 'qrpgleref/P821.rpgleinc'

dcl-ds theTable extname('T356') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T356 LIMIT 1;

theCharVar = 'Hello from P1449';
dsply theCharVar;
P60();
P1433();
P821();
return;