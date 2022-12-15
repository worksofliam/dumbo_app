**free

ctl-opt dftactgrp(*no);

dcl-pi P1197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P857.rpgleinc'
/copy 'qrpgleref/P917.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'

dcl-ds theTable extname('T795') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T795 LIMIT 1;

theCharVar = 'Hello from P1197';
dsply theCharVar;
P857();
P917();
P1055();
return;