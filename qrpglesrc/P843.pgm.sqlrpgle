**free

ctl-opt dftactgrp(*no);

dcl-pi P843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'

dcl-ds T294 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T294 FROM T294 LIMIT 1;

theCharVar = 'Hello from P843';
dsply theCharVar;
P427();
P593();
P761();
return;