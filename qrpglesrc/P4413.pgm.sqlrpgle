**free

ctl-opt dftactgrp(*no);

dcl-pi P4413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3929.rpgleinc'
/copy 'qrpgleref/P2243.rpgleinc'
/copy 'qrpgleref/P1056.rpgleinc'

dcl-ds T1190 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1190 FROM T1190 LIMIT 1;

theCharVar = 'Hello from P4413';
dsply theCharVar;
P3929();
P2243();
P1056();
return;