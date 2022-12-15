**free

ctl-opt dftactgrp(*no);

dcl-pi P2458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P1576.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P2458';
dsply theCharVar;
P595();
P400();
P1576();
return;