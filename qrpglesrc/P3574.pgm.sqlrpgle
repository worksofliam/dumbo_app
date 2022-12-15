**free

ctl-opt dftactgrp(*no);

dcl-pi P3574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2865.rpgleinc'
/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P1559.rpgleinc'

dcl-ds T1110 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1110 FROM T1110 LIMIT 1;

theCharVar = 'Hello from P3574';
dsply theCharVar;
P2865();
P689();
P1559();
return;