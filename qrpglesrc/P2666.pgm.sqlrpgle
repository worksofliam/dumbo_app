**free

ctl-opt dftactgrp(*no);

dcl-pi P2666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1411.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P2534.rpgleinc'

dcl-ds T1076 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1076 FROM T1076 LIMIT 1;

theCharVar = 'Hello from P2666';
dsply theCharVar;
P1411();
P132();
P2534();
return;