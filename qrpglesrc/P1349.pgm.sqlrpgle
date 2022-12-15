**free

ctl-opt dftactgrp(*no);

dcl-pi P1349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P1041.rpgleinc'
/copy 'qrpgleref/P985.rpgleinc'

dcl-ds T127 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T127 FROM T127 LIMIT 1;

theCharVar = 'Hello from P1349';
dsply theCharVar;
P1254();
P1041();
P985();
return;