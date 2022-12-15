**free

ctl-opt dftactgrp(*no);

dcl-pi P1054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'

dcl-ds theTable extname('T26') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T26 LIMIT 1;

theCharVar = 'Hello from P1054';
dsply theCharVar;
P355();
P181();
P613();
return;