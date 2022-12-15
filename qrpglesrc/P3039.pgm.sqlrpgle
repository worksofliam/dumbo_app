**free

ctl-opt dftactgrp(*no);

dcl-pi P3039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2271.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P2009.rpgleinc'

dcl-ds theTable extname('T535') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T535 LIMIT 1;

theCharVar = 'Hello from P3039';
dsply theCharVar;
P2271();
P929();
P2009();
return;