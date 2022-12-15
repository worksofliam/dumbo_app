**free

ctl-opt dftactgrp(*no);

dcl-pi P2687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2068.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P2120.rpgleinc'

dcl-ds theTable extname('T1250') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1250 LIMIT 1;

theCharVar = 'Hello from P2687';
dsply theCharVar;
P2068();
P542();
P2120();
return;