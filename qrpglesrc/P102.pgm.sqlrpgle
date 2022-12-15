**free

ctl-opt dftactgrp(*no);

dcl-pi P102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds T148 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T148 FROM T148 LIMIT 1;

theCharVar = 'Hello from P102';
dsply theCharVar;
P9();
P11();
P5();
return;