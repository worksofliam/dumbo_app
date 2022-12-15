**free

ctl-opt dftactgrp(*no);

dcl-pi P3304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2966.rpgleinc'
/copy 'qrpgleref/P2116.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds theTable extname('T515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T515 LIMIT 1;

theCharVar = 'Hello from P3304';
dsply theCharVar;
P2966();
P2116();
P166();
return;