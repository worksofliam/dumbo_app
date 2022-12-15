**free

ctl-opt dftactgrp(*no);

dcl-pi P1633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1265.rpgleinc'
/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P1453.rpgleinc'

dcl-ds T1200 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1200 FROM T1200 LIMIT 1;

theCharVar = 'Hello from P1633';
dsply theCharVar;
P1265();
P1185();
P1453();
return;