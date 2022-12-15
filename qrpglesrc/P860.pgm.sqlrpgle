**free

ctl-opt dftactgrp(*no);

dcl-pi P860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds T274 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T274 FROM T274 LIMIT 1;

theCharVar = 'Hello from P860';
dsply theCharVar;
P154();
P326();
P765();
return;