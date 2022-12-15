**free

ctl-opt dftactgrp(*no);

dcl-pi P928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P928';
dsply theCharVar;
P205();
P793();
P453();
return;