**free

ctl-opt dftactgrp(*no);

dcl-pi P5308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P3455.rpgleinc'
/copy 'qrpgleref/P1844.rpgleinc'

dcl-ds theTable extname('T1654') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1654 LIMIT 1;

theCharVar = 'Hello from P5308';
dsply theCharVar;
P512();
P3455();
P1844();
return;