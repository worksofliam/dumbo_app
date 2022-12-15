**free

ctl-opt dftactgrp(*no);

dcl-pi P3406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P751.rpgleinc'
/copy 'qrpgleref/P1778.rpgleinc'
/copy 'qrpgleref/P2979.rpgleinc'

dcl-ds theTable extname('T98') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T98 LIMIT 1;

theCharVar = 'Hello from P3406';
dsply theCharVar;
P751();
P1778();
P2979();
return;