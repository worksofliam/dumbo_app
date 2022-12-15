**free

ctl-opt dftactgrp(*no);

dcl-pi P4704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P831.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P1428.rpgleinc'

dcl-ds T1549 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1549 FROM T1549 LIMIT 1;

theCharVar = 'Hello from P4704';
dsply theCharVar;
P831();
P5();
P1428();
return;