**free

ctl-opt dftactgrp(*no);

dcl-pi P2658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P625.rpgleinc'
/copy 'qrpgleref/P2314.rpgleinc'
/copy 'qrpgleref/P700.rpgleinc'

dcl-ds T1308 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1308 FROM T1308 LIMIT 1;

theCharVar = 'Hello from P2658';
dsply theCharVar;
P625();
P2314();
P700();
return;