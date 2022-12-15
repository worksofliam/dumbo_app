**free

ctl-opt dftactgrp(*no);

dcl-pi P3859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1474.rpgleinc'
/copy 'qrpgleref/P2977.rpgleinc'
/copy 'qrpgleref/P3631.rpgleinc'

dcl-ds T744 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T744 FROM T744 LIMIT 1;

theCharVar = 'Hello from P3859';
dsply theCharVar;
P1474();
P2977();
P3631();
return;