**free

ctl-opt dftactgrp(*no);

dcl-pi P2331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1946.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P2099.rpgleinc'

dcl-ds T583 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T583 FROM T583 LIMIT 1;

theCharVar = 'Hello from P2331';
dsply theCharVar;
P1946();
P1091();
P2099();
return;