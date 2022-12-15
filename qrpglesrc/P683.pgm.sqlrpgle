**free

ctl-opt dftactgrp(*no);

dcl-pi P683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds theTable extname('T380') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T380 LIMIT 1;

theCharVar = 'Hello from P683';
dsply theCharVar;
P443();
P659();
P273();
return;