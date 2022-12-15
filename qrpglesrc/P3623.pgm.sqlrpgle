**free

ctl-opt dftactgrp(*no);

dcl-pi P3623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2431.rpgleinc'
/copy 'qrpgleref/P2946.rpgleinc'
/copy 'qrpgleref/P2666.rpgleinc'

dcl-ds theTable extname('T298') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T298 LIMIT 1;

theCharVar = 'Hello from P3623';
dsply theCharVar;
P2431();
P2946();
P2666();
return;