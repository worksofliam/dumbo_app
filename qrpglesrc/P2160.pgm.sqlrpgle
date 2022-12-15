**free

ctl-opt dftactgrp(*no);

dcl-pi P2160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P732.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds theTable extname('T910') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T910 LIMIT 1;

theCharVar = 'Hello from P2160';
dsply theCharVar;
P732();
P299();
P245();
return;