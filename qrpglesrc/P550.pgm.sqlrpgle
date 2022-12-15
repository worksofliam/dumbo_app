**free

ctl-opt dftactgrp(*no);

dcl-pi P550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds T96 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T96 FROM T96 LIMIT 1;

theCharVar = 'Hello from P550';
dsply theCharVar;
P298();
P396();
P95();
return;