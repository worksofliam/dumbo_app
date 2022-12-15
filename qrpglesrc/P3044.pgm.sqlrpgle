**free

ctl-opt dftactgrp(*no);

dcl-pi P3044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P909.rpgleinc'
/copy 'qrpgleref/P1044.rpgleinc'

dcl-ds T1420 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1420 FROM T1420 LIMIT 1;

theCharVar = 'Hello from P3044';
dsply theCharVar;
P825();
P909();
P1044();
return;