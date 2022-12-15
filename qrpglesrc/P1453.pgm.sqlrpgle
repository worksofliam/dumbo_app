**free

ctl-opt dftactgrp(*no);

dcl-pi P1453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P1284.rpgleinc'

dcl-ds T655 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T655 FROM T655 LIMIT 1;

theCharVar = 'Hello from P1453';
dsply theCharVar;
P243();
P915();
P1284();
return;