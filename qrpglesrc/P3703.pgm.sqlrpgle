**free

ctl-opt dftactgrp(*no);

dcl-pi P3703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1285.rpgleinc'
/copy 'qrpgleref/P1858.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'

dcl-ds T1231 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1231 FROM T1231 LIMIT 1;

theCharVar = 'Hello from P3703';
dsply theCharVar;
P1285();
P1858();
P664();
return;