**free

ctl-opt dftactgrp(*no);

dcl-pi P494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds theTable extname('T134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T134 LIMIT 1;

theCharVar = 'Hello from P494';
dsply theCharVar;
P231();
P205();
P417();
return;