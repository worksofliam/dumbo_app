**free

ctl-opt dftactgrp(*no);

dcl-pi P3747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3056.rpgleinc'
/copy 'qrpgleref/P3725.rpgleinc'
/copy 'qrpgleref/P2642.rpgleinc'

dcl-ds theTable extname('T1457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1457 LIMIT 1;

theCharVar = 'Hello from P3747';
dsply theCharVar;
P3056();
P3725();
P2642();
return;