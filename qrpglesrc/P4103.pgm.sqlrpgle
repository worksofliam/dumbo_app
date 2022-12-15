**free

ctl-opt dftactgrp(*no);

dcl-pi P4103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2239.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'

dcl-ds theTable extname('T1847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1847 LIMIT 1;

theCharVar = 'Hello from P4103';
dsply theCharVar;
P2239();
P15();
P1435();
return;