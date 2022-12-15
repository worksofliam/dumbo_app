**free

ctl-opt dftactgrp(*no);

dcl-pi P4415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1283.rpgleinc'
/copy 'qrpgleref/P4130.rpgleinc'
/copy 'qrpgleref/P1623.rpgleinc'

dcl-ds theTable extname('T615') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T615 LIMIT 1;

theCharVar = 'Hello from P4415';
dsply theCharVar;
P1283();
P4130();
P1623();
return;