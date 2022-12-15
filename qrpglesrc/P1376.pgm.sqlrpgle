**free

ctl-opt dftactgrp(*no);

dcl-pi P1376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P931.rpgleinc'

dcl-ds T107 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T107 FROM T107 LIMIT 1;

theCharVar = 'Hello from P1376';
dsply theCharVar;
P440();
P253();
P931();
return;