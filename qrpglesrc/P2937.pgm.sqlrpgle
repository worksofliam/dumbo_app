**free

ctl-opt dftactgrp(*no);

dcl-pi P2937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P2768.rpgleinc'
/copy 'qrpgleref/P1112.rpgleinc'

dcl-ds theTable extname('T298') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T298 LIMIT 1;

theCharVar = 'Hello from P2937';
dsply theCharVar;
P446();
P2768();
P1112();
return;