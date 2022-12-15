**free

ctl-opt dftactgrp(*no);

dcl-pi P2813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1707.rpgleinc'
/copy 'qrpgleref/P1313.rpgleinc'
/copy 'qrpgleref/P1999.rpgleinc'

dcl-ds T1084 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1084 FROM T1084 LIMIT 1;

theCharVar = 'Hello from P2813';
dsply theCharVar;
P1707();
P1313();
P1999();
return;