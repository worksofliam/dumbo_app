**free

ctl-opt dftactgrp(*no);

dcl-pi P307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T13') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T13 LIMIT 1;

theCharVar = 'Hello from P307';
dsply theCharVar;
P188();
P182();
P173();
return;