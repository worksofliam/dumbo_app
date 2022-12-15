**free

ctl-opt dftactgrp(*no);

dcl-pi P3471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2185.rpgleinc'
/copy 'qrpgleref/P1175.rpgleinc'
/copy 'qrpgleref/P2336.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P3471';
dsply theCharVar;
P2185();
P1175();
P2336();
return;