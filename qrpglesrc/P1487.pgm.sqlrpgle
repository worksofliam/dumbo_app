**free

ctl-opt dftactgrp(*no);

dcl-pi P1487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P751.rpgleinc'
/copy 'qrpgleref/P977.rpgleinc'
/copy 'qrpgleref/P1239.rpgleinc'

dcl-ds theTable extname('T721') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T721 LIMIT 1;

theCharVar = 'Hello from P1487';
dsply theCharVar;
P751();
P977();
P1239();
return;