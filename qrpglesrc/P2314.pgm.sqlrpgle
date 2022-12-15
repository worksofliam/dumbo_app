**free

ctl-opt dftactgrp(*no);

dcl-pi P2314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1284.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P1221.rpgleinc'

dcl-ds T174 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T174 FROM T174 LIMIT 1;

theCharVar = 'Hello from P2314';
dsply theCharVar;
P1284();
P454();
P1221();
return;