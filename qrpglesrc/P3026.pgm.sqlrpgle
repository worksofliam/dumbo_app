**free

ctl-opt dftactgrp(*no);

dcl-pi P3026;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P1427.rpgleinc'
/copy 'qrpgleref/P886.rpgleinc'

dcl-ds T751 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T751 FROM T751 LIMIT 1;

theCharVar = 'Hello from P3026';
dsply theCharVar;
P708();
P1427();
P886();
return;