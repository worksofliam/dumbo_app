**free

ctl-opt dftactgrp(*no);

dcl-pi P3013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P710.rpgleinc'
/copy 'qrpgleref/P1703.rpgleinc'
/copy 'qrpgleref/P2514.rpgleinc'

dcl-ds T1685 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1685 FROM T1685 LIMIT 1;

theCharVar = 'Hello from P3013';
dsply theCharVar;
P710();
P1703();
P2514();
return;