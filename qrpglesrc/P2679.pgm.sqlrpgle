**free

ctl-opt dftactgrp(*no);

dcl-pi P2679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P1226.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds T907 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T907 FROM T907 LIMIT 1;

theCharVar = 'Hello from P2679';
dsply theCharVar;
P568();
P1226();
P52();
return;