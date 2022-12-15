**free

ctl-opt dftactgrp(*no);

dcl-pi P1080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P849.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'

dcl-ds theTable extname('T1436') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1436 LIMIT 1;

theCharVar = 'Hello from P1080';
dsply theCharVar;
P45();
P849();
P555();
return;