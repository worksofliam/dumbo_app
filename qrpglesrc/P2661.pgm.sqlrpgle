**free

ctl-opt dftactgrp(*no);

dcl-pi P2661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1354.rpgleinc'
/copy 'qrpgleref/P821.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds T685 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T685 FROM T685 LIMIT 1;

theCharVar = 'Hello from P2661';
dsply theCharVar;
P1354();
P821();
P365();
return;