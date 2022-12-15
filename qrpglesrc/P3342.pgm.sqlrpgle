**free

ctl-opt dftactgrp(*no);

dcl-pi P3342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2173.rpgleinc'
/copy 'qrpgleref/P3006.rpgleinc'
/copy 'qrpgleref/P2798.rpgleinc'

dcl-ds theTable extname('T986') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T986 LIMIT 1;

theCharVar = 'Hello from P3342';
dsply theCharVar;
P2173();
P3006();
P2798();
return;