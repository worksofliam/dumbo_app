**free

ctl-opt dftactgrp(*no);

dcl-pi P152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T173') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T173 LIMIT 1;

theCharVar = 'Hello from P152';
dsply theCharVar;
P121();
P137();
P117();
return;