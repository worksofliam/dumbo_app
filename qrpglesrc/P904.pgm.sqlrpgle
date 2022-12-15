**free

ctl-opt dftactgrp(*no);

dcl-pi P904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'

dcl-ds T489 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T489 FROM T489 LIMIT 1;

theCharVar = 'Hello from P904';
dsply theCharVar;
P742();
P150();
P134();
return;