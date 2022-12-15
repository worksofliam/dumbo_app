**free

ctl-opt dftactgrp(*no);

dcl-pi P2816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1266.rpgleinc'
/copy 'qrpgleref/P1975.rpgleinc'
/copy 'qrpgleref/P1368.rpgleinc'

dcl-ds T541 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T541 FROM T541 LIMIT 1;

theCharVar = 'Hello from P2816';
dsply theCharVar;
P1266();
P1975();
P1368();
return;