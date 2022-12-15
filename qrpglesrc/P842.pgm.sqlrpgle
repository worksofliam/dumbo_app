**free

ctl-opt dftactgrp(*no);

dcl-pi P842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds T691 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T691 FROM T691 LIMIT 1;

theCharVar = 'Hello from P842';
dsply theCharVar;
P337();
P226();
P85();
return;