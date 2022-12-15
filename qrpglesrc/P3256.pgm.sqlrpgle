**free

ctl-opt dftactgrp(*no);

dcl-pi P3256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1649.rpgleinc'
/copy 'qrpgleref/P644.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'

dcl-ds T88 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T88 FROM T88 LIMIT 1;

theCharVar = 'Hello from P3256';
dsply theCharVar;
P1649();
P644();
P525();
return;