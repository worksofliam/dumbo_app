**free

ctl-opt dftactgrp(*no);

dcl-pi P3343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P1287.rpgleinc'
/copy 'qrpgleref/P1756.rpgleinc'

dcl-ds T1601 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1601 FROM T1601 LIMIT 1;

theCharVar = 'Hello from P3343';
dsply theCharVar;
P19();
P1287();
P1756();
return;