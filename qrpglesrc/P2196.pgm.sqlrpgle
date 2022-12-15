**free

ctl-opt dftactgrp(*no);

dcl-pi P2196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1333.rpgleinc'
/copy 'qrpgleref/P1771.rpgleinc'
/copy 'qrpgleref/P1247.rpgleinc'

dcl-ds T302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T302 FROM T302 LIMIT 1;

theCharVar = 'Hello from P2196';
dsply theCharVar;
P1333();
P1771();
P1247();
return;