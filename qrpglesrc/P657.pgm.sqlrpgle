**free

ctl-opt dftactgrp(*no);

dcl-pi P657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds theTable extname('T550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T550 LIMIT 1;

theCharVar = 'Hello from P657';
dsply theCharVar;
P329();
P532();
P205();
return;