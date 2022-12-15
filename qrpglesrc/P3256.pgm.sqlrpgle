**free

ctl-opt dftactgrp(*no);

dcl-pi P3256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1280.rpgleinc'
/copy 'qrpgleref/P2781.rpgleinc'
/copy 'qrpgleref/P1328.rpgleinc'

dcl-ds T1432 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1432 FROM T1432 LIMIT 1;

theCharVar = 'Hello from P3256';
dsply theCharVar;
P1280();
P2781();
P1328();
return;