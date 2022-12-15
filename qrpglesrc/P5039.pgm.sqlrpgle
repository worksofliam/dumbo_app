**free

ctl-opt dftactgrp(*no);

dcl-pi P5039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4821.rpgleinc'
/copy 'qrpgleref/P2359.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P5039';
dsply theCharVar;
P4821();
P2359();
P313();
return;