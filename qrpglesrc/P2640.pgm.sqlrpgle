**free

ctl-opt dftactgrp(*no);

dcl-pi P2640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1584.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'

dcl-ds T550 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T550 FROM T550 LIMIT 1;

theCharVar = 'Hello from P2640';
dsply theCharVar;
P1584();
P67();
P350();
return;