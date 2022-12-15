**free

ctl-opt dftactgrp(*no);

dcl-pi P3589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1428.rpgleinc'
/copy 'qrpgleref/P2408.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'

dcl-ds T174 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T174 FROM T174 LIMIT 1;

theCharVar = 'Hello from P3589';
dsply theCharVar;
P1428();
P2408();
P496();
return;