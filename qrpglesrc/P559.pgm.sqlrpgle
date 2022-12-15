**free

ctl-opt dftactgrp(*no);

dcl-pi P559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'

dcl-ds theTable extname('T323') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T323 LIMIT 1;

theCharVar = 'Hello from P559';
dsply theCharVar;
P42();
P519();
P459();
return;