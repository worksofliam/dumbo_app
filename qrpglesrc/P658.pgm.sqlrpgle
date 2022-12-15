**free

ctl-opt dftactgrp(*no);

dcl-pi P658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P658';
dsply theCharVar;
P351();
P123();
P393();
return;