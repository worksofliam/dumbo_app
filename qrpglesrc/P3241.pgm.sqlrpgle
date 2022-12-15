**free

ctl-opt dftactgrp(*no);

dcl-pi P3241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P2363.rpgleinc'
/copy 'qrpgleref/P1177.rpgleinc'

dcl-ds T977 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T977 FROM T977 LIMIT 1;

theCharVar = 'Hello from P3241';
dsply theCharVar;
P129();
P2363();
P1177();
return;