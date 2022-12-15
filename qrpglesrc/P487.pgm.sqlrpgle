**free

ctl-opt dftactgrp(*no);

dcl-pi P487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'

dcl-ds T22 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T22 FROM T22 LIMIT 1;

theCharVar = 'Hello from P487';
dsply theCharVar;
P39();
P290();
P460();
return;