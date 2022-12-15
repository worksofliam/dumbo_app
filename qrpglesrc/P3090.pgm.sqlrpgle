**free

ctl-opt dftactgrp(*no);

dcl-pi P3090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'

dcl-ds T366 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T366 FROM T366 LIMIT 1;

theCharVar = 'Hello from P3090';
dsply theCharVar;
P499();
P77();
return;