**free

ctl-opt dftactgrp(*no);

dcl-pi P3014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3007.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P1343.rpgleinc'

dcl-ds T1103 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1103 FROM T1103 LIMIT 1;

theCharVar = 'Hello from P3014';
dsply theCharVar;
P3007();
P573();
P1343();
return;