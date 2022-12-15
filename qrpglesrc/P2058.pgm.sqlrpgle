**free

ctl-opt dftactgrp(*no);

dcl-pi P2058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P1530.rpgleinc'
/copy 'qrpgleref/P916.rpgleinc'

dcl-ds T164 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T164 FROM T164 LIMIT 1;

theCharVar = 'Hello from P2058';
dsply theCharVar;
P586();
P1530();
P916();
return;