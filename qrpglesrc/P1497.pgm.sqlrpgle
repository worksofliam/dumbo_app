**free

ctl-opt dftactgrp(*no);

dcl-pi P1497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P1359.rpgleinc'

dcl-ds theTable extname('T268') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T268 LIMIT 1;

theCharVar = 'Hello from P1497';
dsply theCharVar;
P734();
P400();
P1359();
return;