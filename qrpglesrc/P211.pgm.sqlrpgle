**free

ctl-opt dftactgrp(*no);

dcl-pi P211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T1511') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1511 LIMIT 1;

theCharVar = 'Hello from P211';
dsply theCharVar;
P178();
P207();
P0();
return;