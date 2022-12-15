**free

ctl-opt dftactgrp(*no);

dcl-pi P70;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds T1439 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1439 FROM T1439 LIMIT 1;

theCharVar = 'Hello from P70';
dsply theCharVar;
P7();
P44();
P14();
return;