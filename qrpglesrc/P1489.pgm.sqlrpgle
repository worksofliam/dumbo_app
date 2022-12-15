**free

ctl-opt dftactgrp(*no);

dcl-pi P1489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P735.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P1272.rpgleinc'

dcl-ds theTable extname('T1136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1136 LIMIT 1;

theCharVar = 'Hello from P1489';
dsply theCharVar;
P735();
P131();
P1272();
return;