**free

ctl-opt dftactgrp(*no);

dcl-pi P2184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1145.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'

dcl-ds T1352 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1352 FROM T1352 LIMIT 1;

theCharVar = 'Hello from P2184';
dsply theCharVar;
P1145();
P565();
P453();
return;