**free

ctl-opt dftactgrp(*no);

dcl-pi P2494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1617.rpgleinc'
/copy 'qrpgleref/P2390.rpgleinc'
/copy 'qrpgleref/P1866.rpgleinc'

dcl-ds theTable extname('T846') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T846 LIMIT 1;

theCharVar = 'Hello from P2494';
dsply theCharVar;
P1617();
P2390();
P1866();
return;