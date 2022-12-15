**free

ctl-opt dftactgrp(*no);

dcl-pi P3006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2543.rpgleinc'
/copy 'qrpgleref/P725.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'

dcl-ds theTable extname('T136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T136 LIMIT 1;

theCharVar = 'Hello from P3006';
dsply theCharVar;
P2543();
P725();
P732();
return;