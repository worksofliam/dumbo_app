**free

ctl-opt dftactgrp(*no);

dcl-pi P4291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1589.rpgleinc'
/copy 'qrpgleref/P2494.rpgleinc'
/copy 'qrpgleref/P1416.rpgleinc'

dcl-ds T589 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T589 FROM T589 LIMIT 1;

theCharVar = 'Hello from P4291';
dsply theCharVar;
P1589();
P2494();
P1416();
return;