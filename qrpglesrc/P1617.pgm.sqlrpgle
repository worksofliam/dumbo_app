**free

ctl-opt dftactgrp(*no);

dcl-pi P1617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P1552.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P1617';
dsply theCharVar;
P82();
P1552();
P248();
return;