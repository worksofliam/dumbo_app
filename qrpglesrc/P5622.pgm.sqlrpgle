**free

ctl-opt dftactgrp(*no);

dcl-pi P5622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4655.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P3125.rpgleinc'

dcl-ds T177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T177 FROM T177 LIMIT 1;

theCharVar = 'Hello from P5622';
dsply theCharVar;
P4655();
P479();
P3125();
return;