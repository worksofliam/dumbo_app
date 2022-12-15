**free

ctl-opt dftactgrp(*no);

dcl-pi P323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds T1204 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1204 FROM T1204 LIMIT 1;

theCharVar = 'Hello from P323';
dsply theCharVar;
P232();
P142();
P162();
return;