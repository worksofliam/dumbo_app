**free

ctl-opt dftactgrp(*no);

dcl-pi P1004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds theTable extname('T504') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T504 LIMIT 1;

theCharVar = 'Hello from P1004';
dsply theCharVar;
P111();
P894();
P541();
return;