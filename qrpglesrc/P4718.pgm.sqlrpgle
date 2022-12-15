**free

ctl-opt dftactgrp(*no);

dcl-pi P4718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P2156.rpgleinc'
/copy 'qrpgleref/P3639.rpgleinc'

dcl-ds theTable extname('T904') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T904 LIMIT 1;

theCharVar = 'Hello from P4718';
dsply theCharVar;
P9();
P2156();
P3639();
return;