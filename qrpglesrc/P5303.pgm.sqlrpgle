**free

ctl-opt dftactgrp(*no);

dcl-pi P5303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4147.rpgleinc'
/copy 'qrpgleref/P5026.rpgleinc'
/copy 'qrpgleref/P3188.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P5303';
dsply theCharVar;
P4147();
P5026();
P3188();
return;