**free

ctl-opt dftactgrp(*no);

dcl-pi P2407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1918.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P1355.rpgleinc'

dcl-ds T543 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T543 FROM T543 LIMIT 1;

theCharVar = 'Hello from P2407';
dsply theCharVar;
P1918();
P3();
P1355();
return;