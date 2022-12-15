**free

ctl-opt dftactgrp(*no);

dcl-pi P926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P795.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'

dcl-ds T347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T347 FROM T347 LIMIT 1;

theCharVar = 'Hello from P926';
dsply theCharVar;
P795();
P501();
P156();
return;