**free

ctl-opt dftactgrp(*no);

dcl-pi P1765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1497.rpgleinc'
/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'

dcl-ds T1037 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1037 FROM T1037 LIMIT 1;

theCharVar = 'Hello from P1765';
dsply theCharVar;
P1497();
P1216();
P662();
return;