**free

ctl-opt dftactgrp(*no);

dcl-pi P330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P330';
dsply theCharVar;
P304();
P143();
P207();
return;