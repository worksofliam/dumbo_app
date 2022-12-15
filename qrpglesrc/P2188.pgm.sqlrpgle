**free

ctl-opt dftactgrp(*no);

dcl-pi P2188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P779.rpgleinc'

dcl-ds T1321 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1321 FROM T1321 LIMIT 1;

theCharVar = 'Hello from P2188';
dsply theCharVar;
P1919();
P816();
P779();
return;