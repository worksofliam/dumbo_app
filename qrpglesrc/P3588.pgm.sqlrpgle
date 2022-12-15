**free

ctl-opt dftactgrp(*no);

dcl-pi P3588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P1093.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'

dcl-ds T10 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T10 FROM T10 LIMIT 1;

theCharVar = 'Hello from P3588';
dsply theCharVar;
P718();
P1093();
P1161();
return;