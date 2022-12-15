**free

ctl-opt dftactgrp(*no);

dcl-pi P358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'

dcl-ds T990 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T990 FROM T990 LIMIT 1;

theCharVar = 'Hello from P358';
dsply theCharVar;
P254();
P269();
P240();
return;