**free

ctl-opt dftactgrp(*no);

dcl-pi P89;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T649') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T649 LIMIT 1;

theCharVar = 'Hello from P89';
dsply theCharVar;
P63();
P45();
P50();
return;