**free

ctl-opt dftactgrp(*no);

dcl-pi P2777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P1157.rpgleinc'
/copy 'qrpgleref/P2557.rpgleinc'

dcl-ds theTable extname('T341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T341 LIMIT 1;

theCharVar = 'Hello from P2777';
dsply theCharVar;
P185();
P1157();
P2557();
return;