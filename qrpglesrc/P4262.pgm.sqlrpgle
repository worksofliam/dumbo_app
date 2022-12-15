**free

ctl-opt dftactgrp(*no);

dcl-pi P4262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2052.rpgleinc'
/copy 'qrpgleref/P2608.rpgleinc'
/copy 'qrpgleref/P788.rpgleinc'

dcl-ds theTable extname('T1543') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1543 LIMIT 1;

theCharVar = 'Hello from P4262';
dsply theCharVar;
P2052();
P2608();
P788();
return;