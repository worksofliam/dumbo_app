**free

ctl-opt dftactgrp(*no);

dcl-pi P3765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P956.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P2042.rpgleinc'

dcl-ds T1242 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1242 FROM T1242 LIMIT 1;

theCharVar = 'Hello from P3765';
dsply theCharVar;
P956();
P637();
P2042();
return;