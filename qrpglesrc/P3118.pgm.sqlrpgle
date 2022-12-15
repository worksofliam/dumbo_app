**free

ctl-opt dftactgrp(*no);

dcl-pi P3118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1580.rpgleinc'
/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P3038.rpgleinc'

dcl-ds T1398 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1398 FROM T1398 LIMIT 1;

theCharVar = 'Hello from P3118';
dsply theCharVar;
P1580();
P1558();
P3038();
return;