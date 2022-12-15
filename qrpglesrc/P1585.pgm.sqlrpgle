**free

ctl-opt dftactgrp(*no);

dcl-pi P1585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P1503.rpgleinc'

dcl-ds theTable extname('T381') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T381 LIMIT 1;

theCharVar = 'Hello from P1585';
dsply theCharVar;
P191();
P110();
P1503();
return;