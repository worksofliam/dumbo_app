**free

ctl-opt dftactgrp(*no);

dcl-pi P1969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P1969';
dsply theCharVar;
P417();
P334();
P990();
return;