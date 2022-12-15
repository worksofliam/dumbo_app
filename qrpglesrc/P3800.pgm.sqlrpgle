**free

ctl-opt dftactgrp(*no);

dcl-pi P3800;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2256.rpgleinc'
/copy 'qrpgleref/P2226.rpgleinc'
/copy 'qrpgleref/P3331.rpgleinc'

dcl-ds theTable extname('T1872') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1872 LIMIT 1;

theCharVar = 'Hello from P3800';
dsply theCharVar;
P2256();
P2226();
P3331();
return;