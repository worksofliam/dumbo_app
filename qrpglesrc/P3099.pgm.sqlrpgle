**free

ctl-opt dftactgrp(*no);

dcl-pi P3099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2623.rpgleinc'
/copy 'qrpgleref/P829.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds T198 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T198 FROM T198 LIMIT 1;

theCharVar = 'Hello from P3099';
dsply theCharVar;
P2623();
P829();
P512();
return;