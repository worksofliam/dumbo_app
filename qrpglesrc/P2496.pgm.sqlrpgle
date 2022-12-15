**free

ctl-opt dftactgrp(*no);

dcl-pi P2496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1579.rpgleinc'
/copy 'qrpgleref/P1656.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'

dcl-ds theTable extname('T1107') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1107 LIMIT 1;

theCharVar = 'Hello from P2496';
dsply theCharVar;
P1579();
P1656();
P736();
return;