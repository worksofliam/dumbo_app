**free

ctl-opt dftactgrp(*no);

dcl-pi P1984;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P990.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P857.rpgleinc'

dcl-ds theTable extname('T1064') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1064 LIMIT 1;

theCharVar = 'Hello from P1984';
dsply theCharVar;
P990();
P380();
P857();
return;