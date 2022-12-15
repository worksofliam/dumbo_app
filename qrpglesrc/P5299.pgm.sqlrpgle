**free

ctl-opt dftactgrp(*no);

dcl-pi P5299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4922.rpgleinc'
/copy 'qrpgleref/P3779.rpgleinc'
/copy 'qrpgleref/P2193.rpgleinc'

dcl-ds theTable extname('T800') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T800 LIMIT 1;

theCharVar = 'Hello from P5299';
dsply theCharVar;
P4922();
P3779();
P2193();
return;