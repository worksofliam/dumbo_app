**free

ctl-opt dftactgrp(*no);

dcl-pi P1542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P1542';
dsply theCharVar;
P913();
P54();
P63();
return;