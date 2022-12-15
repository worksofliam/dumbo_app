**free

ctl-opt dftactgrp(*no);

dcl-pi P1037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P877.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds theTable extname('T194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T194 LIMIT 1;

theCharVar = 'Hello from P1037';
dsply theCharVar;
P236();
P877();
P434();
return;