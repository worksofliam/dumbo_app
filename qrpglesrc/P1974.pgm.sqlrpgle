**free

ctl-opt dftactgrp(*no);

dcl-pi P1974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P741.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds T1184 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1184 FROM T1184 LIMIT 1;

theCharVar = 'Hello from P1974';
dsply theCharVar;
P741();
P164();
P503();
return;