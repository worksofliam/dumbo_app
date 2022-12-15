**free

ctl-opt dftactgrp(*no);

dcl-pi P5410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4661.rpgleinc'
/copy 'qrpgleref/P2455.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds theTable extname('T1831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1831 LIMIT 1;

theCharVar = 'Hello from P5410';
dsply theCharVar;
P4661();
P2455();
P122();
return;