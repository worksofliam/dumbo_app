**free

ctl-opt dftactgrp(*no);

dcl-pi P2380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P1822.rpgleinc'
/copy 'qrpgleref/P1784.rpgleinc'

dcl-ds theTable extname('T1220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1220 LIMIT 1;

theCharVar = 'Hello from P2380';
dsply theCharVar;
P1205();
P1822();
P1784();
return;