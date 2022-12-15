**free

ctl-opt dftactgrp(*no);

dcl-pi P87;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds T1272 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1272 FROM T1272 LIMIT 1;

theCharVar = 'Hello from P87';
dsply theCharVar;
P35();
P71();
P56();
return;