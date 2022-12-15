**free

ctl-opt dftactgrp(*no);

dcl-pi P3134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1634.rpgleinc'
/copy 'qrpgleref/P1843.rpgleinc'
/copy 'qrpgleref/P2129.rpgleinc'

dcl-ds theTable extname('T760') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T760 LIMIT 1;

theCharVar = 'Hello from P3134';
dsply theCharVar;
P1634();
P1843();
P2129();
return;