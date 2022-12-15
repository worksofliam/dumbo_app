**free

ctl-opt dftactgrp(*no);

dcl-pi P1000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'

dcl-ds T735 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T735 FROM T735 LIMIT 1;

theCharVar = 'Hello from P1000';
dsply theCharVar;
P138();
P570();
P883();
return;