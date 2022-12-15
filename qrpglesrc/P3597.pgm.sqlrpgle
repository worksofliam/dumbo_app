**free

ctl-opt dftactgrp(*no);

dcl-pi P3597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3161.rpgleinc'
/copy 'qrpgleref/P3202.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'

dcl-ds theTable extname('T895') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T895 LIMIT 1;

theCharVar = 'Hello from P3597';
dsply theCharVar;
P3161();
P3202();
P656();
return;