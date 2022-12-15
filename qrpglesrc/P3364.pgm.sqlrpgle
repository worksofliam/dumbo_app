**free

ctl-opt dftactgrp(*no);

dcl-pi P3364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1877.rpgleinc'
/copy 'qrpgleref/P2175.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'

dcl-ds T666 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T666 FROM T666 LIMIT 1;

theCharVar = 'Hello from P3364';
dsply theCharVar;
P1877();
P2175();
P1402();
return;