**free

ctl-opt dftactgrp(*no);

dcl-pi P686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'

dcl-ds theTable extname('T397') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T397 LIMIT 1;

theCharVar = 'Hello from P686';
dsply theCharVar;
P246();
P446();
P584();
return;