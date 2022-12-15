**free

ctl-opt dftactgrp(*no);

dcl-pi P3130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2995.rpgleinc'
/copy 'qrpgleref/P2817.rpgleinc'
/copy 'qrpgleref/P1146.rpgleinc'

dcl-ds T348 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T348 FROM T348 LIMIT 1;

theCharVar = 'Hello from P3130';
dsply theCharVar;
P2995();
P2817();
P1146();
return;