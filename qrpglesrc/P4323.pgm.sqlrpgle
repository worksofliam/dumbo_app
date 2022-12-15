**free

ctl-opt dftactgrp(*no);

dcl-pi P4323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3543.rpgleinc'
/copy 'qrpgleref/P1209.rpgleinc'
/copy 'qrpgleref/P3469.rpgleinc'

dcl-ds theTable extname('T699') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T699 LIMIT 1;

theCharVar = 'Hello from P4323';
dsply theCharVar;
P3543();
P1209();
P3469();
return;