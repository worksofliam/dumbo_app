**free

ctl-opt dftactgrp(*no);

dcl-pi P2588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P792.rpgleinc'
/copy 'qrpgleref/P2201.rpgleinc'
/copy 'qrpgleref/P1528.rpgleinc'

dcl-ds T339 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T339 FROM T339 LIMIT 1;

theCharVar = 'Hello from P2588';
dsply theCharVar;
P792();
P2201();
P1528();
return;