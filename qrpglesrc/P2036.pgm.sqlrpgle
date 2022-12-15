**free

ctl-opt dftactgrp(*no);

dcl-pi P2036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P712.rpgleinc'

dcl-ds theTable extname('T1010') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1010 LIMIT 1;

theCharVar = 'Hello from P2036';
dsply theCharVar;
P855();
P621();
P712();
return;