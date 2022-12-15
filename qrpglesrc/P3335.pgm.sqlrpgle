**free

ctl-opt dftactgrp(*no);

dcl-pi P3335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3140.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P1130.rpgleinc'

dcl-ds T552 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T552 FROM T552 LIMIT 1;

theCharVar = 'Hello from P3335';
dsply theCharVar;
P3140();
P460();
P1130();
return;