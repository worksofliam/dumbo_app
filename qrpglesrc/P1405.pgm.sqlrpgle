**free

ctl-opt dftactgrp(*no);

dcl-pi P1405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P1395.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'

dcl-ds T397 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T397 FROM T397 LIMIT 1;

theCharVar = 'Hello from P1405';
dsply theCharVar;
P588();
P1395();
P481();
return;