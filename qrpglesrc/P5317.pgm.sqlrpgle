**free

ctl-opt dftactgrp(*no);

dcl-pi P5317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P1380.rpgleinc'
/copy 'qrpgleref/P2337.rpgleinc'

dcl-ds T1385 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1385 FROM T1385 LIMIT 1;

theCharVar = 'Hello from P5317';
dsply theCharVar;
P531();
P1380();
P2337();
return;