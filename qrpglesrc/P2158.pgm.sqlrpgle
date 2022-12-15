**free

ctl-opt dftactgrp(*no);

dcl-pi P2158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2114.rpgleinc'
/copy 'qrpgleref/P1615.rpgleinc'
/copy 'qrpgleref/P1576.rpgleinc'

dcl-ds theTable extname('T984') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T984 LIMIT 1;

theCharVar = 'Hello from P2158';
dsply theCharVar;
P2114();
P1615();
P1576();
return;