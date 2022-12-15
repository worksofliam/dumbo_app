**free

ctl-opt dftactgrp(*no);

dcl-pi P5321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2577.rpgleinc'
/copy 'qrpgleref/P2276.rpgleinc'
/copy 'qrpgleref/P4997.rpgleinc'

dcl-ds theTable extname('T780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T780 LIMIT 1;

theCharVar = 'Hello from P5321';
dsply theCharVar;
P2577();
P2276();
P4997();
return;