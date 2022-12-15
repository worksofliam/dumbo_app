**free

ctl-opt dftactgrp(*no);

dcl-pi P2256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'

dcl-ds T541 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T541 FROM T541 LIMIT 1;

theCharVar = 'Hello from P2256';
dsply theCharVar;
P1980();
P994();
P2044();
return;