**free

ctl-opt dftactgrp(*no);

dcl-pi P1028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P1028';
dsply theCharVar;
P237();
P752();
P224();
return;