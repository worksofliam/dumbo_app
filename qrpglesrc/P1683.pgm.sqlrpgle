**free

ctl-opt dftactgrp(*no);

dcl-pi P1683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P784.rpgleinc'
/copy 'qrpgleref/P1608.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P1683';
dsply theCharVar;
P784();
P1608();
P333();
return;