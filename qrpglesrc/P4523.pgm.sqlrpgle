**free

ctl-opt dftactgrp(*no);

dcl-pi P4523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1657.rpgleinc'
/copy 'qrpgleref/P2972.rpgleinc'
/copy 'qrpgleref/P2906.rpgleinc'

dcl-ds T1298 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1298 FROM T1298 LIMIT 1;

theCharVar = 'Hello from P4523';
dsply theCharVar;
P1657();
P2972();
P2906();
return;