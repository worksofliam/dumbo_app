**free

ctl-opt dftactgrp(*no);

dcl-pi P1678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1125.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P1247.rpgleinc'

dcl-ds T41 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T41 FROM T41 LIMIT 1;

theCharVar = 'Hello from P1678';
dsply theCharVar;
P1125();
P594();
P1247();
return;