**free

ctl-opt dftactgrp(*no);

dcl-pi P786;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'

dcl-ds T951 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T951 FROM T951 LIMIT 1;

theCharVar = 'Hello from P786';
dsply theCharVar;
P138();
P43();
P645();
return;