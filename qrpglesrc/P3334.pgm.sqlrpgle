**free

ctl-opt dftactgrp(*no);

dcl-pi P3334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P2318.rpgleinc'
/copy 'qrpgleref/P3114.rpgleinc'

dcl-ds T347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T347 FROM T347 LIMIT 1;

theCharVar = 'Hello from P3334';
dsply theCharVar;
P64();
P2318();
P3114();
return;