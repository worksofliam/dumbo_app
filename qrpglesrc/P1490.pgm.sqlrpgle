**free

ctl-opt dftactgrp(*no);

dcl-pi P1490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1092.rpgleinc'
/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds theTable extname('T566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T566 LIMIT 1;

theCharVar = 'Hello from P1490';
dsply theCharVar;
P1092();
P734();
P489();
return;