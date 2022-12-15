**free

ctl-opt dftactgrp(*no);

dcl-pi P3568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2851.rpgleinc'
/copy 'qrpgleref/P2074.rpgleinc'
/copy 'qrpgleref/P2419.rpgleinc'

dcl-ds theTable extname('T1432') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1432 LIMIT 1;

theCharVar = 'Hello from P3568';
dsply theCharVar;
P2851();
P2074();
P2419();
return;