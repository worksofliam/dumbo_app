**free

ctl-opt dftactgrp(*no);

dcl-pi P2860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P891.rpgleinc'
/copy 'qrpgleref/P2727.rpgleinc'

dcl-ds T781 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T781 FROM T781 LIMIT 1;

theCharVar = 'Hello from P2860';
dsply theCharVar;
P417();
P891();
P2727();
return;