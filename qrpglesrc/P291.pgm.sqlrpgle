**free

ctl-opt dftactgrp(*no);

dcl-pi P291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'

dcl-ds theTable extname('T728') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T728 LIMIT 1;

theCharVar = 'Hello from P291';
dsply theCharVar;
P281();
P3();
P190();
return;