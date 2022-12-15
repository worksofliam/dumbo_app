**free

ctl-opt dftactgrp(*no);

dcl-pi P743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'

dcl-ds theTable extname('T24') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T24 LIMIT 1;

theCharVar = 'Hello from P743';
dsply theCharVar;
P562();
P341();
P421();
return;