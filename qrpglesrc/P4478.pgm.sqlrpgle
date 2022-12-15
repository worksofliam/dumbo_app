**free

ctl-opt dftactgrp(*no);

dcl-pi P4478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1392.rpgleinc'
/copy 'qrpgleref/P4132.rpgleinc'
/copy 'qrpgleref/P3767.rpgleinc'

dcl-ds T1487 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1487 FROM T1487 LIMIT 1;

theCharVar = 'Hello from P4478';
dsply theCharVar;
P1392();
P4132();
P3767();
return;