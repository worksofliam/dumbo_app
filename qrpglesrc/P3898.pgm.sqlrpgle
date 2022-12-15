**free

ctl-opt dftactgrp(*no);

dcl-pi P3898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1935.rpgleinc'
/copy 'qrpgleref/P3280.rpgleinc'
/copy 'qrpgleref/P3595.rpgleinc'

dcl-ds theTable extname('T1367') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1367 LIMIT 1;

theCharVar = 'Hello from P3898';
dsply theCharVar;
P1935();
P3280();
P3595();
return;