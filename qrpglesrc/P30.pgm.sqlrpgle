**free

ctl-opt dftactgrp(*no);

dcl-pi P30;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds T1108 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1108 FROM T1108 LIMIT 1;

theCharVar = 'Hello from P30';
dsply theCharVar;
P14();
P1();
P2();
return;