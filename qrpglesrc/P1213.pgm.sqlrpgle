**free

ctl-opt dftactgrp(*no);

dcl-pi P1213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P833.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds theTable extname('T352') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T352 LIMIT 1;

theCharVar = 'Hello from P1213';
dsply theCharVar;
P495();
P833();
P595();
return;