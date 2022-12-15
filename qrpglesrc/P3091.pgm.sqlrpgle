**free

ctl-opt dftactgrp(*no);

dcl-pi P3091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1008.rpgleinc'
/copy 'qrpgleref/P2112.rpgleinc'
/copy 'qrpgleref/P2415.rpgleinc'

dcl-ds T469 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T469 FROM T469 LIMIT 1;

theCharVar = 'Hello from P3091';
dsply theCharVar;
P1008();
P2112();
P2415();
return;