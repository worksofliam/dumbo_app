**free

ctl-opt dftactgrp(*no);

dcl-pi P207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T25') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T25 LIMIT 1;

theCharVar = 'Hello from P207';
dsply theCharVar;
P175();
P41();
P143();
return;