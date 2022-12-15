**free

ctl-opt dftactgrp(*no);

dcl-pi P133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds theTable extname('T1268') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1268 LIMIT 1;

theCharVar = 'Hello from P133';
dsply theCharVar;
P122();
P23();
P116();
return;