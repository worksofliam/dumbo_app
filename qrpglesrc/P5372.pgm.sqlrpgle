**free

ctl-opt dftactgrp(*no);

dcl-pi P5372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1628.rpgleinc'
/copy 'qrpgleref/P4681.rpgleinc'
/copy 'qrpgleref/P2673.rpgleinc'

dcl-ds T769 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T769 FROM T769 LIMIT 1;

theCharVar = 'Hello from P5372';
dsply theCharVar;
P1628();
P4681();
P2673();
return;