**free

ctl-opt dftactgrp(*no);

dcl-pi P3997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2822.rpgleinc'
/copy 'qrpgleref/P2004.rpgleinc'
/copy 'qrpgleref/P2248.rpgleinc'

dcl-ds theTable extname('T675') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T675 LIMIT 1;

theCharVar = 'Hello from P3997';
dsply theCharVar;
P2822();
P2004();
P2248();
return;