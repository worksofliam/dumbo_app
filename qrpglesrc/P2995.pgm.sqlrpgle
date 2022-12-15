**free

ctl-opt dftactgrp(*no);

dcl-pi P2995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1888.rpgleinc'
/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'

dcl-ds theTable extname('T1023') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1023 LIMIT 1;

theCharVar = 'Hello from P2995';
dsply theCharVar;
P1888();
P936();
P1300();
return;