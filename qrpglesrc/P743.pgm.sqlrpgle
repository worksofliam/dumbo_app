**free

ctl-opt dftactgrp(*no);

dcl-pi P743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'

dcl-ds T294 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T294 FROM T294 LIMIT 1;

theCharVar = 'Hello from P743';
dsply theCharVar;
P194();
P211();
P505();
return;