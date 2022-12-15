**free

ctl-opt dftactgrp(*no);

dcl-pi P3869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1619.rpgleinc'
/copy 'qrpgleref/P1497.rpgleinc'
/copy 'qrpgleref/P3646.rpgleinc'

dcl-ds theTable extname('T983') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T983 LIMIT 1;

theCharVar = 'Hello from P3869';
dsply theCharVar;
P1619();
P1497();
P3646();
return;