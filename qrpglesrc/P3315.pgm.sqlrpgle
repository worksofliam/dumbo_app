**free

ctl-opt dftactgrp(*no);

dcl-pi P3315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P3242.rpgleinc'
/copy 'qrpgleref/P2787.rpgleinc'

dcl-ds T131 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T131 FROM T131 LIMIT 1;

theCharVar = 'Hello from P3315';
dsply theCharVar;
P118();
P3242();
P2787();
return;