**free

ctl-opt dftactgrp(*no);

dcl-pi P2636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2291.rpgleinc'
/copy 'qrpgleref/P2513.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds T567 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T567 FROM T567 LIMIT 1;

theCharVar = 'Hello from P2636';
dsply theCharVar;
P2291();
P2513();
P133();
return;