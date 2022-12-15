**free

ctl-opt dftactgrp(*no);

dcl-pi P3966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1825.rpgleinc'
/copy 'qrpgleref/P2261.rpgleinc'
/copy 'qrpgleref/P3750.rpgleinc'

dcl-ds theTable extname('T16') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T16 LIMIT 1;

theCharVar = 'Hello from P3966';
dsply theCharVar;
P1825();
P2261();
P3750();
return;