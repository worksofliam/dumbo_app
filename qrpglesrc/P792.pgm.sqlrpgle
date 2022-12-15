**free

ctl-opt dftactgrp(*no);

dcl-pi P792;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P725.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'

dcl-ds theTable extname('T1493') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1493 LIMIT 1;

theCharVar = 'Hello from P792';
dsply theCharVar;
P725();
P312();
P548();
return;