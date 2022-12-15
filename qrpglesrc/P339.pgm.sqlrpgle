**free

ctl-opt dftactgrp(*no);

dcl-pi P339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'

dcl-ds theTable extname('T280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T280 LIMIT 1;

theCharVar = 'Hello from P339';
dsply theCharVar;
P36();
P132();
P239();
return;