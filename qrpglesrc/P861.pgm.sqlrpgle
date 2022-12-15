**free

ctl-opt dftactgrp(*no);

dcl-pi P861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P753.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'

dcl-ds theTable extname('T1223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1223 LIMIT 1;

theCharVar = 'Hello from P861';
dsply theCharVar;
P753();
P481();
P810();
return;