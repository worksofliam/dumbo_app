**free

ctl-opt dftactgrp(*no);

dcl-pi P3467;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'
/copy 'qrpgleref/P1078.rpgleinc'

dcl-ds T432 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T432 FROM T432 LIMIT 1;

theCharVar = 'Hello from P3467';
dsply theCharVar;
P553();
P1032();
P1078();
return;