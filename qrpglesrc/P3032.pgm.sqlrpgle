**free

ctl-opt dftactgrp(*no);

dcl-pi P3032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2852.rpgleinc'
/copy 'qrpgleref/P2149.rpgleinc'
/copy 'qrpgleref/P2849.rpgleinc'

dcl-ds theTable extname('T649') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T649 LIMIT 1;

theCharVar = 'Hello from P3032';
dsply theCharVar;
P2852();
P2149();
P2849();
return;