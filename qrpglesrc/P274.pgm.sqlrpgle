**free

ctl-opt dftactgrp(*no);

dcl-pi P274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds theTable extname('T993') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T993 LIMIT 1;

theCharVar = 'Hello from P274';
dsply theCharVar;
P107();
P96();
P123();
return;