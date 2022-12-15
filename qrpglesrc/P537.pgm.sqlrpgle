**free

ctl-opt dftactgrp(*no);

dcl-pi P537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'

dcl-ds T8 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T8 FROM T8 LIMIT 1;

theCharVar = 'Hello from P537';
dsply theCharVar;
P63();
P431();
P338();
return;