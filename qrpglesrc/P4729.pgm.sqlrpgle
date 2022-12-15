**free

ctl-opt dftactgrp(*no);

dcl-pi P4729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3370.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'

dcl-ds T1078 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1078 FROM T1078 LIMIT 1;

theCharVar = 'Hello from P4729';
dsply theCharVar;
P3370();
P1066();
P536();
return;