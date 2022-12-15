**free

ctl-opt dftactgrp(*no);

dcl-pi P1001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds T192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T192 FROM T192 LIMIT 1;

theCharVar = 'Hello from P1001';
dsply theCharVar;
P314();
P629();
P488();
return;