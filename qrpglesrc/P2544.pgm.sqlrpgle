**free

ctl-opt dftactgrp(*no);

dcl-pi P2544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1488.rpgleinc'
/copy 'qrpgleref/P2306.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds T143 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T143 FROM T143 LIMIT 1;

theCharVar = 'Hello from P2544';
dsply theCharVar;
P1488();
P2306();
P135();
return;