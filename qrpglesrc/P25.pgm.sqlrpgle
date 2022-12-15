**free

ctl-opt dftactgrp(*no);

dcl-pi P25;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T88') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T88 LIMIT 1;

theCharVar = 'Hello from P25';
dsply theCharVar;
P24();
P16();
P20();
return;