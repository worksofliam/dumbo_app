**free

ctl-opt dftactgrp(*no);

dcl-pi P3103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1846.rpgleinc'
/copy 'qrpgleref/P1507.rpgleinc'
/copy 'qrpgleref/P2569.rpgleinc'

dcl-ds T41 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T41 FROM T41 LIMIT 1;

theCharVar = 'Hello from P3103';
dsply theCharVar;
P1846();
P1507();
P2569();
return;