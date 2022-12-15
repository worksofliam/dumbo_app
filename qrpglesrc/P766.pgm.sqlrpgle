**free

ctl-opt dftactgrp(*no);

dcl-pi P766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds T397 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T397 FROM T397 LIMIT 1;

theCharVar = 'Hello from P766';
dsply theCharVar;
P509();
P296();
P40();
return;