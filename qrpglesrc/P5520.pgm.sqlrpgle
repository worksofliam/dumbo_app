**free

ctl-opt dftactgrp(*no);

dcl-pi P5520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2501.rpgleinc'
/copy 'qrpgleref/P5434.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'

dcl-ds theTable extname('T1483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1483 LIMIT 1;

theCharVar = 'Hello from P5520';
dsply theCharVar;
P2501();
P5434();
P400();
return;