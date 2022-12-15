**free

ctl-opt dftactgrp(*no);

dcl-pi P3207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1769.rpgleinc'
/copy 'qrpgleref/P2729.rpgleinc'
/copy 'qrpgleref/P2900.rpgleinc'

dcl-ds T1510 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1510 FROM T1510 LIMIT 1;

theCharVar = 'Hello from P3207';
dsply theCharVar;
P1769();
P2729();
P2900();
return;