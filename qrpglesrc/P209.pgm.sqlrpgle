**free

ctl-opt dftactgrp(*no);

dcl-pi P209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds T455 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T455 FROM T455 LIMIT 1;

theCharVar = 'Hello from P209';
dsply theCharVar;
P157();
P120();
P19();
return;