**free

ctl-opt dftactgrp(*no);

dcl-pi P4727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1153.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P2386.rpgleinc'

dcl-ds theTable extname('T1703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1703 LIMIT 1;

theCharVar = 'Hello from P4727';
dsply theCharVar;
P1153();
P200();
P2386();
return;