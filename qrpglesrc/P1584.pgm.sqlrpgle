**free

ctl-opt dftactgrp(*no);

dcl-pi P1584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P912.rpgleinc'

dcl-ds theTable extname('T960') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T960 LIMIT 1;

theCharVar = 'Hello from P1584';
dsply theCharVar;
P653();
P652();
P912();
return;