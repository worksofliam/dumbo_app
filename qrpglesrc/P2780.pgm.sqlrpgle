**free

ctl-opt dftactgrp(*no);

dcl-pi P2780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2500.rpgleinc'
/copy 'qrpgleref/P2021.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'

dcl-ds theTable extname('T1646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1646 LIMIT 1;

theCharVar = 'Hello from P2780';
dsply theCharVar;
P2500();
P2021();
P240();
return;