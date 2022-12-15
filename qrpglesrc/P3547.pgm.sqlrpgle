**free

ctl-opt dftactgrp(*no);

dcl-pi P3547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2818.rpgleinc'
/copy 'qrpgleref/P2723.rpgleinc'
/copy 'qrpgleref/P2732.rpgleinc'

dcl-ds theTable extname('T1162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1162 LIMIT 1;

theCharVar = 'Hello from P3547';
dsply theCharVar;
P2818();
P2723();
P2732();
return;