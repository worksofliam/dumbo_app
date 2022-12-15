**free

ctl-opt dftactgrp(*no);

dcl-pi P3269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1733.rpgleinc'
/copy 'qrpgleref/P1570.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'

dcl-ds T549 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T549 FROM T549 LIMIT 1;

theCharVar = 'Hello from P3269';
dsply theCharVar;
P1733();
P1570();
P347();
return;