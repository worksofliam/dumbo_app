**free

ctl-opt dftactgrp(*no);

dcl-pi P2979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P2027.rpgleinc'
/copy 'qrpgleref/P1752.rpgleinc'

dcl-ds T960 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T960 FROM T960 LIMIT 1;

theCharVar = 'Hello from P2979';
dsply theCharVar;
P323();
P2027();
P1752();
return;