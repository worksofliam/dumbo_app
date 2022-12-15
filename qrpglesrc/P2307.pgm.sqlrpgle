**free

ctl-opt dftactgrp(*no);

dcl-pi P2307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P1035.rpgleinc'
/copy 'qrpgleref/P2241.rpgleinc'

dcl-ds theTable extname('T717') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T717 LIMIT 1;

theCharVar = 'Hello from P2307';
dsply theCharVar;
P352();
P1035();
P2241();
return;