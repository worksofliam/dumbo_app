**free

ctl-opt dftactgrp(*no);

dcl-pi P3441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2709.rpgleinc'
/copy 'qrpgleref/P2182.rpgleinc'
/copy 'qrpgleref/P3412.rpgleinc'

dcl-ds theTable extname('T606') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T606 LIMIT 1;

theCharVar = 'Hello from P3441';
dsply theCharVar;
P2709();
P2182();
P3412();
return;