**free

ctl-opt dftactgrp(*no);

dcl-pi P2432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1872.rpgleinc'
/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'

dcl-ds T166 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T166 FROM T166 LIMIT 1;

theCharVar = 'Hello from P2432';
dsply theCharVar;
P1872();
P713();
P565();
return;