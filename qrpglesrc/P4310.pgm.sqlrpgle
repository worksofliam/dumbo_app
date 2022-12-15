**free

ctl-opt dftactgrp(*no);

dcl-pi P4310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3851.rpgleinc'
/copy 'qrpgleref/P2454.rpgleinc'
/copy 'qrpgleref/P3137.rpgleinc'

dcl-ds T1177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1177 FROM T1177 LIMIT 1;

theCharVar = 'Hello from P4310';
dsply theCharVar;
P3851();
P2454();
P3137();
return;