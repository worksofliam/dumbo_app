**free

ctl-opt dftactgrp(*no);

dcl-pi P387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T252') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T252 LIMIT 1;

theCharVar = 'Hello from P387';
dsply theCharVar;
P160();
P330();
P64();
return;