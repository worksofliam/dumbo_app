**free

ctl-opt dftactgrp(*no);

dcl-pi P5531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P3915.rpgleinc'
/copy 'qrpgleref/P3750.rpgleinc'

dcl-ds T276 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T276 FROM T276 LIMIT 1;

theCharVar = 'Hello from P5531';
dsply theCharVar;
P179();
P3915();
P3750();
return;