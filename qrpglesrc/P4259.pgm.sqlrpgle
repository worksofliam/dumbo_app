**free

ctl-opt dftactgrp(*no);

dcl-pi P4259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1892.rpgleinc'
/copy 'qrpgleref/P3974.rpgleinc'
/copy 'qrpgleref/P2615.rpgleinc'

dcl-ds T358 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T358 FROM T358 LIMIT 1;

theCharVar = 'Hello from P4259';
dsply theCharVar;
P1892();
P3974();
P2615();
return;