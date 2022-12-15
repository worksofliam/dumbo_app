**free

ctl-opt dftactgrp(*no);

dcl-pi P830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P801.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds T491 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T491 FROM T491 LIMIT 1;

theCharVar = 'Hello from P830';
dsply theCharVar;
P801();
P277();
P640();
return;