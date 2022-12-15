**free

ctl-opt dftactgrp(*no);

dcl-pi P2034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P702.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P1551.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P2034';
dsply theCharVar;
P702();
P611();
P1551();
return;