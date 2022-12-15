**free

ctl-opt dftactgrp(*no);

dcl-pi P194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds T220 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T220 FROM T220 LIMIT 1;

theCharVar = 'Hello from P194';
dsply theCharVar;
P62();
P91();
P161();
return;