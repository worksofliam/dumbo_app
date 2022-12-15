**free

ctl-opt dftactgrp(*no);

dcl-pi P1055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P690.rpgleinc'

dcl-ds T862 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T862 FROM T862 LIMIT 1;

theCharVar = 'Hello from P1055';
dsply theCharVar;
P62();
P144();
P690();
return;