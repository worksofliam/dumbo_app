**free

ctl-opt dftactgrp(*no);

dcl-pi P390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds T123 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T123 FROM T123 LIMIT 1;

theCharVar = 'Hello from P390';
dsply theCharVar;
P296();
P47();
P110();
return;