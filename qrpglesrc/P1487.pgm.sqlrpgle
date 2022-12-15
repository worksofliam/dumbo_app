**free

ctl-opt dftactgrp(*no);

dcl-pi P1487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P1349.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'

dcl-ds T404 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T404 FROM T404 LIMIT 1;

theCharVar = 'Hello from P1487';
dsply theCharVar;
P1396();
P1349();
P678();
return;