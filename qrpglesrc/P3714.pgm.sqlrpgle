**free

ctl-opt dftactgrp(*no);

dcl-pi P3714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3465.rpgleinc'
/copy 'qrpgleref/P3202.rpgleinc'
/copy 'qrpgleref/P2427.rpgleinc'

dcl-ds theTable extname('T14') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T14 LIMIT 1;

theCharVar = 'Hello from P3714';
dsply theCharVar;
P3465();
P3202();
P2427();
return;