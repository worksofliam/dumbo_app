**free

ctl-opt dftactgrp(*no);

dcl-pi P523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'

dcl-ds theTable extname('T1556') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1556 LIMIT 1;

theCharVar = 'Hello from P523';
dsply theCharVar;
P238();
P326();
P461();
return;