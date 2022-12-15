**free

ctl-opt dftactgrp(*no);

dcl-pi P3673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1206.rpgleinc'
/copy 'qrpgleref/P2176.rpgleinc'
/copy 'qrpgleref/P2541.rpgleinc'

dcl-ds theTable extname('T773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T773 LIMIT 1;

theCharVar = 'Hello from P3673';
dsply theCharVar;
P1206();
P2176();
P2541();
return;