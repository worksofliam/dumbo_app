**free

ctl-opt dftactgrp(*no);

dcl-pi P2485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P2462.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'

dcl-ds theTable extname('T1219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1219 LIMIT 1;

theCharVar = 'Hello from P2485';
dsply theCharVar;
P589();
P2462();
P419();
return;