**free

ctl-opt dftactgrp(*no);

dcl-pi P1479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1335.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'
/copy 'qrpgleref/P1065.rpgleinc'

dcl-ds T892 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T892 FROM T892 LIMIT 1;

theCharVar = 'Hello from P1479';
dsply theCharVar;
P1335();
P1126();
P1065();
return;