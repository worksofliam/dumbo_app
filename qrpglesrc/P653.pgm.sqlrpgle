**free

ctl-opt dftactgrp(*no);

dcl-pi P653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P520.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds theTable extname('T726') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T726 LIMIT 1;

theCharVar = 'Hello from P653';
dsply theCharVar;
P495();
P520();
P184();
return;