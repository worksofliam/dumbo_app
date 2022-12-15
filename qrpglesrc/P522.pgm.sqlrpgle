**free

ctl-opt dftactgrp(*no);

dcl-pi P522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds T268 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T268 FROM T268 LIMIT 1;

theCharVar = 'Hello from P522';
dsply theCharVar;
P183();
P15();
P45();
return;