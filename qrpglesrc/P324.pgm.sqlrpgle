**free

ctl-opt dftactgrp(*no);

dcl-pi P324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds theTable extname('T417') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T417 LIMIT 1;

theCharVar = 'Hello from P324';
dsply theCharVar;
P61();
P114();
P32();
return;