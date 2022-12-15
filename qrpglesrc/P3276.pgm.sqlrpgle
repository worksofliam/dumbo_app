**free

ctl-opt dftactgrp(*no);

dcl-pi P3276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3134.rpgleinc'
/copy 'qrpgleref/P2982.rpgleinc'
/copy 'qrpgleref/P3152.rpgleinc'

dcl-ds T1756 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1756 FROM T1756 LIMIT 1;

theCharVar = 'Hello from P3276';
dsply theCharVar;
P3134();
P2982();
P3152();
return;