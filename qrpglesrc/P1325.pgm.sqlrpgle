**free

ctl-opt dftactgrp(*no);

dcl-pi P1325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P867.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds theTable extname('T798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T798 LIMIT 1;

theCharVar = 'Hello from P1325';
dsply theCharVar;
P781();
P867();
P84();
return;