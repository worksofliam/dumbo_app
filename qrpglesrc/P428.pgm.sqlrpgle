**free

ctl-opt dftactgrp(*no);

dcl-pi P428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P428';
dsply theCharVar;
P277();
P395();
P9();
return;