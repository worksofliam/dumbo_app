**free

ctl-opt dftactgrp(*no);

dcl-pi P986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds T379 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T379 FROM T379 LIMIT 1;

theCharVar = 'Hello from P986';
dsply theCharVar;
P391();
P307();
P352();
return;