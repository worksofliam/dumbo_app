**free

ctl-opt dftactgrp(*no);

dcl-pi P4374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3078.rpgleinc'
/copy 'qrpgleref/P1676.rpgleinc'
/copy 'qrpgleref/P2398.rpgleinc'

dcl-ds T1542 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1542 FROM T1542 LIMIT 1;

theCharVar = 'Hello from P4374';
dsply theCharVar;
P3078();
P1676();
P2398();
return;