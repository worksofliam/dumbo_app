**free

ctl-opt dftactgrp(*no);

dcl-pi P649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds T135 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T135 FROM T135 LIMIT 1;

theCharVar = 'Hello from P649';
dsply theCharVar;
P64();
P374();
P45();
return;