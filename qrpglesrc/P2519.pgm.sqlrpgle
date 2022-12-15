**free

ctl-opt dftactgrp(*no);

dcl-pi P2519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1220.rpgleinc'
/copy 'qrpgleref/P2418.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T512') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T512 LIMIT 1;

theCharVar = 'Hello from P2519';
dsply theCharVar;
P1220();
P2418();
P118();
return;