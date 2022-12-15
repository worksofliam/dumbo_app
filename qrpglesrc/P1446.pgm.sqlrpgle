**free

ctl-opt dftactgrp(*no);

dcl-pi P1446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P904.rpgleinc'
/copy 'qrpgleref/P1245.rpgleinc'
/copy 'qrpgleref/P1052.rpgleinc'

dcl-ds T203 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T203 FROM T203 LIMIT 1;

theCharVar = 'Hello from P1446';
dsply theCharVar;
P904();
P1245();
P1052();
return;