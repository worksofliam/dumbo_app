**free

ctl-opt dftactgrp(*no);

dcl-pi P154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'

dcl-ds theTable extname('T248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T248 LIMIT 1;

theCharVar = 'Hello from P154';
dsply theCharVar;
P63();
P77();
P129();
return;