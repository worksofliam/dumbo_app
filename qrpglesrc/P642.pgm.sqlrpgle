**free

ctl-opt dftactgrp(*no);

dcl-pi P642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P468.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds T160 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T160 FROM T160 LIMIT 1;

theCharVar = 'Hello from P642';
dsply theCharVar;
P468();
P479();
P354();
return;