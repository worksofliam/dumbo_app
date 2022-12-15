**free

ctl-opt dftactgrp(*no);

dcl-pi P190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T13') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T13 LIMIT 1;

theCharVar = 'Hello from P190';
dsply theCharVar;
P50();
P3();
P26();
return;