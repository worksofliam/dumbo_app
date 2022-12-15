**free

ctl-opt dftactgrp(*no);

dcl-pi P3948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P681.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'

dcl-ds T1596 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1596 FROM T1596 LIMIT 1;

theCharVar = 'Hello from P3948';
dsply theCharVar;
P1173();
P681();
P703();
return;