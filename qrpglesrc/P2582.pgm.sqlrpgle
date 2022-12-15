**free

ctl-opt dftactgrp(*no);

dcl-pi P2582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1672.rpgleinc'
/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P2259.rpgleinc'

dcl-ds T1202 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1202 FROM T1202 LIMIT 1;

theCharVar = 'Hello from P2582';
dsply theCharVar;
P1672();
P1235();
P2259();
return;