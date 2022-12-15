**free

ctl-opt dftactgrp(*no);

dcl-pi P3286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P799.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P3088.rpgleinc'

dcl-ds T1078 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1078 FROM T1078 LIMIT 1;

theCharVar = 'Hello from P3286';
dsply theCharVar;
P799();
P479();
P3088();
return;