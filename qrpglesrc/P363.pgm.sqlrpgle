**free

ctl-opt dftactgrp(*no);

dcl-pi P363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds T170 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T170 FROM T170 LIMIT 1;

theCharVar = 'Hello from P363';
dsply theCharVar;
P350();
P277();
P342();
return;