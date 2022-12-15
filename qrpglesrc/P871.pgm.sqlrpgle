**free

ctl-opt dftactgrp(*no);

dcl-pi P871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'
/copy 'qrpgleref/P576.rpgleinc'

dcl-ds theTable extname('T81') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T81 LIMIT 1;

theCharVar = 'Hello from P871';
dsply theCharVar;
P481();
P541();
P576();
return;