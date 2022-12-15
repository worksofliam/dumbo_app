**free

ctl-opt dftactgrp(*no);

dcl-pi P908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'

dcl-ds theTable extname('T1639') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1639 LIMIT 1;

theCharVar = 'Hello from P908';
dsply theCharVar;
P36();
P206();
P428();
return;