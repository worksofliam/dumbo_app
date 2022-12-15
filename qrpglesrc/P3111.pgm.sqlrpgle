**free

ctl-opt dftactgrp(*no);

dcl-pi P3111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1294.rpgleinc'
/copy 'qrpgleref/P1585.rpgleinc'
/copy 'qrpgleref/P2170.rpgleinc'

dcl-ds T278 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T278 FROM T278 LIMIT 1;

theCharVar = 'Hello from P3111';
dsply theCharVar;
P1294();
P1585();
P2170();
return;