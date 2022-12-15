**free

ctl-opt dftactgrp(*no);

dcl-pi P4181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1830.rpgleinc'
/copy 'qrpgleref/P2305.rpgleinc'
/copy 'qrpgleref/P3888.rpgleinc'

dcl-ds theTable extname('T1795') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1795 LIMIT 1;

theCharVar = 'Hello from P4181';
dsply theCharVar;
P1830();
P2305();
P3888();
return;