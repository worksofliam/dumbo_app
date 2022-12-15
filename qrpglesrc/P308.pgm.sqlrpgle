**free

ctl-opt dftactgrp(*no);

dcl-pi P308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds theTable extname('T354') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T354 LIMIT 1;

theCharVar = 'Hello from P308';
dsply theCharVar;
P86();
P50();
P56();
return;