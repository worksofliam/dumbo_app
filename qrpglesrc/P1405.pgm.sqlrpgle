**free

ctl-opt dftactgrp(*no);

dcl-pi P1405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P1373.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P1405';
dsply theCharVar;
P226();
P64();
P1373();
return;