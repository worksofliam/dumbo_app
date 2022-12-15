**free

ctl-opt dftactgrp(*no);

dcl-pi P5136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1674.rpgleinc'
/copy 'qrpgleref/P2358.rpgleinc'
/copy 'qrpgleref/P2776.rpgleinc'

dcl-ds T1439 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1439 FROM T1439 LIMIT 1;

theCharVar = 'Hello from P5136';
dsply theCharVar;
P1674();
P2358();
P2776();
return;