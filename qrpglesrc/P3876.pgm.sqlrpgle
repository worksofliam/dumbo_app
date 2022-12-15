**free

ctl-opt dftactgrp(*no);

dcl-pi P3876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1769.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P1363.rpgleinc'

dcl-ds T1025 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1025 FROM T1025 LIMIT 1;

theCharVar = 'Hello from P3876';
dsply theCharVar;
P1769();
P441();
P1363();
return;