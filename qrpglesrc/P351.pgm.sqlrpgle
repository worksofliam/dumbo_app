**free

ctl-opt dftactgrp(*no);

dcl-pi P351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'

dcl-ds T370 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T370 FROM T370 LIMIT 1;

theCharVar = 'Hello from P351';
dsply theCharVar;
P9();
P23();
P269();
return;