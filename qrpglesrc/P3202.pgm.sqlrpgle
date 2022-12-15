**free

ctl-opt dftactgrp(*no);

dcl-pi P3202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P3144.rpgleinc'
/copy 'qrpgleref/P769.rpgleinc'

dcl-ds theTable extname('T526') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T526 LIMIT 1;

theCharVar = 'Hello from P3202';
dsply theCharVar;
P276();
P3144();
P769();
return;